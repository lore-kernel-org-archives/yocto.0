Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DCF6E00C28; Tue, 13 Oct 2015 12:12:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.27 listed in list.dnswl.org]
Received: from DUB004-OMC3S18.hotmail.com (dub004-omc3s18.hotmail.com
	[157.55.2.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDD6E00C28
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 12:12:27 -0700 (PDT)
Received: from DUB128-W46 ([157.55.2.7]) by DUB004-OMC3S18.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 13 Oct 2015 12:12:26 -0700
X-TMN: [HUHUOgQ4InyC4YHHhqY7jI9Na/bS7fsDCv0KFc4PBP8=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W466DFC4D5EA10698ABF1FE98300@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 13 Oct 2015 19:12:26 +0000
Importance: Normal
In-Reply-To: <DUB128-W274735BE50FEAA82C46F3698300@phx.gbl>
References: <DUB128-W274735BE50FEAA82C46F3698300@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 13 Oct 2015 19:12:26.0904 (UTC)
	FILETIME=[19387980:01D105EB]
Subject: FW: busybox date cli does not support %N (nanoseconds)
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
X-List-Received-Date: Tue, 13 Oct 2015 19:12:31 -0000
Content-Type: multipart/alternative;
	boundary="_ac9b4fcf-641b-4de9-9230-424b3a933c2f_"

--_ac9b4fcf-641b-4de9-9230-424b3a933c2f_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable



From: djnass_18@hotmail.com
To: yocto-bounces@yoctoproject.org
Subject: busybox date cli does not support %N (nanoseconds)
Date: Tue=2C 13 Oct 2015 15:23:20 +0000

=0A=
=0A=
=0A=
Hi all=2C
I am building an fsl-image-test and the date command when run as "date %N" =
outputs %N instead on the nanoseconds.

what options do I have to get nanoseconds?

perhaps I have missed a kernel option?=20
perhaps I can use something else to grab nanoseconds in the shell?

thank you

 		 	   		   		 	   		  =

--_ac9b4fcf-641b-4de9-9230-424b3a933c2f_
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
ubject: busybox date cli does not support %N (nanoseconds)<br>Date: Tue=2C =
13 Oct 2015 15:23:20 +0000<br><br>=0A=
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
<div dir=3D"ltr">Hi all=2C<br>I am building an fsl-image-test and the date =
command when run as "date %N" outputs %N instead on the nanoseconds.<br><br=
>what options do I have to get nanoseconds?<br><br>perhaps I have missed a =
kernel option? <br>perhaps I can use something else to grab nanoseconds in =
the shell?<br><br>thank you<br><br> 		 	   		  </div></div> 		 	   		  </di=
v></body>
</html>=

--_ac9b4fcf-641b-4de9-9230-424b3a933c2f_--
