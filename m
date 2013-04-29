Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD37DE013C9
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 03:21:35 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id e11so1807163wgh.2
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 03:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=xB2Iuf7FGKe88Y0WWHmt73efJ6otiVdkYsqaqU35xh4=;
	b=JK3G7wL6Ow+NDyK4Osu+do/ejF03JuAeGalFb7iyfdUX3/xwSY+/SK8UhG3LNop59n
	1zTBydUgrUgHl/oPj3r0zHIdX+8bJIgSjI4dJVsOK3cZPtsQOONhX4VPAOuEKX7pedtM
	/qKU70JaIq937xvmIgluUP8Ge8eJkfiXoi9GgbTaCo+ipebmdmmCD/Bu+RT5QMSG6pNd
	chKUgS0Hy1B1uXiTX/mOl/NTk/RPtb2NPi6Q1uAphqgstNynFPAVzMmH6XKFZ1mMUR78
	Fnj1/Go7r4YUqU43Ne60aQJHGZ3aw8BUb4T9fH89rheYxqwQtOZEzXaMfybJQJSvB0WD
	Uw1A==
X-Received: by 10.194.119.33 with SMTP id kr1mr14484821wjb.36.1367230894236;
	Mon, 29 Apr 2013 03:21:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 29 Apr 2013 03:21:12 -0700 (PDT)
In-Reply-To: <1757782.s36vEYL6HR@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
	<CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
	<1757782.s36vEYL6HR@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 12:21:12 +0200
Message-ID: <CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Apr 2013 10:21:36 -0000
Content-Type: multipart/alternative; boundary=089e01227b94c6eae804db7d3f8c

--089e01227b94c6eae804db7d3f8c
Content-Type: text/plain; charset=ISO-8859-1

After setting MACHINE and adding the meta-gumstix and meta-gumstix-extras
path to conf/bblayers.conf and when building again, i get the following:

WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
packagegroup instead
| ETA:  00:00:30
Parsing recipes: 100%
|###########################################################################################################################|
Time: 00:00:37
Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets, 44
skipped, 0 masked, 0 errors.
ERROR: No recipes available for:

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_git.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd_3.5.24.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.446.bbappend

/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappend
ERROR: Command execution failed: Exited with 1

i hope i am not annoying you. Thank You for your time and patience.


On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 29 April 2013 11:28:22 Zafrullah Syed wrote:
> > I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder and
> i
> > tried to add these values of my machine in the local.conf file
> >
> > MACHINE_KERNEL_PR = "r1"
> >
> > KERNEL_IMAGETYPE = "uImage"
> >
> > UBOOT_ENTRYPOINT = "0x80008000"
> > UBOOT_LOADADDRESS = "0x80008000"
> >
> > TARGET_ARCH = "arm"
>
> Couple of things:
>
> 1) You should not be adding the above to conf/local.conf. Instead, you
> should
> set MACHINE in conf/local.conf to point to the appropriate machine (in this
> case "overo")
>
> 2) You must add at least the path to the directory where meta-gumstix is
> located on your build machine (and possibly meta-gumstix-extras) to
> conf/bblayers.conf.
>
> If you don't do both of these you will continue to get the errors above.
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

--089e01227b94c6eae804db7d3f8c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After setting MACHINE and adding the meta-gumstix and meta=
-gumstix-extras path to conf/bblayers.conf and when building again, i get t=
he following:<div><br></div><div><div>WARNING: gumstix-repo-task: task.bbcl=
ass is deprecated, please inherit packagegroup instead =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 | ETA: =A000:00:30</div>


<div>Parsing recipes: 100% |###############################################=
###########################################################################=
#| Time: 00:00:37</div><div>Parsing of 889 .bb files complete (0 cached, 88=
9 parsed). 1196 targets, 44 skipped, 0 masked, 0 errors.</div>


<div>ERROR: No recipes available for:</div><div>=A0 /home/zaif/poky-danny-8=
.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.=
bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipe=
s-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend</div>


<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/system=
d_git.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/=
recipes-core/systemd/systemd_git.bbappend</div><div>=A0 /home/zaif/poky-dan=
ny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend</div>


<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/ba=
se-passwd_3.5.24.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gums=
tix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend</div><div>=A0 /h=
ome/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbap=
pend</div>


<div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/=
vim_7.2.446.bbappend</div><div>=A0 /home/zaif/poky-danny-8.0/meta-gumstix/r=
ecipes-core/gawk/gawk_4.0.0.bbappend</div><div>ERROR: Command execution fai=
led: Exited with 1</div>


</div><div><br></div><div>i hope i am not annoying you. Thank You for your =
time and patience.</div><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Mon, Apr 29, 2013 at 11:50 AM, Paul Eggleton <span dir=3D"ltr=
">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pa=
ul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Monday 29 April 2013 11:28:22 Zafrul=
lah Syed wrote:<br>
&gt; I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder a=
nd i<br>
&gt; tried to add these values of my machine in the local.conf file<br>
&gt;<br>
&gt; MACHINE_KERNEL_PR =3D &quot;r1&quot;<br>
&gt;<br>
&gt; KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
&gt;<br>
&gt; UBOOT_ENTRYPOINT =3D &quot;0x80008000&quot;<br>
&gt; UBOOT_LOADADDRESS =3D &quot;0x80008000&quot;<br>
&gt;<br>
&gt; TARGET_ARCH =3D &quot;arm&quot;<br>
<br>
</div>Couple of things:<br>
<br>
1) You should not be adding the above to conf/local.conf. Instead, you shou=
ld<br>
set MACHINE in conf/local.conf to point to the appropriate machine (in this=
<br>
case &quot;overo&quot;)<br>
<br>
2) You must add at least the path to the directory where meta-gumstix is<br=
>
located on your build machine (and possibly meta-gumstix-extras) to<br>
conf/bblayers.conf.<br>
<br>
If you don&#39;t do both of these you will continue to get the errors above=
.<br>
<br>
Cheers,<br>
Paul<br>
<div><div><br>
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

--089e01227b94c6eae804db7d3f8c--
