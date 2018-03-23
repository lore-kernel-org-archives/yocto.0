Return-Path: <laurent.joli@kapelse.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0445BE00B58; Fri, 23 Mar 2018 08:10:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.120.128.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from stripper.pharmagest.com (stripper.pharmagest.com
	[176.120.128.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E54E009C8
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 08:09:57 -0700 (PDT)
Received: from 127.0.0.1 (localhost [127.0.0.1])
	by stripper.pharmagest.com (Postfix) with ESMTP id 3A8366B2334;
	Fri, 23 Mar 2018 16:09:57 +0100 (CET)
X-MIB-FROM: laurent.joli@kapelse.com
X-MIBTO: AaGEHUcLQKgAnD0blRe01UP1Ox9EmxlR/2GOSDkjuZsDykVxExqO1cNyczzKCG+A
Received: from localhost ([127.0.0.1])
	by stripper.pharmagest.com (MIBD SMTP Server 4.0.0000) with SMTP ID 415;
	Fri, 23 Mar 2018 16:09:54 +0100 (CET)
Received: from vm-shunter1-prd.sim.pharmagest.com
	(vm-shunter1-prd.sim.pharmagest.com [172.19.32.61])
	by stripper.pharmagest.com (Postfix) with ESMTP id A92616B2334;
	Fri, 23 Mar 2018 16:09:53 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com
	(vm-zimbranemta1-prd.sim.pharmagest.com [172.19.32.35])
	by vm-shunter1-prd.sim.pharmagest.com (courriel) with ESMTP id
	72A0180AACE3; Fri, 23 Mar 2018 16:09:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	840AB827E2; Fri, 23 Mar 2018 16:09:53 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10032)
	with ESMTP id FVKy-5OQcrK6; Fri, 23 Mar 2018 16:09:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	D98AC8272D; Fri, 23 Mar 2018 16:09:51 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10026)
	with ESMTP id Smjmwee9HRXy; Fri, 23 Mar 2018 16:09:51 +0100 (CET)
Received: from vm-zimbranestore2-prd.sim.pharmagest.com (unknown
	[172.19.32.41])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	8868580E7F; Fri, 23 Mar 2018 16:09:51 +0100 (CET)
Date: Fri, 23 Mar 2018 16:09:51 +0100 (CET)
From: Laurent JOLI <laurent.joli@kapelse.com>
To: TEXIER Pierre-Jean <texier.pj2@gmail.com>
Message-ID: <1490723767.9894976.1521817791424.JavaMail.zimbra@kapelse.com>
In-Reply-To: <CALRtUqvUHaaEf-jOWmFHzotarYtOBrV0ZZf6kS8fgFaCNeM4AQ@mail.gmail.com>
References: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
	<1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
	<CALRtUqvUHaaEf-jOWmFHzotarYtOBrV0ZZf6kS8fgFaCNeM4AQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Zimbra 8.7.1_GA_1670 (ZimbraWebClient - FF59 (Linux)/8.7.1_GA_1670)
Thread-Topic: Add lib to meta-qt5
Thread-Index: uMDZoCfiUXxpbT9C223fsRpEkNbyqg==
Cc: yocto <yocto@yoctoproject.org>
Subject: Add lib to meta-qt5
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
X-List-Received-Date: Fri, 23 Mar 2018 15:10:01 -0000
Content-Type: multipart/alternative; 
	boundary="=_e893a0ab-95e9-4a7a-ba32-1295f1a5ac0b"

--=_e893a0ab-95e9-4a7a-ba32-1295f1a5ac0b
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable




De: "TEXIER Pierre-Jean" <texier.pj2@gmail.com>=20
=C3=80: "Laurent JOLI" <laurent.joli@kapelse.com>=20
Cc: "yocto" <yocto@yoctoproject.org>=20
Envoy=C3=A9: Vendredi 23 Mars 2018 15:20:50=20
Objet: Re: [yocto] Add lib to meta-qt5=20

Hi Laurent,=20
The SDK is defined by the following packagegroup:=20
[ https://github.com/meta-qt5/meta-qt5/blob/jethro/recipes-qt/packagegroups=
/packagegroup-qt5-toolchain-target.bb | https://github.com/meta-qt5/meta-qt=
5/blob/jethro/recipes-qt/packagegroups/packagegroup-qt5-toolchain-target.bb=
 ] .=20

I build all my SDK with :=20

bitbake -v meta-toolchain-qt5=20

At the end I have a big script :=20

.-(/media/tmp-jethro-XXX/deploy/sdk)--------=20
`--> lc=20
total 824M=20
-rw-r--r-- 1 ljoli ljoli 8,9K mars 23 13:28 pokykapsofia-glibc-i686-meta-to=
olchain-qt5-core2-32-toolchain-1.0.host.manifest=20
-rwxr-xr-x 1 ljoli ljoli 824M mars 23 13:29 pokykapsofia-glibc-i686-meta-to=
olchain-qt5-core2-32-toolchain-1.0.sh=20
-rw-r--r-- 1 ljoli ljoli 19K mars 23 13:28 pokykapsofia-glibc-i686-meta-too=
lchain-qt5-core2-32-toolchain-1.0.target.manifest=20

But I have not my lib of libqt5declarative :=20

`--> cat * | grep -ri libqt5=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-dbg core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-dev core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-examples-dbg core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-mkspecs core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-plugins core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-plugins-dbg core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-qmlplugins core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors-qmlplugins-dbg core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5sensors5 core2-32 5.5.1+git0+6a16281ace=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5serialport-dbg core2-32 5.5.1+git0+ad108e9d56=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5serialport-dev core2-32 5.5.1+git0+ad108e9d56=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5serialport-mkspecs core2-32 5.5.1+git0+ad108e9d56=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5serialport5 core2-32 5.5.1+git0+ad108e9d56=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg-dbg core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg-dev core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg-mkspecs core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg-plugins core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg-plugins-dbg core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5svg5 core2-32 5.5.1+git0+b5d689eaaf=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-dbg core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-dev core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-mkspecs core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-qmlplugins core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-qmlplugins-dbg core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel5 core2-32 5.5.1+git0+906d910415=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets-dbg core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets-dev core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets-mkspecs core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets-qmlplugins core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets-qmlplugins-dbg core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5websockets5 core2-32 5.5.1+git0+08582917b4=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5xmlpatterns-dbg core2-32 5.5.1+git0+3338de7bbe=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5xmlpatterns-dev core2-32 5.5.1+git0+3338de7bbe=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5xmlpatterns-mkspecs core2-32 5.5.1+git0+3338de7bbe=20
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5xmlpatterns5 core2-32 5.5.1+git0+3338de7bbe=20


---=20
Pierre-Jean=20

2018-03-23 14:39 GMT+01:00 Laurent JOLI < [ mailto:laurent.joli@kapelse.com=
 | laurent.joli@kapelse.com ] > :=20



Hello,=20

I'm working with an old version of YOCTO, jethro 2.0.=20
And I want to produce an SDK of QT5, version 5.5.1.=20

So, I add the layer meta-qt5 on YOCTO for build the following recipe :=20

[ https://github.com/meta-qt5/meta-qt5/tree/jethro | https://github.com/met=
a-qt5/meta-qt5/tree/jethro ]=20

meta-toolchain-qt5=20

My question is :=20

How to add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5 =
?=20

thanks by advance.=20

--=20
_______________________________________________=20
yocto mailing list=20
[ mailto:yocto@yoctoproject.org | yocto@yoctoproject.org ]=20
[ https://lists.yoctoproject.org/listinfo/yocto | https://lists.yoctoprojec=
t.org/listinfo/yocto ]=20






--=_e893a0ab-95e9-4a7a-ba32-1295f1a5ac0b
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: Arial, Helvetica, sans-serif; font-s=
ize: 10pt; color: #000000"><div><br></div><div><br></div><hr id=3D"zwchr" d=
ata-marker=3D"__DIVIDER__"><div data-marker=3D"__HEADERS__"><b>De: </b>"TEX=
IER Pierre-Jean" &lt;texier.pj2@gmail.com&gt;<br><b>=C3=80: </b>"Laurent JO=
LI" &lt;laurent.joli@kapelse.com&gt;<br><b>Cc: </b>"yocto" &lt;yocto@yoctop=
roject.org&gt;<br><b>Envoy=C3=A9: </b>Vendredi 23 Mars 2018 15:20:50<br><b>=
Objet: </b>Re: [yocto] Add lib to meta-qt5<br></div><br><div data-marker=3D=
"__QUOTED_TEXT__"><div dir=3D"ltr">Hi Laurent,<br><div><div>The SDK is defi=
ned by the following packagegroup:</div><div><a href=3D"https://github.com/=
meta-qt5/meta-qt5/blob/jethro/recipes-qt/packagegroups/packagegroup-qt5-too=
lchain-target.bb" target=3D"_blank">https://github.com/meta-qt5/meta-qt5/bl=
ob/jethro/recipes-qt/packagegroups/packagegroup-qt5-toolchain-target.bb</a>=
.</div></div><div><br data-mce-bogus=3D"1"></div><div>I build all my SDK wi=
th :<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div=
>bitbake&nbsp; -v meta-toolchain-qt5<br data-mce-bogus=3D"1"></div><div><br=
 data-mce-bogus=3D"1"></div><div>At the end I have a big script :<br data-m=
ce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"></div><div>.-(/media/tmp=
-jethro-XXX/deploy/sdk)--------<br>`--&gt; lc<br>total 824M<br>-rw-r--r-- 1=
 ljoli ljoli 8,9K mars&nbsp; 23 13:28 pokykapsofia-glibc-i686-meta-toolchai=
n-qt5-core2-32-toolchain-1.0.host.manifest<br>-rwxr-xr-x 1 ljoli ljoli 824M=
 mars&nbsp; 23 13:29 pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-to=
olchain-1.0.sh<br>-rw-r--r-- 1 ljoli ljoli&nbsp; 19K mars&nbsp; 23 13:28 po=
kykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.mani=
fest<br><br data-mce-bogus=3D"1"></div><div>But I have not my lib of libqt5=
declarative :<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D"1"><=
/div><div>`--&gt; cat * | grep -ri libqt5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>pokykapsofia-glibc-i686-meta-toolchain=
-qt5-core2-32-toolchain-1.0.target.manifest:libqt5sensors-dbg core2-32 5.5.=
1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-to=
olchain-1.0.target.manifest:libqt5sensors-dev core2-32 5.5.1+git0+6a16281ac=
e<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.targ=
et.manifest:libqt5sensors-examples-dbg core2-32 5.5.1+git0+6a16281ace<br>po=
kykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.mani=
fest:libqt5sensors-mkspecs core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-g=
libc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5s=
ensors-plugins core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-me=
ta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5sensors-plugi=
ns-dbg core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-toolc=
hain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5sensors-qmlplugins co=
re2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-=
core2-32-toolchain-1.0.target.manifest:libqt5sensors-qmlplugins-dbg core2-3=
2 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2=
-32-toolchain-1.0.target.manifest:libqt5sensors5 core2-32 5.5.1+git0+6a1628=
1ace<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.t=
arget.manifest:libqt5serialport-dbg core2-32 5.5.1+git0+ad108e9d56<br>pokyk=
apsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifes=
t:libqt5serialport-dev core2-32 5.5.1+git0+ad108e9d56<br>pokykapsofia-glibc=
-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5seria=
lport-mkspecs core2-32 5.5.1+git0+ad108e9d56<br>pokykapsofia-glibc-i686-met=
a-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5serialport5 co=
re2-32 5.5.1+git0+ad108e9d56<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-=
core2-32-toolchain-1.0.target.manifest:libqt5svg-dbg core2-32 5.5.1+git0+b5=
d689eaaf<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1=
.0.target.manifest:libqt5svg-dev core2-32 5.5.1+git0+b5d689eaaf<br>pokykaps=
ofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:l=
ibqt5svg-mkspecs core2-32 5.5.1+git0+b5d689eaaf<br>pokykapsofia-glibc-i686-=
meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5svg-plugins=
 core2-32 5.5.1+git0+b5d689eaaf<br>pokykapsofia-glibc-i686-meta-toolchain-q=
t5-core2-32-toolchain-1.0.target.manifest:libqt5svg-plugins-dbg core2-32 5.=
5.1+git0+b5d689eaaf<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-=
toolchain-1.0.target.manifest:libqt5svg5 core2-32 5.5.1+git0+b5d689eaaf<br>=
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5webchannel-dbg core2-32 5.5.1+git0+906d910415<br>pokykapsofia-=
glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5=
webchannel-dev core2-32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-me=
ta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5webchannel-mk=
specs core2-32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-meta-toolch=
ain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5webchannel-qmlplugins =
core2-32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-meta-toolchain-qt=
5-core2-32-toolchain-1.0.target.manifest:libqt5webchannel-qmlplugins-dbg co=
re2-32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-=
core2-32-toolchain-1.0.target.manifest:libqt5webchannel5 core2-32 5.5.1+git=
0+906d910415<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolcha=
in-1.0.target.manifest:libqt5websockets-dbg core2-32 5.5.1+git0+08582917b4<=
br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target=
.manifest:libqt5websockets-dev core2-32 5.5.1+git0+08582917b4<br>pokykapsof=
ia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:lib=
qt5websockets-mkspecs core2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-=
i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5websoc=
kets-qmlplugins core2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-m=
eta-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5websockets-q=
mlplugins-dbg core2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-met=
a-toolchain-qt5-core2-32-toolchain-1.0.target.manifest:libqt5websockets5 co=
re2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-=
core2-32-toolchain-1.0.target.manifest:libqt5xmlpatterns-dbg core2-32 5.5.1=
+git0+3338de7bbe<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-too=
lchain-1.0.target.manifest:libqt5xmlpatterns-dev core2-32 5.5.1+git0+3338de=
7bbe<br>pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.t=
arget.manifest:libqt5xmlpatterns-mkspecs core2-32 5.5.1+git0+3338de7bbe<br>=
pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.target.ma=
nifest:libqt5xmlpatterns5 core2-32 5.5.1+git0+3338de7bbe<br><br data-mce-bo=
gus=3D"1"></div><div><br><div>---</div><div>Pierre-Jean</div></div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-23 14:39 GM=
T+01:00 Laurent JOLI <span dir=3D"ltr">&lt;<a href=3D"mailto:laurent.joli@k=
apelse.com" target=3D"_blank">laurent.joli@kapelse.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div><div style=3D"font-family:Arial,Helvetic=
a,sans-serif;font-size:10pt;color:#000000"><div>Hello,<br></div><br><div>I'=
m working with an old version of YOCTO, jethro 2.0.<br></div><div>And I wan=
t to produce an SDK of QT5, version 5.5.1.<br></div><br><div>So, I add the =
layer meta-qt5 on YOCTO for build the following recipe :<br></div><br><div>=
<a href=3D"https://github.com/meta-qt5/meta-qt5/tree/jethro" target=3D"_bla=
nk">https://github.com/meta-qt5/meta-qt5/tree/jethro</a><br></div><br><div>=
meta-toolchain-qt5<br></div><br><div>My question is :</div><br><div> How to=
 add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5 ?<br><=
/div><br><div>thanks by advance.<br></div></div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div></div><br></div></div></body></html>

--=_e893a0ab-95e9-4a7a-ba32-1295f1a5ac0b--
