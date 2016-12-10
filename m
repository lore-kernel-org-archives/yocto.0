Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FED6E00992; Sat, 10 Dec 2016 13:26:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C05E6E008CA
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:26:28 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id 20so49606782uak.0
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+qqwcDAdkQ7zvAkmbBKpFALbNkbuAZjjp1jTTbQoGZc=;
	b=RzpUBgDt0PvRf+VwMMw17SG0z59G/xKOgJi3IieyruE4gzwY/egl/KgmkZ48xARbu7
	3f2vwFyro4P6G6tQhAicG6PW8QuqmBJF21UvoM/MqqSBWuBDs29LT1HI40wlP1rtLKNp
	rh/+W6yFhyimtDmeAwdnAmtFk8AxOFIvX6xm5yv1THha+QJUOdqIx3ImcRiADBJo6HP9
	XlK4uMUyxRlFKb5D8ZW0YFqv9WFg5uzIZ9r2PnW/3XAKatDQ0hKalYsKnft+DitixmO5
	1lFlcW70F6qF86NgHbuY7Lwc6CJEf6YtZMaAJN83oESZkVny9PnPM8ZpSzlV6qPFxuxP
	iqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+qqwcDAdkQ7zvAkmbBKpFALbNkbuAZjjp1jTTbQoGZc=;
	b=XE3GhM8WlP0FuNBK39hlma+k0CXLitYr9fIC0NdSWT+LJKea8Ni5uc5kWODaGKN1Ol
	bOUAytvmwXKfjvg+BfjYZjyD+OuzUuwDZmHeqVWb1UTBjG/ilN0wev0oW7JKuwnSZFCG
	rUAmyfW8u52fbt55jORxa/ceOZXvsxNInRgkU9xyUBUt5Aje2zlcZfDTU3BwstCa6U/u
	TCwrMUbrsPrF/FJj0Msx7akBIgN5WH9AoIPLQ8srYo/kV4QgZxkdP8ijCnvw/GxhZzda
	XwHIRAkRvxc4Z7kz6jJmXnpWl7kKnmnyfFcDtvtkB2FifQ1qPDb8kGiUhWAbhmZRuSA6
	pWng==
X-Gm-Message-State: AKaTC00xvgP8j8gBc2gKm78xcaMrEBkL9ynQV4oMywuXYqDcNeUwxZ1XqHI48O1Nyx7W/20SeRYCbrw2sp8AnQ==
X-Received: by 10.176.0.180 with SMTP id 49mr67238399uaj.32.1481405187721;
	Sat, 10 Dec 2016 13:26:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sat, 10 Dec 2016 13:25:57 -0800 (PST)
In-Reply-To: <DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
	<DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Dec 2016 13:25:57 -0800
Message-ID: <CAMKF1sqh=VLWPf5-VBSs2dvGwu0XTPuZiLc3WwEGmZ+eOSsY+A@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
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
X-List-Received-Date: Sat, 10 Dec 2016 21:26:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 9, 2016 at 8:43 AM, Bryan Evenson <bevenson@melinkcorp.com> wro=
te:
> I tried a few other things, see below.
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
>> Sent: Thursday, December 08, 2016 2:50 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Can't enable reverse debugging
>>
>> I'm on poky/dizzy and I'm getting a segementation fault in my applicatio=
n
>> that I think may be related to a buffer overflow.  I'm using the Eclipse=
 plug-in
>> (on Eclipse Kepler) to debug on the hardware with GDB.  I'm trying to en=
able
>> reverse debugging but I have not had any success and I'm looking for som=
e
>> help.
>>
>> My target processor is an SAM9G25 (ARM926EJ-S core).  I have been able t=
o
>> debug through Eclipse on the target hardware without issue.  I tried ena=
bling
>> Reverse Debugging by going to Window->Customize Perspective...-
>> >Command Groups Availability and selecting "Reverse Debugging".  Now
>> there is a "Reverse Toggle" button on my toolbar, but it is always graye=
d out
>> whether I have a debug session running or not.  I have also tried enteri=
ng the
>> command "record" from the GDB console after my program breaks at main.
>> When I run the program, I get the error message "Process record: failed =
to
>> record execution log".
>
> I tried first running my application, pausing the debugger and then sendi=
ng the "record" command.  When I continued debugging, I got the following G=
DB error:
>
> ....x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/7.7.1-r0/gdb-7.=
7.1/gdb/utils.c:1073: internal-error: virtual memory exhausted.
> A problem internal to GDB has been detected,
> further debugging may prove unreliable.
>
> I did some looking around and I couldn't see any reasonable answer to why=
 this would happen.  I also just noticed that for the Debug Configurations =
under Eclipse, the debugger settings tab doesn't have "Enable Reverse Debug=
ging at startup" option listed for the C/C++ Remote Application debugging t=
ype.  Is this option just not available to me with my environment?

This could mean many things but one area I know is troublesome is
python support. Sometimes there are issues between
fundamental types, can you check if the error happens when gdb is
running some pythonic stuff.

