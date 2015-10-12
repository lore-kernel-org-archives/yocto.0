Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A103E00ACE; Mon, 12 Oct 2015 14:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S23.hotmail.com (dub004-omc3s23.hotmail.com
	[157.55.2.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A8CE009BA
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 14:39:42 -0700 (PDT)
Received: from DUB128-W27 ([157.55.2.7]) by DUB004-OMC3S23.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 12 Oct 2015 14:39:41 -0700
X-TMN: [WfkCAw0IX4qu4zTov4rIF35fnZRP+jjW]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W2744A5EC049E5C51387EC498310@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 12 Oct 2015 21:39:41 +0000
Importance: Normal
In-Reply-To: <DUB128-W81C154B5996F9AF9A32F8498310@phx.gbl>
References: <DUB128-W81C154B5996F9AF9A32F8498310@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2015 21:39:41.0416 (UTC)
	FILETIME=[80964680:01D10536]
Subject: FW: root password in a core-image-base without "debug-tweaks" ?
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
X-List-Received-Date: Mon, 12 Oct 2015 21:39:46 -0000
Content-Type: multipart/alternative;
	boundary="_8930fd9a-f3c9-4201-89b6-6e4f27b38f85_"

--_8930fd9a-f3c9-4201-89b6-6e4f27b38f85_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable



From: djnass_18@hotmail.com
To: yocto-bounces@yoctoproject.org
Subject: root password in a core-image-base without "debug-tweaks" ?
Date: Mon=2C 12 Oct 2015 19:12:55 +0000

=0A=
=0A=
=0A=
hi all=2C
I bitbaked a core-image-base without "debug-tweaks" =2C and now i am greete=
d on ttymxc1 with a login =2C but it also asks for password.
empty password is not accepted.
/etc/shadow states "root::..." so the root password is supposedly empty. bu=
t I cannot login.

as for ssh I copied my id_rsa.pub over to /home/root/.ssh/authorized_keys i=
n order to ssh to the board.

thank you in advance for your help
 		 	   		   		 	   		  =

--_8930fd9a-f3c9-4201-89b6-6e4f27b38f85_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div><hr id=3D"stopSpell=
ing">From: djnass_18@hotmail.com<br>To: yocto-bounces@yoctoproject.org<br>S=
ubject: root password in a core-image-base without "debug-tweaks" ?<br>Date=
: Mon=2C 12 Oct 2015 19:12:55 +0000<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">hi all=2C<br>I bitbaked a core-image-base without "debug-t=
weaks" =2C and now i am greeted on ttymxc1 with a login =2C but it also ask=
s for password.<br>empty password is not accepted.<br>/etc/shadow states "r=
oot::..." so the root password is supposedly empty. but I cannot login.<br>=
<br>as for ssh I copied my id_rsa.pub over to /home/root/.ssh/authorized_ke=
ys in order to ssh to the board.<br><br>thank you in advance for your help<=
br> 		 	   		  </div></div> 		 	   		  </div></body>
</html>=

--_8930fd9a-f3c9-4201-89b6-6e4f27b38f85_--
