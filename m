Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACBA0E00B3F; Thu,  8 May 2014 10:52:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (r10kindsofpeople[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-oa0-f48.google.com (unknown [209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B46E00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:52:30 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id i4so3463919oah.7
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mHha3oJSz2Nv1dWm53N6OQhD2Ju9to1ROHxhMRmRK8M=;
	b=tL9MzGtkzqjVA0DK9VJJz/TlAbuHi78FpIzuSziZWSbxUKaMJDUkl0tb3QFCtK6atn
	leHO35YhAhoyKkXKz68V6aisOCp2pewJUTRjH5hVBV6fgRBchR0t3Fm3MrL6krJ/EPVj
	Dy1PsovRAZtjzhsWL7t5zWcoTu+3jspA6I45sHqVAltx6uRKAu5o/vBOZyqWSe4uvwtD
	XS0dhzlnVpWBu5sCRh0VgqAoh5USXlVbsGcP9Co3YSqq1og9ptDXZQURZad2j6wlNGn6
	nDMEmo9wx+L0GWPnNRENivDmJ/1D5sY4nsjStbu6/IjehB1Uajk23inTdM216Psitx6c
	FAdA==
MIME-Version: 1.0
X-Received: by 10.60.115.202 with SMTP id jq10mr7110737oeb.0.1399571550097;
	Thu, 08 May 2014 10:52:30 -0700 (PDT)
Received: by 10.76.87.163 with HTTP; Thu, 8 May 2014 10:52:29 -0700 (PDT)
In-Reply-To: <503552D1-6274-4FEC-AC5F-6EB0F411A58E@keylevel.com>
References: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
	<503552D1-6274-4FEC-AC5F-6EB0F411A58E@keylevel.com>
Date: Thu, 8 May 2014 13:52:29 -0400
Message-ID: <CAE8H0+UyAJ=QMyzyEbgRd2kYe1r=FMp9gKN5et5=r-LfA5KiNg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SATO on Intel DN2800MT
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
X-List-Received-Date: Thu, 08 May 2014 17:52:35 -0000
Content-Type: multipart/alternative; boundary=089e0118324014d51e04f8e72533

--089e0118324014d51e04f8e72533
Content-Type: text/plain; charset=UTF-8

On Thu, May 8, 2014 at 12:39 PM, Chris Tapp <opensource@keylevel.com> wrote:

> Hi John,
>
> On 8 May 2014, at 16:25, r10kindsofpeople <r10kindsofpeople@gmail.com>
> wrote:
>
> > I'm trying to experiment with the SATO build on a DN2800MT with a VGA
> monitor, but can't seem to get going.  The binaries from Daisy and
> genericX86 get as far as the Yocto progress bar complete, and then go
> black.  Any quick hints?
>
> Have a look in the README file for the cedartrail BSP. At the bottom you
> will find:
>
> Work Around for VGA and LVDS Display issue in PVR driver
> --------------------------------------------------------
>
> The PVR driver has a issue that for some systems it causes
> it to incorrectly assume that a LVDS display is connected
> while infact a VGA display is connected and Vice Versa.
> If your VGA or LVDS display does not work with
> "cedartrail" MACHINE, then if you have connected a VGA display,
> add the following to the kernel command line:
>
> video=LVDS-1:d video=VGA-1:e
>
> <snip>
>
> I suspect it's this. Watch out if you use HDMI as well - the VGA fix seems
> to break HDMI. On my systems the VGA then works, but the HDMI pauses a lot
> running the same image! I think you can use similar magic for HDMI (or did
> I just take it out?).
>
> > I note also that genericX86 looks like a complete Yocto tree rather than
> just BSP layers.  Am I right, and are there hints on how to combine this
> with a generic Daisy tree for other processors/projects?
> >
> >
> Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf
> is a zero length file.   ?
> >
> > John
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
> Chris,

Thanks!  What version Yocto are you using?  I ask because you suggest I
check the README file for the cedartrail BSP, but I've been unable to FIND
a cedartrail BSP in anything newer than Denzil, and that only by searching
the git trees.  genericX86 is said to cover cedartrail, but it does seem,
well, generic, with nothing particularly specific to cedartrail, and much
more than what I'm used to in a Yocto BSP.

At any rate, I'll try what you suggest in terms of the kernel command line.

Thanks again,

John

--089e0118324014d51e04f8e72533
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, May 8, 2014 at 12:39 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi John,<br>
<br>
On 8 May 2014, at 16:25, r10kindsofpeople &lt;<a href=3D"mailto:r10kindsofp=
eople@gmail.com">r10kindsofpeople@gmail.com</a>&gt; wrote:<br>
<br>
&gt; I&#39;m trying to experiment with the SATO build on a DN2800MT with a =
VGA monitor, but can&#39;t seem to get going. =C2=A0The binaries from Daisy=
 and genericX86 get as far as the Yocto progress bar complete, and then go =
black. =C2=A0Any quick hints?<br>

<br>
Have a look in the README file for the cedartrail BSP. At the bottom you wi=
ll find:<br>
<br>
Work Around for VGA and LVDS Display issue in PVR driver<br>
--------------------------------------------------------<br>
<br>
The PVR driver has a issue that for some systems it causes<br>
it to incorrectly assume that a LVDS display is connected<br>
while infact a VGA display is connected and Vice Versa.<br>
If your VGA or LVDS display does not work with<br>
&quot;cedartrail&quot; MACHINE, then if you have connected a VGA display,<b=
r>
add the following to the kernel command line:<br>
<br>
video=3DLVDS-1:d video=3DVGA-1:e<br>
<br>
&lt;snip&gt;<br>
<br>
I suspect it&#39;s this. Watch out if you use HDMI as well - the VGA fix se=
ems to break HDMI. On my systems the VGA then works, but the HDMI pauses a =
lot running the same image! I think you can use similar magic for HDMI (or =
did I just take it out?).<br>

<br>
&gt; I note also that genericX86 looks like a complete Yocto tree rather th=
an just BSP layers. =C2=A0Am I right, and are there hints on how to combine=
 this with a generic Daisy tree for other processors/projects?<br>
&gt;<br>
&gt; Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/x=
org-xserver/xserver-xf86-config/genericx86/xorg.conf is a zero length file.=
 =C2=A0 ?<br>
&gt;<br>
&gt; John<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br><br>
<br>
</blockquote></div>Chris,</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Thanks! =C2=A0What version Yocto are you using? =C2=A0I=
 ask because you suggest I check the README file for the cedartrail BSP, bu=
t I&#39;ve been unable to FIND a cedartrail BSP in anything newer than Denz=
il, and that only by searching the git trees. =C2=A0genericX86 is said to c=
over cedartrail, but it does seem, well, generic, with nothing particularly=
 specific to cedartrail, and much more than what I&#39;m used to in a Yocto=
 BSP. =C2=A0</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">At any rate=
, I&#39;ll try what you suggest in terms of the kernel command line.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks again=
,</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">John</div><=
/div>

--089e0118324014d51e04f8e72533--
