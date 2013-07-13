Return-Path: <paul.betafive@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D4C7E0071F
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 07:57:08 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id j1so14185293oag.32
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 07:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=qURJt4dYHhLQT8Zl5PwbeINK+Hmj5DDTOsafhstf6aE=;
	b=UL66KV7oMNATiCiCVTexEKyEmp2Tc/nckGaSBsU1JKlCs0ha+0rujtzyseJptBzbIU
	w/hWAdz6GixJEcXqzqpLrG/SnEhMLgptzgECZjjXLhukWGULhGGo7zAJbNeX8UFYgN1G
	ZW9VGqHukb+qSUWuTX7uUXFOsRA7+5+dP/0d1n/RLG35Nsh0+duc0KqpydIyhhN4pLPZ
	/4k8WtFIJ48G2DFeqJORuHwkljikO8ijQq7kbBGl+tpjPG/kELpdd/lISeKJjzfW7eXE
	lDp7NR5jRZbhcouqusemeI3aktr5VICTybGQQiT07fj3Z04sDOdSG2Nl+fc1FTeT68Ow
	Py3w==
X-Received: by 10.182.61.105 with SMTP id o9mr39303376obr.54.1373727428098;
	Sat, 13 Jul 2013 07:57:08 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.76.102.11 with HTTP; Sat, 13 Jul 2013 07:56:28 -0700 (PDT)
In-Reply-To: <51E16994.5040809@windriver.com>
References: <CANyK_8f=m4k8AD63z8YT8ebi0Ayz_nJdH5codGWHVkDpW1iw=Q@mail.gmail.com>
	<51E16994.5040809@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 13 Jul 2013 15:56:28 +0100
X-Google-Sender-Auth: FYgzUpWtg-gbJOr0ZMstGCnge-0
Message-ID: <CANyK_8e9Ay2-RXC_nmzxJMqazq1sKeOCeGUX2dvLGx9tjNYK6A@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-yocto-bsp] [dylan] linux-yocto_3.2 version mismatch
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
X-List-Received-Date: Sat, 13 Jul 2013 14:57:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 July 2013 15:52, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> On 13-07-13 10:27 AM, Paul Barker wrote:
>>
>> The commit hash 40bde7a43ef3cd85729ab02464a7ecdf71e522a6 is set in
>> .../poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> and checking the git log for linux-yocto-3.2, this does refer to
>> version .18.
>>
>> So my guess is we should do one of the following:
>> a) Modify PV (or LINUX_VERSION) in the bbappend to reflect the correct
>> version?
>> b) Bump the git commit hash used for beagleboard to 3.2.32?
>
>
> (b) is the right solution. Bump the hash to match the PV. The qemu* BSPs
> in the branch would likely show .32 and that's the tested version, but
> clearly the bb needs an update as well.
>

I'll send a patch to do this and check the other machines listed in
that bbappend whilst I'm looking at it.

Thanks,

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

