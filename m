Return-Path: <geeler@identech.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABB9E00A39; Thu, 27 Jul 2017 09:56:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from nov-007-i457.relay.mailchannels.net
	(nov-007-i457.relay.mailchannels.net [46.232.183.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F2FE00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:55:59 -0700 (PDT)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id CC1E8BE0C64;
	Thu, 27 Jul 2017 16:55:57 +0000 (UTC)
Received: from srv17.tophost.ch (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTPA id 80D5EBE0D2E;
	Thu, 27 Jul 2017 16:55:56 +0000 (UTC)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from srv17.tophost.ch (srv17.tophost.ch [193.33.128.141])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.9.7); Thu, 27 Jul 2017 16:55:57 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: novatrend|x-authuser|geeler@identech.ch
X-MailChannels-Auth-Id: novatrend
X-Shrill-Industry: 351f4b3e708050c6_1501174557605_1144387885
X-MC-Loop-Signature: 1501174557605:1611603843
X-MC-Ingress-Time: 1501174557597
Received: from [193.33.128.245] (port=55710 helo=wm1.tophost.ch)
	by srv17.tophost.ch with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	(Exim 4.89) (envelope-from <geeler@identech.ch>)
	id 1dam4i-001AjB-Sa; Thu, 27 Jul 2017 18:55:48 +0200
Date: Thu, 27 Jul 2017 18:55:51 +0200 (CEST)
From: Manuel Geeler <geeler@identech.ch>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <1754976.17734.1501174551143@ox1.tophost.ch>
In-Reply-To: <CAMKF1srxzdd-ogoce-GVaeVxmAGoK0C09e8G7eg7h=H1ig3Sig@mail.gmail.com>
References: <2040571762.17271.1501166601217@ox1.tophost.ch>
	<CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
	<907836710.17581.1501171532604@ox1.tophost.ch>
	<CAMKF1srxzdd-ogoce-GVaeVxmAGoK0C09e8G7eg7h=H1ig3Sig@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev30
X-Originating-Client: open-xchange-appsuite
X-AuthUser: geeler@identech.ch
Cc: yocto@yoctoproject.org
Subject: Re: Crosscompile packages (ipk) based on SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Manuel Geeler <geeler@identech.ch>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Jul 2017 16:56:03 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_17733_39110107.1501174551133"

------=_Part_17733_39110107.1501174551133
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Raj

I only got the standard SDK. Are the information I need for building my own=
 yocto installation matching the target somewhere hidden in the SDK?=20

Manuel

>=20
>     Khem Raj <raj.khem@gmail.com> hat am 27. Juli 2017 um 18:20 geschrieb=
en:
>=20
>     On Thu, Jul 27, 2017 at 9:05 AM, Manuel Geeler <geeler@identech.ch> w=
rote:
>=20
>         > >=20
> >         Hello Raj,
> >=20
> >         thank you for your input. This solves the problem of bringing t=
he packages
> >         to the target once I havt the packages. But I'm still challenge=
d with how to
> >         create the packages in the first place.
> >=20
> >         Do I need to have my own yocto installation to setup along the =
SDK? Will
> >         such a setup be able to build me *ipk packages without knowing =
the original
> >         settings for the image in the first place? Are the information =
to build the
> >         buildsystem somwhere hidden in the SDK?
> >=20
> >     >=20
>     if you are using extensible SDK then it should be able to build ipks.=
 You might
>     have to ask the SDK provider on that. Otherwise you will need full yo=
cto build
>     system to generate ipks is the easiest way.
>=20
>     >
>=20
>         > >=20
> >         Thank you
> >=20
> >         Manuel
> >=20
> >         Khem Raj <raj.khem@gmail.com> hat am 27. Juli 2017 um 17:57 ges=
chrieben:
> >=20
> >         On Thu, Jul 27, 2017 at 7:43 AM, Manuel Geeler <geeler@identech=
.ch> wrote:
> >=20
> >         Hello community,
> >=20
> >         I got an image and the corresponding SDK for a hardware based o=
n an iMX6
> >         processor. With this setup I was able to crosscompile a simple =
"Hello World"
> >         program on the development machine (Ubuntu 16.04.2 LTS), instal=
l and run it
> >         on the target.
> >=20
> >         I then started to look deeper into yocto and realized that ther=
e's the opkg
> >         package manager available in the image.
> >=20
> >         Now comes my question, how can I build *.ipk packages on my dev=
elopment
> >         machine, which will then run on my target?
> >=20
> >         yes you can. you can setup a feedserver pointing to tmp/deploy/=
ipk in
> >         your workspace
> >=20
> >         something as simple as cd tmp/deploy/ipk && python3 -m http.ser=
ver 8000
> >=20
> >         will do it. Once you have it then setup the feed on your device=
 to
> >         point to this server
> >         something like
> >=20
> >         https://github.com/cbrake/oe-build/blob/master/envsetup.sh#L480=
-L489
> >=20
> >         then you can do normal opkg operations
> >=20
> >         if you are able to rebuild the whole image then step to edit fe=
ed
> >         confs is not needed
> >         you can add
> >=20
> >         PACKAGE_FEED_URIS =3D "http://<ip>:<port>/" in local.conf
> >=20
> >         where ip is the local address of your build machine and port is=
 the
> >         port on which you
> >         are starting the http server.
> >=20
> >         >
> >=20
> >         The image is based on poky 2.1.
> >=20
> >         My endgoal is to run node.js and node red on the target.
> >=20
> >         Can someone please point me to the right direction?
> >=20
> >         Thanks a lot in advance.
> >=20
> >         regards
> >=20
> >         Manuel
> >=20
> >         Manuel Geeler
> >         Technischer Leiter
> >=20
> >         Identech AG
> >         Lagerstrasse 14, CH-8600 D=C3=BCbendorf
> >         Tel.: +41 (0) 44 885 22 26
> >         Mobil: +41 (0) 76 323 65 44
> >         geeler@identech.ch
> >         www.identech.ch
> >=20
> >         --
> >=20
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org
> >         https://lists.yoctoproject.org/listinfo/yocto
> >=20
> >     >=20


=20

Manuel Geeler

Technischer Leiter
Identech AG

------=_Part_17733_39110107.1501174551133
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Hello Raj</p><p>I only got the standard SDK. Are the inform=
ation I need for building my own yocto installation matching the target som=
ewhere hidden in the SDK?&#160;</p><p>Manuel</p><blockquote><p>Khem Raj &#6=
0;raj.khem@gmail.com&#62; hat am 27. Juli 2017 um 18:20 geschrieben:</p><p>=
On Thu, Jul 27, 2017 at 9:05 AM, Manuel Geeler &#60;geeler@identech.ch&#62;=
 wrote:</p><blockquote><p>Hello Raj,</p><p>thank you for your input. This s=
olves the problem of bringing the packages<br>to the target once I havt the=
 packages. But I&#39;m still challenged with how to<br>create the packages =
in the first place.</p><p>Do I need to have my own yocto installation to se=
tup along the SDK? Will<br>such a setup be able to build me *ipk packages w=
ithout knowing the original<br>settings for the image in the first place? A=
re the information to build the<br>buildsystem somwhere hidden in the SDK?<=
/p></blockquote><p>if you are using extensible SDK then it should be able t=
o build ipks. You might<br>have to ask the SDK provider on that. Otherwise =
you will need full yocto build<br>system to generate ipks is the easiest wa=
y.</p><p>&#62;</p><blockquote><p>Thank you</p><p>Manuel</p><p>Khem Raj &#60=
;raj.khem@gmail.com&#62; hat am 27. Juli 2017 um 17:57 geschrieben:</p><p>O=
n Thu, Jul 27, 2017 at 7:43 AM, Manuel Geeler &#60;geeler@identech.ch&#62; =
wrote:</p><p>Hello community,</p><p>I got an image and the corresponding SD=
K for a hardware based on an iMX6<br>processor. With this setup I was able =
to crosscompile a simple &#34;Hello World&#34;<br>program on the developmen=
t machine (Ubuntu 16.04.2 LTS), install and run it<br>on the target.</p><p>=
I then started to look deeper into yocto and realized that there&#39;s the =
opkg<br>package manager available in the image.</p><p>Now comes my question=
, how can I build *.ipk packages on my development<br>machine, which will t=
hen run on my target?</p><p>yes you can. you can setup a feedserver pointin=
g to tmp/deploy/ipk in<br>your workspace</p><p>something as simple as cd tm=
p/deploy/ipk &#38;&#38; python3 -m http.server 8000</p><p>will do it. Once =
you have it then setup the feed on your device to<br>point to this server<b=
r>something like</p><p><a href=3D"https://github.com/cbrake/oe-build/blob/m=
aster/envsetup.sh#L480-L489">https://github.com/cbrake/oe-build/blob/master=
/envsetup.sh#L480-L489</a></p><p>then you can do normal opkg operations</p>=
<p>if you are able to rebuild the whole image then step to edit feed<br>con=
fs is not needed<br>you can add</p><p>PACKAGE_FEED_URIS =3D &#34;http://&#6=
0;ip&#62;:&#60;port&#62;/&#34; in local.conf</p><p>where ip is the local ad=
dress of your build machine and port is the<br>port on which you<br>are sta=
rting the http server.</p><p>&#62;</p><p>The image is based on poky 2.1.</p=
><p>My endgoal is to run node.js and node red on the target.</p><p>Can some=
one please point me to the right direction?</p><p>Thanks a lot in advance.<=
/p><p>regards</p><p>Manuel</p><p>Manuel Geeler<br>Technischer Leiter</p><p>=
Identech AG<br>Lagerstrasse 14, CH-8600 D&#252;bendorf<br>Tel.: +41 (0) 44 =
885 22 26<br>Mobil: +41 (0) 76 323 65 44<br>geeler@identech.ch<br>www.ident=
ech.ch</p><p>--</p><p>_______________________________________________<br>yo=
cto mailing list<br>yocto@yoctoproject.org<br><a href=3D"https://lists.yoct=
oproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto<=
/a></p></blockquote></blockquote><p><br></p><div class=3D"io-ox-signature">=
<p>&#160;</p><p>Manuel Geeler<br></p><p>Technischer Leiter<br>Identech AG</=
p></div></body></html>
=20

------=_Part_17733_39110107.1501174551133--
