Return-Path: <MichalHorn@eaton.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C85CC433EF
	for <webhook@archiver.kernel.org>; Mon, 17 Jan 2022 10:26:09 +0000 (UTC)
Subject: [psplash][PATCH] psplash: Fix double buffering initialization 
To: yocto@lists.yoctoproject.org
From: "Horn, Michal" <MichalHorn@eaton.com>
X-Originating-Location: Prague, Hlavni mesto Praha, CZ (185.63.97.23)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Jan 2022 02:26:08 -0800
Message-ID: <x5Mp.1642415168178512138.GgEV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jysNQ92aMU3XyUJdBEGr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jan 2022 10:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55889

--jysNQ92aMU3XyUJdBEGr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Some fb drivers do not implement double buffering completely or correctly.
For example mxsfb driver does not set yres_virtual to double on
initialization, nor it allows its doubling by FBIOPUT_VSCREENINFO ioctl
call. In such case, the double buffering gets enabled, but psplash fails
to display every second frame with error
*psplash_fb_flip: FBIOPAN_DISPLAY failed: Invalid argument*.

# Technical details:

## Why every second frame gets thrown?

Panning the display by FBIOPAN_DISPLAY ioctl is always checking carefully
that the resolution, virtual buffer resolution and offsets in it are in
bounds at (fb_pan_display)[https://elixir.bootlin.com/linux/v4.9.275/source=
/drivers/video/fbdev/core/fbmem.c#L891].

Switching between the front and back buffers is done by switching the
yoffset between 0 and yres values. For double buffering, the complete buffe=
r
has yres_virtual size and it must be double of yres.

But in case of the mxsfb driver, the yres_virtual is always equal to yres,
so drawing with the offset set to yres would overrun the buffer. So the
panning is stopped and error *Invalid argument* is returned.

## Why doubling the yres_virtual fails?

yres_virtual is supposed to be doubled by FBIOPUT_VSCREENINFO ioctl call,
that at some point calls the (mxsfb_check_var)[https://elixir.bootlin.com/l=
inux/v4.9.275/source/drivers/video/fbdev/mxsfb.c#L269]
function, which for some reason always sets the yres_virtual back to yres,
effectively canceling the doubling. But no error is returned in this case,
so it gets silently ignored.

# Solution
These two problems can be solved by double checking the yres_virtual on
fb_new and disable double buffering in case of doubling yres_virtual fails.

Signed-off-by: Michal Horn <michalhorn@eaton.com>
---
psplash-fb.c | 14 ++++++++++++--
1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 2babb5f..1b73807 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -213,8 +213,18 @@ psplash_fb_new (int angle, int fbdev_id)
perror(" Error getting the fixed framebuffer info");
goto fail;
} else {
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG("Virtual resolution set to double")=
;
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fb->double_buffering =3D 1;
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ioctl(fb->fd, FBIOPAN_DISPLAY, &fb_=
var) =3D=3D -1) {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, "warning: FBIOPA=
N_DISPLAY failed, "
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "dou=
ble buffering disabled\n");
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (fb_var.yres_virtual =3D=3D f=
b_var.yres * 2) {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DBG("Virtual resolution s=
et to double");
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fb->double_buffering =3D =
1;
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, "warning:=
 Doubling virtual "
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 "resolution failed, double buffering disabled\n");
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
}
}
}
--
2.25.1

--jysNQ92aMU3XyUJdBEGr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Some fb drivers do not implement double buffering completely or correc=
tly.</div>
<div>For example mxsfb driver does not set yres_virtual to double on</div>
<div>initialization, nor it allows its doubling by FBIOPUT_VSCREENINFO ioct=
l</div>
<div>call. In such case, the double buffering gets enabled, but psplash fai=
ls</div>
<div>to display every second frame with error</div>
<div>*psplash_fb_flip: FBIOPAN_DISPLAY failed: Invalid argument*.</div>
<div>&nbsp;</div>
<div># Technical details:</div>
<div>&nbsp;</div>
<div>## Why every second frame gets thrown?</div>
<div>&nbsp;</div>
<div>Panning the display by FBIOPAN_DISPLAY ioctl is always checking carefu=
lly</div>
<div>that the resolution, virtual buffer resolution and offsets in it are i=
n</div>
<div>bounds at (fb_pan_display)[https://elixir.bootlin.com/linux/v4.9.275/s=
ource/drivers/video/fbdev/core/fbmem.c#L891].</div>
<div>&nbsp;</div>
<div>Switching between the front and back buffers is done by switching the<=
/div>
<div>yoffset between 0 and yres values. For double buffering, the complete =
buffer</div>
<div>has yres_virtual size and it must be double of yres.</div>
<div>&nbsp;</div>
<div>But in case of the mxsfb driver, the yres_virtual is always equal to y=
res,</div>
<div>so drawing with the offset set to yres would overrun the buffer. So th=
e</div>
<div>panning is stopped and error *Invalid argument* is returned.</div>
<div>&nbsp;</div>
<div>## Why doubling the yres_virtual fails?</div>
<div>&nbsp;</div>
<div>yres_virtual is supposed to be doubled by FBIOPUT_VSCREENINFO ioctl ca=
ll,</div>
<div>that at some point calls the (mxsfb_check_var)[https://elixir.bootlin.=
com/linux/v4.9.275/source/drivers/video/fbdev/mxsfb.c#L269]</div>
<div>function, which for some reason always sets the yres_virtual back to y=
res,</div>
<div>effectively canceling the doubling. But no error is returned in this c=
ase,</div>
<div>so it gets silently ignored.</div>
<div>&nbsp;</div>
<div># Solution</div>
<div>These two problems can be solved by double checking the yres_virtual o=
n</div>
<div>fb_new and disable double buffering in case of doubling yres_virtual f=
ails.</div>
<div>&nbsp;</div>
<div>Signed-off-by: Michal Horn &lt;michalhorn@eaton.com&gt;</div>
<div>---</div>
<div>&nbsp;psplash-fb.c | 14 ++++++++++++--</div>
<div>&nbsp;1 file changed, 12 insertions(+), 2 deletions(-)</div>
<div>&nbsp;</div>
<div>diff --git a/psplash-fb.c b/psplash-fb.c</div>
<div>index 2babb5f..1b73807 100644</div>
<div>--- a/psplash-fb.c</div>
<div>+++ b/psplash-fb.c</div>
<div>@@ -213,8 +213,18 @@ psplash_fb_new (int angle, int fbdev_id)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;perror(" Error getting the fi=
xed framebuffer info");</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto fail;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;} else {</div>
<div>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DBG("Virtual resolution set to dou=
ble");</div>
<div>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fb-&gt;double_buffering =3D 1;</di=
v>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (ioctl(fb-&gt;fd, FBIOPAN_DISPL=
AY, &amp;fb_var) =3D=3D -1) {</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fprintf(stderr, "warning: F=
BIOPAN_DISPLAY failed, "</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 "double buffering disabled\n");</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } else {</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (fb_var.yres_virtual =3D=
=3D fb_var.yres * 2) {</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DBG("Virtual resolut=
ion set to double");</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fb-&gt;double_buffer=
ing =3D 1;</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; } else {</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fprintf(stderr, "war=
ning: Doubling virtual "</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; "resolution failed, double buffering disabled\n");</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;}</div>
<div>&nbsp; &nbsp; &nbsp;}</div>
<div>--&nbsp;</div>
<div>2.25.1</div>
<div>&nbsp;</div>

--jysNQ92aMU3XyUJdBEGr--

