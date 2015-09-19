# In the morning

## Getting up

> - Turn off alarm
> - Get out of bed
> - Write some code

~~~~ {.go}
// main handler, triggered by poker server
func botHandler(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case "GET":
		registerBot(w)
	case "POST":
		game := ReadGame(r.Body)
		fmt.Fprintf(w, "{\"bet\": \"%d\"}", betForGame(game))
	default:
		log.Fatal("Method unsupported:", r.Method)
	}
}
~~~~


## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

------------------

![picture of spaghetti](img/spaghetti.jpg)

## Going to sleep

- Get in bed
- Count sheep

<div class="notes">
This is my note.

- It can contain markdown
- like this list

</div>
