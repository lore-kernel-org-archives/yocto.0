Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7037E006AE; Tue, 29 Mar 2016 12:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF29E0048B
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:37:10 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id r72so71035277wmg.0
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 12:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=5H45FcZP8FmhmgAms5VIUNYk/0PQIr44tez9qicmLt0=;
	b=wjJvmBbcMR+zYc+zMbtacTb2VQkCSGQO0bxCxKngfbxJp5iNVfKG1LoIHoqoYjG9o4
	ZCDzq3zds6xsveYs3craexMOjpP+u91tqRZhswOTFyf0Sy/9FBdpNPZnc8z5dKvhssd3
	7iFazG4hEpWTHMdT0Zh2Cpij8njQf2QGWSZ9SE6oHal0mRv1S+BHnoDArtCVhuU3VYxp
	Db753mZ3lZi3ZDc6WIqFhN9lrDmHT32uMIpViZkOJnH6HI5cM535UReig/oVTIXz1PFd
	DIbzRRf3AOAFKSeW8uiWHlgidy+Ay36rofzwSPSYWe1roKcZuiIebdTzVF9TvZKbDAAO
	d32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=5H45FcZP8FmhmgAms5VIUNYk/0PQIr44tez9qicmLt0=;
	b=TgF65iaRDWNTYYHzNX1r5ofw+TnyhVAwMzh3m12R43glAxh/Xy8l1KRTxOpUX79kTi
	CA214e88hK3ZGWrF/xX9kk10VvRmUQvA5yXnlJDTORijevhRKK3Td4pdvB49FatYYf8E
	SyECd8OuoD//DbflyJTO9xmkMwlRznzUkbASq9HEqX2hZ1NDEyg3WpGHyQ3ELod/Wke1
	AM5FfeLijl4+OwpjXhU1b09HRYTAIME4eD+jaEPvWsyCovwQYmHi6pUc4+XoXac2jo0p
	BkHAPykXE+QoRenq7FfpdaMupkNoMS6FtBASFM5ln9Xi3lMFV4IiNWyiZ5OL5daLEdxo
	ZJSg==
X-Gm-Message-State: AD7BkJLyBvsRBy1SLDKf7mKPHwW+9OIFrG4UlgmYZIoD5Xq0uh3BI6g+E1CuVH6G2UN7/Q==
X-Received: by 10.194.59.233 with SMTP id c9mr4458842wjr.88.1459280229298;
	Tue, 29 Mar 2016 12:37:09 -0700 (PDT)
Received: from walter.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	m130sm16059123wmf.18.2016.03.29.12.37.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2016 12:37:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <347AAC56F29ACA4EA31B39C2109A6FE702EA4441@DEFTHW99EH2MSX.ww902.siemens.net>
Date: Tue, 29 Mar 2016 21:37:06 +0200
Message-Id: <E3511583-A624-4CF2-9E52-77070869E651@gmail.com>
References: <347AAC56F29ACA4EA31B39C2109A6FE702EA4441@DEFTHW99EH2MSX.ww902.siemens.net>
To: "Blaettler, Michael" <michael.blaettler@siemens.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-java] Use openjdk-8 as javac and java VM
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
X-List-Received-Date: Tue, 29 Mar 2016 19:37:11 -0000
X-Groupsio-MsgNum: 29200
Content-Type: multipart/signed;
	boundary="Apple-Mail=_790C86AB-154F-4475-9CFA-1C3A1096B3F0";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_790C86AB-154F-4475-9CFA-1C3A1096B3F0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> Am 29.03.2016 um 12:48 schrieb Blaettler, Michael =
<michael.blaettler@siemens.com>:
>=20
> Hi all

Hi Michael,

> I am currently struggling with selecting the Java virtual machine and =
Java compiler. I=E2=80=99d like to use the Java VM and Java Compiler =
provided by openjdk-8-native in the meta-java layer.
> It was possible to build openjdk-8-native without any problems but =
after sourcing the environment-script the javac command points to the =
compiler installed by ecj-bootstrap-native and the java command points =
to the VM installed by cacao-native.
> Afterwards I tried to add openjdk-8 as a provider for =
=E2=80=9Cvirtual/javac-native=E2=80=9D and =E2=80=9Cvirtual/java-native=E2=
=80=9D but then the image isn=E2=80=99t buildable due to recursive =
inclusions.
>=20
> How can I select the java vm and java compiler from openjdk-8 as my =
default compiler/VM?

That's one of the larger open points in meta-java. I couldn't finish =
that in my time at Rademacher.
If someone wants to sponsor that :-)

> Can anybody assist me?

Meanwhile try to rely on =
https://github.com/rehsack/meta-jens/blob/jethro/recipes-xbmc/xbmc/xbmc_14=
.bb#L51 as example.

> Thanks in advance

You're welcome.

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_790C86AB-154F-4475-9CFA-1C3A1096B3F0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW+tljAAoJEESZlq7c5QqdDNEQAJdb5AzIRiEL085JGYCgEU0e
u8y8tmGAwJofIg1Rr14Vkw2rqlzzkDon7MmVnKWrGSYsjH8cfLcfNvijqc43gigD
KekUmHbLfzkRBQcz280UNP3QjKyVrRYRKjCYiJ4bAL8icvP0kBaJkVpU+6e/ZZ5V
r9lIzyErshddUAeRhXWyGZ7L6vq/mFziaC67wGWs77Aup8zAxT2+75iTJl/rm8ZP
ZFNzG8H3P4l+0tMnIaRyWXaXK3f+xOnN2QaB4VG9NuUxFs6V7m+5dE36KJomhFol
gV6BFtfo4v9wPPNFO7P6x/gH5r5nqt+Vkg94MyR+HZtaXS6ebyUsVvl0OXJYDyFi
Ahax5dLgPPwIba3iGPF819fFttyvKD1nL1gces340SU9h9a3Y1tx6j7bLNjoGvRP
O7PGMU/DXYuyyFPu6/MP+RKNMNvSTpDLPhd0GuEMpjxc8P60Unpjdohm6aZp57Ju
VfYNvLocdo3JG5j0x9r5drJ6MeWkVNBKlJz7oCMkrsp0sIGX/6HFnDWdshlllFBI
Ncud7AafRY+z0+MU8hgwlkiNb4NaqZh5px49b94O0mZr9xbqgV/SPbjTgkg6kRy6
lFEYVNqfSAYPG6LJ8Ko1BGbKpkGaq0mKaN9BnF/FjZ8a5E4z7prrp3ZEnF6NcKIF
9UVSAk+D5VGspqJXmzm0
=gSRK
-----END PGP SIGNATURE-----

--Apple-Mail=_790C86AB-154F-4475-9CFA-1C3A1096B3F0--
