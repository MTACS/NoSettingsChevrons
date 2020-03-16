# NoSettingsChevrons

A very simple tweak to remove chevrons on Settings cells

```objective-c
@interface PSTableCell // Declare header for PSTableCell
- (void)setForceHideDisclosureIndicator:(BOOL)arg1; // Add the method used
@end

%hook PSTableCell // Hook PSTableCell class

- (void)layoutSubviews { // Don't use layoutSubviews normally, but in this case it is fine as it doesn't add any views, just calls a setter method

	%orig; // Call the original method

	[self setForceHideDisclosureIndicator:true]; // Use the setter to hide the disclosure indicators (chevrons)

}

%end // End your hook
```
