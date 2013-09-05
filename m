Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47C77E01542
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 00:32:28 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id db12so226786veb.8
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 00:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=4MomjKZ1vWMbwXR8w4SlEv10qY/PSayn5VPeLuEQPQ4=;
	b=YvJHOI6jIO1EPK0sFhp3t5WrQq/yV6VuWERv1sQuMBsIQZKvOusfA+l3WOH9+Xp2YI
	wU88gV61tQwy3A6Wqmp4oTc3o18+0zCPB/BA/CZ0DO9Nc1m6wUeQOys8FnQ+nD80H4qq
	aWPVINawOln7pyIsicci5f1MmKCTL1XaXd0kaLTHEb5QvUPM15miKTZN4VsBLyVR0oB3
	pqGp9AXY9j1sdKNYbXY1rUen8Zux3X/JvEbxmQb5FSGEhu/7ckQqrahdzcw6K73PcEh2
	DSLhJ4cTsV7GG/nmR2+/DnWOplP+H6vrSqkZg0P5U8fXFUzaAZ2mtUi+eqJM+yc3VZi2
	NfMA==
X-Received: by 10.220.164.202 with SMTP id f10mr305909vcy.25.1378366347454;
	Thu, 05 Sep 2013 00:32:27 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Thu, 5 Sep 2013 00:31:47 -0700 (PDT)
In-Reply-To: <522830FF.6090100@vtkloud.com>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 5 Sep 2013 08:31:47 +0100
X-Google-Sender-Auth: DyHSwCRGmBduk9yPnPuaUAwcRR4
Message-ID: <CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
To: JC <jc@vtkloud.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 07:32:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 5 September 2013 08:21, JC <jc@vtkloud.com> wrote:
> On 04/09/2013 18:46, Gary Thomas wrote:
>>
>>   git://git.yoctoproject.org/meta-raspberrypi
>>
> Thanks. I checked out everything (including a "fresh" poky) and I get this
> error:
> ERROR: Error executing a python function in <code>:# | ETA:  00:00:57
> ExpansionError: Failure expanding variable MAJ_VER, expression was
> ${@oe.utils.trim_version("2.28.2", 2)} which triggered exception
> AttributeError: 'module' object has no attribute 'trim_version'

That looks like a parse error so the full log shouldn't be very long
as that point, may be helpful to post it.

>
> my local.conf changes: just added raspberrypi machine
> bblayers.conf:
> added
>   /media/yocto/yocto/openembedded-core/meta \
>   /media/yocto/yocto/meta-raspberrypi \
>

The README in meta-raspberrypi states that you need meta-openembedded
as well (specifically, the meta-oe layer). I'm not sure that this is
the cause of your error though.

What branches of the different layers are you using? I just want to
make sure they're all the same. Also, what version or branch of
bitbake are you using?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

