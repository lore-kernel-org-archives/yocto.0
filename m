Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15ADE01410
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:37:22 -0700 (PDT)
Received: by mail-pb0-f54.google.com with SMTP id xa7so1040251pbc.27
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 13:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=M5MSJ2/V4PMrZEQZOkPduyqL5CKP9IcQFMDbRjCceY0=;
	b=tjzBk6zrFeHukxTO9/zz1Egd9ZMzpcpIZRxfJuYOd8ieSantkYrbrZJwX3yhxY6YIu
	sKV9kEY1YdL4I8mNXUWJhjkvpWqYhwbTgo2jWTs6OoE6qj9l0G+ScBI5M0zRVE8vwCFm
	F7VHD1Mvmsy4TNbcFynncPPO0mpN/oL8ueGi0R/pnR5QtVor5lrJQG6qjvVDBv64DgXh
	nCYbhOnWRfFRceJH28kv327IjFH7iT5Tv/0WUxRns9373UkJYByhsd20MEP6aX4AbMIa
	EuocsYCh6Ox3vBQ1c4lyHTPIgEw6HI3zgCl/XhYobUrlneZ+GRFmVpDTJGjhvfcJXKUa
	0FYA==
X-Received: by 10.68.180.132 with SMTP id do4mr11016346pbc.96.1365712642752;
	Thu, 11 Apr 2013 13:37:22 -0700 (PDT)
Received: from jchheda-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id fq1sm5437595pbb.33.2013.04.11.13.37.20
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 11 Apr 2013 13:37:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <62673661A504604B856269DAADA8BC281DE35FA7@ILPTWPVEXMB02.ecitele.com>
Date: Thu, 11 Apr 2013 13:37:22 -0700
Message-Id: <83472EBA-40E6-471C-A8D0-1CDA330ED0B2@gmail.com>
References: <62673661A504604B856269DAADA8BC281DE35E00@ILPTWPVEXMB02.ecitele.com>
	<20130411145330.1dbee1c2@e6520eb>
	<62673661A504604B856269DAADA8BC281DE35FA7@ILPTWPVEXMB02.ecitele.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use native executable from one recipe during install in another recipe
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
X-List-Received-Date: Thu, 11 Apr 2013 20:37:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Apr 11, 2013, at 7:54 AM, Michael Fainstein =
<Michael.Fainstein@ecitele.com> wrote:

>=20
>> -----Original Message-----
>> From: Eric B=C3=A9nard [mailto:eric@eukrea.com]
>> Sent: =D7=99=D7=95=D7=9D =D7=94 11 =D7=90=D7=A4=D7=A8=D7=99=D7=9C =
2013 15:53
>> To: Michael Fainstein
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] how to use native executable from one recipe =
during
>> install in another recipe
>>=20
>> Hi Michael,
>>=20
>> Le Thu, 11 Apr 2013 11:58:50 +0000,
>> Michael Fainstein <Michael.Fainstein@ecitele.com> a =C3=A9crit :
>>> I have one recipe that inherits "native", builds native executable =
and
>> installs it in =
tmp/work/x86_64-linux/foo-native-1.00-r0/image/sbin/foo
>>>=20
>> do you have BBCLASSEXTEND =3D "native" in this recipe ?
>>=20
>> In the end, isn't the native binary installed in :
>> sysroots/x86_64-linux/usr/sbin/ ?
>>=20
>>> Another recipe depends on first one and needs to execute foo in its
>> do_install in order to install files in tmp/work/ppce500v2-fsl-linux-
>> gnuspe/foo-1.00-r0/image/etc/
>>>=20
>>> I can't find a way to do it. Any suggestions? How can I install foo =
in
>> first recipe to some common location that 2nd recipe can use? Is =
there such
>> standard location?
>>>=20
>> You should then be able to call it in the other recipe as IIRC this =
path
>> is in $PATH (and your recipe should depend on foo-native)
>>=20
>> Eric
>=20
> Thanks!
>=20
> I had a problem with do_populate_sysroot in native recipe due to bad =
generated path for do_populate_sysroot[sstate-inputdirs]. I overrode it =
in my recipe with=20
> do_populate_sysroot[sstate-inputdirs] =3D "${SYSROOT_DESTDIR}" and =
this recipe was build  successfully. However, foo was not installed in =
sysroots/x86_64-linux.
> I changed DESTDIR in 'make install' from ${D} to ${SYSROOT_DESTDIR} =
and finally got foo were I need it.
>=20

I don't think installing into final sys root directly is a good idea. It =
should still do the staged install and then let populate_ssyroot do the =
step of installing
it to final sys root.

> Thanks,
> Michael
>=20
>=20
>=20
> This e-mail message is intended for the recipient only and contains =
information which is CONFIDENTIAL and which may be proprietary to ECI =
Telecom. If you have received this transmission in error, please inform =
us by e-mail, phone or fax, and then delete the original and all copies =
thereof.
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


