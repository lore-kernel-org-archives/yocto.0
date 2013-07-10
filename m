Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3304E01466
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 21:19:35 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id kl14so6285092pab.34
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 21:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=kDM7Lt0umglMG+PIcGXFdGYAFMHrU9FVIfRxIEe6j0w=;
	b=jb62Q2wLRn3ALw0EgBwdj/N+FfBa5IbzQkeVpk94l8ggLElG7oRDGWWe+AtT6Hix38
	nz6PNzVNgxm2AhMAjpttwzU8t8kAsrNWP9pgXeNKDiNqmtcMPCIx73zjMRIy+fRT3zCN
	UTPeCslBx/CWW22sJjgBAd02a53B4gTyZ+qBbMI9JKMzTfMc5zlik+QUqSuEiiiwugY3
	nIa0EQfpETGHmMx62k/B88ypYYwrF5V2aBkVUja//9aiHPZ9ji0iCOr5RhF5EZ+quy7x
	BeJgBFOnB6Wrhvqmh7UTy/DRtYEHYHWEMWvusUh5wPRteGUut4djcktqz/y9NVAlO3u3
	7jGw==
X-Received: by 10.66.27.44 with SMTP id q12mr31200199pag.138.1373429974646;
	Tue, 09 Jul 2013 21:19:34 -0700 (PDT)
Received: from sa-nc-spg-194.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ve3sm31563645pbc.14.2013.07.09.21.19.31 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 09 Jul 2013 21:19:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51DCD25E.80105@linux.intel.com>
Date: Tue, 9 Jul 2013 21:19:33 -0700
Message-Id: <414B1C1C-D37B-41F3-BB07-7E25E0B3688C@gmail.com>
References: <6C54348E-3ADA-4621-9F72-3663C23B5445@keylevel.com>
	<045D8888-C821-4AB7-81B7-75A5C94E2962@keylevel.com>
	<CAP9ODKoK2JktR+3D0FjZZM5KUCsQue-cVCO0Ch7ebKrA5hs2wA@mail.gmail.com>
	<38DD74DA-F7B4-4D72-B00B-4B81076D784B@keylevel.com>
	<20130709205006.GW3288@jama> <51DCD25E.80105@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
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
X-List-Received-Date: Wed, 10 Jul 2013 04:19:35 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Jul 9, 2013, at 8:17 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 07/09/2013 01:50 PM, Martin Jansa wrote:
>> On Tue, Jul 09, 2013 at 09:25:30PM +0100, Chris Tapp wrote:
>>> Forwarding to Yocto mailing list:
>>>=20
>>> On 9 Jul 2013, at 21:21, Otavio Salvador wrote:
>>>=20
>>>> On Tue, Jul 9, 2013 at 5:19 PM, Chris Tapp =
<opensource@keylevel.com> wrote:
>>>>>=20
>>>>> On 9 Jul 2013, at 20:09, Chris Tapp wrote:
>>>>>=20
>>>>>> I'm getting a failure in do_compile when building boost_1.54.0 =
using master-next for the wandboard-quad.
>>>>>>=20
>>>>>> The log is about 1.5MB, but the important bit seems to be that =
uintptr_t isn't defined but is required by /boost/atomic/atomic.hpp.
>>>>>>=20
>>>>>> Has anyone seen this before?
>>>>>=20
>>>>> I also meant to say that adding:
>>>>>=20
>>>>> typedef unsigned long long uintptr_t;
>>>>>=20
>>>>> to atomic.hpp 'fixes' the build, but this is not a good solution =
;-)
>>>>=20
>>>> It needs to be checked against normal Poky to ensure it is BSP
>>>> specific; I doubt it is.
>>=20
>> See
>> =
http://lists.openembedded.org/pipermail/openembedded-devel/2013-July/09133=
1.html
>>=20
>> But maybe it wasn't caused by eglibc upgrade (and header cleanup in
>> eglibc) but by boost upgrade.
>>=20
> I did the boost update and with the older eglibc, which is why it =
seemed to work for me.
>=20
> I just did another build with the updated boost and both eglibc =
version 2.17 and 2.18, seems like the 2.18 version causes this breakage, =
as it built fine with 2.17, I also tried to revert the boost updated and =
build the older boost with 2.18 and it worked.
>=20
> So it must be something with the newer boost and eglibc in =
combination, more digging is required.
>=20

its related to https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4812


> Sau!
>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


