Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB96BE00BF5; Wed,  9 Mar 2016 14:57:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from BAY004-OMC2S23.hotmail.com (bay004-omc2s23.hotmail.com
	[65.54.190.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85A85E00AAF
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 14:56:57 -0800 (PST)
Received: from BAY181-W37 ([65.54.190.125]) by BAY004-OMC2S23.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 9 Mar 2016 14:56:56 -0800
X-TMN: [R3QGqe6QICCrq6CK641cE3ZSrxSvmRS8]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W3746C4B30CB4AD7CB033FEAEB30@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Mar 2016 14:56:55 -0800
Importance: Normal
In-Reply-To: <CAJTo0LZ513XdLUWA+JA7sD-CZUfOGOO_-eV+zeMZq+UuqTmeCw@mail.gmail.com>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>,
	<CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>,
	<BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>,
	<CAJTo0LYmefS-OzRCFvPDFiiEDK0x14AfxjWRgq=rp+ZnwJvHbg@mail.gmail.com>,
	<BAY181-W46AB9F6D700F243ED2D796AEB20@phx.gbl>,
	<CAJTo0LZ513XdLUWA+JA7sD-CZUfOGOO_-eV+zeMZq+UuqTmeCw@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 09 Mar 2016 22:56:56.0811 (UTC)
	FILETIME=[FB0C2BB0:01D17A56]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Wed, 09 Mar 2016 22:57:00 -0000
Content-Type: multipart/alternative;
	boundary="_566a5548-42c1-4cae-acc8-cab8573f55d6_"

--_566a5548-42c1-4cae-acc8-cab8573f55d6_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
=0A=
=0A=
The certificate file is there and appears to contains a series of several e=
ncrypted certificates.
And there are numerous other .crt and .pem files in there=2C mostly links t=
o files.
Does this build need to be run as admin or sudo   to enable this mirror cap=
ability ?
-rw-r--r-- 1 root root 273790 Feb 17 15:18 ca-certificates.crt
=20
VirtualBox:/etc/ssl/certs$ gedit ca-certificates.crt

=20
From: ross.burton@intel.com
Date: Tue=2C 8 Mar 2016 08:42:02 +0000
Subject: Re: [yocto] Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw=
2rgbpnm.git
To: mkbrown32@hotmail.com
CC: yocto@yoctoproject.org=3B ka6sox@gmail.com=3B opensource@keylevel.com


On 8 March 2016 at 00:20=2C Mark Brown <mkbrown32@hotmail.com> wrote:
fatal: unable to access 'https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/':=
 server certificate verification failed. CAfile: /etc/ssl/certs/ca-certific=
ates.crt CRLfile: none
Your local certs are either missing or incomplete.  You'll have to either i=
nstall ca-certificates=2C or investigate how to tell git when doing http fe=
tches not to bother checking certificates.
Ross=0A=
 		 	   		  =

--_566a5548-42c1-4cae-acc8-cab8573f55d6_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
</head>
<body class=3D'hmmessage'><div dir=3D'ltr'>=0A=
=0A=
<style><!--=0A=
.hmmessage P=0A=
{=0A=
margin:0px=3B=0A=
padding:0px=0A=
}=0A=
body.hmmessage=0A=
{=0A=
font-size: 12pt=3B=0A=
font-family:Calibri=0A=
}=0A=
--></style>=0A=
<div dir=3D"ltr">The certificate file is there and appears to contains a se=
ries of several encrypted certificates.<br>And there are numerous other .cr=
t and .pem files in there=2C mostly links to files.<br>Does this build need=
 to be run as admin or sudo&nbsp=3B&nbsp=3B to enable this mirror&nbsp=3Bca=
pability ?</div><div dir=3D"ltr"><br><font face=3D"Courier New=2Csans-serif=
">-rw-r--r-- 1 root root 273790 Feb 17 15:18 ca-certificates.crt</font><br>=
&nbsp=3B<br><font face=3D"Courier New=2Csans-serif">VirtualBox:/etc/ssl/cer=
ts$ gedit ca-certificates.crt</font><br><span id=3D"messageBoundary"></span=
><br>&nbsp=3B<br></div><div dir=3D"ltr"><hr id=3D"stopSpelling">From: ross.=
burton@intel.com<br>Date: Tue=2C 8 Mar 2016 08:42:02 +0000<br>Subject: Re: =
[yocto] Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git<b=
r>To: mkbrown32@hotmail.com<br>CC: yocto@yoctoproject.org=3B ka6sox@gmail.c=
om=3B opensource@keylevel.com<br><br><div dir=3D"ltr"><div class=3D"ecxgmai=
l_extra"><br><div class=3D"ecxgmail_quote">On 8 March 2016 at 00:20=2C Mark=
 Brown <span dir=3D"ltr">&lt=3B<a href=3D"mailto:mkbrown32@hotmail.com" tar=
get=3D"_blank">mkbrown32@hotmail.com</a>&gt=3B</span> wrote:<br><blockquote=
 class=3D"ecxgmail_quote" style=3D"padding-left: 1ex=3B border-left-color: =
rgb(204=2C 204=2C 204)=3B border-left-width: 1px=3B border-left-style: soli=
d=3B"><div>fatal: unable to access '<a href=3D"https://gitorious.org/raw2rg=
bpnm/raw2rgbpnm.git/" target=3D"_blank">https://gitorious.org/raw2rgbpnm/ra=
w2rgbpnm.git/</a>': server certificate verification failed. CAfile: /etc/ss=
l/certs/ca-certificates.crt CRLfile: none</div><div></div></blockquote></di=
v><br>Your local certs are either missing or incomplete.&nbsp=3B You'll hav=
e to either install ca-certificates=2C or investigate how to tell git when =
doing http fetches not to bother checking certificates.</div><div class=3D"=
ecxgmail_extra"><br></div><div class=3D"ecxgmail_extra">Ross</div></div></d=
iv>=0A=
 		 	   		  </div></body>
</html>=

--_566a5548-42c1-4cae-acc8-cab8573f55d6_--
