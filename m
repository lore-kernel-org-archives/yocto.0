Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7243DE0076F; Tue,  3 Feb 2015 07:43:32 -0800 (PST)
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
	*      [65.54.190.147 listed in list.dnswl.org]
Received: from BAY004-OMC3S9.hotmail.com (bay004-omc3s9.hotmail.com
	[65.54.190.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16401E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 07:43:20 -0800 (PST)
Received: from BAY169-W27 ([65.54.190.187]) by BAY004-OMC3S9.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Tue, 3 Feb 2015 07:43:20 -0800
X-TMN: [jCoFpdsvB0cz9bUuqcxcppugrKQXJlFg]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 3 Feb 2015 10:43:19 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 03 Feb 2015 15:43:20.0322 (UTC)
	FILETIME=[22C6FE20:01D03FC8]
Subject: DNS nameservers in Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 15:43:32 -0000
Content-Type: multipart/alternative;
	boundary="_ad68faa1-8c0f-4d84-ba22-2f1f45f4918b_"

--_ad68faa1-8c0f-4d84-ba22-2f1f45f4918b_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I find that for Static IPs=2C I have to manually add my DNS name servers to=
 /etc/resolv.conf instead of what I'm use to and that's put the line in /et=
c/network/interfaces with the dns-nameserver [IP] [IP].

My knowledge base comes from Ubuntu Server where putting everything in "/et=
c/network/interfaces" covers most things.

Anyone know why?

Jim A

 		 	   		  =

--_ad68faa1-8c0f-4d84-ba22-2f1f45f4918b_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I find that for Static IPs=2C I =
have to manually add my DNS name servers to /etc/resolv.conf instead of wha=
t I'm use to and that's put the line in /etc/network/interfaces with the dn=
s-nameserver [IP] [IP].<br><br>My knowledge base comes from Ubuntu Server w=
here putting everything in "/etc/network/interfaces" covers most things.<br=
><br>Anyone know why?<br><br>Jim A<br><br> 		 	   		  </div></body>
</html>=

--_ad68faa1-8c0f-4d84-ba22-2f1f45f4918b_--
