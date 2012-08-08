Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F809E013E5
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 19:47:47 -0700 (PDT)
Received: by eekd41 with SMTP id d41so73240eek.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 19:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=xXK1PX/PmWQTLJ4MqqbaqiR7hBCwic9xpaLPHicU/Ro=;
	b=qF0Jg0zYpmS7e+c33LJKRLjB9pLvBbFciab2sx5uYNLSkXud2DAtoQQ98pnYo6l5aQ
	6wmzKP68IR5S2JEpnfvCf+9rwpOKJJNZTy04ymRI3WYGkyJFrwu4IsoWR3i8oO44hUaI
	Pzkw1K/1tLOjCd/GA1tpi0NaGK739WrChEPnTXXHB3pnwfTcTXwbB8ZSAMrShnPS9j80
	QK2PkjOB3nyoZXs0E6puMp+pxvmt/ZOHAf0Guz9Wvrnb5T1Okk+fa3RaQsO5Cp+Bz8XB
	OqSZqE+15q1gd0Ow5PBvEvDQoOFqVPX/Z7RTMxT3h7K0fui7QC8SxTYPRK/kdg3QUdNV
	XaYA==
Received: by 10.14.175.7 with SMTP id y7mr20219051eel.29.1344394066406; Tue,
	07 Aug 2012 19:47:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Tue, 7 Aug 2012 19:47:16 -0700 (PDT)
In-Reply-To: <D7F9D339-CE6F-4F5B-81BC-C6F55C315012@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
	<AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
	<CAMKF1sowWjF4DYUyWus7A1p5qQbJ3qPhRDEGfeZBOeohG6012g@mail.gmail.com>
	<D7F9D339-CE6F-4F5B-81BC-C6F55C315012@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Aug 2012 19:47:16 -0700
Message-ID: <CAMKF1sp6hdREYhkANLM2HSVmboNh0vkijqGyJr_JSGsd20G_RQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Wed, 08 Aug 2012 02:47:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 7, 2012 at 1:33 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> I tired manually copying the static bash binary 8mb, over to the ramdisk =
root folder. The problem still manifests, if there is no other file other t=
han the static bash file, it displays the prompt. If the core-minimal-conso=
le image exists, along with the static bash binary in the root location, it=
 gives the kernel panic, as shown above.

I dont understand why it would boot when the rfs is just static bash
and not when you bundle it along with rest of file system and setting
init=3D/bin/bash you should get same results imo unless
there are some conflicts in the latter case where /bin/bash is not static

OK, another approach I could suggest is to use chroot. So boot
the system into a known root file system. Then untar the new root file
system under /opt or somewhere then chroot into it and try
to run any dynamically linked program and see if that works.

