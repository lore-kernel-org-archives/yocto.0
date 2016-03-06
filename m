Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40320E00BB9; Sun,  6 Mar 2016 14:09:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0041]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Mar 2016 14:09:32 PST
Received: from BAY004-OMC3S28.hotmail.com (bay004-omc3s28.hotmail.com
	[65.54.190.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1F8E0084E
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 14:09:32 -0800 (PST)
Received: from BAY181-W53 ([65.54.190.188]) by BAY004-OMC3S28.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sun, 6 Mar 2016 14:08:31 -0800
X-TMN: [bckcGuxm2b+2zMk2a6VJOIJLdldpFgaM]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 6 Mar 2016 14:08:30 -0800
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Mar 2016 22:08:31.0239 (UTC)
	FILETIME=[B7F3D170:01D177F4]
Subject: Controlling Bitbake Memory usage under Windows/Virtualbox/Ubuntu platform
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
X-List-Received-Date: Sun, 06 Mar 2016 22:09:35 -0000
Content-Type: multipart/alternative;
	boundary="_e27dfcd3-3e1e-4b10-8a46-a62f8977c817_"

--_e27dfcd3-3e1e-4b10-8a46-a62f8977c817_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I do not see anything in the Bitbake manual for controlling how much memory
Bitbake should consider itself entitled to consume in the=20
development platform within which it runs.
=20
Running it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 32-bit//=2C
I told Virtualbox to allow Ubuntu to use 1.5 GBytes=2C but Windows Task Man=
ager
indicates the whole Virtualbox/Ubuntu thread is using only 160 MBytes=20
-- and is generating approximately 1=2C000 page faults per second.
=20
Perhaps as a result=2C this Gumstix Overo build has completed only 760 out =
of 3792
total tasks in 21 hours -- at this rate it will complete in 5-6 days.
=20
How does the user terminate Bitbake at its current stage=2C increase the me=
mory it is using=2C
and then restart in order to speed up this process ?
=20
 		 	   		  =

--_e27dfcd3-3e1e-4b10-8a46-a62f8977c817_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I do not see anything in the Bit=
bake manual for controlling how much memory<BR>Bitbake should consider itse=
lf entitled to consume in the <BR>development platform within which it runs=
.<BR>&nbsp=3B<BR>Running it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu=
 14 32-bit//=2C<BR>I told Virtualbox to allow Ubuntu to use 1.5 GBytes=2C b=
ut Windows Task Manager<BR>indicates the whole Virtualbox/Ubuntu thread is =
using only 160 MBytes <BR>--&nbsp=3Band is generating approximately 1=2C000=
 page faults per second.<BR>&nbsp=3B<BR>Perhaps as a result=2C this Gumstix=
 Overo build has completed only 760 out of 3792<BR>total tasks in 21 hours =
-- at this rate it will complete in 5-6 days.<BR>&nbsp=3B<BR>How does the u=
ser terminate Bitbake at its current stage=2C increase the memory it is usi=
ng=2C<BR>and then restart in order to speed up this process ?<BR>&nbsp=3B<B=
R> 		 	   		  </div></body>
</html>=

--_e27dfcd3-3e1e-4b10-8a46-a62f8977c817_--
