Return-Path: <natural_groove@hotmail.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD23E00781; Thu, 17 Jul 2014 01:37:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natural_groove[at]hotmail.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.12 listed in list.dnswl.org]
Received: from DUB004-OMC3S3.hotmail.com (dub004-omc3s3.hotmail.com
	[157.55.2.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD31E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 01:37:09 -0700 (PDT)
Received: from DUB128-W12 ([157.55.2.7]) by DUB004-OMC3S3.hotmail.com with
	Microsoft SMTPSVC(7.5.7601.22701); Thu, 17 Jul 2014 01:37:08 -0700
X-TMN: [LkU9xJAZfrh+ldyGisTbUC1gXftOW8WE]
X-Originating-Email: [natural_groove@hotmail.fr]
Message-ID: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
From: Natural Groove <natural_groove@hotmail.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 17 Jul 2014 10:37:08 +0200
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Jul 2014 08:37:08.0482 (UTC)
	FILETIME=[4BBE1E20:01CFA19A]
Subject: How to include native bitstream dependency in recipe?
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
X-List-Received-Date: Thu, 17 Jul 2014 08:37:14 -0000
Content-Type: multipart/alternative;
	boundary="_fbde5dcf-a78c-406f-ae64-ef67c1940679_"

--_fbde5dcf-a78c-406f-ae64-ef67c1940679_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C

Im trying to crosscompile a framework that needs native bitstream dependenc=
y=2C but the configure does not find the headers.
I was told to use ASSUME_PROVIDED=2C but i dont know how to give the path t=
o bitstream in the recipe.
Or is there a another way to deal with that like installing bitstream to a =
specific dir that oe will now of?

Thanks and regards

Rick
 		 	   		  =

--_fbde5dcf-a78c-406f-ae64-ef67c1940679_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<br><br>Im trying to crossc=
ompile a framework that needs native bitstream dependency=2C but the config=
ure does not find the headers.<br>I was told to use ASSUME_PROVIDED=2C but =
i dont know how to give the path to bitstream in the recipe.<br>Or is there=
 a another way to deal with that like installing bitstream to a specific di=
r that oe will now of?<br><br>Thanks and regards<br><br>Rick<br> 		 	   		 =
 </div></body>
</html>=

--_fbde5dcf-a78c-406f-ae64-ef67c1940679_--
