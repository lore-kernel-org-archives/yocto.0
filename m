Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3972EE00DE4; Fri, 23 Aug 2019 11:57:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B11E00BA1
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 11:57:40 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id g17so9545898wrr.5
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 11:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2PqbkpD9hGPEgNhaZg11KwoEQ9dLwLaIQe/m2UNI/+o=;
	b=gBj2GWbKoLVeLBHKzraeEW1hpe9GO+IS5hj6Xhel9ne5AfmhbMRERL7pDyqB/G/K6Q
	Gvve9cd0VX69Smdq8wp1yWgS87JO32ynK3cUA92PpxKbgWTBbDxRWn2kcgKHB5SipxpL
	qRoitdbFWnJKAtzBeYGjOGLKzarwQNkZG92A0GYIufj1ORNgtls3xDdqESnqJrQH1XnY
	ECkjvtY0Wptktw1Oisy8UaL+M3Qbcg2KnwdDleVGQiL16/MtLvJTHUmHPbmcei/SjGeN
	GlfI8eHsf7JTf8o++uU7m6OzpeMXRPvKfjlpyazhv77ymag5yhNBL6DmqQe9V/gt7c8W
	E5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2PqbkpD9hGPEgNhaZg11KwoEQ9dLwLaIQe/m2UNI/+o=;
	b=FWmJy14vN/LV5cKCdkVeczsZFA3Tj54SKxOSLfQc9rHndfkyt0Tudrqhj9FIOdnULM
	Bv0Fz6Vul2U6WOukpc5yTzjFtsGnOjf+RyPVETtiSIY1tDHArf449mCupCUG46jPfNOq
	cUYfxX6zHdY4SNQydMXzCmnj3hY7hWEZTGdaEB6nIrofa8KiCEV8yzUw0OJNmdjumJt2
	IixTzULzC6lp5HQKQWn7jHnYhRzWXTB/BgRpcATWIBU78KJNNPwIGLyJmk3+2HClUJhm
	oHWlR4Fgxs3aZ2yUkxzsH1P1obrl5PVi37daAScw6h28G0Mqi0aW3tBQIlzQl2bW0yQ2
	e5ZQ==
X-Gm-Message-State: APjAAAVHic6TsKIgXdFSvQNJsXk0irQwxvimoZB9iaJZoNVl21g7IPKx
	8IjNDzr63C26qA6i7+1jw6SdAH8Tu0UwP3wACw3EaEn8
X-Google-Smtp-Source: APXvYqw0G2DpetVHH9H0W3mAlj8usBJkgOjKU438ob8yjx2mtvDNQI89B53cRtxhAUG4Xoce0eV2vS2jxsgJ4l+oQNs=
X-Received: by 2002:adf:8004:: with SMTP id 4mr6516131wrk.341.1566586659339;
	Fri, 23 Aug 2019 11:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190823150640.6132-1-bunk@stusta.de>
In-Reply-To: <20190823150640.6132-1-bunk@stusta.de>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 23 Aug 2019 11:57:28 -0700
Message-ID: <CAFNP8OsTMYxBcLfHgTu6gDRhqR0M5Zwf2KtsNSCwhmSpZyTxJQ@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: Correct the requirements for KERNEL_DEVICETREE
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
X-List-Received-Date: Fri, 23 Aug 2019 18:57:41 -0000
Content-Type: multipart/alternative; boundary="0000000000005702f20590cd614a"

--0000000000005702f20590cd614a
Content-Type: text/plain; charset="UTF-8"

Adrian,

Thanks for the update to the KERNEL_DEVICETREE variable.  I have applied
this patch to the 2.8 version of the reference manual:
https://yoctoproject.org/docs/2.8/ref-manual/ref-manual.html#var-KERNEL_DEVICETREE
.

Scott

On Fri, Aug 23, 2019 at 8:06 AM Adrian Bunk <bunk@stusta.de> wrote:

> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> ---
>  documentation/ref-manual/ref-variables.xml | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
>
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index 0080364e4f..33afaa5f45 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -7580,15 +7580,9 @@
>                          However, providing just the
> <filename>.dtb</filename>
>                          file is preferred.
>                      </note>
> -                    In order to use this variable, you must have the
> include
> -                    files in your kernel recipe:
> -                    <literallayout class='monospaced'>
> -     require recipes-kernel/linux/linux-dtb.inc
> -                    </literallayout>
> -                    or
> -                    <literallayout class='monospaced'>
> -     require recipes-kernel/linux/linux-yocto.inc
> -                    </literallayout>
> +                    In order to use this variable, the
> +                    <link
> linkend='ref-classes-kernel-devicetree'><filename>kernel-devicetree</filename></link>
> +                    class must be inherited.
>                  </para>
>              </glossdef>
>          </glossentry>
> --
> 2.17.1
>
>

--0000000000005702f20590cd614a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Adrian, <br></div><div><br></div><div>Thanks for the =
update to the KERNEL_DEVICETREE variable.=C2=A0 I have applied this patch t=
o the 2.8 version of the reference manual: <a href=3D"https://yoctoproject.=
org/docs/2.8/ref-manual/ref-manual.html#var-KERNEL_DEVICETREE">https://yoct=
oproject.org/docs/2.8/ref-manual/ref-manual.html#var-KERNEL_DEVICETREE</a>.=
</div><div><br></div><div>Scott<br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 23, 2019 at 8:06 AM Ad=
rian Bunk &lt;<a href=3D"mailto:bunk@stusta.de" target=3D"_blank">bunk@stus=
ta.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Signed-off-by: Adrian Bunk &lt;<a href=3D"mailto:bunk@stusta.de" targe=
t=3D"_blank">bunk@stusta.de</a>&gt;<br>
---<br>
=C2=A0documentation/ref-manual/ref-variables.xml | 12 +++---------<br>
=C2=A01 file changed, 3 insertions(+), 9 deletions(-)<br>
<br>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref=
-manual/ref-variables.xml<br>
index 0080364e4f..33afaa5f45 100644<br>
--- a/documentation/ref-manual/ref-variables.xml<br>
+++ b/documentation/ref-manual/ref-variables.xml<br>
@@ -7580,15 +7580,9 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0However, providing just the &lt;filename&gt;.dtb&lt;/filen=
ame&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0file is preferred.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/note&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 In o=
rder to use this variable, you must have the include<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file=
s in your kernel recipe:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
literallayout class=3D&#39;monospaced&#39;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0require recipes-kernel/linux/linux-dtb.inc<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
/literallayout&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 or<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
literallayout class=3D&#39;monospaced&#39;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0require recipes-kernel/linux/linux-yocto.inc<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
/literallayout&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 In o=
rder to use this variable, the<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
link linkend=3D&#39;ref-classes-kernel-devicetree&#39;&gt;&lt;filename&gt;k=
ernel-devicetree&lt;/filename&gt;&lt;/link&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 clas=
s must be inherited.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/para&gt;=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossdef&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/glossentry&gt;<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div>

--0000000000005702f20590cd614a--
