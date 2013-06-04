Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DF7E01471
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 03:42:34 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id hm9so562624wib.10
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 03:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=IDj8cTA5lK2wxRm4p5Ayc/dyQ1y2sTVFgkGyxxaeLC8=;
	b=n231xEFUeOZRFJTXUYfGZ1XjLCsCrNQW1C9OS9JRu4C7zb+MjSA8cYr6SqgdhEJ3lo
	Mcdqj4O2QC7NB4+9swHr6FMYpDWZwbKvp6fPydnft0bRuP9ekDLZbMgiVCF8Zoh7KLHM
	DzxGpOVLalXTTdr7Vbn6bVvTkC/SptOoX6RR1eDsJn/7b25UTQrxVkpZziitJTgX0lPP
	vWViXfDroG2lDCVKMNKHZV1gsBGeuq1v0ftBEp6+kERvuF3WY5sHJtzlhgeEYZ+woukj
	dMSF5dj66zkx8HQNGvZEJ9LfCIWXGH7QHRo1mWuIROjrXJlFsnnLaL7wg3pk0/WRIXU8
	i4yQ==
X-Received: by 10.180.160.206 with SMTP id xm14mr685957wib.50.1370342552908;
	Tue, 04 Jun 2013 03:42:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.35 with HTTP; Tue, 4 Jun 2013 03:42:12 -0700 (PDT)
In-Reply-To: <3376326.FccA9gDt9x@helios>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<CA+AhUGy_+4H9K_eWDdPdziYb90EtSsC40voGc=JsVMBknpJYcw@mail.gmail.com>
	<CAAGt+t1eJo8yRC7ZKLFOz1c8zLAJZv7Uc_2d6SxkXq-ij+Pe=A@mail.gmail.com>
	<3376326.FccA9gDt9x@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 4 Jun 2013 12:42:12 +0200
Message-ID: <CAAGt+t3MbEC=vDykz0djfm3U4b++OtQLADFOeUz=sCwuospR4A@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Jun 2013 10:42:34 -0000
Content-Type: multipart/alternative; boundary=047d7b6225b01668d604de51bd9c

--047d7b6225b01668d604de51bd9c
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am in a serious *problem* of unable to add a recipe and build an image.

previously, I successfully build *gumstix-console-image* and I have created
*meta-bebot* folder for my recipe.

My Yocto tree as follows:

Yocto
 --build
   --conf
       --bblayers.conf ( I added /home/siguser/yocto2013-05-08/poky/*
meta-bebot* \ ) path
       --local.conf ( I added IMAGE_INSTALL_append = " hello" ) under
*Additional
image features*
   --downloads
   --tmp
   --
   --

 --poky
    --bitbake
    --build
    --documentation
    --meta
    --*meta-bebot*
*        --conf*
*            --bblayers.conf *(I added  /home/siguser/yocto2013-05-08/poky/*
meta-bebot* \ ) path
*            --layer.conf *(I added BBFILE_COLLECTIONS += "*meta-bebot*"
                                             BBFILE_PATTERN_*meta-bebot* :=
"^${LAYERDIR}/"
                                             BBFILE_PRIORITY_*meta-bebot* =
"7" )
*        --recipes-bebot*
*             --hello*
*                --hello.bb*
    --meta-gumstix
    --meta-gumstix-extras
    --meta-hob
    --meta-openembedded
    --
    --remaining other folders..


When I try to build image *bitbake gumstix-console-image*
                      again it throws this error: *ERROR: Nothing PROVIDES
'gumstix-console-image'*

I do not know where I am doing wrong or what the problem is. I would be
greatly helpful if anyone can give some inputs.

Thank You,

Regards,
Zafrullah Syed


On Tue, May 28, 2013 at 3:54 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 28 May 2013 15:45:10 Zafrullah Syed wrote:
> > Error corrected. Thank You.
> >
> > Do we need to add IMAGE_INSTALL += " hello " and EXTRA_IMAGE_FEATURES +=
> "
> > hello " to yocto/build/conf/local.conf or
> yocto/poky/build/conf/local.conf
> >  before running build?
>
> If you want it installed into an image, yes. However, IMAGE_INSTALL +=
> "hello"
> in local.conf won't work, because it will be overridden by the setting of
> IMAGE_INSTALL in the image recipe itself, since local.conf will be parsed
> first. You need to do this instead in local.conf:
>
> IMAGE_INSTALL_append = " hello"
>
> (note the leading space, this is important with _append as _append does not
> add a space for you). _append operations are deferred until the end of
> parsing
> and thus will be applied even if the value is set with = afterwards as in
> this
> case.
>
> Also, EXTRA_IMAGE_FEATURES += " hello " won't do anything since "hello" is
> not
> a valid image feature, it's a package. Appending it to IMAGE_INSTALL is
> enough
> to have it installed into the image.
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

--047d7b6225b01668d604de51bd9c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div style>I am in a serious <b>prob=
lem</b> of unable to add a recipe and build an image.</div><div style><br><=
/div><div style>previously, I successfully build <i>gumstix-console-image</=
i> and I have created <b><i>meta-bebot</i></b> folder for my recipe.=A0</di=
v>

<div style><br></div><div style>My Yocto tree as follows:</div><div style><=
br></div><div style>Yocto</div><div style>=A0--build</div><div style>=A0 =
=A0--conf</div><div style>=A0 =A0 =A0 =A0--bblayers.conf ( I added /home/si=
guser/yocto2013-05-08/poky/<b>meta-bebot</b> \ ) path</div>

<div style>=A0 =A0 =A0 =A0--local.conf ( I added IMAGE_INSTALL_append =3D &=
quot; hello&quot; ) under=A0<i>Additional image features</i></div><div styl=
e>=A0 =A0--downloads</div><div style>=A0 =A0--tmp</div><div style>=A0 =A0--=
</div><div style>=A0 =A0--</div>

<div style><br></div><div style>=A0--poky<br></div><div style>=A0 =A0 --bit=
bake</div><div style>=A0 =A0 --build</div><div style>=A0 =A0 --documentatio=
n</div><div style>=A0 =A0 --meta</div><div style>=A0 =A0 --<b>meta-bebot</b=
></div><div style>

<b>=A0 =A0 =A0 =A0 --conf</b></div><div style><b>=A0 =A0 =A0 =A0 =A0 =A0 --=
bblayers.conf </b>(I added =A0/home/siguser/yocto2013-05-08/poky/<b>meta-be=
bot</b> \=A0) path</div><div style><b>=A0 =A0 =A0 =A0 =A0 =A0 --layer.conf =
</b>(I added=A0BBFILE_COLLECTIONS +=3D &quot;<b>meta-bebot</b>&quot;</div>

<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0BBFILE_PATTERN_<b>meta-bebot</b> :=3D &quot;^${LAYER=
DIR}/&quot;</div><div style>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0BBFILE_PRIORITY_<b>meta-bebot</=
b> =3D &quot;7&quot;=A0)</div>

<div style><b>=A0 =A0 =A0 =A0 --recipes-bebot</b></div><div style><b>=A0 =
=A0 =A0 =A0 =A0 =A0 =A0--hello</b></div><div style><b>=A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 --<a href=3D"http://hello.bb">hello.bb</a></b></div><div style>=
=A0 =A0 --meta-gumstix</div><div style>=A0 =A0 --meta-gumstix-extras</div>

<div style>=A0 =A0 --meta-hob</div><div style>=A0 =A0 --meta-openembedded</=
div><div style>=A0 =A0 --</div><div style>=A0 =A0 --remaining other folders=
..</div><div style><br></div><div style><br></div><div style>When I try to =
build image <i>bitbake gumstix-console-image</i>=A0</div>

<div style>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 again it throws this=
 error:=A0<b>ERROR: Nothing PROVIDES &#39;gumstix-console-image&#39;</b></d=
iv><div style><br></div><div class=3D"gmail_extra">I do not know where I am=
 doing wrong or what the problem is. I would be greatly helpful if anyone c=
an give some inputs.<br>

<br>Thank You,</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Regards,</div><div class=3D"gmail_extra">Zafrullah Syed<br><br><br=
><div class=3D"gmail_quote">On Tue, May 28, 2013 at 3:54 PM, Paul Eggleton =
<span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" targ=
et=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On Tuesday 28 May 2013 15:45:10 Zafrulla=
h Syed wrote:<br>


&gt; Error corrected. Thank You.<br>
&gt;<br>
&gt; Do we need to add IMAGE_INSTALL +=3D &quot; hello &quot; and EXTRA_IMA=
GE_FEATURES +=3D &quot;<br>
&gt; hello &quot; to yocto/build/conf/local.conf or yocto/poky/build/conf/l=
ocal.conf<br>
&gt; =A0before running build?<br>
<br>
</div>If you want it installed into an image, yes. However, IMAGE_INSTALL +=
=3D &quot;hello&quot;<br>
in local.conf won&#39;t work, because it will be overridden by the setting =
of<br>
IMAGE_INSTALL in the image recipe itself, since local.conf will be parsed<b=
r>
first. You need to do this instead in local.conf:<br>
<br>
IMAGE_INSTALL_append =3D &quot; hello&quot;<br>
<br>
(note the leading space, this is important with _append as _append does not=
<br>
add a space for you). _append operations are deferred until the end of pars=
ing<br>
and thus will be applied even if the value is set with =3D afterwards as in=
 this<br>
case.<br>
<br>
Also, EXTRA_IMAGE_FEATURES +=3D &quot; hello &quot; won&#39;t do anything s=
ince &quot;hello&quot; is not<br>
a valid image feature, it&#39;s a package. Appending it to IMAGE_INSTALL is=
 enough<br>
to have it installed into the image.<br>
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

--047d7b6225b01668d604de51bd9c--
