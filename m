Return-Path: <richbayliss@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA988E00747
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2013 16:51:02 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id l10so4921575oag.33
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2013 16:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z+d9MO+9oYgBtUylVMZmRUz1TYwVwVxOoG3oCLH4xvc=;
	b=cR7uctVy+cosJ9c0Kk+MqpdD6lcqdvuuXDj1qyfiafjiFXkuta+np19ynIN340Cahi
	8KZu2BMoGVtemCO50siOahmd40cq8qHEzkokfjR2txfKr3mdvlyrMAA+5Kw4qAYjWHyT
	ymAAX5oym+oj9UB2JAoiGp0ncL7TMRxpToRjXYr3RPi07prmYP5cZtKWhG7xqJdk073e
	q+J56i5hLpaKBWvmBewuaKrTOjQ2MOya+XvayU4EnaCkBqb9R+kL7Uuv7lJDbj9mQE6V
	WmBWqGZmqNW5A/IZwawTr08iwmyW6Qfy1mGOKy6XU2oaWSIWoA+O/idBV2RBunmbvtof
	f6Aw==
MIME-Version: 1.0
X-Received: by 10.50.108.71 with SMTP id hi7mr801589igb.59.1375660261763; Sun,
	04 Aug 2013 16:51:01 -0700 (PDT)
Received: by 10.64.25.1 with HTTP; Sun, 4 Aug 2013 16:51:01 -0700 (PDT)
In-Reply-To: <1680213.YPjXP0RsTC@helios>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
	<11658953.R2RoUsbsuX@helios>
	<CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
	<1680213.YPjXP0RsTC@helios>
Date: Mon, 5 Aug 2013 00:51:01 +0100
Message-ID: <CAHLvMfb9FStHeLgHTzTGf13XWDqbLeoQi6BKXW=f5UV1S1w0EA@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Read-Only RootFS is not read only
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
X-List-Received-Date: Sun, 04 Aug 2013 23:51:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry Paul - I am new to all this. I have checked and I am using Poky (1.4)

Rich

On 4 August 2013 23:35, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> On Sunday 04 August 2013 01:27:01 Rich Bayliss wrote:
>> On 2 August 2013 13:47, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>> > On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
>> >> I am trying to build for Raspberry Pi including "read-only-rootfs" in
>> >> my image features. My aim is to have my SD Card read-only and at some
>> >> point add a read-write overlay to certain directories. This should
>> >> enable my system to boot fresh each time, and have some persistent
>> >> storage for user files etc.
>> >>
>> >> However, after building my image I can SSH into the system and issue
>> >> "touch test" to create a file in my home directory, then after a
>> >> reboot it is still there. That isn't very read-only :)
>> >>
>> >> Am I missing something, or is this working incorrectly?
>> >
>> > It sounds like it's working incorrectly. Since meta-raspberrypi constructs
>> > the SD card image using its own custom class I wonder if it has anything
>> > to do with that. Andrei, do you know anything about this?
>> >
>> > BTW, are you using sysvinit or systemd in this image?
>>
>> I am using the standard sysvinit/systemd - I haven't specified either,
>> so whichever is default.
>
> Except the default depends upon what DISTRO you are using. Which DISTRO are
> you using - "poky" or something else?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
Rich Bayliss

