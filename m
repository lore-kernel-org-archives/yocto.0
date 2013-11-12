Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29AD4E016E9
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 00:35:42 -0800 (PST)
Received: by mail-wi0-f171.google.com with SMTP id hn6so392244wib.16
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 00:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=K/8PAqXIvK5nC3LyZrzrF3mq0OdBI6PGA4yc57kGA1Y=;
	b=Kl7M5qwpp6BKXLpyTKPeBaMdZ9vCqsN7q+wTKEfV1PDzU3/vo8fGUZRvl3LDl2nLRf
	d+nrngzQaQHsLRsD7HINp3pRDFJKP9m7dbPZTjV1A0W7QoMFykLlEbtFhB2yMRu5F4St
	LMVyyazz02J47PcJCN2rFlj6Y4EQAPHVe1V0rdmZPXSH8aUtzF7A7k2A5WLAI1CwtXUB
	0fAi+qrbStm6nEC1SJ1191ncPWBEGJ3wUKn4k9vF79f5CjF10WgY/TKT6Xl7w4QZw257
	TlyNLP5FCxX66CXSdgxQEjs0Y1FskkmhDAptjfb18jOYOMFawo1aEevQIXVlfIix6/MG
	u+kg==
X-Gm-Message-State: ALoCoQkS6Xkzk+YHYVoXyioEnlXF9s8GTdKFK2tNxCOEy/ZABoxZhYjjyVBp++C0RU/p+zSngMJr
X-Received: by 10.194.104.42 with SMTP id gb10mr25860351wjb.16.1384245341025; 
	Tue, 12 Nov 2013 00:35:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Tue, 12 Nov 2013 00:35:20 -0800 (PST)
X-Originating-IP: [5.13.177.84]
In-Reply-To: <1384233151-21897-1-git-send-email-raj.khem@gmail.com>
References: <1384233151-21897-1-git-send-email-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 12 Nov 2013 10:35:20 +0200
Message-ID: <CAK18fxGCK4wk9gacSkyyFOdqi8zKGu_tEGGqyR8XdfSn=ykV6w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] mesa: Match bbappend to OE-Core mesa version
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
X-List-Received-Date: Tue, 12 Nov 2013 08:35:45 -0000
Content-Type: multipart/alternative; boundary=047d7bf19852d5915004eaf6bb56

--047d7bf19852d5915004eaf6bb56
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 12, 2013 at 7:12 AM, Khem Raj <raj.khem@gmail.com> wrote:

> Remove PRINC now that we have a chance
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} | 2 --
>  1 file changed, 2 deletions(-)
>  rename recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend}
> (97%)
>
> diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> similarity index 97%
> rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
> rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
> index 88e5eab..7d158f2 100644
> --- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> +++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> @@ -1,5 +1,3 @@
> -PRINC := "${@int(PRINC) + 1}"
> -
>  #
>  # FIXME
>  # We may a way to disable EGL and GL ES2, these are provided by userland
> package
> --
> 1.8.3.2
>
>
Thanks Raj. A similar patch was already merged - expecting for the PRINC
stuff which will be addressed in a separate commit for all recipes.

ag

--047d7bf19852d5915004eaf6bb56
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Nov 12, 2013 at 7:12 AM, Khem Raj <span dir=3D"ltr">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Remove PRINC now that we have a chance<br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a>&gt;<br>
---<br>
=A0recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.2.bbappend} =
| 2 --<br>
=A01 file changed, 2 deletions(-)<br>
=A0rename recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.2.bba=
ppend} (97%)<br>
<br>
diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/m=
esa/mesa_9.2.2.bbappend<br>
similarity index 97%<br>
rename from recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
rename to recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
index 88e5eab..7d158f2 100644<br>
--- a/recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
+++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
@@ -1,5 +1,3 @@<br>
-PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<br>
-<br>
=A0#<br>
=A0# FIXME<br>
=A0# We may a way to disable EGL and GL ES2, these are provided by userland=
 package<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.3.2<br>
<br></font></span></blockquote><div><br></div><div>Thanks Raj. A similar pa=
tch was already merged - expecting for the PRINC stuff which will be addres=
sed in a separate commit for all recipes.</div><div><br></div><div>ag</div>

</div>
</div></div>

--047d7bf19852d5915004eaf6bb56--
