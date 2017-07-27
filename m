Return-Path: <geeler@identech.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA854E00B8E; Thu, 27 Jul 2017 09:05:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D54E00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:05:41 -0700 (PDT)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 166482EC0019;
	Thu, 27 Jul 2017 16:05:39 +0000 (UTC)
Received: from srv17.tophost.ch (swiss-ingress-1.ch.mailchannels.com
	[46.232.183.5])
	by relay.mailchannels.net (Postfix) with ESMTPA id ED8BC2EC001D;
	Thu, 27 Jul 2017 16:05:37 +0000 (UTC)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from srv17.tophost.ch (srv17.tophost.ch [193.33.128.141])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.9.7); Thu, 27 Jul 2017 16:05:39 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: novatrend|x-authuser|geeler@identech.ch
X-MailChannels-Auth-Id: novatrend
X-Soft-Arithmetic: 0b7d6be64f2d7efa_1501171538819_4034473571
X-MC-Loop-Signature: 1501171538819:2991857733
X-MC-Ingress-Time: 1501171538818
Received: from [193.33.128.245] (port=39391 helo=wm1.tophost.ch)
	by srv17.tophost.ch with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	(Exim 4.89) (envelope-from <geeler@identech.ch>)
	id 1dalI2-00131d-Ax; Thu, 27 Jul 2017 18:05:30 +0200
Date: Thu, 27 Jul 2017 18:05:32 +0200 (CEST)
From: Manuel Geeler <geeler@identech.ch>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <907836710.17581.1501171532604@ox1.tophost.ch>
In-Reply-To: <CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
References: <2040571762.17271.1501166601217@ox1.tophost.ch>
	<CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
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
X-List-Received-Date: Thu, 27 Jul 2017 16:05:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_17580_2046592332.1501171532597"

------=_Part_17580_2046592332.1501171532597
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Raj,=20

thank you for your input. This solves the problem of bringing the packages =
to the target once I havt the packages. But I'm still challenged with how t=
o create the packages in the first place.=20

Do I need to have my own yocto installation to setup along the SDK? Will su=
ch a setup be able to build me *ipk packages without knowing the original s=
ettings for the image in the first place? Are the information to build the =
buildsystem somwhere hidden in the SDK?=20

Thank you=20

Manuel

>=20
>     Khem Raj <raj.khem@gmail.com> hat am 27. Juli 2017 um 17:57 geschrieb=
en:
>=20
>     On Thu, Jul 27, 2017 at 7:43 AM, Manuel Geeler <geeler@identech.ch> w=
rote:
>=20
>         > >=20
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
> >     >=20
>     yes you can. you can setup a feedserver pointing to tmp/deploy/ipk in
>     your workspace
>=20
>     something as simple as cd tmp/deploy/ipk && python3 -m http.server 80=
00
>=20
>     will do it. Once you have it then setup the feed on your device to
>     point to this server
>     something like
>=20
>     https://github.com/cbrake/oe-build/blob/master/envsetup.sh#L480-L489
>=20
>     then you can do normal opkg operations
>=20
>     if you are able to rebuild the whole image then step to edit feed
>     confs is not needed
>     you can add
>=20
>     PACKAGE_FEED_URIS =3D "http://<ip>:<port>/" in local.conf
>=20
>     where ip is the local address of your build machine and port is the
>     port on which you
>     are starting the http server.
>=20
>     >
>=20
>         > >=20
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

------=_Part_17580_2046592332.1501171532597
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Hello Raj,&#160;</p><p>thank you for your input. This solve=
s the problem of bringing the packages to the target once I havt the packag=
es. But I&#39;m still challenged with how to create the packages in the fir=
st place.&#160;</p><p>Do I need to have my own yocto installation to setup =
along the SDK? Will such a setup be able to build me *ipk packages without =
knowing the original settings for the image in the first place? Are the inf=
ormation to build the buildsystem somwhere hidden in the SDK?&#160;</p><p>T=
hank you&#160;</p><p>Manuel</p><blockquote><p>Khem Raj &#60;raj.khem@gmail.=
com&#62; hat am 27. Juli 2017 um 17:57 geschrieben:</p><p>On Thu, Jul 27, 2=
017 at 7:43 AM, Manuel Geeler &#60;geeler@identech.ch&#62; wrote:</p><block=
quote><p>Hello community,</p><p>I got an image and the corresponding SDK fo=
r a hardware based on an iMX6<br>processor. With this setup I was able to c=
rosscompile a simple &#34;Hello World&#34;<br>program on the development ma=
chine (Ubuntu 16.04.2 LTS), install and run it<br>on the target.</p><p>I th=
en started to look deeper into yocto and realized that there&#39;s the opkg=
<br>package manager available in the image.</p><p>Now comes my question, ho=
w can I build *.ipk packages on my development<br>machine, which will then =
run on my target?</p></blockquote><p>yes you can. you can setup a feedserve=
r pointing to tmp/deploy/ipk in<br>your workspace</p><p>something as simple=
 as cd tmp/deploy/ipk &#38;&#38; python3 -m http.server 8000</p><p>will do =
it. Once you have it then setup the feed on your device to<br>point to this=
 server<br>something like</p><p><a href=3D"https://github.com/cbrake/oe-bui=
ld/blob/master/envsetup.sh#L480-L489">https://github.com/cbrake/oe-build/bl=
ob/master/envsetup.sh#L480-L489</a></p><p>then you can do normal opkg opera=
tions</p><p>if you are able to rebuild the whole image then step to edit fe=
ed<br>confs is not needed<br>you can add</p><p>PACKAGE_FEED_URIS =3D &#34;h=
ttp://&#60;ip&#62;:&#60;port&#62;/&#34; in local.conf</p><p>where ip is the=
 local address of your build machine and port is the<br>port on which you<b=
r>are starting the http server.</p><p>&#62;</p><blockquote><p>The image is =
based on poky 2.1.</p><p>My endgoal is to run node.js and node red on the t=
arget.</p><p>Can someone please point me to the right direction?</p><p>Than=
ks a lot in advance.</p><p>regards</p><p>Manuel</p><p>Manuel Geeler<br>Tech=
nischer Leiter</p><p>Identech AG<br>Lagerstrasse 14, CH-8600 D&#252;bendorf=
<br>Tel.: +41 (0) 44 885 22 26<br>Mobil: +41 (0) 76 323 65 44<br>geeler@ide=
ntech.ch<br>www.identech.ch</p><p>--</p><p>________________________________=
_______________<br>yocto mailing list<br>yocto@yoctoproject.org<br><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproje=
ct.org/listinfo/yocto</a></p></blockquote></blockquote><p><br></p><div clas=
s=3D"io-ox-signature"><p>&#160;</p><p></p></div></body></html>
=20

------=_Part_17580_2046592332.1501171532597--
