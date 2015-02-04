Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20328E00948; Wed,  4 Feb 2015 12:17:40 -0800 (PST)
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
	*      [65.54.190.81 listed in list.dnswl.org]
Received: from BAY004-OMC2S6.hotmail.com (bay004-omc2s6.hotmail.com
	[65.54.190.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAC75E00753
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 12:17:34 -0800 (PST)
Received: from BAY169-W106 ([65.54.190.124]) by BAY004-OMC2S6.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 4 Feb 2015 12:17:34 -0800
X-TMN: [KBG0CmpcJIzZynOck5U7k1VoQWJtXAUt]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W1064765206DCA2D9A5302CCAE3A0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Feb 2015 15:17:34 -0500
Importance: Normal
In-Reply-To: <BLU437-SMTP718143271D06CCD988046BAE3A0@phx.gbl>
References: <BAY169-W106583E852FA55C530E914CAE3D0@phx.gbl>,
	<CAJTo0Lb5rbHBHm6hKtzQW1Xq2V5Y8sxGV=FkatkDF3FsL=C8HA@mail.gmail.com>,
	<BLU437-SMTP718143271D06CCD988046BAE3A0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Feb 2015 20:17:34.0529 (UTC)
	FILETIME=[9CA97B10:01D040B7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ACPI powerbtn
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
X-List-Received-Date: Wed, 04 Feb 2015 20:17:40 -0000
Content-Type: multipart/alternative;
	boundary="_93893430-b454-4d22-bc22-3a2c181fea2f_"

--_93893430-b454-4d22-bc22-3a2c181fea2f_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Okay=2C I found a solution that works for core-image-base for NUC.

1. create /etc/acpi/events/powerbtn

event=3Dbutton[ /]power
action=3D/etc/acpi/powerbtn.sh

2. create /etc/acpi/powerbtn.sh

#!/bin/sh
# /etc/acpi/powerbtn.sh
# Initiates a shutdown when the power putton has been
# pressed.
/sbin/shutdown -h now "Power button pressed"

3. reboot


From: jfabernathy@outlook.com
Date: Wed=2C 4 Feb 2015 07:36:27 -0500
To: ross.burton@intel.com
CC: yocto@yoctoproject.org
Subject: Re: [yocto] ACPI powerbtn


On Feb 3=2C 2015=2C at 4:34 PM=2C Burton=2C Ross <ross.burton@intel.com> wr=
ote:
On 3 February 2015 at 21:30=2C Jim Abernathy <jfabernathy@outlook.com> wrot=
e:
I need to add something that will 'shutdown -h now' when the power button i=
s pressed.  I would figure that ACPI is already included in the core-image-=
base of the NUC bsp.

Do I need to include a new file in /etc/acpi/events or do I need to include=
 some package?
I'm literally signing off for the day but for what it's worth core-image-sa=
to does that already on my NUC=2C so there must be something in that image =
that makes it work...  maybe acpid or acpi-support isn't part of core-image=
-base?
Ross=0A=

I went back and built core-image-sato and the power button does nothing.  I=
 don=92t see anything in the /etc/acpi/events directory.  Same as core-imag=
e-base.
Jim A

-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto 		 	   		  =

--_93893430-b454-4d22-bc22-3a2c181fea2f_
Content-Type: text/html; charset="Windows-1252"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Okay=2C I found a solution that =
works for core-image-base for NUC.<br><br>1. create /etc/acpi/events/powerb=
tn<br><br>event=3Dbutton[ /]power<br>action=3D/etc/acpi/powerbtn.sh<br><br>=
2. create /etc/acpi/powerbtn.sh<br><br>#!/bin/sh<br># /etc/acpi/powerbtn.sh=
<br># Initiates a shutdown when the power putton has been<br># pressed.<br>=
/sbin/shutdown -h now "Power button pressed"<br><br>3. reboot<br><br><br><d=
iv><hr id=3D"stopSpelling">From: jfabernathy@outlook.com<br>Date: Wed=2C 4 =
Feb 2015 07:36:27 -0500<br>To: ross.burton@intel.com<br>CC: yocto@yoctoproj=
ect.org<br>Subject: Re: [yocto] ACPI powerbtn<br><br><br><div><blockquote><=
div>On Feb 3=2C 2015=2C at 4:34 PM=2C Burton=2C Ross &lt=3B<a href=3D"mailt=
o:ross.burton@intel.com">ross.burton@intel.com</a>&gt=3B wrote:</div><br cl=
ass=3D"ecxApple-interchange-newline"><div><div dir=3D"ltr"><div class=3D"ec=
xgmail_extra"><br><div class=3D"ecxgmail_quote">On 3 February 2015 at 21:30=
=2C Jim Abernathy <span dir=3D"ltr">&lt=3B<a href=3D"mailto:jfabernathy@out=
look.com" target=3D"_blank">jfabernathy@outlook.com</a>&gt=3B</span> wrote:=
<br><blockquote class=3D"ecxgmail_quote" style=3D"border-left:1px #ccc soli=
d=3Bpadding-left:1ex=3B"><div dir=3D"ltr">I need to add something that will=
 'shutdown -h now' when the power button is pressed.&nbsp=3B I would figure=
 that ACPI is already included in the core-image-base of the NUC bsp.<br><b=
r>Do I need to include a new file in /etc/acpi/events or do I need to inclu=
de some package?</div></blockquote></div><div class=3D"ecxgmail_extra"><br>=
</div>I'm literally signing off for the day but for what it's worth core-im=
age-sato does that already on my NUC=2C so there must be something in that =
image that makes it work... &nbsp=3Bmaybe acpid or acpi-support isn't part =
of core-image-base?</div><div class=3D"ecxgmail_extra"><br></div><div class=
=3D"ecxgmail_extra">Ross</div></div>=0A=
</div></blockquote></div><br><div>I went back and built core-image-sato and=
 the power button does nothing. &nbsp=3BI don=92t see anything in the /etc/=
acpi/events directory. &nbsp=3BSame as core-image-base.</div><div><br></div=
><div>Jim A</div><div><br></div><br>-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto</div> 		 	   		  </div></body=
>
</html>=

--_93893430-b454-4d22-bc22-3a2c181fea2f_--
