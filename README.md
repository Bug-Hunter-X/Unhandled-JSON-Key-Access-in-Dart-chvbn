# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart applications when working with JSON data: attempting to access a key that does not exist in a JSON object.  The code fetches data from a URL, parses the JSON response, and then attempts to access a key that may or may not be present.  If the key is missing, the application will throw an exception.

The solution shows how to safely access JSON keys using the `containsKey` method to prevent exceptions.