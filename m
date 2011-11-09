Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D3EAE00307
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 11:13:03 -0800 (PST)
Received: from mail-yx0-f180.google.com ([209.85.213.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 09 Nov 2011 11:13:02 -0800
Received: by yenr11 with SMTP id r11so2332703yen.25
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 11:13:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.185.232 with SMTP id ff8mr4756909igc.32.1320865981156; Wed,
	09 Nov 2011 11:13:01 -0800 (PST)
Received: by 10.50.40.194 with HTTP; Wed, 9 Nov 2011 11:13:01 -0800 (PST)
In-Reply-To: <4EBAD015.6040901@intel.com>
References: <CAPhnLPCKxivJQtQJ23=f4Y7GmPAoHZ2FncB0KT4GUu+t-qiUtA@mail.gmail.com>
	<CA+M6bXkgwL53FytKNc78UxAYd24tKM_s3P4t46Bc6Ncm82fMuA@mail.gmail.com>
	<4EBAD015.6040901@intel.com>
Date: Wed, 9 Nov 2011 11:13:01 -0800
Message-ID: <CAPhnLPDS+QO=miZNSHprCQmd5Qx3bHzB-_Per9WDCW30pBOtOQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Darren Hart <darren.hart@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: New ways of keeping up with the status of the build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Nov 2011 19:13:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 9, 2011 at 11:10 AM, Darren Hart <darren.hart@intel.com> wrote:
> On 11/09/2011 08:00 AM, Tom Rini wrote:
>> On Tue, Nov 8, 2011 at 2:17 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>> I've implemented two new ways of keeping up with the yocto
>>> autobuilder's build status (other than the obvious way of looking at
>>> autobuilder.yoctoproject.org:8010 of course)
>>>
>>> First is through the yocto-builds@yoctoproject.org email list. If you
>>> haven't joined it yet, please do. It's in testing phase right now and
>>> only sends out the last 20 lines of the autobuilder log on a failure
>>> and the URL to the steps that failed.
>>> The second is through the #yoctobuildstatus irc channel. yocto-ab-bot
>>> is the yocto-autobuilder IRC bot which announces build events to the
>>> channel or via PM. I'm keeping it off of #yocto to keep it from
>>> spamming the channel but it should be relatively low traffic. Again,
>>> this is all still in testing phase, so things may change.
>>
>> There's also http://autobuilder.yoctoproject.org:8010/rss which I
>> suspect is under-utilized by people.
>>

I'm glad others are using it. I have my chumby set up to poll the rss
feed @ home.

> Nice. Added to my feed, with a filter on "failed". The subjects are
> really long and difficult to parse. Could these be massaged a bit? Just
> dropping 75% of the commit hash would help a lot :)

Sure, I'll see if I can squish it down.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

