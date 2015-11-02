Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF293E00AB7; Mon,  2 Nov 2015 03:57:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D089EE00AAA
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 03:57:47 -0800 (PST)
Received: by qkcn129 with SMTP id n129so57178663qkc.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 03:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lZhkb1muRzO5nTgS0+Cm1tOyaBVdNRweSnq4c4KlSgk=;
	b=WCKq4dH94uq9aCcV+13iX+j/lZcVGr0uf32UNDP3YxUETjz1J1eGyDuYFZuaHw49Tz
	vFszv6h6z4uC/VaVpMtS4wxKRsy1ry1wJHICpkwCvBe7JQj3XAL8Vyd0fvW5XvghbvML
	6jOlNHxTT3vRWSxSbsfiH6tlq4OgbCWuSPiSmJLHPEOZhENxiGfA3IKK3vccr/Yt30y0
	1gZANTkZ2mo2Iv7JNNPMA7aQen9MAL0pslNu75dPEhXuz/nAVi3duptqz2dPGeqgPb6U
	WmhRzdPeyiOY8UrsoNqFbiGaLf2fhlHhMHvAiF2XKvR2hJZ97IBSmQ+MlglLp39Jk4WF
	CpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lZhkb1muRzO5nTgS0+Cm1tOyaBVdNRweSnq4c4KlSgk=;
	b=DA5O0hG/vQU6Zq9zJaf228N48urxQqdVZbSuUK2iOqxUMDep5pXogcH1rw84kVaDVz
	DH2rDmCko9ngTmuGZGUj3A4NGfkUpioZqlMZQFAcsKAkaRWmYrUj6vQhTQKvS2gTC8xj
	jsPI4WSxce1qC6MLCJzpIEq9rqlkrGwh/BFiVAp6woKxkE7L9ovk0q83OYXxZhtSPQlN
	PXApWxJcZdHQpqY88mDHIAI9qkSTl7euJcpeqopGDXcCUkFA2gys5t1YEjhhILBwHlup
	vos37OlPqZrBd3iiHaoNAvKDuM/EyGq7CG1l1SoTKljsC0DCQv8DfbSwZOeajmNzTGq8
	Gh/A==
X-Gm-Message-State: ALoCoQmQTS6JyieNaQkV4JglPIhHNJo8m0ygmnk8GwRnziPXd5/PXuTtABZ0lAZ7t/0d2oL4znXx
X-Received: by 10.55.212.89 with SMTP id l86mr28590922qki.64.1446465466906;
	Mon, 02 Nov 2015 03:57:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Mon, 2 Nov 2015 03:57:27 -0800 (PST)
In-Reply-To: <1446465503-23774-1-git-send-email-jussi.kukkonen@intel.com>
References: <1446465503-23774-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Nov 2015 11:57:27 +0000
Message-ID: <CAJTo0LYxKmqJRvqbJ3CUgG9RJnhcZ3kwH738rZ=Bc2XC4tJW2Q@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>, 
	Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] buildset-config.controller: Workaround module dependency issue
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
X-List-Received-Date: Mon, 02 Nov 2015 11:57:49 -0000
Content-Type: multipart/alternative; boundary=001a114998f455d21005238d7c8a

--001a114998f455d21005238d7c8a
Content-Type: text/plain; charset=UTF-8

Acked-by: Ross Burton <ross.burton@intel.com>

Beth, please merge before the RC3 build.

Ross

On 2 November 2015 at 11:58, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> Dynamically loaded modules are a problem for multilib builds: 32-bit
> Pango and Gdk-Pixbuf modules in particular do not get included in the
> image when 32-bit versions of the libraries get included.
>
> Proper fix may require extensive changes to dependency handling:
> Include the required modules manually in the test configuration as a
> workaround for 2.0.
>
> Fixes [YOCTO #8624].
> The underlying issue is [YOCTO #8570]
>
> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
> ---
>  buildset-config.controller/nightly-multilib.conf | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/buildset-config.controller/nightly-multilib.conf
> b/buildset-config.controller/nightly-multilib.conf
> index 7cf75c3..bc63c39 100644
> --- a/buildset-config.controller/nightly-multilib.conf
> +++ b/buildset-config.controller/nightly-multilib.conf
> @@ -24,13 +24,13 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'x86_64',
>                              'buildhistory' : False, 'multilib': 'lib32',
>                              'distro': 'poky',
> -                            'atextappend' : '\nRPM_PREFER_ELF_ARCH =
> "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
> +                            'atextappend' : '\nRPM_PREFER_ELF_ARCH =
> "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome gdk-pixbuf-loader-jpeg
> lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png
> lib32-gdk-pixbuf-loader-png pango-module-basic-fc
> lib32-pango-module-basic-fc"\n'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' :
> 'multilib'}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'x86_64',
>                              'buildhistory' : False, 'multilib': 'lib32',
>                              'distro': 'poky', 'packages' : 'ipk',
> -                            'atextappend' : '\nIMAGE_INSTALL_append = "
> lib32-connman-gnome"\n'}},
> +                            'atextappend' : '\nIMAGE_INSTALL_append = "
> lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg
> gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc
> lib32-pango-module-basic-fc"\n'}},
>          {'BuildImages': {'images': 'core-image-sato'}},
>          {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' :
> 'multilib'}},
>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114998f455d21005238d7c8a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Acked-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@in=
tel.com">ross.burton@intel.com</a>&gt;<div><br></div><div>Beth, please merg=
e before the RC3 build.</div><div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 2 November 2015 at 11:58=
, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mailto:jussi.kukkonen@int=
el.com" target=3D"_blank">jussi.kukkonen@intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Dynamically loaded modules are a problem fo=
r multilib builds: 32-bit<br>
Pango and Gdk-Pixbuf modules in particular do not get included in the<br>
image when 32-bit versions of the libraries get included.<br>
<br>
Proper fix may require extensive changes to dependency handling:<br>
Include the required modules manually in the test configuration as a<br>
workaround for 2.0.<br>
<br>
Fixes [YOCTO #8624].<br>
The underlying issue is [YOCTO #8570]<br>
<br>
Signed-off-by: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.co=
m">jussi.kukkonen@intel.com</a>&gt;<br>
---<br>
=C2=A0buildset-config.controller/nightly-multilib.conf | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-co=
nfig.controller/nightly-multilib.conf<br>
index 7cf75c3..bc63c39 100644<br>
--- a/buildset-config.controller/nightly-multilib.conf<br>
+++ b/buildset-config.controller/nightly-multilib.conf<br>
@@ -24,13 +24,13 @@ steps: [{&#39;SetDest&#39;:{}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;CreateAutoConf&#39;: {&#39;machine&=
#39;: &#39;qemux86-64&#39;, &#39;SDKMACHINE&#39; : &#39;x86_64&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;buildhistory&#39; : False, &#39;multili=
b&#39;: &#39;lib32&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;distro&#39;: &#39;poky&#39;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;atextappend&#39; : &#39;\nRPM_PREFER_ELF_ARCH=
 =3D &quot;1&quot;\nIMAGE_INSTALL_append =3D &quot; lib32-connman-gnome&quo=
t;\n&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;atextappend&#39; : &#39;\nRPM_PREFER_ELF_ARCH=
 =3D &quot;1&quot;\nIMAGE_INSTALL_append =3D &quot; lib32-connman-gnome gdk=
-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png=C2=
=A0 lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-ba=
sic-fc&quot;\n&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;BuildImages&#39;: {&#39;images&#39;=
: &#39;core-image-sato&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;RunSanityTests&#39;: {&#39;images&#=
39;: &#39;core-image-sato&#39;, &#39;suitesappend&#39; : &#39;multilib&#39;=
}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;CreateAutoConf&#39;: {&#39;machine&=
#39;: &#39;qemux86-64&#39;, &#39;SDKMACHINE&#39; : &#39;x86_64&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;buildhistory&#39; : False, &#39;multili=
b&#39;: &#39;lib32&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;distro&#39;: &#39;poky&#39;, &#39;packa=
ges&#39; : &#39;ipk&#39;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;atextappend&#39; : &#39;\nIMAGE_INSTALL_appen=
d =3D &quot; lib32-connman-gnome&quot;\n&#39;}},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &#39;atextappend&#39; : &#39;\nIMAGE_INSTALL_appen=
d =3D &quot; lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-lo=
ader-jpeg gdk-pixbuf-loader-png=C2=A0 lib32-gdk-pixbuf-loader-png pango-mod=
ule-basic-fc lib32-pango-module-basic-fc&quot;\n&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;BuildImages&#39;: {&#39;images&#39;=
: &#39;core-image-sato&#39;}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;RunSanityTests&#39;: {&#39;images&#=
39;: &#39;core-image-sato&#39;, &#39;suitesappend&#39; : &#39;multilib&#39;=
}},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;CreateAutoConf&#39;: {&#39;machine&=
#39;: &#39;qemux86&#39;, &#39;SDKMACHINE&#39; : &#39;i686&#39;,<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a114998f455d21005238d7c8a--
