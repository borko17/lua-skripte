local response = http.get("https://v2.jokeapi.dev/joke/Any", {headers={}})

if response and response.body then
  local joke = ""
  if response.body.type == "single" then
    joke = response.body.joke
  elseif response.body.type == "twopart" then
    joke = response.body.setup .. "\n- " .. response.body.delivery
  else
    joke = "Unknown joke format. 🧩"
  end
  print(joke)
else
  print("Failed to get a joke. 🚧")
end
