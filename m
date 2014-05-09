Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6022E0073A; Fri,  9 May 2014 13:07:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (r10kindsofpeople[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-oa0-f42.google.com (unknown [209.85.219.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E2C3E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 13:06:54 -0700 (PDT)
Received: by mail-oa0-f42.google.com with SMTP id j17so5542372oag.1
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 13:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zeMflSBKyYPIdDJLKEA+s+QA68ZL0Fch/Sc+uYIqJUI=;
	b=ZC/Zj3r5IF3+bXIAuCjhEPa3YPEOVVrKrbFuYiDSOC2K2WNT0rdcf1ZCmQxwg8OVQ9
	H1nT0QaPufWhwRZQRn5m0nxZ17Niri/rqcHdS93yYaPiIyLwrkB6Bc9hPI3qsJc7teCx
	GzBe1tL1yqpGXkXwwB7FkOTLF9ZiYFGQoSVZkpbBVx5tj81NFT11aw4HmwjcBv8PXQoo
	UhDsSSA73BJalL+i9zyIsoRum5puVUA+L563isAq0i50/pSE/T7f9fZjW0IBUerkNO46
	Y/Oy0IKD+tO5s6bCsb6tDpi/WIZgzxXNTWQdazT2pl4OanZbegqx2SXpV1pdNrpXsiSP
	DvAg==
MIME-Version: 1.0
X-Received: by 10.182.35.99 with SMTP id g3mr6202384obj.43.1399666013580; Fri,
	09 May 2014 13:06:53 -0700 (PDT)
Received: by 10.76.87.163 with HTTP; Fri, 9 May 2014 13:06:53 -0700 (PDT)
In-Reply-To: <6B7D3A07-6C74-486B-904E-CF33B97EB667@keylevel.com>
References: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
	<503552D1-6274-4FEC-AC5F-6EB0F411A58E@keylevel.com>
	<CAE8H0+UyAJ=QMyzyEbgRd2kYe1r=FMp9gKN5et5=r-LfA5KiNg@mail.gmail.com>
	<6B7D3A07-6C74-486B-904E-CF33B97EB667@keylevel.com>
Date: Fri, 9 May 2014 16:06:53 -0400
Message-ID: <CAE8H0+XiUo4oEkhR66c3++McUez1RPyiuYLpTpm0NkqHBdA6Zw@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 May 2014 20:07:00 -0000
Content-Type: multipart/alternative; boundary=e89a8f502d048b30f804f8fd232f

--e89a8f502d048b30f804f8fd232f
Content-Type: text/plain; charset=UTF-8

On Thu, May 8, 2014 at 3:43 PM, Chris Tapp <opensource@keylevel.com> wrote:

> On 8 May 2014, at 18:52, r10kindsofpeople <r10kindsofpeople@gmail.com>
> wrote:
>
> > On Thu, May 8, 2014 at 12:39 PM, Chris Tapp <opensource@keylevel.com>
> wrote:
> > Hi John,
> >
> > On 8 May 2014, at 16:25, r10kindsofpeople <r10kindsofpeople@gmail.com>
> wrote:
> >
> > > I'm trying to experiment with the SATO build on a DN2800MT with a VGA
> monitor, but can't seem to get going.  The binaries from Daisy and
> genericX86 get as far as the Yocto progress bar complete, and then go
> black.  Any quick hints?
> >
> > Have a look in the README file for the cedartrail BSP. At the bottom you
> will find:
> >
> > Work Around for VGA and LVDS Display issue in PVR driver
> > --------------------------------------------------------
> >
> > The PVR driver has a issue that for some systems it causes
> > it to incorrectly assume that a LVDS display is connected
> > while infact a VGA display is connected and Vice Versa.
> > If your VGA or LVDS display does not work with
> > "cedartrail" MACHINE, then if you have connected a VGA display,
> > add the following to the kernel command line:
> >
> > video=LVDS-1:d video=VGA-1:e
> >
> > <snip>
> >
> > I suspect it's this. Watch out if you use HDMI as well - the VGA fix
> seems to break HDMI. On my systems the VGA then works, but the HDMI pauses
> a lot running the same image! I think you can use similar magic for HDMI
> (or did I just take it out?).
> >
> > > I note also that genericX86 looks like a complete Yocto tree rather
> than just BSP layers.  Am I right, and are there hints on how to combine
> this with a generic Daisy tree for other processors/projects?
> > >
> > >
> Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf
> is a zero length file.   ?
> > >
> > > John
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > Chris Tapp
> >
> > opensource@keylevel.com
> > www.keylevel.com
> >
> >
> >
> > Chris,
> >
> > Thanks!  What version Yocto are you using?  I ask because you suggest I
> check the README file for the cedartrail BSP, but I've been unable to FIND
> a cedartrail BSP in anything newer than Denzil, and that only by searching
> the git trees.  genericX86 is said to cover cedartrail, but it does seem,
> well, generic, with nothing particularly specific to cedartrail, and much
> more than what I'm used to in a Yocto BSP.
>
> I'm using 'danny' as that's the latest version which includes video
> hardware acceleration for the DN2800.
>
> >   At any rate, I'll try what you suggest in terms of the kernel command
> line.
>
> The README says this fixes the issue for the PVR drivers, but I don't
> think they're included in later versions.
>
> If you've still got problems, it may be worth posting to the meta-intel
> mailing list as well as that's where Intel BSPs are discussed.
>
> > Thanks again,
> >
> > John
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>
For what it's worth, it seems to do the trick with Daisy.

In local.conf
APPEND_genericx86 = "video=LVDS-1:d video=VGA-1:e"

THANKS!

John

--e89a8f502d048b30f804f8fd232f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, May 8, 2014 at 3:43 PM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On 8 May 2014, at 18:52, r10kindsofpeople &lt;<a href=3D"m=
ailto:r10kindsofpeople@gmail.com">r10kindsofpeople@gmail.com</a>&gt; wrote:=
<br>

<br>
&gt; On Thu, May 8, 2014 at 12:39 PM, Chris Tapp &lt;<a href=3D"mailto:open=
source@keylevel.com">opensource@keylevel.com</a>&gt; wrote:<br>
&gt; Hi John,<br>
&gt;<br>
&gt; On 8 May 2014, at 16:25, r10kindsofpeople &lt;<a href=3D"mailto:r10kin=
dsofpeople@gmail.com">r10kindsofpeople@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; I&#39;m trying to experiment with the SATO build on a DN2800MT wi=
th a VGA monitor, but can&#39;t seem to get going. =C2=A0The binaries from =
Daisy and genericX86 get as far as the Yocto progress bar complete, and the=
n go black. =C2=A0Any quick hints?<br>

&gt;<br>
&gt; Have a look in the README file for the cedartrail BSP. At the bottom y=
ou will find:<br>
&gt;<br>
&gt; Work Around for VGA and LVDS Display issue in PVR driver<br>
&gt; --------------------------------------------------------<br>
&gt;<br>
&gt; The PVR driver has a issue that for some systems it causes<br>
&gt; it to incorrectly assume that a LVDS display is connected<br>
&gt; while infact a VGA display is connected and Vice Versa.<br>
&gt; If your VGA or LVDS display does not work with<br>
&gt; &quot;cedartrail&quot; MACHINE, then if you have connected a VGA displ=
ay,<br>
&gt; add the following to the kernel command line:<br>
&gt;<br>
&gt; video=3DLVDS-1:d video=3DVGA-1:e<br>
&gt;<br>
&gt; &lt;snip&gt;<br>
&gt;<br>
&gt; I suspect it&#39;s this. Watch out if you use HDMI as well - the VGA f=
ix seems to break HDMI. On my systems the VGA then works, but the HDMI paus=
es a lot running the same image! I think you can use similar magic for HDMI=
 (or did I just take it out?).<br>

&gt;<br>
&gt; &gt; I note also that genericX86 looks like a complete Yocto tree rath=
er than just BSP layers. =C2=A0Am I right, and are there hints on how to co=
mbine this with a generic Daisy tree for other processors/projects?<br>
&gt; &gt;<br>
&gt; &gt; Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graph=
ics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf is a zero length =
file. =C2=A0 ?<br>
&gt; &gt;<br>
&gt; &gt; John<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt; Chris Tapp<br>
&gt;<br>
&gt; <a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a>=
<br>
&gt; <a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com=
</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Chris,<br>
&gt;<br>
&gt; Thanks! =C2=A0What version Yocto are you using? =C2=A0I ask because yo=
u suggest I check the README file for the cedartrail BSP, but I&#39;ve been=
 unable to FIND a cedartrail BSP in anything newer than Denzil, and that on=
ly by searching the git trees. =C2=A0genericX86 is said to cover cedartrail=
, but it does seem, well, generic, with nothing particularly specific to ce=
dartrail, and much more than what I&#39;m used to in a Yocto BSP.<br>

<br>
I&#39;m using &#39;danny&#39; as that&#39;s the latest version which includ=
es video hardware acceleration for the DN2800.<br>
<br>
&gt; =C2=A0 At any rate, I&#39;ll try what you suggest in terms of the kern=
el command line.<br>
<br>
The README says this fixes the issue for the PVR drivers, but I don&#39;t t=
hink they&#39;re included in later versions.<br>
<br>
If you&#39;ve still got problems, it may be worth posting to the meta-intel=
 mailing list as well as that&#39;s where Intel BSPs are discussed.<br>
<br>
&gt; Thanks again,<br>
&gt;<br>
&gt; John<br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
<br>
<br>
</blockquote></div><br></div><div class=3D"gmail_extra">For what it&#39;s w=
orth, it seems to do the trick with Daisy.</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">In local.conf</div><div class=3D"gmail=
_extra">
APPEND_genericx86 =3D &quot;video=3DLVDS-1:d video=3DVGA-1:e&quot;<br></div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">THANKS!</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">John</di=
v></div>

--e89a8f502d048b30f804f8fd232f--
