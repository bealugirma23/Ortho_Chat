import React, { useState, useEffect } from "react";

const alarmTimes = [
  { time: "06:00", label: "Morning" },
  { time: "09:00", label: "9 AM" },
  { time: "12:00", label: "Noon" },
  { time: "15:00", label: "3 PM" },
  { time: "18:00", label: "6 PM" },
];

const AlarmApp = () => {
  const [currentTime, setCurrentTime] = useState(
    new Date().toLocaleTimeString()
  );

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrentTime(new Date().toLocaleTimeString());
    }, 1000);
    return () => clearInterval(timer);
  }, []);

  return (
    <div className="bg-gray-800 h-screen relative flex flex-col items-center justify-center py-8">
      <div className="mb-4 absolute top-0 left-0 right-0 bg-gray-900 py-6 text-center text-white text-lg font-bold">
        Current Time: {currentTime}
      </div>
      {alarmTimes.map((alarm) => (
        <AlarmCard
          key={alarm.time}
          time={alarm.time}
          label={alarm.label}
          isActive={currentTime < alarm.time}
          isNext={getNextAlarmTime() === alarm.time}
        />
      ))}
    </div>
  );
};

const AlarmCard = ({ time, label, isActive, isNext }) => {
  const [isEnabled, setIsEnabled] = useState(isActive);

  const handleChange = () => {
    setIsEnabled(!isEnabled);
  };

  return (
    <div
      className={`flex items-center bg-${
        isEnabled ? "green-400" : "gray-300"
      } ${
        isNext ? "border-b-4 border-blue-500" : ""
      } px-4 py-6 m-2 rounded-lg w-64`}
    >
      <div className={`text-lg font-bold p-2 ${isNext ? "text-blue-500" : ""}`}>
        {label}
      </div>
      <div
        className={`pb-2 text-sm pt-3 ${
          isEnabled ? "text-white" : "text-gray-500"
        }`}
      >
        {time}
      </div>
      <div className="ml-auto">
        <label className="relative inline-flex items-center cursor-pointer">
          <input
            type="checkbox"
            value={label}
            className="sr-only peer"
            checked={isEnabled}
            onChange={handleChange}
          />
          <div className="w-11 h-6 bg-gray-200 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 dark:peer-focus:ring-blue-800 rounded-full peer dark:bg-gray-700 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-blue-600"></div>
        </label>
      </div>
    </div>
  );
};

const getNextAlarmTime = () => {
  const currentHour = new Date().getHours();
  const currentMinute = new Date().getMinutes();

  for (let i = 0; i < alarmTimes.length; i++) {
    const [alarmHour, alarmMinute] = alarmTimes[i].time.split(":");
    if (
      currentHour < parseInt(alarmHour) ||
      (currentHour === parseInt(alarmHour) &&
        currentMinute < parseInt(alarmMinute))
    ) {
      return alarmTimes[i].time;
    }
  }

  return alarmTimes[0].time; // Return first alarm time if all times have passed
};

export default AlarmApp;
