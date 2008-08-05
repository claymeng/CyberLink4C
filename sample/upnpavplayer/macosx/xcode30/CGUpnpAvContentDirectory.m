//
//  CGUpnpAvContentDirectory.m
//  CyberLink for C
//
//  Created by Satoshi Konno on 08/07/02.
//  Copyright 2008 Satoshi Konno. All rights reserved.
//

#import <CyberLink/UPnP.h>

#import <CGUpnpAvContentManager.h>
#import <CGUpnpAvContentDirectory.h>
#import <CGXmlNode.h>
#import <CGUpnpAvObject.h>

@implementation CGUpnpAvContentDirectory

- (id)init
{
	if ((self = [super init]) == nil)
		return nil;
	contentMgr = [[CGUpnpAvContentManager alloc] init];
	return self;
}

- (void)dealloc
{
	[contentMgr release];
	[super dealloc];
}

- (void)finalize
{
	[contentMgr release];
	[super finalize];
}

- (CGUpnpAvObject *)objectForId:(NSString *)aObjectId
{
	return [contentMgr objectForId:aObjectId];
}

- (CGUpnpAvObject *)objectForTitlePath:(NSString *)aTitlePath
{
	return [contentMgr objectForTitlePath:aTitlePath];
}

@end
