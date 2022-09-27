# Zendesk Flutter Support



- **Native UI**
- **Chat history**
- **Answer Bot**
- **Ticket list**


## How to use?
### Initialize
``` dart

  @override
  void initState() {
    super.initState();
    ZendeskFlutterCombination.initialize(
                   appId: "{zendeskApplicationId}",
                   clientId: "{zendeskMobileClientId}",
                   nameIdentifier: "{customerNameIdentifieer}",
                   urlString: "{yourCompanyzendeskDomain}");
                  
  }
```
> just use initialize() one time

### Show help center
```dart
 ZendeskFlutterCombination.showHelpCenter();
```
> You can use in onTap()

### Show ticket/request list
```dart
 ZendeskFlutterCombination.showRequestList();
```
> You can use in onTap()


### Show new request/ticket screen
```dart
 ZendeskFlutterCombination.showRequest();
```
> You can use in onTap()


## Contribute
- You can star and share with other developers if you feel good and learn something from this repository.
- If you have some ideas, please discuss them with us or commit PR.
