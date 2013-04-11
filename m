Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D7DE014B9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 05:53:40 -0700 (PDT)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id AD6794B005D;
	Thu, 11 Apr 2013 14:53:32 +0200 (CEST)
Date: Thu, 11 Apr 2013 14:53:30 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
Message-ID: <20130411145330.1dbee1c2@e6520eb>
In-Reply-To: <62673661A504604B856269DAADA8BC281DE35E00@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE35E00@ILPTWPVEXMB02.ecitele.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 11 Apr 2013 12:53:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Le Thu, 11 Apr 2013 11:58:50 +0000,
Michael Fainstein <Michael.Fainstein@ecitele.com> a =C3=A9crit :
> I have one recipe that inherits "native", builds native executable and in=
stalls it in tmp/work/x86_64-linux/foo-native-1.00-r0/image/sbin/foo
>
do you have BBCLASSEXTEND =3D "native" in this recipe ?

In the end, isn't the native binary installed in :
sysroots/x86_64-linux/usr/sbin/ ?

> Another recipe depends on first one and needs to execute foo in its do_in=
stall in order to install files in tmp/work/ppce500v2-fsl-linux-gnuspe/foo-=
1.00-r0/image/etc/
>=20
> I can't find a way to do it. Any suggestions? How can I install foo in fi=
rst recipe to some common location that 2nd recipe can use? Is there such s=
tandard location?
>=20
You should then be able to call it in the other recipe as IIRC this path
is in $PATH (and your recipe should depend on foo-native)

Eric

