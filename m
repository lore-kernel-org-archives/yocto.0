Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67A41E0076F; Tue,  3 Feb 2015 13:30:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.152 listed in list.dnswl.org]
Received: from BAY004-OMC3S14.hotmail.com (bay004-omc3s14.hotmail.com
	[65.54.190.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABFBEE005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 13:30:13 -0800 (PST)
Received: from BAY169-W106 ([65.54.190.189]) by BAY004-OMC3S14.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Tue, 3 Feb 2015 13:30:13 -0800
X-TMN: [qVAvNKacC+j0OeX+B8rioGXT/bmoS7l8]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W106583E852FA55C530E914CAE3D0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 3 Feb 2015 16:30:12 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Feb 2015 21:30:13.0299 (UTC)
	FILETIME=[98474030:01D03FF8]
Subject: ACPI powerbtn
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
X-List-Received-Date: Tue, 03 Feb 2015 21:30:19 -0000
Content-Type: multipart/alternative;
	boundary="_9509e7a2-6825-4ad9-bb81-cc7104017493_"

--_9509e7a2-6825-4ad9-bb81-cc7104017493_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I need to add something that will 'shutdown -h now' when the power button i=
s pressed.  I would figure that ACPI is already included in the core-image-=
base of the NUC bsp.

Do I need to include a new file in /etc/acpi/events or do I need to include=
 some package?

Jim A

 		 	   		  =

--_9509e7a2-6825-4ad9-bb81-cc7104017493_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I need to add something that wil=
l 'shutdown -h now' when the power button is pressed.&nbsp=3B I would figur=
e that ACPI is already included in the core-image-base of the NUC bsp.<br><=
br>Do I need to include a new file in /etc/acpi/events or do I need to incl=
ude some package?<br><br>Jim A<br><br> 		 	   		  </div></body>
</html>=

--_9509e7a2-6825-4ad9-bb81-cc7104017493_--
