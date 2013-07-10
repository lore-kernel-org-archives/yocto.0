Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E54E013CB
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 22:04:53 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id kl14so6302471pab.6
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 22:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=AdT0jvpC5N5qoES0izIdFHyccxlSmbSYSi3Mv/dOXSs=;
	b=Q5oQhhRyvuYzx2uLhUCYW2x8RXcRFmelNn6nhCUpqrRI13JTDmxmoiqboX6qMjnAmT
	ULDC/j/180x/lTjNAad/dk//dnvsjjDv7ccH5ZBqdZfFYlZcelsM+2gtyCcG/eS3uycx
	JHcg3F7Bvhqi7ItfmpEW3LUzedqODOZHfykY8rYD3ubHf9U4VQ9nx6qjooXCPX1d7PvC
	yHEEJ/8NhZmqlZGhV0r1yUkoNna15zJ3+HUnTJWArYDfHUCuMCEsoqZmUi/sj9GyVEuz
	IDkxLsVjGo+HepWMmKB2r5Uo9X1orfQJFEn0JGLwK+Q/MmSsdG+ah/fgcYpGneU9Qmmo
	ArXw==
X-Received: by 10.66.254.135 with SMTP id ai7mr31489956pad.185.1373432693630; 
	Tue, 09 Jul 2013 22:04:53 -0700 (PDT)
Received: from sa-nc-spg-194.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	fr1sm31763812pbb.26.2013.07.09.22.04.51 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 09 Jul 2013 22:04:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20130709205006.GW3288@jama>
Date: Tue, 9 Jul 2013 22:04:53 -0700
Message-Id: <C2C2584F-0108-426E-9303-4921E97E4D92@gmail.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
	<20130709205006.GW3288@jama>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-freescale] Compile error for boost_1.54.0
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
X-List-Received-Date: Wed, 10 Jul 2013 05:04:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 9, 2013, at 1:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:

> On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
>> Forwarding to Yocto mailing list:
>>=20
>> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>>=20
>>> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>>>=20
>>>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>>>=20
>>>>> I'm getting a failure in do_compile when building boost_1.54.0 =
using master-next for the wandboard-quad.
>>>>>=20
>>>>> The log is about 1.5MB, but the important bit seems to be that =
uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>>>=20
>>>>> Has anyone seen this before?
>>>>=20
>>>> I also meant to say that adding:
>>>>=20
>>>> typedef unsigned long long uintptr_t;
>>>>=20
>>>> to atomic.hpp 'fixes' the build, but this is not a good solution =
;-)
>>>=20
>>> It needs to be checked against normal Poky to ensure it is BSP
>>> specific; I doubt it is.
>=20
> See
> =
http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/09133=
1.html

in above thread answering to your question if you want to include =
<cstblib> you need to specify
-std=3Dgnu++0x or -std=3Dc++0x to cppflags. above container is not =
supported prior to c++0x standard


>=20
> But maybe it wasn't caused by eglibc upgrade (and header cleanup in
> eglibc) but by boost upgrade.
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


