Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC56E014BD
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 07:25:04 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id m15so3769666wgh.29
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 07:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=JAstdbrYsL8iLyI1dRzjd1Mwg6Ks7M7L3ifiF64y0X0=;
	b=cFW9LkF9OEPBmMUDpZuwAuwJUXpLYbZZa5s9E77bYKJrKSS5kelw41MCopC9iC0sF+
	a6DOXFE2DEXDZNvJvgOyLk6D9IFy4uKhOVM2KtdHnudc4Xsr/S7T1mDhncsB4wQNprFq
	PS72cic0//fM5qXMaRotmnqLTL3T4wb8oMSrAy2W9dxLBWrdTBv+kypE8z7FTlF4HOcq
	njOmNuKeWkxW65VTGerkwzswu4qRM+tqA+z9LY86icazRYAGLbhWeEDt7uRpD2Y40KP9
	imVbD7D6CX1W4PCstmP8EEaKE0yrzzomcmzL9RNkIiNc4yB9goRfdiJvFeXFEt+WWwVF
	fGMw==
X-Received: by 10.180.39.207 with SMTP id r15mr18287656wik.16.1367245503871;
	Mon, 29 Apr 2013 07:25:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 29 Apr 2013 07:24:43 -0700 (PDT)
In-Reply-To: <5560552.0ejHhnttl9@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
	<c46460b7-9c66-40f3-9a1c-1be602fb0172@email.android.com>
	<5560552.0ejHhnttl9@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 16:24:43 +0200
Message-ID: <CAAGt+t1uf-iLiJ7zwD2pX1=+QK0PbitvG6iDWk8Z8T-MDPwXsQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 14:25:05 -0000
Content-Type: multipart/alternative; boundary=001a11c23f3094465e04db80a64e

--001a11c23f3094465e04db80a64e
Content-Type: text/plain; charset=ISO-8859-1

I am using danny branch of meta-gumstix and also requested gumstix
maintainer to update the files. I will again make a clean install again and
hopefully it should work.


On Mon, Apr 29, 2013 at 2:17 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 29 April 2013 13:26:37 Anders Darander wrote:
> > Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> > >After setting MACHINE and adding the meta-gumstix and
> > >meta-gumstix-extras path to conf/bblayers.conf and when building again,
> > >i get the following:
> > >
> > >
> > >WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
> > >packagegroup instead
> > >
> > >   | ETA:  00:00:30
> > >
> > >Parsing recipes: 100%
> > >
> >
> >|##########################################################################
> > >|#################################################|>
> > >Time: 00:00:37
> > >
> > >Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets,
> > >44 skipped, 0 masked, 0 errors.
> > >
> > >ERROR: No recipes available for:
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/
> > >networkmanager_0.9.2.0.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkm
> > >anager/networkmanager_0.9.2.0.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bba
> > >ppend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_
> > >git.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4
> > >.8.1.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd
> > >_3.5.24.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/r
> > >fkill_0.4.bbappend
> > >
> > >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/
> netbase_4.47.bb
> > >append
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.4
> > >46.bbappend
> > >
> >
> >/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappen
> > >d
> > >
> > >ERROR: Command execution failed: Exited with 1
> >
> > These are applications whose versions have been upgraded in either
> OE-Core
> > or meta-oe. Thus, you need to update the bbappends in meta-gumstix to
> match
> > the current versions.
>
> Or, use the danny branch of meta-gumstix (if one exists) or poke the meta-
> gumstix maintainer to update the bbappends there.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Regards,
Zafrullah Syed

--001a11c23f3094465e04db80a64e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">I am using danny branch of meta-gumstix and also requested gumstix mainta=
iner to update the files. I will again make a clean install again and hopef=
ully it should work.=A0</span><br>


<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Apr 2=
9, 2013 at 2:17 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
aul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.c=
om</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div>On Monday 29 April 2013 13:26:37 A=
nders Darander wrote:<br>
&gt; Zafrullah Syed &lt;<a href=3D"mailto:zafrullahmehdi@gmail.com" target=
=3D"_blank">zafrullahmehdi@gmail.com</a>&gt; wrote:<br>
&gt; &gt;After setting MACHINE and adding the meta-gumstix and<br>
&gt; &gt;meta-gumstix-extras path to conf/bblayers.conf and when building a=
gain,<br>
&gt; &gt;i get the following:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;WARNING: gumstix-repo-task: task.bbclass is deprecated, please inh=
erit<br>
&gt; &gt;packagegroup instead<br>
&gt; &gt;<br>
&gt; &gt; =A0 | ETA: =A000:00:30<br>
&gt; &gt;<br>
&gt; &gt;Parsing recipes: 100%<br>
&gt; &gt;<br>
&gt; &gt;|#################################################################=
#########<br>
&gt; &gt;|#################################################|&gt;<br>
&gt; &gt;Time: 00:00:37<br>
&gt; &gt;<br>
&gt; &gt;Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 tar=
gets,<br>
&gt; &gt;44 skipped, 0 masked, 0 errors.<br>
&gt; &gt;<br>
&gt; &gt;ERROR: No recipes available for:<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networ=
kmanager/<br>
&gt; &gt;networkmanager_0.9.2.0.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity=
/networkm<br>
&gt; &gt;anager/networkmanager_0.9.2.0.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/system=
d_git.bba<br>
&gt; &gt;ppend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd=
/systemd_<br>
&gt; &gt;git.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/lib=
xfce4ui_4<br>
&gt; &gt;.8.1.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/ba=
se-passwd<br>
&gt; &gt;_3.5.24.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity=
/rfkill/r<br>
&gt; &gt;fkill_0.4.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/<a hre=
f=3D"http://netbase_4.47.bb" target=3D"_blank">netbase_4.47.bb</a><br>
&gt; &gt;append<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/=
vim_7.2.4<br>
&gt; &gt;46.bbappend<br>
&gt; &gt;<br>
&gt; &gt;/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.=
0.bbappen<br>
&gt; &gt;d<br>
&gt; &gt;<br>
&gt; &gt;ERROR: Command execution failed: Exited with 1<br>
&gt;<br>
&gt; These are applications whose versions have been upgraded in either OE-=
Core<br>
&gt; or meta-oe. Thus, you need to update the bbappends in meta-gumstix to =
match<br>
&gt; the current versions.<br>
<br>
</div></div>Or, use the danny branch of meta-gumstix (if one exists) or pok=
e the meta-<br>
gumstix maintainer to update the bbappends there.<br>
<div><div><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><fon=
t color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-collap=
se:collapse"><br>


</span></font></div>
</div></div>

--001a11c23f3094465e04db80a64e--
