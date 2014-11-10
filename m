Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EB4AE00849; Sun,  9 Nov 2014 17:16:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42150E007C0
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:16:03 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id e131so4747906oig.16
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6r0dPd6j0/u8YBGU4zy8EnLjqTleCX6u/ylc5QrjKpY=;
	b=Uzax4tyHtwBqCF21ricIwq1Hhgyd/eH9xQbnooo8If/pudNmPzYcjJI1PEhi1gwR7I
	6gvFIG1h1YL5f6t5qlVTDCxiJc2hAJMGL5lHAuu4dVbjJ/ddmyAHplW4l04tKs2/h4kC
	qMQ9KUIKXzSqzM4iFJjIpWPNuUcVCcDcSb/Ufn69w4eCR48AgLow+G5atiOPb/YkpTyw
	ihaBLG/LWAPMUfxs2Nc0FRq39g69Fy8plZm7/SGD+Y07orQjbBvJ2/aAhX9+4lMyrhbB
	eqXwaEArqLYvG4Gt3vGVqvLcuGX9dIwy609othXN0DYInuWTQ2486PbXm7Xi6Weg5IsB
	6rGA==
X-Received: by 10.202.102.215 with SMTP id m84mr45740oik.67.1415582163090;
	Sun, 09 Nov 2014 17:16:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Sun, 9 Nov 2014 17:15:42 -0800 (PST)
In-Reply-To: <54601032.8020203@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 10 Nov 2014 12:15:42 +1100
Message-ID: <CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 01:16:08 -0000
Content-Type: multipart/alternative; boundary=001a1140b0acfb4054050776e7a9

--001a1140b0acfb4054050776e7a9
Content-Type: text/plain; charset=UTF-8

Thanks for the quick reply Nick.

Host system is Ubuntu 14.04. ncurses is already installed:

sudo apt-get install libncurses5-dev
Reading package lists... Done
Building dependency tree
Reading state information... Done
libncurses5-dev is already the newest version.


On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com> wrote:

> Check to see if you actuality have it installed on your host system for
> your package manager.
> The library for ncurses for compiling the kernel is different based on
> your distro, check
> your distro's installer and install the correct ncurses package first. If
> this is still an
> issue please reply with a newer error message.
> Cheers Nick
>
> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
> > Getting a strange error when attempting to configure the Yocto Linux
> kernel
> > via: bitbake linux-yocto -c menuconfig.
> >
> > Does anyone have any ideas? (error message below)
> > Much appreciated.
> >
> > Build Configuration:
> > BB_VERSION        = "1.24.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Ubuntu-14.04"
> > TARGET_SYS        = "x86_64-poky-linux"
> > MACHINE           = "nuc"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.7"
> > TUNE_FEATURES     = "m64 corei7"
> > TARGET_FPU        = ""
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > *make[1]: Entering directory
> >
> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
> > GEN     ./Makefile *** Unable to find the ncurses libraries or the ***
> > required header files. *** 'make menuconfig' requires the ncurses
> > libraries. ***  *** Install ncurses (ncurses-devel) and try again. ***
> > make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
> > [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: *** [__sub-make]
> > Error 2Command failed.Press any key to continue... *
> >
> >
> >
>

--001a1140b0acfb4054050776e7a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the quick reply Nick.<br><br>Host system is Ubu=
ntu 14.04. ncurses is already installed:<br><br>sudo apt-get install libncu=
rses5-dev<br>Reading package lists... Done<br>Building dependency tree=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>Reading state information... Done<br>=
libncurses5-dev is already the newest version.<br><br><div><div class=3D"gm=
ail_extra">
<br><div class=3D"gmail_quote">On Mon, Nov 10, 2014 at 12:09 PM, nick <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">x=
erofoify@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Check to see if you actuality have it installed on your =
host system for your package manager.<br>
The library for ncurses for compiling the kernel is different based on your=
 distro, check<br>
your distro&#39;s installer and install the correct ncurses package first. =
If this is still an<br>
issue please reply with a newer error message.<br>
Cheers Nick<br>
<span class=3D""><br>
On 14-11-09 08:05 PM, Nick D&#39;Ademo wrote:<br>
&gt; Getting a strange error when attempting to configure the Yocto Linux k=
ernel<br>
&gt; via: bitbake linux-yocto -c menuconfig.<br>
&gt;<br>
&gt; Does anyone have any ideas? (error message below)<br>
&gt; Much appreciated.<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-poky-linux&quot=
;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;nuc&quot;<br=
>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m64 corei7&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</span>&gt; *make[1]: Entering directory<br>
<span class=3D"">&gt; `/home/nick/poky/build/tmp/work/corei7-64-intel-commo=
n-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-c=
orei7-64-intel-common-standard-build&#39;<br>
&gt; GEN=C2=A0 =C2=A0 =C2=A0./Makefile *** Unable to find the ncurses libra=
ries or the ***<br>
&gt; required header files. *** &#39;make menuconfig&#39; requires the ncur=
ses<br>
&gt; libraries. ***=C2=A0 *** Install ncurses (ncurses-devel) and try again=
. ***<br>
&gt; make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***<br>
&gt; [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: *** [__sub-ma=
ke]<br>
</span>&gt; Error 2Command failed.Press any key to continue... *<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div><br></div></div></div>

--001a1140b0acfb4054050776e7a9--
