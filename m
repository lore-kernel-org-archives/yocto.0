Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E85BC433F5
	for <webhook@archiver.kernel.org>; Fri, 18 Mar 2022 19:29:12 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web09.14139.1647631750857508173
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 12:29:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fOA/micj;
 spf=pass (domain: gmail.com, ip: 209.85.222.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id v20so3289301uat.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 12:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5QavGwW9cHnfxYrzherAFuGEeasCu91qQA8sytI3rrw=;
        b=fOA/micjkif5cUVfbZw4XsjW3ZjERrP/pkOI3ZWryk7gfO9JpIlkCb+tQism40AxAh
         iY3WxQxPoJ5xlkQCq+oYy7h2LiHFtFjEk+e37Uv2DY4mzliwmNPFm6utOT81jRZLnBub
         FtHI3lO6zoK1TcdNk3LBq47zBli7LVnGsbCqmqGZLwKscc6xvH6WzAqDXuB1u4BZPHtx
         6EPeHi+1fuBkfEKbT9IGUka0mLKmrbJXtZdEyg4Item+sZFl26kUXYCQ+UqjdJJ2606X
         kClsndTVqgC6HxeivzKYP+PtW4og72PH9OHX7UswgSj7PEpTw2lqVz+bdJy7zRa1IXqZ
         ooVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5QavGwW9cHnfxYrzherAFuGEeasCu91qQA8sytI3rrw=;
        b=wqhXJprbpm+vjxecEwC1t10E+qWL/tmdtQLTMMV6tX6p5unjeQOcwSXPdqGDvQkPMJ
         NDZHtw7hdOtp/HwNst9UlgWoibpDuaJ09j/uk7dUVj4zMBhzG62tKUj97P3kSun9Um4B
         Ndb1hm83wGPLV5JI0hGbWISu3vAdFWUh7YBDaeLYVAQaioy9Msiiz7rzuQKrWXrH5kpu
         pyAV6aJ+iDPxotixsPV9CJ20C8Uui8Be1pB7z1t7HkePNiV/5N9YHMZ8iTKWpxcgnx3a
         zDGSMZCcnSie/b6k3HO3oqCEZZa9JCLA+sVkG5u+29VvIWrpMQuzDI4CAEM96PLUVQq7
         g+zQ==
X-Gm-Message-State: AOAM5316sTSZiXSPzR0hg2yyj4VuGvDPb9xX6+p5bBhbgsKJS75C1Jxn
	fHXYeB79IdpfER6cPxW57Et7raOaT1FvLb4Nu0c=
X-Google-Smtp-Source: 
 ABdhPJxTA7T5mFijXMPgYSEkRmalLZCpWr5xflUdoqRR3hBGX3J5/AVOwxLSR3w/muwvlYIPyhssq0nbVCTY2yx84m8=
X-Received: by 2002:a9f:3589:0:b0:342:4791:1b86 with SMTP id
 t9-20020a9f3589000000b0034247911b86mr3726357uad.82.1647631749827; Fri, 18 Mar
 2022 12:29:09 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
 <DM8PR16MB4357DD3F1C9DEAB3058508B5C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj9ousDr7Bci_6gFkXRFDvnr591vXyWeMmBLC=LWTWfKwg@mail.gmail.com>
 <DM8PR16MB4357E7702635621F70A968D4C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj_VA0Ta_XiE9ionCSUhCZZ-sVmCSDQt3uQ62C+9vPA+oA@mail.gmail.com>
 <DM8PR16MB43579E0AB862CEFBE772AE42C7129@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CANNYZj-Z5sGd7bUB0XuEVYL84BUTA-qsoYg9na1U1kV67nVSKQ@mail.gmail.com>
 <16DD2FD3E4D1257B.29979@lists.yoctoproject.org>
 <DM8PR16MB43571EA20E3A050872A0601EC7139@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB43571EA20E3A050872A0601EC7139@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 18 Mar 2022 20:28:58 +0100
Message-ID: 
 <CANNYZj8zYVA2Q1p25ExajyqWgjh9E_BXWtOucZU3+Zw6CGFutg@mail.gmail.com>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64:
 Virtio VGA not available.
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002b4efe05da832973"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 19:29:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56497

--0000000000002b4efe05da832973
Content-Type: text/plain; charset="UTF-8"

Cheers :) Just wondering what GPU and driver are you using on the host?

Alex

On Fri, 18 Mar 2022 at 20:26, Edgar Mobile <heideggm@hotmail.com> wrote:

>
> Okay, I finally got it running. What I did:
>
>
>    - Upgraded all my host packages from this ppa:
>    https://launchpad.net/~savoury1/+archive/ubuntu/display
>    - Built fresh Yocto 3.4, core-image-weston with virgl
>    - Built 6.2 qemu separately and used that. Added -device
>    virtio-gpu-gl-pci
>
> Now I have a comfy Gles 3.2 context!
>
> Tx
>
>    Display - various (Xenial & newer) : Rob Savoury
>    <https://launchpad.net/~savoury1/+archive/ubuntu/display>
>    Display PPA (drm 2.4.109, mesa 21.3.3, xserver 1.20.13) Xenial &
>    newer. *** Please always check https:/ /launchpad. net/~savoury1 first for
>    general updates about this ...
>    launchpad.net
>
>
>
> ------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Edgar Mobile <heideggm@hotmail.com>
> *Sent:* Thursday, March 17, 2022 2:00 PM
> *To:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] runqemu - ERROR - Failed to run qemu:
> qemu-system-aarch64: Virtio VGA not available.
>
> Ah, that's an interesting information.
> The dmesg log gives the impression that virgl starts correctly and in the
> normal shell the examples work flawlessly. The problems start once I tell
> weston to use the ivi-shell instead of the desktop shell.
>
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Thursday, March 17, 2022 1:51 PM
> *To:* Edgar Mobile <heideggm@hotmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] runqemu - ERROR - Failed to run qemu:
> qemu-system-aarch64: Virtio VGA not available.
>
> There is no hardware acceleration with bochs at all, if you want it,
> you need to make virtio/virgl driver work.
>
> Alex
>
> On Thu, 17 Mar 2022 at 14:02, Edgar Mobile <heideggm@hotmail.com> wrote:
> >
> > Do you know if bochs driver is available and active for yocto 3.4 or 3.5?
> >
> > ________________________________
> > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > Sent: Thursday, March 17, 2022 11:26 AM
> > To: Edgar Mobile <heideggm@hotmail.com>
> > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
> qemu-system-aarch64: Virtio VGA not available.
> >
> > As I told you, we do not support or test this combination. Which means
> > that figuring out what the error messages mean and how to fix them is
> > on you - patches welcome.
> >
> > Alex
> >
> > On Thu, 17 Mar 2022 at 11:41, Edgar Mobile <heideggm@hotmail.com> wrote:
> > >
> > > I tried that first and it was horribly slow. That's why I try hardware
> acceleration now.
> > >
> > > Do you _know_ it doesn't work? If yes, why?
> > >
> > > ________________________________
> > > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > > Sent: Thursday, March 17, 2022 10:33 AM
> > > To: Edgar Mobile <heideggm@hotmail.com>
> > > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
> qemu-system-aarch64: Virtio VGA not available.
> > >
> > > If you want an aarch guest on x86, then drop the gl option from
> > > runqemu. This will fall back to software rendering.
> > >
> > > Alex
> > >
> > > On Thu, 17 Mar 2022 at 10:33, Edgar Mobile <heideggm@hotmail.com>
> wrote:
> > > >
> > > > Sorry, but I need an Aarch64 guest.
> > > >
> > > > Ok, using a newer qemu I now encounter the following problem:
> > > >
> > > > root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=/run/user/0 ./eglinfo
> > > > EGL client extensions string:
> > > >     EGL_EXT_client_extensions EGL_EXT_device_base
> > > >     EGL_EXT_device_enumeration EGL_EXT_device_query
> EGL_EXT_platform_base
> > > >     EGL_KHR_client_get_all_proc_addresses EGL_KHR_debug
> > > >     EGL_EXT_platform_device EGL_EXT_platform_wayland
> > > >     EGL_KHR_platform_wayland EGL_EXT_platform_x11
> EGL_KHR_platform_x11
> > > >     EGL_MESA_platform_xcb EGL_MESA_platform_gbm EGL_KHR_platform_gbm
> > > >     EGL_MESA_platform_surfaceless
> > > >
> > > > GBM platform:
> > > > pci id for fd 3: 1234:1111, driver (null)
> > > > MESA-LOADER: failed to open bochs-drm:
> /usr/lib/dri/bochs-drm_dri.so: cannot open shared object file: No such file
> or directory (search paths /usr/lib/dri)
> > > > failed to load driver: bochs-drm
> > > > ...
> > > >
> > > >
> > > > What is this bochs-drm_dri.so and does Yocto / the Mesa in Yocto
> provide it?
> > > >
> > > > ________________________________
> > > > From: Alexander Kanavin <alex.kanavin@gmail.com>
> > > > Sent: Wednesday, March 16, 2022 2:51 PM
> > > > To: Edgar Mobile <heideggm@hotmail.com>
> > > > Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > > > Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
> qemu-system-aarch64: Virtio VGA not available.
> > > >
> > > > This configuration is not tested. If you want accelerated gl, build
> > > > for the qemux86-64 target.
> > > >
> > > > Alex
> > > >
> > > > On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com>
> wrote:
> > > > >
> > > > > Greetings,
> > > > >
> > > > > I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that
> purpose, I built core-image-weston from Hardknott following the manual
> > > > >
> > > > >
> https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
> > > > >
> > > > > I then try to run
> > > > >
> > > > > runqemu sdl gl
> > > > >
> > > > > But it always aborts with
> > > > >
> > > > > runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio
> VGA not available.
> > > > >
> > > > > What can I do?
> > > > >
> > > > > Regards
> > > > >
> > > > >
> > > > >
>

--0000000000002b4efe05da832973
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Cheers :) Just wondering what GPU and driver are you =
using on the host?</div><div><br></div><div>Alex<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 18 Mar 20=
22 at 20:26, Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com">heide=
ggm@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div>Okay, I finally got it running. What I did:</div>
<div><br>
</div>
<div>
<ul>
<li><span>Upgraded all my host packages from this ppa: <a href=3D"https://l=
aunchpad.net/~savoury1/+archive/ubuntu/display" id=3D"gmail-m_5743577128067=
099187LPlnk" target=3D"_blank">
https://launchpad.net/~savoury1/+archive/ubuntu/display</a></span></li><li>=
<span>Built fresh Yocto 3.4, core-image-weston with virgl</span></li><li><s=
pan>Built 6.2 qemu separately and used that. Added <span style=3D"color:rgb=
(0,0,0);font-family:Calibri,Helvetica,sans-serif;font-weight:normal;text-al=
ign:start;display:inline">
-device virtio-gpu-gl-pci</span></span></li></ul>
<div>Now I have a comfy Gles 3.2 context!</div>
<div><br>
</div>
<div>Tx<br>
</div>
<ul>
<div>
<div id=3D"gmail-m_5743577128067099187LPBorder_GTaHR0cHM6Ly9sYXVuY2hwYWQubm=
V0L35zYXZvdXJ5MS8rYXJjaGl2ZS91YnVudHUvZGlzcGxheQ.." style=3D"width:100%;mar=
gin-top:16px;margin-bottom:16px;max-width:800px;min-width:424px">
<table id=3D"gmail-m_5743577128067099187LPContainer440996" role=3D"presenta=
tion" style=3D"padding:12px 36px 12px 12px;width:100%;border-width:1px;bord=
er-style:solid;border-color:rgb(200,200,200);border-radius:2px">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td style=3D"width:100%">
<div id=3D"gmail-m_5743577128067099187LPTitle440996" style=3D"font-size:21p=
x;font-weight:300;margin-right:8px;font-family:&quot;wf_segoe-ui_light&quot=
;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;margin-bottom:12px">
<a id=3D"gmail-m_5743577128067099187LPUrlAnchor440996" href=3D"https://laun=
chpad.net/~savoury1/+archive/ubuntu/display" style=3D"text-decoration:none"=
 target=3D"_blank">Display - various (Xenial &amp; newer) : Rob Savoury</a>=
</div>
<div id=3D"gmail-m_5743577128067099187LPDescription440996" style=3D"font-si=
ze:14px;max-height:100px;color:rgb(102,102,102);font-family:&quot;wf_segoe-=
ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif;margin-bottom:12px;margin-right:8px;overflow:hidden">
Display PPA (drm 2.4.109, mesa 21.3.3, xserver 1.20.13) Xenial &amp; newer.=
 *** Please always check https:/ /launchpad. net/~savoury1 first for genera=
l updates about this ...</div>
<div id=3D"gmail-m_5743577128067099187LPMetadata440996" style=3D"font-size:=
14px;font-weight:400;color:rgb(166,166,166);font-family:&quot;wf_segoe-ui_n=
ormal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-ser=
if">
<a href=3D"http://launchpad.net" target=3D"_blank">launchpad.net</a></div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br>
</ul>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_5743577128067099187divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoc=
to@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of =
Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D"_blank">=
heideggm@hotmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, March 17, 2022 2:00 PM<br>
<b>To:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>=C2=A0</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Ah, that&#39;s an interesting information.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
The dmesg log gives the impression that virgl starts correctly and in the n=
ormal shell the examples work flawlessly. The problems start once I tell we=
ston to use the ivi-shell instead of the desktop shell.<br>
</div>
<div>
<div id=3D"gmail-m_5743577128067099187x_appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_5743577128067099187x_divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, March 17, 2022 1:51 PM<br>
<b>To:</b> Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=
=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-syst=
em-aarch64: Virtio VGA not available.</font>
<div>=C2=A0</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div>There is no hardware acceleration with bochs at all, if you want it,<b=
r>
you need to make virtio/virgl driver work.<br>
<br>
Alex<br>
<br>
On Thu, 17 Mar 2022 at 14:02, Edgar Mobile &lt;<a href=3D"mailto:heideggm@h=
otmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Do you know if bochs driver is available and active for yocto 3.4 or 3=
.5?<br>
&gt;<br>
&gt; ________________________________<br>
&gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; Sent: Thursday, March 17, 2022 11:26 AM<br>
&gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" target=3D=
"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">=
yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-system=
-aarch64: Virtio VGA not available.<br>
&gt;<br>
&gt; As I told you, we do not support or test this combination. Which means=
<br>
&gt; that figuring out what the error messages mean and how to fix them is<=
br>
&gt; on you - patches welcome.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Thu, 17 Mar 2022 at 11:41, Edgar Mobile &lt;<a href=3D"mailto:heide=
ggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I tried that first and it was horribly slow. That&#39;s why I try=
 hardware acceleration now.<br>
&gt; &gt;<br>
&gt; &gt; Do you _know_ it doesn&#39;t work? If yes, why?<br>
&gt; &gt;<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt; Sent: Thursday, March 17, 2022 10:33 AM<br>
&gt; &gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com" targ=
et=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bl=
ank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoc=
toproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: qemu-s=
ystem-aarch64: Virtio VGA not available.<br>
&gt; &gt;<br>
&gt; &gt; If you want an aarch guest on x86, then drop the gl option from<b=
r>
&gt; &gt; runqemu. This will fall back to software rendering.<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Thu, 17 Mar 2022 at 10:33, Edgar Mobile &lt;<a href=3D"mailto:=
heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; wrote:=
<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Sorry, but I need an Aarch64 guest.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Ok, using a newer qemu I now encounter the following problem=
:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; root@qemuarm64:/usr/bin# XDG_RUNTIME_DIR=3D/run/user/0 ./egl=
info<br>
&gt; &gt; &gt; EGL client extensions string:<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_EXT_client_extensions EGL_EXT_de=
vice_base<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_EXT_device_enumeration EGL_EXT_d=
evice_query EGL_EXT_platform_base<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_KHR_client_get_all_proc_addresse=
s EGL_KHR_debug<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_EXT_platform_device EGL_EXT_plat=
form_wayland<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_KHR_platform_wayland EGL_EXT_pla=
tform_x11 EGL_KHR_platform_x11<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_MESA_platform_xcb EGL_MESA_platf=
orm_gbm EGL_KHR_platform_gbm<br>
&gt; &gt; &gt;=C2=A0=C2=A0=C2=A0=C2=A0 EGL_MESA_platform_surfaceless<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; GBM platform:<br>
&gt; &gt; &gt; pci id for fd 3: 1234:1111, driver (null)<br>
&gt; &gt; &gt; MESA-LOADER: failed to open bochs-drm: /usr/lib/dri/bochs-dr=
m_dri.so: cannot open shared object file: No such file or directory (search=
 paths /usr/lib/dri)<br>
&gt; &gt; &gt; failed to load driver: bochs-drm<br>
&gt; &gt; &gt; ...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What is this bochs-drm_dri.so and does Yocto / the Mesa in Y=
octo provide it?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ________________________________<br>
&gt; &gt; &gt; From: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; &gt; &gt; Sent: Wednesday, March 16, 2022 2:51 PM<br>
&gt; &gt; &gt; To: Edgar Mobile &lt;<a href=3D"mailto:heideggm@hotmail.com"=
 target=3D"_blank">heideggm@hotmail.com</a>&gt;<br>
&gt; &gt; &gt; Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@li=
sts.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt=
;<br>
&gt; &gt; &gt; Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu: q=
emu-system-aarch64: Virtio VGA not available.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This configuration is not tested. If you want accelerated gl=
, build<br>
&gt; &gt; &gt; for the qemux86-64 target.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Alex<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Wed, 16 Mar 2022 at 12:46, Edgar Mobile &lt;<a href=3D"ma=
ilto:heideggm@hotmail.com" target=3D"_blank">heideggm@hotmail.com</a>&gt; w=
rote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Greetings,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I tried to run an Aarch64 Yocto with qemu on amd 64 Hos=
t. For that purpose, I built core-image-weston from Hardknott following the=
 manual<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; <a href=3D"https://www.mail-archive.com/yocto@lists.yoc=
toproject.org/msg07306.html" target=3D"_blank">
https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html</a>=
<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I then try to run<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; runqemu sdl gl<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; But it always aborts with<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; runqemu - ERROR - Failed to run qemu: qemu-system-aarch=
64: Virtio VGA not available.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; What can I do?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Regards<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000002b4efe05da832973--

