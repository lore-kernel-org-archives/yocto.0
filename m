Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C490E00D48; Wed,  2 Mar 2016 04:19:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0A5E00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 04:19:46 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id g203so256998663iof.2
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 04:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/6Cy/s5Wp45JnSWIeiDNpjYbwixJ5ZhhaDO5JZc+J3Q=;
	b=fWqnGc7sKKUXcYxCpF+VGcw8Cw77VIh+t8zCqhxAR8BCtlRhP7a5A4HzxcWem4Mhux
	73zWcWxa9Io2hVnvZFk2Gio/bVEFzFV7oQNbRHwXI/NSTi2Ursc2sAXBwE8rsnnsjXC4
	L5dQlmGrp7wq2rjYaL+BnRxj/pRi67auVGvn5eFWlSP/lM9VfbTmVTrmVOaXvG1dq3P2
	3IpHjh9BptROUBeX3SXVXP1iPeN2+aFk+963nPoUTql9TGFLHElWyfai6IX4lciX00pE
	YIgAWveOtrV4CPL6P2oj8+0lgPgpBHIGmK+qmq6rXIArT1HV2tYgeD/Qq8ktExQxhS2w
	33XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/6Cy/s5Wp45JnSWIeiDNpjYbwixJ5ZhhaDO5JZc+J3Q=;
	b=Rq6X3lmF3fJh+r08eBGM8BQM4Mjea9/loiibEstFF6rxcI6FmDcoR/9dm0wwbM1MyA
	F3KX+2o6b1+h4Omrj7xn91Kye8uCT1l02WfL2jC8ZwY4Db6edBKrWsWJgY15IA1HQ4K5
	5RU2uy/pY/OKXn+HbJhIQ/95y0Jl8duWv58ihd4Vp/kNp7NAahgTtMLLoL3PQc+qD76v
	YwrGdkjh0z+wT/gNkNlqnhG1+1iyQUC6HSV59P7VsgW9g9UdNKLvuuGofVhSgwmadtgA
	6yp8u+gxEg//MvekWuH3GAvcMTWfKtSTO4wbrPUk/R/nosSRrHfamLHZwt3ukMgivEq2
	dHWg==
X-Gm-Message-State: AD7BkJKhpfwu3GdkTEPZ0qkleOiJ6tio/yU8fRoHVLS3dTfBmaAWD1/irFnq3myoTcwWsufxbKBaq3sOdp0ltd5L
X-Received: by 10.107.134.37 with SMTP id i37mr5404772iod.148.1456921186065;
	Wed, 02 Mar 2016 04:19:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 2 Mar 2016 04:19:26 -0800 (PST)
In-Reply-To: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Mar 2016 12:19:26 +0000
Message-ID: <CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
To: Johannes Pointner <h4nn35.work@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 12:19:49 -0000
Content-Type: multipart/alternative; boundary=001a113ed006c2f42a052d0fe56f

--001a113ed006c2f42a052d0fe56f
Content-Type: text/plain; charset=UTF-8

Hi Johannes,

This and the other patch have been merged, thanks.

However I just realised that we don't actually need this anymore and should
instead be passing -nocursor when starting X11.

Ross


On 1 March 2016 at 23:52, Johannes Pointner <h4nn35.work@gmail.com> wrote:

> This patch adds several cursor to the transparent-theme which are
> used by Qt for example.
>
> Signed-off-by: Johannes Pointner <johannes.pointner@gmail.com>
> ---
>  cursors/Makefile.am | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/cursors/Makefile.am b/cursors/Makefile.am
> index d699942..587f4e5 100644
> --- a/cursors/Makefile.am
> +++ b/cursors/Makefile.am
> @@ -26,10 +26,17 @@ CURSOR_NAMES = \
>         bottom_tee \
>         center_ptr \
>         circle \
> +       closedhand \
> +       color-picker \
> +       copy \
>         cross \
>         cross_reverse \
>         crossed_circle \
>         crosshair \
> +       dnd-copy \
> +       dnd-move \
> +       dnd-no-drop \
> +       dnd-none \
>         dot \
>         dot_box_mask \
>         dotbox \
> @@ -40,21 +47,27 @@ CURSOR_NAMES = \
>         exchange     \
>         fd_double_arrow \
>         fleur \
> +       forbidden \
>         gumby \
>         h_double_arrow \
>         hand \
>         hand1 \
>         hand2 \
> +       ibeam \
>         left_ptr \
>         left_ptr_watch \
>         left_side \
>         left_tee  \
> +       link \
>         ll_angle  \
>         lr_angle  \
>         move      \
> +       openhand \
>         pencil    \
>         pirate    \
>         plus      \
> +       pointing_hand \
> +       progress \
>         question_arrow \
>         right_ptr      \
>         right_side     \
> @@ -67,9 +80,17 @@ CURSOR_NAMES = \
>         sb_up_arrow \
>         sb_v_double_arrow \
>         shuttle \
> +       size_all \
> +       size_bdiag \
> +       size_fdiag \
> +       size_hor \
> +       size_ver \
>         sizing  \
> +       split_h \
> +       split_v \
>         target  \
>         tcross  \
> +       text \
>         top_left_arrow  \
>         top_left_corner \
>         top_right_corner \
> @@ -77,9 +98,12 @@ CURSOR_NAMES = \
>         top_tee \
>         trek \
>         ul_angle \
> +       up_arrow \
>         ur_angle \
>         v_double_arrow \
> +       wait \
>         watch \
> +       whats_this \
>         xterm
>
>  CURSOR_DIR = $(datadir)/icons/xcursor-transparent/cursors
> --
> 2.7.2
>
>

--001a113ed006c2f42a052d0fe56f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Johannes,<div><br></div><div>This and the other patch h=
ave been merged, thanks.</div><div><br></div><div>However I just realised t=
hat we don&#39;t actually need this anymore and should instead be passing -=
nocursor when starting X11.</div><div><br></div><div>Ross</div><div><br></d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1 Mar=
ch 2016 at 23:52, Johannes Pointner <span dir=3D"ltr">&lt;<a href=3D"mailto=
:h4nn35.work@gmail.com" target=3D"_blank">h4nn35.work@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">This patch adds several cursor=
 to the transparent-theme which are<br>
used by Qt for example.<br>
<br>
Signed-off-by: Johannes Pointner &lt;<a href=3D"mailto:johannes.pointner@gm=
ail.com">johannes.pointner@gmail.com</a>&gt;<br>
---<br>
=C2=A0cursors/Makefile.am | 24 ++++++++++++++++++++++++<br>
=C2=A01 file changed, 24 insertions(+)<br>
<br>
diff --git a/cursors/Makefile.am b/cursors/Makefile.am<br>
index d699942..587f4e5 100644<br>
--- a/cursors/Makefile.am<br>
+++ b/cursors/Makefile.am<br>
@@ -26,10 +26,17 @@ CURSOR_NAMES =3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bottom_tee \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 center_ptr \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 circle \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0closedhand \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0color-picker \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0copy \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cross \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cross_reverse \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 crossed_circle \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 crosshair \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dnd-copy \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dnd-move \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dnd-no-drop \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dnd-none \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dot \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dot_box_mask \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dotbox \<br>
@@ -40,21 +47,27 @@ CURSOR_NAMES =3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 exchange=C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fd_double_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fleur \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0forbidden \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 gumby \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 h_double_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hand \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hand1 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hand2 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ibeam \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 left_ptr \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 left_ptr_watch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 left_side \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 left_tee=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0link \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ll_angle=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lr_angle=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 move=C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0openhand \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pencil=C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pirate=C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 plus=C2=A0 =C2=A0 =C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0pointing_hand \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0progress \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 question_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 right_ptr=C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 right_side=C2=A0 =C2=A0 =C2=A0\<br>
@@ -67,9 +80,17 @@ CURSOR_NAMES =3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb_up_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sb_v_double_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 shuttle \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_all \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_bdiag \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_fdiag \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_hor \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_ver \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sizing=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0split_h \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0split_v \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 target=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tcross=C2=A0 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0text \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 top_left_arrow=C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 top_left_corner \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 top_right_corner \<br>
@@ -77,9 +98,12 @@ CURSOR_NAMES =3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 top_tee \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 trek \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ul_angle \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0up_arrow \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ur_angle \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 v_double_arrow \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0wait \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 watch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0whats_this \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 xterm<br>
<br>
=C2=A0CURSOR_DIR =3D $(datadir)/icons/xcursor-transparent/cursors<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.2<br>
<br>
</font></span></blockquote></div><br></div>

--001a113ed006c2f42a052d0fe56f--
