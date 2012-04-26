Return-Path: <koen@beagleboard.org>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DE7E00596
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 09:21:48 -0700 (PDT)
Received: by werc1 with SMTP id c1so1186786wer.35
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 09:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=lZZtdJf/norUyTQQWt9NSkXfFmj0Ei9HQnPc92aTRxU=;
	b=EtOBHza3CaWG3NwDxxrXcH/EscpVs/XsMwU9cNQRInKNvwFg3AOraovyshoCHD2gDN
	87cV/uLKkIiYTjkN1eeeKFsT5/Mv0Cafw9hwi2/F/JsXZ0fpU9mQ5MBT3sh9YGkdSoid
	Bj5PLK7ElK3OGqq+QZeNR1nsa8pRdkzK0jEcerlVlh0r3oFhcL3Gs/Dzsu9Cv4L470Fh
	BSCh4MQeQemYzJgAZw0EiamsqIgAsW4k2yhLK0ogYpV9KC/Wc3NJGgOOUW6qjmWJhUoo
	4vd9G5Ao4ROl3JxBxxvqzeg75M41KNRzZ62YOUI9qOTivCX4cGysFXIhgWw70lCTgamd
	MQhA==
Received: by 10.180.105.194 with SMTP id go2mr17995914wib.22.1335457308004;
	Thu, 26 Apr 2012 09:21:48 -0700 (PDT)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id j3sm12485569wiw.1.2012.04.26.09.21.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Apr 2012 09:21:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <1335436998.20130.0.camel@ted>
Date: Thu, 26 Apr 2012 18:21:45 +0200
Message-Id: <EE230536-AE66-41DB-93EE-B1A7CA9FFD75@beagleboard.org>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
	<1335436998.20130.0.camel@ted>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmxw7ZqE+WQRdr4DEZr84qEPQpUkObjKvOLdbPbqX9lMHFj5+xmzFo0PTVu2FBqQdtJi9u3
Cc: yocto@yoctoproject.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: Re: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Thu, 26 Apr 2012 16:21:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 26 apr. 2012, om 12:43 heeft Richard Purdie het volgende geschreven:

> On Fri, 2012-03-30 at 00:21 +0200, Martin Jansa wrote:
>> First 5 patches are taken from oe-core.
>>=20
>> Then there are some cleanups and fixes for issues I've found while =
looking=20
>> for cause of very long package-index calls.
>>=20
>> Some patches uses compatible changes from 2to3 (tested with =
python2.7), but
>> python3 support is not 100% complete, but were closer.
>>=20
>> And in the end I've found the cause.. printing long fields (e. g. =
description)
>> with opkg.py was producing empty lines in Packages file (which are =
Packages entry=20
>> separators) so only first entries till first empty line were =
processed from old
>> Packages file and the rest was always extracted from control files in =
packaged .ipk.
>>=20
>> And this also fixes Packages.filelist generation.
>>=20
>> I don't use python very much, so please review.
>>=20
>> And the speedup? Almost 60 times :)

[..]

> I reviewed these and they all look like good improvements. I've merged
> it into master, thanks!

After some more time in oe-core master for testing we should seriously =
consider cherry-picking the SRCREV bump to the denzil branch.

regards,

Koen=

