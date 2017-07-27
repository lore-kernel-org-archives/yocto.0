Return-Path: <geeler@identech.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B14DE00B8E; Thu, 27 Jul 2017 07:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0006]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Jul 2017 07:50:12 PDT
Received: from nov-007-i457.relay.mailchannels.net
	(nov-007-i457.relay.mailchannels.net [46.232.183.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92EFFE009A4
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 07:50:12 -0700 (PDT)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 5B5FBBE0F02
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 14:43:27 +0000 (UTC)
Received: from srv17.tophost.ch (srv1.ch.mailchannels.com [46.232.183.5])
	by relay.mailchannels.net (Postfix) with ESMTPA id 6BDCDBE0F06
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 14:43:26 +0000 (UTC)
X-Sender-Id: novatrend|x-authuser|geeler@identech.ch
Received: from srv17.tophost.ch (srv17.tophost.ch [193.33.128.141])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.9.7); Thu, 27 Jul 2017 14:43:27 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: novatrend|x-authuser|geeler@identech.ch
X-MailChannels-Auth-Id: novatrend
X-Abortive-Society: 1ff7e6c65cc3138a_1501166607100_3808554451
X-MC-Loop-Signature: 1501166607100:1680189889
X-MC-Ingress-Time: 1501166607099
Received: from [193.33.128.245] (port=33044 helo=wm1.tophost.ch)
	by srv17.tophost.ch with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	(Exim 4.89) (envelope-from <geeler@identech.ch>) id 1dak0U-000n0Y-Ul
	for yocto@yoctoproject.org; Thu, 27 Jul 2017 16:43:18 +0200
Date: Thu, 27 Jul 2017 16:43:21 +0200 (CEST)
From: Manuel Geeler <geeler@identech.ch>
To: yocto@yoctoproject.org
Message-ID: <2040571762.17271.1501166601217@ox1.tophost.ch>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev30
X-Originating-Client: open-xchange-appsuite
X-AuthUser: geeler@identech.ch
Subject: Crosscompile packages (ipk) based on SDK
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
X-List-Received-Date: Thu, 27 Jul 2017 14:50:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_17270_1781747040.1501166601213"

------=_Part_17270_1781747040.1501166601213
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello community,=20

I got an image and the corresponding SDK for a hardware based on an iMX6 pr=
ocessor. With this setup I was able to crosscompile a simple "Hello World" =
program on the development machine (Ubuntu 16.04.2 LTS), install and run it=
 on the target.=20

I then started to look deeper into yocto and realized that there's the opkg=
 package manager available in the image.=20

Now comes my question, how can I build *.ipk packages on my development mac=
hine, which will then run on my target?

The image is based on poky 2.1.=20

My endgoal is to run node.js and node red on the target.=20

Can someone please point me to the right direction?=20

Thanks a lot in advance.=20

regards

Manuel

Manuel Geeler
Technischer Leiter


Identech AG
Lagerstrasse 14, CH-8600 D=C3=BCbendorf
Tel.: +41 (0) 44 885 22 26
Mobil: +41 (0) 76 323 65 44
geeler@identech.ch
mailto:geeler@identech.chhttp://www.identech.ch/

------=_Part_17270_1781747040.1501166601213
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><div class=3D"io-ox-signature"><p>Hello community,&#160;</p><p=
>I got an image and the corresponding SDK for a hardware based on an&#160;i=
MX6&#160;processor. With this setup I was able to crosscompile a simple &#3=
4;Hello World&#34; program on the development machine (Ubuntu 16.04.2 LTS),=
 install and run it on the target.&#160;</p><p>I then started to look deepe=
r into yocto and realized that there&#39;s the opkg package manager availab=
le in the image.&#160;</p><p>Now comes my question, how can I build *.ipk p=
ackages on my development machine, which will then run on my target?</p><p>=
The image is based on poky 2.1.&#160;</p><p>My endgoal is to run node.js an=
d node red on the target.&#160;</p><p>Can someone please point me to the ri=
ght direction?&#160;</p><p>Thanks a lot in advance.&#160;</p><p>regards</p>=
<p>Manuel</p><p>Manuel Geeler<br><span style=3D"font-size: 10pt;">Technisch=
er Leiter<br><br></span></p><p><strong>Identech AG<br></strong>Lagerstrasse=
 14, CH-8600 D&#252;bendorf<br>Tel.: +41 (0) 44 885 22 26<br>Mobil: +41 (0)=
 76 323 65 44<br><a href=3D"mailto:geeler@identech.ch">geeler@identech.ch<b=
r></a><a href=3D"http://www.identech.ch/">www.identech.ch</a></p></div></bo=
dy></html>
=20

------=_Part_17270_1781747040.1501166601213--
