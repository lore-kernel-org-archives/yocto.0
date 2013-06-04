Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387D7E014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:20:11 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id w56so191973wes.25
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 06:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HfGUODf9vCm4uJ3FG8RN+XgtMNouCvgLqTcBvb8O+OE=;
	b=lt+k3pnk9AibIgyO+onLJCF9HKVNevJ+m7c3jEifK6jHRFet9LyAqExZsVwFNAcsgq
	7AC3nBEk17mJqcsVEYkUSkk7ZMm5GGWIeiZ7Um5HcZ8+mVfBwRa5lIxFBOvJU7Gwb5Ln
	qDF3JxCHmwoeO/3bqiZCpfOEFDOxSHdP8GFgaIvdXFOOqtyYBf1tOjSht6SXVByTEbPZ
	BgEV6lgehZUfz1hoO4MSGJAcVU/turFe2IKE8injKvPlAsx4z6GKRI4+XHEAEglSC5AZ
	0PU+M0y8eTxGaHM7lhKVuL//Knq6ul/9BIkRMA9k7TMnJ7aCGx1CPX3Wu4s8KYDIABEq
	n5GA==
X-Received: by 10.180.184.2 with SMTP id eq2mr1383588wic.50.1370352009715;
	Tue, 04 Jun 2013 06:20:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.35 with HTTP; Tue, 4 Jun 2013 06:19:49 -0700 (PDT)
In-Reply-To: <8731013.X4s1gPWXY4@helios>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<3376326.FccA9gDt9x@helios>
	<CAAGt+t3MbEC=vDykz0djfm3U4b++OtQLADFOeUz=sCwuospR4A@mail.gmail.com>
	<8731013.X4s1gPWXY4@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 4 Jun 2013 15:19:49 +0200
Message-ID: <CAAGt+t100v=mrKE4gbJnGqn5ezJADUFwnxdWQ0xzK8SWqyva6g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 13:20:11 -0000
Content-Type: multipart/alternative; boundary=001a11c3660cc1a64604de53f045

--001a11c3660cc1a64604de53f045
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 4, 2013 at 12:58 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:
> > previously, I successfully build *gumstix-console-image* and I have
> created
> > *meta-bebot* folder for my recipe.
> >
> > My Yocto tree as follows:
> >
> > Yocto
> >  --build
> >    --conf
> >        --bblayers.conf ( I added /home/siguser/yocto2013-05-08/poky/*
> > meta-bebot* \ ) path
> >        --local.conf ( I added IMAGE_INSTALL_append = " hello" ) under
> > *Additional
> > image features*
> >    --downloads
> >    --tmp
> >    --
> >    --
> >
> >  --poky
> >     --bitbake
> >     --build
> >     --documentation
> >     --meta
> >     --*meta-bebot*
> > *        --conf*
> > *            --bblayers.conf *(I added
>  /home/siguser/yocto2013-05-08/poky/*
> > meta-bebot* \ ) path
>
> If I understand correctly from the above that you have put bblayers.conf in
> conf/ under your meta-bebot layer, that is not correct. bblayers.conf
> needs to
> be under conf/ in your build directory as usual.
>
>
my bblayers.conf file lies in  poky/meta-bebot/conf/bblayers.conf. do I
need to remove this file and keep it in which build folder? I mean /yocto/*
build*/conf/bblayers.conf or /yocto/*poky*/build/conf/bblayers.conf?



> > *            --layer.conf *(I added BBFILE_COLLECTIONS += "*meta-bebot*"
> >                                              BBFILE_PATTERN_*meta-bebot*
> :=
> > "^${LAYERDIR}/"
> >
>  BBFILE_PRIORITY_*meta-bebot* =
> > "7" )
>
> Are you also extending BBFILES and BBPATH in your
> meta-bebot/conf/layer.conf?
>
>
My meta-bebot/conf/layer.conf is as follows:

# We have a conf directory, append to BBPATH
BBPATH .= ":${LAYERDIR}"

# We have a recipes directory, add to BBFILES
BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "meta-bebot"
BBFILE_PATTERN_meta-bebot := "^${LAYERDIR}/"
BBFILE_PRIORITY_meta-bebot = "7"



> *        --recipes-bebot*
> > *             --hello*
> > *                --hello.bb*
> >     --meta-gumstix
> >     --meta-gumstix-extras
> >     --meta-hob
> >     --meta-openembedded
> >     --
> >     --remaining other folders..
> >
> >
> > When I try to build image *bitbake gumstix-console-image*
> >                       again it throws this error: *ERROR: Nothing
> PROVIDES
> > 'gumstix-console-image'*
>
> BitBake uses BBFILES to find recipes; each layer's layer.conf typically
> extends
> BBFILES to find the recipes within the layer. If you are receiving this
> error
> it means (as you might expect) that BitBake cannot find a provider for the
> specified target. This is either because your bblayers.conf no longer adds
> the
> path to meta-gumstix to BBLAYERS, or because BBFILES is being reset so
> that it
> no longer includes the path within meta-gumstix to find the
> gumstix-console-
> image recipe. Please check that you don't have a duplicate bblayers.conf
> (as
> mentioned above) and that your meta-bebot/conf/layer.conf is appropriately
> extending BBFILES (see other layers for examples).
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

--001a11c3660cc1a64604de53f045
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Jun 4, 2013 at 12:58 PM, Paul Eggleton <span dir=3D"ltr">&l=
t;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.e=
ggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:<br>


&gt; previously, I successfully build *gumstix-console-image* and I have cr=
eated<br>
&gt; *meta-bebot* folder for my recipe.<br>
<div class=3D"im">&gt;<br>
&gt; My Yocto tree as follows:<br>
&gt;<br>
&gt; Yocto<br>
&gt; =A0--build<br>
&gt; =A0 =A0--conf<br>
</div>&gt; =A0 =A0 =A0 =A0--bblayers.conf ( I added /home/siguser/yocto2013=
-05-08/poky/*<br>
&gt; meta-bebot* \ ) path<br>
<div class=3D"im">&gt; =A0 =A0 =A0 =A0--local.conf ( I added IMAGE_INSTALL_=
append =3D &quot; hello&quot; ) under<br>
</div>&gt; *Additional<br>
&gt; image features*<br>
<div class=3D"im">&gt; =A0 =A0--downloads<br>
&gt; =A0 =A0--tmp<br>
&gt; =A0 =A0--<br>
&gt; =A0 =A0--<br>
&gt;<br>
&gt; =A0--poky<br>
&gt; =A0 =A0 --bitbake<br>
&gt; =A0 =A0 --build<br>
&gt; =A0 =A0 --documentation<br>
&gt; =A0 =A0 --meta<br>
</div>&gt; =A0 =A0 --*meta-bebot*<br>
&gt; * =A0 =A0 =A0 =A0--conf*<br>
&gt; * =A0 =A0 =A0 =A0 =A0 =A0--bblayers.conf *(I added =A0/home/siguser/yo=
cto2013-05-08/poky/*<br>
&gt; meta-bebot* \ ) path<br>
<br>
If I understand correctly from the above that you have put bblayers.conf in=
<br>
conf/ under your meta-bebot layer, that is not correct. bblayers.conf needs=
 to<br>
be under conf/ in your build directory as usual.<br>
<br></blockquote><div><br></div><div style>my bblayers.conf file lies in =
=A0poky/meta-bebot/conf/bblayers.conf. do I need to remove this file and ke=
ep it in which build folder? I mean /yocto/<b>build</b>/conf/bblayers.conf =
or /yocto/<b>poky</b>/build/conf/bblayers.conf?=A0</div>

<div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">
&gt; * =A0 =A0 =A0 =A0 =A0 =A0--layer.conf *(I added BBFILE_COLLECTIONS +=
=3D &quot;*meta-bebot*&quot;<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0BBFILE_PATTERN_*meta-bebot* :=3D<br>
&gt; &quot;^${LAYERDIR}/&quot;<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0BBFILE_PRIORITY_*meta-bebot* =3D<br>
&gt; &quot;7&quot; )<br>
<br>
Are you also extending BBFILES and BBPATH in your meta-bebot/conf/layer.con=
f?<br>
<br></blockquote><div><br></div><div style>My meta-bebot/conf/layer.conf is=
 as follows:</div><div style><br></div><div style><div># We have a conf dir=
ectory, append to BBPATH</div><div>BBPATH .=3D &quot;:${LAYERDIR}&quot;</di=
v>

<div><br></div><div># We have a recipes directory, add to BBFILES</div><div=
>BBFILES +=3D &quot;${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.=
bbappend&quot;</div><div><br></div><div>BBFILE_COLLECTIONS +=3D &quot;meta-=
bebot&quot;</div>

<div>BBFILE_PATTERN_meta-bebot :=3D &quot;^${LAYERDIR}/&quot;</div><div>BBF=
ILE_PRIORITY_meta-bebot =3D &quot;7&quot;</div><div><br></div></div><div st=
yle><br></div><div style><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex">


&gt; * =A0 =A0 =A0 =A0--recipes-bebot*<br>
&gt; * =A0 =A0 =A0 =A0 =A0 =A0 --hello*<br>
&gt; * =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0--<a href=3D"http://hello.bb" target=
=3D"_blank">hello.bb</a>*<br>
<div class=3D"im">&gt; =A0 =A0 --meta-gumstix<br>
&gt; =A0 =A0 --meta-gumstix-extras<br>
&gt; =A0 =A0 --meta-hob<br>
&gt; =A0 =A0 --meta-openembedded<br>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 --remaining other folders..<br>
&gt;<br>
&gt;<br>
</div>&gt; When I try to build image *bitbake gumstix-console-image*<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 again it throws this error=
: *ERROR: Nothing PROVIDES<br>
&gt; &#39;gumstix-console-image&#39;*<br>
<br>
BitBake uses BBFILES to find recipes; each layer&#39;s layer.conf typically=
 extends<br>
BBFILES to find the recipes within the layer. If you are receiving this err=
or<br>
it means (as you might expect) that BitBake cannot find a provider for the<=
br>
specified target. This is either because your bblayers.conf no longer adds =
the<br>
path to meta-gumstix to BBLAYERS, or because BBFILES is being reset so that=
 it<br>
no longer includes the path within meta-gumstix to find the gumstix-console=
-<br>
image recipe. Please check that you don&#39;t have a duplicate bblayers.con=
f (as<br>
mentioned above) and that your meta-bebot/conf/layer.conf is appropriately<=
br>
extending BBFILES (see other layers for examples).<br>
<div class=3D""><div class=3D"h5"><br>
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

--001a11c3660cc1a64604de53f045--
