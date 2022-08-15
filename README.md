# Fellow

This project was created for extension uses.

## Context Extensions

### Navigator Extension

These directly access navigation features.

Column(
  children: [
    ElevatedButton(
      onPressed: () {
        context.pop();
      },
      child: Text('Navigation Pop'),
    ),
    ElevatedButton(
      onPressed: () {
        context.navToName('/page1');
      },
      child: Text('Navigation Named'),
    ),
    ElevatedButton(
      onPressed: () async {
        final response = await context.navToPage(Widget(), type: SlideType.TOP);
        if (response == true) {
          // ...
        }
      },
      child: Text('Navigation Named'),
    ),
    ElevatedButton(
      onPressed: () {
        context.navAndRemove('/hello');
      },
      child: Text('Navigation Named and Remove'),
    ),
  ],
);

### Duration Extension 

These extensions mainly for animation use.

AnimatedOpacity(
  duration: context.durationLow,
  child: Text('${context.durationLow}'),
);


### Widget Extension

Sometimes you want to manage visibility of widget. So you can use this extensions.

Text("Hello").toVisible(true);
Text("Hello").toDisabled(true);
