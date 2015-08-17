Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C4CCE00AA5; Mon, 17 Aug 2015 00:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECF72E00A9C
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 00:57:12 -0700 (PDT)
Received: by lbbtg9 with SMTP id tg9so77429062lbb.1
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 00:57:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Ne9hhFRKChVuADACDc8KF9UrxjmHCYdYtFuH9PPTHU8=;
	b=D8+HGZJuFQyKKvqTbIwZIYimSIUcuVASqkbQyPuVSyvQi4tWW1vjN9/qApdfVulzWL
	0IG6Y8W0ZWeatHxwlSfkOzKC9e10vXdMsxejY43a/r00XhSehNIJSZgvQwu5yxZPIYjQ
	t2gnyGscTVWqw1gGDzWdnipEzUwyosQ+m6SkcxTLFAy3dQXvOior3d27kcezLac6KyP3
	WAxYJ8UnoKa9KdXrCxrj/cFp0LtkHNIgs1goM3PjsQ91iw638m6P07rpasIlmmlEGDTe
	8tJHEhFdH8u6OdK6qJSDlmu6N4oS0FE215teRF/uF016Pp6nU18Qma/XlFL/wm8sqX0p
	VrkA==
X-Gm-Message-State: ALoCoQmXnEykdBRCekWkNy40VoyypLik1N8nc+uWXanj1mDuaq9IwIs1lWsaxPiNvWnDvn3WmvIZ
MIME-Version: 1.0
X-Received: by 10.152.9.103 with SMTP id y7mr92876laa.111.1439798230787; Mon,
	17 Aug 2015 00:57:10 -0700 (PDT)
Received: by 10.112.91.67 with HTTP; Mon, 17 Aug 2015 00:57:10 -0700 (PDT)
X-Originating-IP: [109.198.133.168]
In-Reply-To: <f770f8743b500dde78803cd8b0826854@technux.se>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
Date: Mon, 17 Aug 2015 09:57:10 +0200
Message-ID: <CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: "petter@technux.se" <petter@technux.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Mon, 17 Aug 2015 07:57:18 -0000
Content-Type: multipart/alternative; boundary=089e01494af0183fb6051d7d2638

--089e01494af0183fb6051d7d2638
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

On Tuesday, August 11, 2015, Petter Mab=C3=A4cker <petter@technux.se> wrote=
:

> 2015-08-11 19:04 skrev Alex J Lennon:
>
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk <javascript:_=
e(%7B%7D,'cvml','ajlennon@dynamicdevices.co.uk');>>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/=
linux/linux-raspberrypi.inc
> index e38d905..8024412 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -6,6 +6,10 @@ SECTION =3D "kernel"
>  LICENSE =3D "GPLv2"
>  LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7=
cd7"
>
> +SRC_URI +=3D " \
> +        file://build-in-audio.cfg \
> +        "
>
>
This one didn't make it.

--
Andrei Gherzan


--=20
--
Andrei Gherzan

--089e01494af0183fb6051d7d2638
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>On Tuesday, August 11, 2015, Petter Mab=C3=A4cker &lt;<a href=
=3D"mailto:petter@technux.se">petter@technux.se</a>&gt; wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><u></u>
<div style=3D"font-family:Helvetica,Arial,sans-serif">
<p>2015-08-11 19:04 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">
<pre>Signed-off-by: Alex J Lennon &lt;<a href=3D"javascript:_e(%7B%7D,&#39;=
cvml&#39;,&#39;ajlennon@dynamicdevices.co.uk&#39;);" target=3D"_blank">ajle=
nnon@dynamicdevices.co.uk</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index e38d905..8024412 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,6 +6,10 @@ SECTION =3D &quot;kernel&quot;
 LICENSE =3D &quot;GPLv2&quot;
 LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1=
be7cd7&quot;
=20
+SRC_URI +=3D &quot; \
+        <a>file://build-in-audio.cfg</a> \
+        &quot;<br></pre></blockquote></div></blockquote><div><br></div><di=
v>This one didn&#39;t make it.</div><div><br></div><div><div>--</div><div>A=
ndrei Gherzan</div></div><br><br>-- <br><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div>--</div>Andrei Gherzan</div></div></div><br>

--089e01494af0183fb6051d7d2638--
