Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEFFDE0044D
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 11:22:40 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1648489wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 11:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=S3IbEHh5gC7aT+b+I/1V1oSaAZA2FBi2jC45GILBCRw=;
	b=CDohSWYyyvGETL4aFB2qJ1BScoW+cv/AzZKYSJhLRSFgOUd5NI+ssgK1mGysUw8g7t
	7Wy2v6FkmykGo2De3ZK/2WUWUu/kzzfgehI8DzLrSLOj6aXEYRAtGZr5dbf/qszCIDLj
	dDlDeJJILL6zM4eIcGY0syxjJZN6Ffq27JJJW1YHlSIPPvC5qFpqItfUun4LopyifDMK
	26lCp0RmLmRYhBHKUJVADUBh1NA2WMSxeb3D2+E7M8ZCcq+OLqsF3VEEAhnP7VTrriUU
	RbUQlv/yiHEmRNUV2ndIKNj8QJdOAvwTsTBomsQYYrHfiT96n1tigdmjIE5khS+WOcOP
	5KKA==
Received: by 10.216.195.10 with SMTP id o10mr2145297wen.11.1336069359195;
	Thu, 03 May 2012 11:22:39 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id n20sm5661261wiw.5.2012.05.03.11.22.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 11:22:38 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1257)
Date: Thu, 3 May 2012 20:22:36 +0200
In-Reply-To: <4FA2A6A5.6030807@mlbassoc.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios> <4FA2A6A5.6030807@mlbassoc.com>
Message-Id: <27A92832-EECC-4D6B-A77A-834E20FB4C75@gmail.com>
X-Mailer: Apple Mail (2.1257)
Subject: Re: Build error: Could not inherit file classes/systemd.bbclass
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 18:22:41 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6418D589-DC92-4285-8ACD-B081F88FBAAD"

--Apple-Mail=_6418D589-DC92-4285-8ACD-B081F88FBAAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On May 3, 2012, at 5:39 PM, Gary Thomas wrote:

> On 2012-05-03 07:21, Paul Eggleton wrote:
> I saw this checkin yesterday on meta-ti:
>  Module: meta-ti
>  Branch: refs/tags/v2012.05-yocto1.2
>  Tag:    ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
>  URL:    =
http://arago-project.org/git/meta-ti.git/?a=3Dtag;h=3Dccae351a692bf6fa17a4=
a1e35b89ff6efcd35c6c
>=20
>  Tagger: Denys Dmytriyenko <denys@ti.com>
>  Date:   Wed May  2 03:41:43 2012 -0400
>=20
>  2012.05 release, compatible with Yocto Project 1.2 Denzil
>=20
> So it looks like it should be close at least :-)  I don't know how the
> meta-ti repo on yoctoproject.org tracks the arago-project one...

The meta-ti repo on yoctoproject.org tracks the arago-project one =
closely.

The following bblayers.conf configuration worked

BBFILES ?=3D ""
BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/meta-openembedded/meta-oe \
  /tool/yocto/meta-gumstix \
  /tool/yocto/meta-ti \
  /tool/yocto/meta-xilinx \
  "

Best regards,

Elvis Dowson=

--Apple-Mail=_6418D589-DC92-4285-8ACD-B081F88FBAAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On May 3, 2012, at 5:39 PM, Gary Thomas =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On 2012-05-03 07:21, Paul Eggleton =
wrote:</div></blockquote><blockquote type=3D"cite"><div>I saw this =
checkin yesterday on meta-ti:<br> &nbsp;Module: meta-ti<br> =
&nbsp;Branch: refs/tags/v2012.05-yocto1.2<br> &nbsp;Tag: =
&nbsp;&nbsp;&nbsp;ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c<br> =
&nbsp;URL: &nbsp;&nbsp;&nbsp;<a =
href=3D"http://arago-project.org/git/meta-ti.git/?a=3Dtag;h=3Dccae351a692b=
f6fa17a4a1e35b89ff6efcd35c6c">http://arago-project.org/git/meta-ti.git/?a=3D=
tag;h=3Dccae351a692bf6fa17a4a1e35b89ff6efcd35c6c</a><br><br> =
&nbsp;Tagger: Denys Dmytriyenko &lt;<a =
href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<br> &nbsp;Date: =
&nbsp;&nbsp;Wed May &nbsp;2 03:41:43 2012 -0400<br><br> &nbsp;2012.05 =
release, compatible with Yocto Project 1.2 Denzil<br><br>So it looks =
like it should be close at least :-) &nbsp;I don't know how =
the<br>meta-ti repo on <a =
href=3D"http://yoctoproject.org">yoctoproject.org</a> tracks the =
arago-project one...<br></div></blockquote></div><br><div>The meta-ti =
repo on <a href=3D"http://yoctoproject.org">yoctoproject.org</a> tracks =
the arago-project one closely.</div></div><div><br></div><div>The =
following bblayers.conf configuration =
worked</div><div><br></div><div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">BBFILES ?=3D ""</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">BBLAYERS ?=3D " \</div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">&nbsp; /tool/yocto/poky/meta \</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">&nbsp; /tool/yocto/poky/meta-yocto \</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">&nbsp; <font =
class=3D"Apple-style-span" =
color=3D"#103ffb">/tool/yocto/meta-openembedded/meta-oe</font> =
\</div><div style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: =
0px; margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">&nbsp; /tool/yocto/meta-gumstix \</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">&nbsp; /tool/yocto/meta-ti =
\</div><div style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: =
0px; margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">&nbsp; /tool/yocto/meta-xilinx \</div></div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; "><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">&nbsp;&nbsp;"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "><font class=3D"Apple-style-span" face=3D"Helvetica" =
size=3D"3">Best regards,</font></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "><font class=3D"Apple-style-span" =
face=3D"Helvetica" size=3D"3"><br></font></div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; "><font =
class=3D"Apple-style-span" face=3D"Helvetica" size=3D"3">Elvis =
Dowson</font></div></div></body></html>=

--Apple-Mail=_6418D589-DC92-4285-8ACD-B081F88FBAAD--
