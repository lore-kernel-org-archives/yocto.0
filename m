Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D78AE0146A
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 14:56:24 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2100814eek.35
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 14:56:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=PwWSnwDZwNoGl7h/VXaHYnMMra8Fb6nHimhpDQIa+Wc=;
	b=CE6vxBoh/eBYbDP4AqhiNOs9VF1tzNdxSlvpqhQuRf2hHJwcxbjHwFZ4OF0EyKMPhR
	ZMuDPZ0XfcwA2IeE6CzHyrMfBBAaQxu1PIXFJ5TZw4E96Nuf27lDVMkVH433BBJ7pmeo
	tYIUaFTmrWkvU2zEKGjIiCW+unxwOVpKxcXGOKq7sEYXQMzRzxP2utpITcU5R0FAZ1v+
	giMB5922L+PlYja5mwoFg8c61pOEhZxZZfjKQQ6n0pxH+OnlWmQMzpWHpxuodhFUqYDk
	HiDkhPslj5JMODk8C9gSsl8d3vBJkaDvSJg/pSNPNjRIH1oZzfjdPsJVzT3Qy0kpKH95
	rmBQ==
Received: by 10.14.98.77 with SMTP id u53mr1828805eef.185.1341093382299;
	Sat, 30 Jun 2012 14:56:22 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id t3sm19884671eeb.15.2012.06.30.14.56.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 30 Jun 2012 14:56:21 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4370319.CbK9Nk4c9m@helios>
Date: Sat, 30 Jun 2012 23:56:18 +0200
Message-Id: <EA4EED0E-61CA-415E-AA6E-E708D7859323@dominion.thruhere.net>
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
	<4370319.CbK9Nk4c9m@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
X-Gm-Message-State: ALoCoQkXJKE+nOLUz9ZrrPSPQGak5zSv59JzJqbB5difoaXDG7Vni3ZUvYHOSuOTaaUwqv0Xz9/N
Cc: yocto@yoctoproject.org, maniacbug <maniacbug@ymail.com>
Subject: Re: How to include libstdc++ in an image?
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
X-List-Received-Date: Sat, 30 Jun 2012 21:56:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 jun. 2012, om 12:56 heeft Paul Eggleton het volgende geschreven:

> On Tuesday 26 June 2012 19:22:20 maniacbug wrote:
>> Hi.  I am using denzil, trying to build a core-image-minimal with
>> libstdc++ installed.  I want to cross-develop in c++, and run the
>> resulting apps on the image.  For now, I am using qemu-arm as the
>> machine.  I've been able to build and run core-image-minimal out of =
the
>> box. build the cross tools, and build apps using the cross tools (and
>> even add ssh to the image).  What I cannot figure out how to do is =
get
>> libstdc++ (and libgcc1 and libc6) onto the target machine.
>>=20
>> The task-core-standalone-sdk-target looks super promising,
>> seeming to contain the exact pieces I need.  I thought I could add =
this
>> to the IMAGE_INSTALL line in core-image-minimal.bb, and have the libs
>> show up.  This didn't happen, so clearly I have some more to learn =
about
>> poky.
>>=20
>> Can anyone advise the appropriate way to inject libsdtc++ (and its
>> dependencies) into a poky image?  Please note that I do not need to
>> compile/link apps on the target, only run them.
>=20
> Adding libstdc++ to IMAGE_INSTALL should work - in fact I just tried =
it and it=20
> worked here (although I used the alternative of adding it to=20
> CORE_IMAGE_EXTRA_INSTALL in local.conf, but the result should be the =
same).=20

But do note that if you ship libstdc++ without anything linking to it =
you forego on the linking exception to the GPL. That is general is a =
Very Bad Thing(TM), so ship a helloword.cpp binary to keep the fsf =
happy. As an added bonus the helloworld will drag in the lib =
automatically.=

