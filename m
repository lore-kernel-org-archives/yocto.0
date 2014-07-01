Return-Path: <lchristina26@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0570BE003C1; Tue,  1 Jul 2014 15:02:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lchristina26[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4838]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.163 listed in list.dnswl.org]
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Jul 2014 15:02:03 PDT
Received: from BAY004-OMC3S25.hotmail.com (bay004-omc3s25.hotmail.com
	[65.54.190.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8B68E00289
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 15:02:03 -0700 (PDT)
Received: from BAY168-W1 ([65.54.190.188]) by BAY004-OMC3S25.hotmail.com with
	Microsoft SMTPSVC(7.5.7601.22712); Tue, 1 Jul 2014 15:00:53 -0700
X-TMN: [uBo24VaUPCNRriGKNlyh4nNiBKuVpm1F]
X-Originating-Email: [lchristina26@hotmail.com]
Message-ID: <BAY168-W1B8150F1A216AABC6DECCD6070@phx.gbl>
From: LC Mac <lchristina26@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 1 Jul 2014 16:00:52 -0600
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 01 Jul 2014 22:00:53.0640 (UTC)
	FILETIME=[ED914080:01CF9577]
Subject: adding libevent recipe
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
X-List-Received-Date: Tue, 01 Jul 2014 22:02:18 -0000
Content-Type: multipart/alternative;
	boundary="_78acda77-3ace-4d9a-b60e-8fad62957661_"

--_78acda77-3ace-4d9a-b60e-8fad62957661_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C

I am trying to add libevent to my current image. I added the line IMAGE_INS=
TALL_append =3D " libevent" in my local.conf with a path to meta in my bbla=
yers .conf file=2C but when I load the image=2C I can't seem to find libeve=
nt. Would it be named something else? Am I missing some dependencies? I can=
not seem to add any outside recipes to my core-image-sato and just wanted t=
o try one=2C ie=2C libevent. I've tried other recipes with no success. Any =
help would be greatly appreciated.=20

~LC

 		 	   		  =

--_78acda77-3ace-4d9a-b60e-8fad62957661_
Content-Type: text/html; charset="iso-8859-1"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<br><br>I am trying to add =
libevent to my current image. I added the line IMAGE_INSTALL_append =3D " l=
ibevent" in my local.conf with a path to meta in my bblayers .conf file=2C =
but when I load the image=2C I can't seem to find libevent. Would it be nam=
ed something else? Am I missing some dependencies? I cannot seem to add any=
 outside recipes to my core-image-sato and just wanted to try one=2C ie=2C =
libevent. I've tried other recipes with no success. Any help would be great=
ly appreciated. <br><br>~LC<br><br> 		 	   		  </div></body>
</html>=

--_78acda77-3ace-4d9a-b60e-8fad62957661_--
