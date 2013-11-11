Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 418CFE017C5
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:03:21 -0800 (PST)
Received: by mail-wg0-f46.google.com with SMTP id m15so4221360wgh.1
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 02:03:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=O28nwaor8Ytlxq7dQIdr1iDIKn7jlBFK4JSeBYUojlk=;
	b=H2r6jVRgG+8DYa4iiNAxolPI0tEeMQkXCw4fw8Fo5cSlU5MJr6lF53/t68e+xWZja2
	b41qlLnn7Td0wBDD3EvmsPMQ4fTA+MgYkUhNgzSN5N25sBNl3xZ/ECqYzGWmqpHHzCDm
	OmQj/CSeKzngNp0e2RBYhjxfPwnHXxXGEDEST9eWVgjH0IK5O2eL54Sm+fKT2yossWUc
	fu5YawhOW1ac9U+uDTfRpSLnG7ip7/j240fb2PQlZPU6l19ng3uKB9N0dyRJLhI97bo4
	37vq/d/FA1KcDWRUMn1tJe8CCrcGJoC6J7h9Uwd9xhm/tWQVdcHj8QZNM9dtG96h4Nwn
	nWdQ==
X-Gm-Message-State: ALoCoQnyHva56lu7v1dcwTQGJuFOk8Fl6f0qXvgc7AZmod+u5GtVeouKld4GmwYpp6pp6AtM2xkq
X-Received: by 10.194.3.78 with SMTP id a14mr10452wja.77.1384164200492; Mon,
	11 Nov 2013 02:03:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Mon, 11 Nov 2013 02:03:00 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384164122-11926-1-git-send-email-andrei@gherzan.ro>
References: <1384164122-11926-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 11 Nov 2013 12:03:00 +0200
Message-ID: <CAK18fxG2_stn-4pbb32dKfKZ_O1akGBJFN5tntPOR6i56vGw4Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] mesa: Modify version to match the one from oe-core
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
X-List-Received-Date: Mon, 11 Nov 2013 10:03:26 -0000
Content-Type: multipart/alternative; boundary=047d7b343d6a7b48e504eae3d747

--047d7b343d6a7b48e504eae3d747
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Nov 11, 2013 at 12:02 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend}
> (100%)
>
> diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> similarity index 100%
> rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
> rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
> --
> 1.8.1.4
>
>
Merged.

ag

--047d7b343d6a7b48e504eae3d747
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Mon, Nov 11, 2013 at 12:02 PM, Andrei Gherzan <span dir=3D"ltr">&lt;=
<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.2.bbappend} =
| 0<br>
=A01 file changed, 0 insertions(+), 0 deletions(-)<br>
=A0rename recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.2.bba=
ppend} (100%)<br>
<br>
diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/m=
esa/mesa_9.2.2.bbappend<br>
similarity index 100%<br>
rename from recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
rename to recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br>Merged.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">ag
</div></div>

--047d7b343d6a7b48e504eae3d747--
