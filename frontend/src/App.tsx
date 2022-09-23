import React, {useEffect} from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { Chat } from "./components/Chat";
import { Login } from "./components/Login";
import { Navbar } from "./components/Navbar";
import { ProtectedRoute } from "./components/ProtectedRoute";

import { AuthContextProvider } from "./contexts/AuthContext";

export default function App() {
  useEffect(() => {
    document.title = "Chat App";
  });
  return (
    <BrowserRouter>
      <Routes>
        <Route
          path="/"
          element={
            <AuthContextProvider>
              <Navbar />
            </AuthContextProvider>
          }
        >
          <Route path="" element={
              <ProtectedRoute>
                  <Chat />
              </ProtectedRoute>
          } />
          <Route path="login" element={<Login />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}
