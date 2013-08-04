Return-Path: <richbayliss@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7BB5E015D6
	for <yocto@yoctoproject.org>; Sat,  3 Aug 2013 17:27:03 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id i4so3958629oah.9
	for <yocto@yoctoproject.org>; Sat, 03 Aug 2013 17:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tM2eJ8/QljZ2vgXxVCy03gZdTbwyJZhUb4dBYVQsfQM=;
	b=tisXEkbAZwQCfkFwGALpM+9TeD9YccIjp517LOjyf3aSZGmwVReYXKn1LEeSA2soTZ
	2zqcQju7PEhgJ+Zx5v85VfzLVesli52C1GIvxCT1dT99n8TEqSdB+WA5B/flFCZBLCoi
	TSxEjyHNkcuwcTIDswiQAC5izhyJHtc5wdQUFmWO1rOYG40qDPbpyBd2vVBqG2kacSiN
	FDKPdp44vDHMcNWFxs0PqbHtIvZivoj/6HYPJainCgTiRtsu6jufUm/Q9wNxo+xd4ZJg
	5PoWCm2piY+aWelOy+Yb5zAjvEafxhaBvHM/efKmcX83atsqajaifIzjTLz6fOpt3fLQ
	nrTw==
MIME-Version: 1.0
X-Received: by 10.50.77.80 with SMTP id q16mr517487igw.3.1375576021791; Sat,
	03 Aug 2013 17:27:01 -0700 (PDT)
Received: by 10.64.25.1 with HTTP; Sat, 3 Aug 2013 17:27:01 -0700 (PDT)
In-Reply-To: <11658953.R2RoUsbsuX@helios>
References: <CAHLvMfbjrLfbxt-9oa+WRgobux+o5B8RM6uDeLh+wB4GKN_nfQ@mail.gmail.com>
	<11658953.R2RoUsbsuX@helios>
Date: Sun, 4 Aug 2013 01:27:01 +0100
Message-ID: <CAHLvMfZwQj6B9uzZC9wPbSqr+n8609FA90tAy7jPHp9mqDjPfw@mail.gmail.com>
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
X-List-Received-Date: Sun, 04 Aug 2013 00:27:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am using the standard sysvinit/systemd - I haven't specified either,
so whichever is default.

Cheers,
Rich

On 2 August 2013 13:47, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Rich,
>
> On Tuesday 30 July 2013 11:43:43 Rich Bayliss wrote:
>> I am trying to build for Raspberry Pi including "read-only-rootfs" in
>> my image features. My aim is to have my SD Card read-only and at some
>> point add a read-write overlay to certain directories. This should
>> enable my system to boot fresh each time, and have some persistent
>> storage for user files etc.
>>
>> However, after building my image I can SSH into the system and issue
>> "touch test" to create a file in my home directory, then after a
>> reboot it is still there. That isn't very read-only :)
>>
>> Am I missing something, or is this working incorrectly?
>
> It sounds like it's working incorrectly. Since meta-raspberrypi constructs the
> SD card image using its own custom class I wonder if it has anything to do
> with that. Andrei, do you know anything about this?
>
> BTW, are you using sysvinit or systemd in this image?
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

