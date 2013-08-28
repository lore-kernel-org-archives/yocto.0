Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73173E01493
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 16:51:08 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id b12so643354wgh.0
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 16:51:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HbEZMmNTQdzTw8Scinfep9xM/x97h523WC3gL+NnIII=;
	b=dnK0H/iqv7g7dt72jjz+k8dqC3tDi04sJO6wESfzHQ5CcE76p65jLF9GafTH0gTL+b
	8ZiSmGFCZ0WdCYt43m2XU4xGl4vFtP7rKOqFzW39Nna4zo2t0os74Nep6izHvAKoWs1C
	A0HF4dJWYkZoi9prNVhuowDN8wxinV5jVffp5Ynm/vPB5BMNQBUQ1H8YKyzs+EXVlNp2
	77pCktxhWggARz/KMw6VLsSIdOzwDwdww1Xcp+xgloe3SbYhGyeVfGw1xMwD6AOMX/TV
	za+eiSzlwv0ZKsPiqEGLNwQIOuT414RBVv9cJWxWYPGkQ6KSjIBrAeYTMuz1hPf0cfX3
	F1jQ==
X-Gm-Message-State: ALoCoQld/dHUzKI2b9okJsp+vmT8N635A5qjNwDygR/EyoK0PxeSjh7SiAAWEej9xyK8sZRENqkq
X-Received: by 10.194.203.73 with SMTP id ko9mr485121wjc.79.1377733867642;
	Wed, 28 Aug 2013 16:51:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Wed, 28 Aug 2013 16:50:47 -0700 (PDT)
X-Originating-IP: [5.13.214.171]
In-Reply-To: <CAAfyv35Y0dmnQ2mEfeEKeinKjwhdJ-yNty-M548G2EQ9+8iS_w@mail.gmail.com>
References: <CAAfyv35Y0dmnQ2mEfeEKeinKjwhdJ-yNty-M548G2EQ9+8iS_w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 29 Aug 2013 02:50:47 +0300
Message-ID: <CAK18fxF-i_yfUmfy1CDSXHBU9UPVd28b-GkYK6gY0yD-D9rGRw@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: omxplayer building for Rpi
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
X-List-Received-Date: Wed, 28 Aug 2013 23:51:10 -0000
Content-Type: multipart/alternative; boundary=047d7b5dbafcc6b06b04e50aa9c9

--047d7b5dbafcc6b06b04e50aa9c9
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 20, 2013 at 2:38 PM, Belisko Marek <marek.belisko@gmail.com>wrote:

> Hello,
>
> I'm trying to build omxplayer for Rpi board but seems libav and other
> dependencies was removed (replaced by meta-oe). But libav was also
> removed from meta-oe [1]. I was trying to use patches [2] but it
> produce errors:
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libgles2
>
> (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/userland/
> userland_git.bb
> /home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/
> mesa_9.0.2.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/egl
> (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/userland/
> userland_git.bb
> /home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/
> mesa_9.0.2.bb).
>  This usually means one provides something the other doesn't and should.
>
> Is my procedure correct?
> Despite of fact there are error compilation continues.
>
>
I believe this was fixed now. Can you check again? BTW You shouldn't need
meta-oe anymore.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b5dbafcc6b06b04e50aa9c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Aug 20, 2013 at 2:38 PM, Belisko Marek <span dir=3D"ltr">&l=
t;<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisk=
o@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello,<br>
<br>
I&#39;m trying to build omxplayer for Rpi board but seems libav and other<b=
r>
dependencies was removed (replaced by meta-oe). But libav was also<br>
removed from meta-oe [1]. I was trying to use patches [2] but it<br>
produce errors:<br>
ERROR: Multiple .bb files are due to be built which each provide<br>
virtual/libgles2<br>
(/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/us=
erland/<a href=3D"http://userland_git.bb" target=3D"_blank">userland_git.bb=
</a><br>
/home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/<a href=3D=
"http://mesa_9.0.2.bb" target=3D"_blank">mesa_9.0.2.bb</a>).<br>
=A0This usually means one provides something the other doesn&#39;t and shou=
ld.<br>
ERROR: Multiple .bb files are due to be built which each provide<br>
virtual/egl (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes=
-graphics/userland/<a href=3D"http://userland_git.bb" target=3D"_blank">use=
rland_git.bb</a><br>
/home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/<a href=3D=
"http://mesa_9.0.2.bb" target=3D"_blank">mesa_9.0.2.bb</a>).<br>
=A0This usually means one provides something the other doesn&#39;t and shou=
ld.<br>
<br>
Is my procedure correct?<br>
Despite of fact there are error compilation continues.<br>
<br></blockquote><div><br></div><div style>I believe this was fixed now. Ca=
n you check again? BTW You shouldn&#39;t need meta-oe anymore.=A0</div></di=
v><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"><=
/div>

<div style=3D"text-align:center"><div align=3D"left" style=3D"font-family:&=
#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,51,51);=
font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</b><fon=
t face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7b5dbafcc6b06b04e50aa9c9--
