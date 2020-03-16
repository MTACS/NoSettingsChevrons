@interface PSTableCell
- (void)setForceHideDisclosureIndicator:(BOOL)arg1;
@end

%hook PSTableCell

- (void)layoutSubviews {

	%orig;

	[self setForceHideDisclosureIndicator:true];

}

%end