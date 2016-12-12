Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24A4AE005B9; Mon, 12 Dec 2016 09:47:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50B2E004E5
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 09:47:34 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id i88so13648422pfk.2
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 09:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=gz7Are6f9hnQVf+bFDkViRvZZpTakXoY4VVDUX5WXOE=;
	b=sDuA3jUKXeoBdyhiB0oJu8TsyScrxsXFO4VYPbmhCmSTNg3oWtxXmzEXIQeGl3kS7P
	0nV1rFBC7IGoYpzSxfJN6ugP9PZ4qPRMUqaO5NwraQMgDoBOiY6SHzXYYiRfShF2P/4C
	cTsQieD5tsF0ZU4fY7BEnOq5sxiQEsAHiGoWyeb/LBhwE/K0Gi7nLAgesuoxmTK4FdwN
	D6eTdWHAbqSfnIkTYdqAhu/Vg21GZ4TkDn4kJs62E36TJ1QBiZb15Kwokrs4wwba2Po+
	FghbZc2AhCBO1p6b+YjovgAPmaXz8Frp+k6VrapHkkVdQyfvUe0omE/4iSeIlrYszNGq
	gVbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=gz7Are6f9hnQVf+bFDkViRvZZpTakXoY4VVDUX5WXOE=;
	b=JzD3Op765G7EoBpgZJgJfOqgbchPVm5vWuQYAbjyAQth3honDrGnYhVxjHU2/ZDShq
	1foCNdqEAuJwTkCG6rQIRCuAouBuFKiZbUwN/cfeDbS9duHz1JSKVpgJ9+cuae564gvH
	iJMgRj11bAMTRunR2P32o9zM8rraGnRYUWqgQHwbACmR2aX7QyxaKgVl0HEJ+g04d61j
	hijGJTvnlUD5GcG4YaLUu++GlXm4+hwKYPwUKF/f6QPUaWfKNBjad1ELbEzr6N7H/l6c
	7/g29vRwDY31bnRYTagzaxvgVrYVTcyYFB5VvO3qkHf3I6YUYLqWDZFoKyM4hHYKYdcB
	eU6g==
X-Gm-Message-State: AKaTC02vBk4N6gGM4kN4PN7W74wqQ4s/MwPVByUXFltl0n3vWkiuYjF2OF0uaIumB4g7Gg==
X-Received: by 10.99.103.1 with SMTP id b1mr171233902pgc.58.1481564854048;
	Mon, 12 Dec 2016 09:47:34 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:c5da:5e91:a866:bc94?
	([2601:646:8882:b8c:c5da:5e91:a866:bc94])
	by smtp.gmail.com with ESMTPSA id
	a22sm77223214pfg.7.2016.12.12.09.47.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Dec 2016 09:47:33 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DM5PR05MB2954BB4AB770D47BE6BD3562BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
Date: Mon, 12 Dec 2016 09:47:58 -0800
Message-Id: <51D706B0-66CE-4F5F-8464-20807CE7006C@gmail.com>
References: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
	<DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAMKF1sqh=VLWPf5-VBSs2dvGwu0XTPuZiLc3WwEGmZ+eOSsY+A@mail.gmail.com>
	<DM5PR05MB2954BB4AB770D47BE6BD3562BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
X-Mailer: Apple Mail (2.3251)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't enable reverse debugging
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Dec 2016 17:47:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Dec 12, 2016, at 6:59 AM, Bryan Evenson <bevenson@melinkcorp.com> =
wrote:
>=20
> Khem,
>=20
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Saturday, December 10, 2016 4:26 PM
>> To: Bryan Evenson <bevenson@melinkcorp.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Can't enable reverse debugging
>>=20
>> On Fri, Dec 9, 2016 at 8:43 AM, Bryan Evenson =
<bevenson@melinkcorp.com>
>> wrote:
>>> I tried a few other things, see below.
>>>=20
>>>> -----Original Message-----
>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
>>>> Sent: Thursday, December 08, 2016 2:50 PM
>>>> To: yocto@yoctoproject.org
>>>> Subject: [yocto] Can't enable reverse debugging
>>>>=20
>>>> I'm on poky/dizzy and I'm getting a segementation fault in my =
application
>>>> that I think may be related to a buffer overflow.  I'm using the =
Eclipse
>> plug-in
>>>> (on Eclipse Kepler) to debug on the hardware with GDB.  I'm trying =
to
>> enable
>>>> reverse debugging but I have not had any success and I'm looking =
for
>> some
>>>> help.
>>>>=20
>>>> My target processor is an SAM9G25 (ARM926EJ-S core).  I have been =
able
>> to
>>>> debug through Eclipse on the target hardware without issue.  I =
tried
>> enabling
>>>> Reverse Debugging by going to Window->Customize Perspective...-
>>>>> Command Groups Availability and selecting "Reverse Debugging".  =
Now
>>>> there is a "Reverse Toggle" button on my toolbar, but it is always =
grayed
>> out
>>>> whether I have a debug session running or not.  I have also tried =
entering
>> the
>>>> command "record" from the GDB console after my program breaks at
>> main.
>>>> When I run the program, I get the error message "Process record: =
failed
>> to
>>>> record execution log".
>>>=20
>>> I tried first running my application, pausing the debugger and then =
sending
>> the "record" command.  When I continued debugging, I got the =
following
>> GDB error:
>>>=20
>>> =
....x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/7.7.1-r0/gdb-
>> 7.7.1/gdb/utils.c:1073: internal-error: virtual memory exhausted.
>>> A problem internal to GDB has been detected,
>>> further debugging may prove unreliable.
>>>=20
>>> I did some looking around and I couldn't see any reasonable answer =
to why
>> this would happen.  I also just noticed that for the Debug =
Configurations
>> under Eclipse, the debugger settings tab doesn't have "Enable Reverse
>> Debugging at startup" option listed for the C/C++ Remote Application
>> debugging type.  Is this option just not available to me with my =
environment?
>>=20
>> This could mean many things but one area I know is troublesome is
>> python support. Sometimes there are issues between
>> fundamental types, can you check if the error happens when gdb is
>> running some pythonic stuff.
>=20
> Could you explain how to do this?  I don't use Python so I'm not sure =
if I'm doing a valid test.  I tried to debug a Python script with GDB =
through Eclipse and I wasn't successful.  I then went through the =
command line and was able to remotely run a simple Python script (print =
"Hello, Python" once per second) through GDB.  If I issued a "record" =
command through GDB first, then when I tried to debug the Python script =
I'd immediately get a segmentation fault.
>=20
> Is there something specific you'd like me to try?  If you think the =
Python support may be the issue, is there something I should be =
verifying is present or is at a certain version?
>=20

Disable python support in gdb and compile it e.g.

> Thanks,
> Bryan


