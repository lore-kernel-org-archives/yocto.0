Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7330AE0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:10:56 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so6875254qad.14
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=+zf+FxKsdgIDJgRoM30n1S0k8HrtQq0JPsI+1E39+Ao=;
	b=iJoTYKCjtbraSWSn7HXAqY4yJ8A3RBVLmX2U+mxYuojRTFE6e9XJNZv2/1RrjvRvBW
	zfD4m1CU2sKD9YFzROVdn35jMZPeeaHZqBIqhxv1AGCxWfHti8G5OXq+yLK6Bg+scqk+
	hrfvNwmyra/uTO9qq7k7SpuG/qrvyN5Ym71Jc=
Received: by 10.224.214.201 with SMTP id hb9mr18333819qab.86.1324645855766;
	Fri, 23 Dec 2011 05:10:55 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	v5sm24008943qao.21.2011.12.23.05.10.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Dec 2011 05:10:54 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
Date: Fri, 23 Dec 2011 08:10:53 -0500
Message-Id: <B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
References: <4EF34776.9030002@gmail.com>
	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
	<2143100.ORnxPSEQca@helios>
	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
To: Koen Kooi <koen@dominion.thruhere.net>
X-Mailer: Apple Mail (2.1251.1)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 13:10:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:

>=20
> Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende geschreven:
>=20
>> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende =
geschreven:
>>>> I know the examples in the documentation of Yocto use meta-intel a =
lot
>>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>>=20
>>>> Is there a meta-ti or similar that gets you the meta-beagleboard =
and
>>>> meta-pandaboard?  If not how do you clone and checkout the =
pandaboard
>>>> BPS?
>>> =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/
>>>=20
>>> It has a README in there on how to set it up, read it and follow it
>>> precisely.
>>=20
>> Just out of interest, why does meta-texasinstruments depend on =
meta-angstrom?
>=20
> It needs extra things in overrides and reuses tasks from there.

Sorry for the follow-up, but if I clone the meta-texasinstruments bsp =
repository and checkout the pandaboard-rework branch,
how does that relate to the Yocto branch/bsp yocto/standard/pandaboard =
on the Yocto site?

Being a Yocto newbie, it's hard enough to understand all the branches on =
the yocto site. Relating the meta-angstrom is confusing.

The light bulb has now gone on yet :-)

Jim A

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


