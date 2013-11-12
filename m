Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD39E017F5
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:14:58 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id y10so2659479wgg.33
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:14:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NZa0jpJ9us9rMf6Nqp5No/ByypYC69ZthmwHbe7bwag=;
	b=QjOxMmcEW2ZgupjSYfb8wOTWQHxTbR0exVcSUFN226SfFx6xoFwAy/poy1SuCXs/0a
	yPskGcNazJ+r4lsQZe+2TYBkaw1xO2Nag6Jp+00zKPCCz9+F072ObO6La40x7tt/53qL
	KcJUlNIk5R0eWCYLIlTQdcAHOZ6yoSIabcuoLZi630mj5UhHqE19DcVmufBf8NE7gzyE
	skCwyc6bfmYCsA7DMfOzHyNk9RXvnLLECR8ARgpUJyHm+Y91zzM0gP9RA8oY6ksVm4nd
	fy0jF1dipi83l94prRryB7wkJjogFWm5x5sRoFF3w8gzRU9zEl405ZHj/BoYxTCRMyZh
	sFgQ==
X-Gm-Message-State: ALoCoQnitDr8pn5V/wVGb3dKPMnRQH2st4ux+F7Mnf6avXuvZCEr9a9HNxJTDU7wQOmXUwv+u1W8
X-Received: by 10.194.241.228 with SMTP id wl4mr27790036wjc.2.1384272897840;
	Tue, 12 Nov 2013 08:14:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Tue, 12 Nov 2013 08:14:37 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384272828-14587-1-git-send-email-andrei@gherzan.ro>
References: <1384272828-14587-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 12 Nov 2013 18:14:37 +0200
Message-ID: <CAK18fxHL7bSVe-Gwj=TnuU2hv=tpSAdvf9N8Kh64yPFE9_oUTA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] mesa: Remove egl and gles only for raspberrypi machine
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
X-List-Received-Date: Tue, 12 Nov 2013 16:14:59 -0000
Content-Type: multipart/alternative; boundary=089e01493c32593f1c04eafd26a5

--089e01493c32593f1c04eafd26a5
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 12, 2013 at 6:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: I25fab6e100546cfffdd901383f76de76cd7763ed
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/mesa/mesa_9.2.2.bbappend | 48
> ++++++++++++++++---------------
>  1 file changed, 25 insertions(+), 23 deletions(-)
>
> diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend
> b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> index 88e5eab..34da98f 100644
> --- a/recipes-graphics/mesa/mesa_9.2.2.bbappend
> +++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> @@ -1,34 +1,36 @@
> -PRINC := "${@int(PRINC) + 1}"
> +PRINC := "${@int(PRINC) + 2}"
>
>  #
>  # FIXME
> -# We may a way to disable EGL and GL ES2, these are provided by userland
> package
> +# We need a way to disable EGL and GL ES2, these are provided by userland
> package
>  #
>  python __anonymous () {
>      import re
>
> -    # Remove egl and gles2 configure options
> -    extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> -    take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
> -    put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
> -    pattern = re.compile("--with-egl-platforms")
> -    new_extra_oeconf = []
> -    for i in extra_oeconf:
> -        if i not in take_out and not pattern.match(i):
> +    machine = d.getVar('MACHINE', True)
> +    if machine == 'raspberrypi':
> +        # Remove egl and gles2 configure options
> +        extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> +        take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
> +        put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
> +        pattern = re.compile("--with-egl-platforms")
> +        new_extra_oeconf = []
> +        for i in extra_oeconf:
> +            if i not in take_out and not pattern.match(i):
> +                new_extra_oeconf.append(i)
> +        for i in put_in:
>              new_extra_oeconf.append(i)
> -    for i in put_in:
> -        new_extra_oeconf.append(i)
> -    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> +        d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
>
> -    # Remove egl and gles2 from provides
> -    provides = d.getVar('PROVIDES', True).split()
> -    take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
> -    new_provides = []
> -    for i in provides:
> -        if i not in take_out:
> -            new_provides.append(i)
> -    d.setVar('PROVIDES', ' '.join(new_provides))
> +        # Remove egl and gles2 from provides
> +        provides = d.getVar('PROVIDES', True).split()
> +        take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
> +        new_provides = []
> +        for i in provides:
> +            if i not in take_out:
> +                new_provides.append(i)
> +        d.setVar('PROVIDES', ' '.join(new_provides))
>
> -    # We are now machine specific
> -    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
> +        # We are now machine specific
> +        d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
>  }
> --
> 1.8.1.4
>
>
Merged - https://review.gherzan.ro:8443/#/c/1/

ag

--089e01493c32593f1c04eafd26a5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Tue, Nov 12, 2013 at 6:13 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<=
a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Change-Id: I25fab6e100546cfffdd901383f76de76cd7763ed<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-graphics/mesa/mesa_9.2.2.bbappend | 48 ++++++++++++++++---------=
------<br>
=A01 file changed, 25 insertions(+), 23 deletions(-)<br>
<br>
diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/m=
esa/mesa_9.2.2.bbappend<br>
index 88e5eab..34da98f 100644<br>
--- a/recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
+++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
@@ -1,34 +1,36 @@<br>
-PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<br>
+PRINC :=3D &quot;${@int(PRINC) + 2}&quot;<br>
<br>
=A0#<br>
=A0# FIXME<br>
-# We may a way to disable EGL and GL ES2, these are provided by userland p=
ackage<br>
+# We need a way to disable EGL and GL ES2, these are provided by userland =
package<br>
=A0#<br>
=A0python __anonymous () {<br>
=A0 =A0 =A0import re<br>
<br>
- =A0 =A0# Remove egl and gles2 configure options<br>
- =A0 =A0extra_oeconf =3D d.getVar(&#39;EXTRA_OECONF&#39;, True).split()<br=
>
- =A0 =A0take_out =3D [&#39;--enable-egl&#39;, &#39;--enable-gles2&#39;, &#=
39;--enable-gles1&#39;]<br>
- =A0 =A0put_in =3D [&#39;--disable-egl&#39;, &#39;--disable-gles2&#39;, &#=
39;--disable-gles1&#39;]<br>
- =A0 =A0pattern =3D re.compile(&quot;--with-egl-platforms&quot;)<br>
- =A0 =A0new_extra_oeconf =3D []<br>
- =A0 =A0for i in extra_oeconf:<br>
- =A0 =A0 =A0 =A0if i not in take_out and not pattern.match(i):<br>
+ =A0 =A0machine =3D d.getVar(&#39;MACHINE&#39;, True)<br>
+ =A0 =A0if machine =3D=3D &#39;raspberrypi&#39;:<br>
+ =A0 =A0 =A0 =A0# Remove egl and gles2 configure options<br>
+ =A0 =A0 =A0 =A0extra_oeconf =3D d.getVar(&#39;EXTRA_OECONF&#39;, True).sp=
lit()<br>
+ =A0 =A0 =A0 =A0take_out =3D [&#39;--enable-egl&#39;, &#39;--enable-gles2&=
#39;, &#39;--enable-gles1&#39;]<br>
+ =A0 =A0 =A0 =A0put_in =3D [&#39;--disable-egl&#39;, &#39;--disable-gles2&=
#39;, &#39;--disable-gles1&#39;]<br>
+ =A0 =A0 =A0 =A0pattern =3D re.compile(&quot;--with-egl-platforms&quot;)<b=
r>
+ =A0 =A0 =A0 =A0new_extra_oeconf =3D []<br>
+ =A0 =A0 =A0 =A0for i in extra_oeconf:<br>
+ =A0 =A0 =A0 =A0 =A0 =A0if i not in take_out and not pattern.match(i):<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0new_extra_oeconf.append(i)<br>
+ =A0 =A0 =A0 =A0for i in put_in:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0new_extra_oeconf.append(i)<br>
- =A0 =A0for i in put_in:<br>
- =A0 =A0 =A0 =A0new_extra_oeconf.append(i)<br>
- =A0 =A0d.setVar(&#39;EXTRA_OECONF&#39;, &#39; &#39;.join(new_extra_oeconf=
))<br>
+ =A0 =A0 =A0 =A0d.setVar(&#39;EXTRA_OECONF&#39;, &#39; &#39;.join(new_extr=
a_oeconf))<br>
<br>
- =A0 =A0# Remove egl and gles2 from provides<br>
- =A0 =A0provides =3D d.getVar(&#39;PROVIDES&#39;, True).split()<br>
- =A0 =A0take_out =3D [&#39;virtual/libgles2&#39;, &#39;virtual/egl&#39;, &=
#39;virtual/libgles1&#39;]<br>
- =A0 =A0new_provides =3D []<br>
- =A0 =A0for i in provides:<br>
- =A0 =A0 =A0 =A0if i not in take_out:<br>
- =A0 =A0 =A0 =A0 =A0 =A0new_provides.append(i)<br>
- =A0 =A0d.setVar(&#39;PROVIDES&#39;, &#39; &#39;.join(new_provides))<br>
+ =A0 =A0 =A0 =A0# Remove egl and gles2 from provides<br>
+ =A0 =A0 =A0 =A0provides =3D d.getVar(&#39;PROVIDES&#39;, True).split()<br=
>
+ =A0 =A0 =A0 =A0take_out =3D [&#39;virtual/libgles2&#39;, &#39;virtual/egl=
&#39;, &#39;virtual/libgles1&#39;]<br>
+ =A0 =A0 =A0 =A0new_provides =3D []<br>
+ =A0 =A0 =A0 =A0for i in provides:<br>
+ =A0 =A0 =A0 =A0 =A0 =A0if i not in take_out:<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0new_provides.append(i)<br>
+ =A0 =A0 =A0 =A0d.setVar(&#39;PROVIDES&#39;, &#39; &#39;.join(new_provides=
))<br>
<br>
- =A0 =A0# We are now machine specific<br>
- =A0 =A0d.setVar(&#39;PACKAGE_ARCH&#39;, d.getVar(&#39;MACHINE_ARCH&#39;))=
<br>
+ =A0 =A0 =A0 =A0# We are now machine specific<br>
+ =A0 =A0 =A0 =A0d.setVar(&#39;PACKAGE_ARCH&#39;, d.getVar(&#39;MACHINE_ARC=
H&#39;))<br>
=A0}<br>
<span class=3D""><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br>Merged -=A0<a href=3D"https://review.g=
herzan.ro:8443/#/c/1/">https://review.gherzan.ro:8443/#/c/1/</a><br clear=
=3D"all"><div><br></div><div dir=3D"ltr"><div style=3D"text-align:center"><=
div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size=
:medium">

ag</div></div></div>
</div></div>

--089e01493c32593f1c04eafd26a5--
