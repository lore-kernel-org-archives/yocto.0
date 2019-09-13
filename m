Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB1E7E009E6; Fri, 13 Sep 2019 08:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC7AE00961
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 08:35:47 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id g12so1745298eds.6
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 08:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=32z083T+D/OWorI2HEo3MP+fuhYBmBuYPjHHSVu5AFc=;
	b=kKocgO+MfcnOSsBL3Ez4g+41ay1ybTsveyGApiqz4SsIpsvq46JYfEXDKYra+A4yj3
	WZnTk6a3Tc3gdtoNfAWyJjVnkOPGWKuU7Ie+p5mCoM81VqdybLmVSKkjXdZUMWrj0XBH
	1cmGNvOCnytBKXCLKSZGxq9A9lNJLJXTzinFxcFGd1IM0cCdjHzBjGy0UPwNzsM3JxAC
	Ava3T/c+KOc0H5/zfjFpaduVe2VusYVAw0faf8QZ69nwXv0MVrnPwUPSyclSpqZd6jLk
	/lxzX8USPfC9O/zpoDCJ1ieBxA9qO0Tf7VQYtXe5lGQsMBOzP4NTatDcLadau77yGnYm
	DEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=32z083T+D/OWorI2HEo3MP+fuhYBmBuYPjHHSVu5AFc=;
	b=jrffqlUBMYHcPVi0nm6ixm8+KPGe9hBSuM6XZw/4QuIszcls3uzDBdp54y53Vm0dL2
	W99mRU35bOwT7g1bwGYeIpOlwQDXT7gGRNbxEm+vzTRV/IJU9LklUE0QkQTGXf5ESWqq
	bGP9GNCuSdTKPejbhqa+L8yPKVT4qv9fVaMcksV7/KdRbRRtPq/5yC4RR86E2qXnL9Ry
	JNR6xbhb4+B71iwZxwXm6bfp3u/WvoW5R2IT8xCuhnl8BJtfgM8sJj8VxLyUs/dUxTrU
	gWAb1eGoBhcJ6E1ufNx9fzmNN89P6iWPmZOmrMx0EmgcvUMauJjbGQ3UjstfAPPsQO1Z
	SqZg==
X-Gm-Message-State: APjAAAWwzWCyGvlmFg3uNpKXNfm9F0LuaXtFhWtAqJ9/SybP+DF8FfMS
	WVIMXb30VdyyqDxyOLkNOzgkUik06SwoWFMdosQ=
X-Google-Smtp-Source: APXvYqz3TrOqG5RbGZZ+Wp1wzvTFUdDIYZMcT0dh9syHvJH9iFmMV/vxAgwb+f80r1J8yVZN/FObe2hwpy/2vStcuRc=
X-Received: by 2002:a50:b582:: with SMTP id a2mr32887657ede.98.1568388946500; 
	Fri, 13 Sep 2019 08:35:46 -0700 (PDT)
MIME-Version: 1.0
References: <1568386601901.43131@lge.com>
In-Reply-To: <1568386601901.43131@lge.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 13 Sep 2019 17:35:34 +0200
Message-ID: <CA+chaQfShcX+G5yUQYFOOuvMw0n8OxMW+Gp=sbH0KzMoV3_cVg@mail.gmail.com>
To: "keith.derrick" <keith.derrick@lge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Alternative to _git.bb convention for unstable versions?
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
X-List-Received-Date: Fri, 13 Sep 2019 15:35:49 -0000
Content-Type: multipart/alternative; boundary="00000000000006a11105927102c2"

--00000000000006a11105927102c2
Content-Type: text/plain; charset="UTF-8"

You can easily add .inc file which will set all the PREFERRED_VERSIONs for
all components you need and then the users will just add an "require" of
this .inc files to their local.conf.

"somepackage-unstable.bb" or "somepackage-devel.bb" this will make it 2
different components - not 2 different versions of the same component -
which makes this much more complicated, you'll need PREFERRED_PROVIDERs for
every dependency and in the end you will need to make sure that whole build
is using the same set of providers, because if

A depends on somepackage-unstable
B depends on A and somepackage-devel

then building B will fail in prepare-recipe-sysrooot, because A will pull
somepackage-unstable which will probably conflict with somepackage-devel by
providing the same files (in just different version). You can see how
openssl10 and openssl "worked" if you build didn't use the same one for all
the recipes.

Cheers,

On Fri, Sep 13, 2019 at 5:27 PM keith.derrick <keith.derrick@lge.com> wrote:

> I am currently creating a new layer (which will eventually be made
> generally available). I need to provide both a versioned recipe, and an
> "unstable"  one.
>
>
> Currently I have somepackage_1.0.bb and somepackage_git.bb which are
> working fine.
>
>
> However, using the "_git" approach (with DEFAULT_PREFERENCE = "-1")
> requires the use of PREFERRED_VERSION in either local.conf or
> a distro.conf. I've tried putting it in the image files, and that doesn't
> work.
>
>
> If you are not creating your own DISTRO, and instead just adding the layer
> to a straight poky/meta build, you seem to be pretty much stuck with adding
> 3 PREFERRED_VERSION statements (target, -native, and nativesdk- variants)
> to local.conf. I'd rather not require that of users of the layer.
>
>
> I'm considering instead using either "somepackage-unstable.bb" or "
> somepackage-devel.bb" instead of "sompackage_git.bb". This allows a
> simple selection of either  RDEPENDS = "somepackage" or RDEPENDS =
> "somepackage-devel" to add the desired one to an image.
>
>
> However, neither "-devel" or "-unstable" have the right feel for the
> suffix. If, for example, you are picking up an older commit (between
> versions  say) it might well be completely stable.
>
>
> Does the community have a naming convention for this type of recipe?
> Failing that, is there somewhere else in the met-data the PREFERRED_VERSION
> statement can go other than a configuration file?
>
>
> Thanks
>
> Keith Derrick
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000006a11105927102c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can easily add .inc file which will set all the PREFER=
RED_VERSIONs for all components you need and then the users will just add a=
n &quot;require&quot; of this .inc files to their local.conf.<div><br></div=
><div>&quot;<a href=3D"http://somepackage-unstable.bb">somepackage-unstable=
.bb</a>&quot; or &quot;<a href=3D"http://somepackage-devel.bb">somepackage-=
devel.bb</a>&quot; this will make it 2 different components - not 2 differe=
nt versions of the same component - which makes this much more complicated,=
 you&#39;ll need PREFERRED_PROVIDERs for every dependency and in the end yo=
u will need to make sure that whole build is using the same set of provider=
s, because if<br></div><div><br></div><div>A depends on somepackage-unstabl=
e</div><div>B depends on A and somepackage-devel</div><div><br></div><div>t=
hen building=C2=A0B will fail in prepare-recipe-sysrooot, because A will pu=
ll somepackage-unstable which will probably conflict with somepackage-devel=
 by providing the same files (in just different version). You can see how o=
penssl10 and openssl &quot;worked&quot; if you build didn&#39;t use the sam=
e one for all the recipes.</div><div><br></div><div>Cheers,</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Se=
p 13, 2019 at 5:27 PM keith.derrick &lt;<a href=3D"mailto:keith.derrick@lge=
.com">keith.derrick@lge.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p>I am currently=C2=A0creating a new=C2=A0layer (which will eventually be =
made generally available). I need to provide both a versioned recipe, and a=
n &quot;unstable&quot;=C2=A0 one.<br>
</p>
<p><br>
</p>
<p>Currently I have <a href=3D"http://somepackage_1.0.bb" target=3D"_blank"=
>somepackage_1.0.bb</a> and <a href=3D"http://somepackage_git.bb" target=3D=
"_blank">somepackage_git.bb</a> which are working fine.<br>
</p>
<p><br>
</p>
<p>However, using the &quot;_git&quot; approach (with DEFAULT_PREFERENCE =
=3D &quot;-1&quot;) requires the use of PREFERRED_VERSION in either local.c=
onf or a=C2=A0distro.conf. I&#39;ve tried putting it in the image files, an=
d that doesn&#39;t work.<br>
</p>
<p><br>
</p>
<p>If you are not creating your own DISTRO, and instead just adding the lay=
er to a straight=C2=A0poky/meta build, you seem to be=C2=A0pretty much stuc=
k with adding 3 PREFERRED_VERSION statements (target, -native, and nativesd=
k- variants) to local.conf. I&#39;d rather not
 require that of users of the layer.<br>
</p>
<p><br>
</p>
<p>I&#39;m considering instead using either &quot;<a href=3D"http://somepac=
kage-unstable.bb" target=3D"_blank">somepackage-unstable.bb</a>&quot; or &q=
uot;<a href=3D"http://somepackage-devel.bb" target=3D"_blank">somepackage-d=
evel.bb</a>&quot; instead of &quot;<a href=3D"http://sompackage_git.bb" tar=
get=3D"_blank">sompackage_git.bb</a>&quot;. This allows a simple selection =
of either=C2=A0=C2=A0R<span style=3D"font-size:12pt">DEPENDS =3D &quot;some=
package&quot; or RDEPENDS =3D &quot;somepackage-devel&quot; to
 add the desired=C2=A0one=C2=A0to an image.<br>
</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p>However, neither &quot;-devel&quot; or &quot;-unstable&quot; have the ri=
ght feel for the suffix. If, for example, you are picking up an older commi=
t (between versions=C2=A0=C2=A0say) it might well be completely stable.<br>
</p>
<p><br>
</p>
<p>Does the community have a naming convention for this type of recipe? Fai=
ling that, is there somewhere else in the met-data the PREFERRED_VERSION st=
atement can go other than a configuration file?<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith Derrick<br>
</p>
<p><br>
</p>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000006a11105927102c2--
