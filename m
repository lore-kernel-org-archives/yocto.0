Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E29BE00B8B; Sun, 27 Mar 2016 17:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A553CE009D7
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 17:04:49 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id u110so97686546qge.3
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2016 17:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=YUt84Anoi42BCYAuuv909GaqEwFKq9g04x84S9Je1mg=;
	b=g6hTFAwI8HC5fwEBYikpFg6qj4qhpJjp9dcsJq37iz2h1RAGf2Z6dl9Ovri9O2f1jN
	NxLjR6M4kg1W/xINapbcnd6NstsPWWA5BDWYTY0VpoOyoR0wDqGK5gB7ro+ShSh8q/eG
	rgMg6LguxPrADSmXtD3GKlyDK7te5vAaSgQ2ugey9cLz8WMuN26g8wBXNKvayET9ruO/
	pbFZt211mekj2b/q8E/5lGRjaTW5s8Ap8b+Wcg5sKwwDNRlWQDjjLKyeNXuOe3sxf2BC
	jzl7bzDugXaq72CBYc0OPzn2MZGv87FGFHK/YFjZEQY25bhLWlxprViO+5U+2DTW2Zte
	zCHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=YUt84Anoi42BCYAuuv909GaqEwFKq9g04x84S9Je1mg=;
	b=J9fCuByc3Q7bEb4koUyphkwegQ9LXxGoUHjONvwUOVeq+PXiqjBU8d01hprFv/bhLt
	MD6nUcSXX4dGp6oJ70oHcESh3BLTL5KBO4Tz+QPdJNdwsbohuDV1yG3CZZbKoIrYAuW+
	YQgIxaV4sMgKX73gZBAn4YEt9MnDIXLIdGPmPmBNzmsSX5S5Q34/d5qp43awc4vtbUNv
	xRpSscXvEdPJHECjJ3Tg/eI3RkAEtVzwtxZ9/9cVYo/30XO0EOn3xsyuTtta+B87ucfJ
	brRcpgpDCxIYTRh+lobassmgAORTxAW1khTGEB7i96hvxk5CC+CIGma0SFgEObO8AIKJ
	m3OQ==
X-Gm-Message-State: AD7BkJIIqHuAN+hY2U/VJkyn5jnqHISI/hMqOKYl8aleIYvVJK40eiTqISgCM2mocE388zPMGnGDHGCyb+zofw==
MIME-Version: 1.0
X-Received: by 10.140.84.234 with SMTP id l97mr11146888qgd.57.1459123489140;
	Sun, 27 Mar 2016 17:04:49 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Sun, 27 Mar 2016 17:04:48 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Sun, 27 Mar 2016 17:04:48 -0700 (PDT)
In-Reply-To: <1459121159-8890-1-git-send-email-akuster808@gmail.com>
References: <1459121159-8890-1-git-send-email-akuster808@gmail.com>
Date: Sun, 27 Mar 2016 17:04:48 -0700
Message-ID: <CAMKF1spD0FKnvyaKfEmPZ0zqjyOccCNEtXH=-JFB0HQx=0g3ug@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][V2]PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Mon, 28 Mar 2016 00:04:53 -0000
Content-Type: multipart/alternative; boundary=001a11c11a1640f6fd052f10a97b

--001a11c11a1640f6fd052f10a97b
Content-Type: text/plain; charset=UTF-8

On Mar 27, 2016 4:27 PM, "Armin Kuster" <akuster808@gmail.com> wrote:
>
> use CC from build not host.
>
> thanks khem
>
> this fixes the below error.
> WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained in
package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers
found in RDEPENDS_paxctl? [file-rdeps]
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/paxctl/paxctl_0.9.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-security/paxctl/paxctl_0.9.bb
b/recipes-security/paxctl/paxctl_0.9.bb
> index 8eadad1..b3405cd 100644
> --- a/recipes-security/paxctl/paxctl_0.9.bb
> +++ b/recipes-security/paxctl/paxctl_0.9.bb
> @@ -12,6 +12,8 @@ SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz
"
>  SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
>  SRC_URI[sha256sum] =
"a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
>
> +EXTRA_OEMAKE = "CC='${CC}'"
> +
>  do_install() {
>         oe_runmake 'DESTDIR=${D}' install
>  }

If you add destdir to extra oemake then you can delete do_install as well
> --
> 2.3.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a11c11a1640f6fd052f10a97b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Mar 27, 2016 4:27 PM, &quot;Armin Kuster&quot; &lt;<a href=3D"mailto:aku=
ster808@gmail.com">akuster808@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; use CC from build not host.<br>
&gt;<br>
&gt; thanks khem<br>
&gt;<br>
&gt; this fixes the below error.<br>
&gt; WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained=
 in package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers=
 found in RDEPENDS_paxctl? [file-rdeps]<br>
&gt;<br>
&gt; Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster808@gmail.com=
">akuster808@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0recipes-security/paxctl/<a href=3D"http://paxctl_0.9.bb">paxctl_=
0.9.bb</a> | 2 ++<br>
&gt; =C2=A01 file changed, 2 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-security/paxctl/<a href=3D"http://paxctl_0.9.bb">=
paxctl_0.9.bb</a> b/recipes-security/paxctl/<a href=3D"http://paxctl_0.9.bb=
">paxctl_0.9.bb</a><br>
&gt; index 8eadad1..b3405cd 100644<br>
&gt; --- a/recipes-security/paxctl/<a href=3D"http://paxctl_0.9.bb">paxctl_=
0.9.bb</a><br>
&gt; +++ b/recipes-security/paxctl/<a href=3D"http://paxctl_0.9.bb">paxctl_=
0.9.bb</a><br>
&gt; @@ -12,6 +12,8 @@ SRC_URI =3D &quot;<a href=3D"http://pax.grsecurity.n=
et/paxctl-${PV}.tar.gz">http://pax.grsecurity.net/paxctl-${PV}.tar.gz</a>&q=
uot;<br>
&gt; =C2=A0SRC_URI[md5sum] =3D &quot;9bea59b1987dc4e16c2d22d745374e64&quot;=
<br>
&gt; =C2=A0SRC_URI[sha256sum] =3D &quot;a330ddd812688169802a3ba29e5e3b19956=
376b8f6f73b8d7e9586eb04423c2e&quot;<br>
&gt;<br>
&gt; +EXTRA_OEMAKE =3D &quot;CC=3D&#39;${CC}&#39;&quot;<br>
&gt; +<br>
&gt; =C2=A0do_install() {<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake &#39;DESTDIR=3D${D}&#39; instal=
l<br>
&gt; =C2=A0}</p>
<p dir=3D"ltr">If you add destdir to extra oemake then you can delete do_in=
stall as well<br>
&gt; --<br>
&gt; 2.3.5<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--001a11c11a1640f6fd052f10a97b--
