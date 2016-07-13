Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5D36E00DAB; Wed, 13 Jul 2016 06:07:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 464B6E00D7B
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:07:32 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id m101so45340000ioi.2
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ov7QAn63I+CXsA3xCpZcJlSJpwAlvVBVX6NmUEeOwZY=;
	b=xPMokdHZrKDALVtINkLQZ9vpGxzmLADrvAMUgjR7LY1+Mk8L2vdls3FdC4ngs5/Cgj
	whuT/qUS+IXMJF3O6J60I/xDZ70uIImOzRhCg76qZ5uwMxTCRCHLK81lOFHRWGnd6iMb
	nZfxEwQENAerwgvRyxMYfqkDlFjFn/2EJGk0CxYhEWTgpdjEeSY9mhB86X+updBzC9In
	RrP3TiA4iXsPlXI2Zdl6VuFffO9gCqUzl9S4tw1Fob8ubpLKBfgsgjFSD6Uid0v6YEom
	3+aQ3P59Uy5RPpgLyTev9aZNsiEvzRCmvyoZ+y+vie72zLwjl0Y3zW9NkffrH81sIBWI
	CA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ov7QAn63I+CXsA3xCpZcJlSJpwAlvVBVX6NmUEeOwZY=;
	b=XKSEO/EDURtCPoHYjKkzN6q8ObrfrKAl/2hrMObpVIa9cnlNbq5raC/I28ODVwrLgE
	8L2DgBKGMh7jXh/x0N0sGL3kNXwYjZDotmeg8SC8g14rzYhwmIc+HaUm2K75aThMwLz5
	EeyXS1Bvl37LulBiNoPAXzINFkwXagLKGiUTntk8q13k7TweSllMRJZVvUiHg2LiLPCl
	zvOcbWJYWZPbffY993iCCHHxKenZkrPxQN8Tb3BsgrtYVLieNrOvs3ZNQp8NDxS99u1Y
	yN/LbFd7+IUbTn2tkhBGmGiY/oITdu4FAwlGj+wD3PIrB+OGVRnfh9kQ8rBDHiu6pJxg
	M27A==
X-Gm-Message-State: ALyK8tKBWron4rRQkLJV2cCcAX6E8SRuhyOKxy845KJPAyIEEKgz5i3nhMyXUzWrOWhQDZuP4iwsmt8PFV69P2lg
X-Received: by 10.107.135.142 with SMTP id r14mr9421266ioi.133.1468415251936; 
	Wed, 13 Jul 2016 06:07:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 13 Jul 2016 06:07:12 -0700 (PDT)
In-Reply-To: <1468414827-24315-1-git-send-email-jussi.kukkonen@intel.com>
References: <1468414827-24315-1-git-send-email-jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jul 2016 14:07:12 +0100
Message-ID: <CAJTo0LY8FgSeav6tASa-a5VST44NWY1QaDijkwCYHfWjcxcDSQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [sato-screenshot][PATCH] applet: Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:07:36 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc798cfc05378411f0

--001a113eccbc798cfc05378411f0
Content-Type: text/plain; charset=UTF-8

+1

On 13 July 2016 at 14:00, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
> ---
>  applet.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/applet.c b/applet.c
> index 699a920..d403619 100644
> --- a/applet.c
> +++ b/applet.c
> @@ -8,7 +8,7 @@
>
>  #include <gtk/gtk.h>
>  #include <matchbox-panel/mb-panel.h>
> -#include <matchbox-panel/mb-panel-scaling-image.h>
> +#include <matchbox-panel/mb-panel-scaling-image2.h>
>  #include "screenshot-ui.h"
>
>  static void
> @@ -26,7 +26,7 @@ mb_panel_applet_create (const char *id, GtkOrientation
> orientation)
>    gtk_widget_set_name (button, "MatchboxPanelScreenshot");
>    gtk_button_set_relief (GTK_BUTTON (button), GTK_RELIEF_NONE);
>
> -  image = mb_panel_scaling_image_new (orientation, "applet-screenshot");
> +  image = mb_panel_scaling_image2_new (orientation, "applet-screenshot");
>    gtk_container_add (GTK_CONTAINER (button), image);
>
>    g_signal_connect (button, "clicked", G_CALLBACK (on_clicked), NULL);
> --
> 2.8.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113eccbc798cfc05378411f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">+1</div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On 13 July 2016 at 14:00, Jussi Kukkonen <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@in=
tel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Signed-off-=
by: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.ku=
kkonen@intel.com</a>&gt;<br>
---<br>
=C2=A0applet.c | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/applet.c b/applet.c<br>
index 699a920..d403619 100644<br>
--- a/applet.c<br>
+++ b/applet.c<br>
@@ -8,7 +8,7 @@<br>
<br>
=C2=A0#include &lt;gtk/gtk.h&gt;<br>
=C2=A0#include &lt;matchbox-panel/mb-panel.h&gt;<br>
-#include &lt;matchbox-panel/mb-panel-scaling-image.h&gt;<br>
+#include &lt;matchbox-panel/mb-panel-scaling-image2.h&gt;<br>
=C2=A0#include &quot;screenshot-ui.h&quot;<br>
<br>
=C2=A0static void<br>
@@ -26,7 +26,7 @@ mb_panel_applet_create (const char *id, GtkOrientation or=
ientation)<br>
=C2=A0 =C2=A0gtk_widget_set_name (button, &quot;MatchboxPanelScreenshot&quo=
t;);<br>
=C2=A0 =C2=A0gtk_button_set_relief (GTK_BUTTON (button), GTK_RELIEF_NONE);<=
br>
<br>
-=C2=A0 image =3D mb_panel_scaling_image_new (orientation, &quot;applet-scr=
eenshot&quot;);<br>
+=C2=A0 image =3D mb_panel_scaling_image2_new (orientation, &quot;applet-sc=
reenshot&quot;);<br>
=C2=A0 =C2=A0gtk_container_add (GTK_CONTAINER (button), image);<br>
<br>
=C2=A0 =C2=A0g_signal_connect (button, &quot;clicked&quot;, G_CALLBACK (on_=
clicked), NULL);<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.8.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a113eccbc798cfc05378411f0--
