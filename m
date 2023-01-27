Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E4E3C38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 11:48:40 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web10.100036.1674820113960615591
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 03:48:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j0BCQFCq;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-15f97c478a8so6050798fac.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 03:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+VRcN3pp1Zs6kO5cNag9GKaUMXYYDxkYOQNUIIPIaCg=;
        b=j0BCQFCquhD6e4KZQRSNw3LMbb4b+rFQSGJ5WekqTIjT7BUsRZk1gdb5/su//EcM1+
         SHRN8n/NSzye+ICPqnKCVhVlexhe64VA6pBqB2xiCFc7Vl5JpSPkFuQCE3A/mCXUkRYE
         VF8CLQq8FWo4Qk9fx4N6Fw+dx3q8A7LMYj1nC3o+vde78aRAMLTinX6+KNX0n47+paaT
         dux1jv90/U5Ry/EZbBwp4RC/m+D2SzmwBb9hQl9DqZeCHEqCLbH51FCdJTz/uDIXKLog
         85rjldkWyo89pUNck5z27KwsFRNNhiRWgI+lvlT+KyBkjtLze3vsAZtAiyMEllSfFYfm
         qRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+VRcN3pp1Zs6kO5cNag9GKaUMXYYDxkYOQNUIIPIaCg=;
        b=jvxZC4qG59uQRr2rJzpLaZBg2ZrYBSSyomhrlow30NmIpFzqNvX8nEsab+BIfESWoz
         Zi5sxhhaWswNT1MqEr2YmR7LGY9xJqQK8S2iq6KSl0/3dHqNLxAg5hGvOPNZ5Y+jzmKC
         d4N2tAP93XV16OduOjR9ten7x2DboTYCSZizmjLYPIEtl+m2SWVO9Y9gYAxj+AoaTnDr
         SB4jg34qhiAPX0LBu34MXRreZLcuHnRZAk8k0YoIQB6PnB2vDlbusJnW9IhVzBLV/awO
         VORGMgZlDu4g5LgT5I+pAu3M6LFrmG/GKv5NLUNyD66cWfHFY7/HDn7P7oX9xti9/BSK
         wkcg==
X-Gm-Message-State: AO0yUKVucgPmn4e4dtAknpBxzSUSVlXzYWxRz9Q8DHvCcNvZmU3xiQ+4
	2jcc6Yb0A8CSMWrTrRnWHPl3CkU8EvqA5gBa808=
X-Google-Smtp-Source: AK7set+LSjozvJvqtTel7QxyWpZAJct7K30UGipmJJ+QDUGMtiAqWqiMO22oU+UQJyb2BI1X3JVZcs+3FmncOzg2OBQ=
X-Received: by 2002:a05:6870:c885:b0:163:6b1f:ceb8 with SMTP id
 er5-20020a056870c88500b001636b1fceb8mr301219oab.200.1674820113070; Fri, 27
 Jan 2023 03:48:33 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com> <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
In-Reply-To: <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Fri, 27 Jan 2023 17:18:21 +0530
Message-ID: <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e6ffe805f33d7157"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 11:48:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59078

--000000000000e6ffe805f33d7157
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello List,

As i earlier mentioned that i want to do some customisation in local.conf
by adding few pkgs (below).







*IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base
gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d
imx-gpu-viv gstreamer1.0-plugins-imx
imx-gst1.0-plugin"LICENSE_FLAGS_ACCEPTED =3D "
commercial"IMAGE_INSTALL:append =3D "kernel-devsrc"IMAGE_INSTALL:append =3D
"gstreamer1.0-rtsp-server gst-variable-rtsp-server"IMAGE_INSTALL:append =3D=
 "
gtk+3"CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
libopencv-ml-dev"#LICENSE_FLAGS_WHITELIST =3D "
commercial"IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
 and iafter bitbake m getting below errors.

nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitbake
imx-image-full*
Loading cache: 100%
|##########################################################################=
################################|
Time: 0:00:01
Loaded 4736 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
##############################|
Time: 0:00:02
Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738 targets,
262 skipped, 3 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES
'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
/home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-layers/q=
t6-layer/recipes-fsl/images/
imx-image-full.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target
'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
ERROR: Required build target 'imx-image-full' has no buildable providers.
Missing or unbuildable dependency chain was: ['imx-image-full',
'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']

Summary: There were 2 ERROR messages, returning a non-zero exit code.

These packages are needed i can not remove So please help me what can i do
in this.

Thanks in Advance.

On Fri, 27 Jan 2023 at 17:00, Nikita Gupta <nikitagupta2509@gmail.com>
wrote:

> Hello Alex
>
> When i run bitbake libimxvpuapi2 and it shows below error (images
> attached).
> Can you please tell me that is "libimxvpuapi2" compatible with imx8mplus
> board?
>
> Thanks in Advance
>
> On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> The screenshot indicates the problem originates in libimxvpuapi2
>> recipe. So you should get more information by running 'bitbake
>> libimxvpuapi2'.
>>
>> Alex
>>
>> On Fri, 27 Jan 2023 at 07:46, Nikita Gupta <nikitagupta2509@gmail.com>
>> wrote:
>> >
>> > Hello Alexander
>> >
>> > I am not getting your query . Can u please explain your question?
>> >
>> > Regards
>> > Nikita Gupta
>> >
>> > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin@gmail.com>
>> wrote:
>> >>
>> >> What happens if you bitbake libimx=E2=80=A6 thingy directly?
>> >>
>> >> Alex
>> >>
>> >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509@gmail.com=
>
>> wrote:
>> >>>
>> >>> Hello list,
>> >>>
>> >>> I was just making image for imx8mplus by adding few pkgs in my
>> local.conf but encountered few errors so i am here for your help.
>> >>> I added below pkgs in my local.conf file
>> >>>
>> >>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base
>> gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>> gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d
>> imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
>> >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>> >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>> >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server
>> gst-variable-rtsp-server"
>> >>> IMAGE_INSTALL:append =3D " gtk+3"
>> >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
>> libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
>> libopencv-ml-dev"
>> >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>> >>>
>> >>> So my local.conf file now looks like this
>> >>> So i am getting below error after baking my recipe ( Attached image)=
.
>> >>>
>> >>> Please tell what should I need to do to resolve this.
>> >>>
>> >>> Thanks in advance
>> >>>
>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>> Links: You receive all messages sent to this group.
>> >>> View/Reply Online (#59056):
>> https://lists.yoctoproject.org/g/yocto/message/59056
>> >>> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1686489
>> >>> Group Owner: yocto+owner@lists.yoctoproject.org
>> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alex.kanavin@gmail.com]
>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>>
>>
>

--000000000000e6ffe805f33d7157
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello List,=C2=A0<div><br></div><div>As i=
 earlier mentioned that i want to do some customisation in local.conf by ad=
ding few pkgs (below).</div><div><b>IMAGE_INSTALL:append =3D &quot;gstreame=
r1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugi=
ns-bad gstreamer1.0-plugins-ugly =C2=A0gstreamer1.0-libav imx-vpuwrap imx-g=
pu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin&quot;<br>LICE=
NSE_FLAGS_ACCEPTED =3D &quot; commercial&quot;<br>IMAGE_INSTALL:append =3D =
&quot;kernel-devsrc&quot;<br>IMAGE_INSTALL:append =3D &quot;gstreamer1.0-rt=
sp-server gst-variable-rtsp-server&quot;<br>IMAGE_INSTALL:append =3D &quot;=
 gtk+3&quot;<br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv libopencv-core-=
dev libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev lib=
opencv-ml-dev&quot;<br>#LICENSE_FLAGS_WHITELIST =3D &quot; commercial&quot;=
<br>IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;</b><br></div><div>=C2=
=A0and iafter=C2=A0bitbake m getting below errors.=C2=A0</div><div><br></di=
v><div>nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ <b>bitbake i=
mx-image-full</b><br>Loading cache: 100% |#################################=
#########################################################################| =
Time: 0:00:01<br>Loaded 4736 entries from dependency cache.<br>Parsing reci=
pes: 100% |################################################################=
########################################| Time: 0:00:02<br>Parsing of 3190 =
.bb files complete (3188 cached, 2 parsed). 4738 targets, 262 skipped, 3 ma=
sked, 0 errors.<br>NOTE: Resolving any missing task queue dependencies<br>E=
RROR: Nothing RPROVIDES &#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rts=
p-server&#39; (but /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-s=
dk/dynamic-layers/qt6-layer/recipes-fsl/images/<a href=3D"http://imx-image-=
full.bb">imx-image-full.bb</a> RDEPENDS on or otherwise requires it)<br>NOT=
E: Runtime target &#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-serv=
er&#39; is unbuildable, removing...<br>Missing or unbuildable dependency ch=
ain was: [&#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server&#39;]=
<br>ERROR: Required build target &#39;imx-image-full&#39; has no buildable =
providers.<br>Missing or unbuildable dependency chain was: [&#39;imx-image-=
full&#39;, &#39;imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server&#39;=
]<br><br>Summary: There were 2 ERROR messages, returning a non-zero exit co=
de.<br></div><div><br></div><div>These packages are needed i can not remove=
 So please help me what can i do in this.</div><div><br></div><div>Thanks i=
n Advance.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 27 Jan 2023 at 17:00, Nikita Gupta &lt;<a href=3D"m=
ailto:nikitagupta2509@gmail.com">nikitagupta2509@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hello Alex<div><br></div><div>When i run bitbake libimxvpuapi2 and it shows=
 below error (images attached).=C2=A0</div><div>Can you please tell me that=
 is &quot;libimxvpuapi2&quot; compatible with imx8mplus board?</div><div><b=
r></div><div>Thanks in Advance=C2=A0=C2=A0</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Jan 2023 at 14:3=
5, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">The screenshot indicates the problem orig=
inates in libimxvpuapi2<br>
recipe. So you should get more information by running &#39;bitbake<br>
libimxvpuapi2&#39;.<br>
<br>
Alex<br>
<br>
On Fri, 27 Jan 2023 at 07:46, Nikita Gupta &lt;<a href=3D"mailto:nikitagupt=
a2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; Hello Alexander<br>
&gt;<br>
&gt; I am not getting your query . Can u please explain your question?<br>
&gt;<br>
&gt; Regards<br>
&gt; Nikita Gupta<br>
&gt;<br>
&gt; On Wed, Jan 25, 2023, 18:35 Alexander Kanavin &lt;<a href=3D"mailto:al=
ex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrot=
e:<br>
&gt;&gt;<br>
&gt;&gt; What happens if you bitbake libimx=E2=80=A6 thingy directly?<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Wed 25. Jan 2023 at 13.47, Nikita Gupta &lt;<a href=3D"mailto:n=
ikitagupta2509@gmail.com" target=3D"_blank">nikitagupta2509@gmail.com</a>&g=
t; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hello list,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I was just making image for imx8mplus by adding few pkgs in my=
 local.conf but encountered few errors so i am here for your help.<br>
&gt;&gt;&gt; I added below pkgs in my local.conf file<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; IMAGE_INSTALL:append =3D &quot;gstreamer1.0 gstreamer1.0-plugi=
ns-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plu=
gins-ugly=C2=A0 gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d imx-gpu-viv gstr=
eamer1.0-plugins-imx imx-gst1.0-plugin&quot;<br>
&gt;&gt;&gt; LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
&gt;&gt;&gt; IMAGE_INSTALL:append =3D &quot;kernel-devsrc&quot;<br>
&gt;&gt;&gt; IMAGE_INSTALL_append +=3D &quot;gstreamer1.0-rtsp-server gst-v=
ariable-rtsp-server&quot;<br>
&gt;&gt;&gt; IMAGE_INSTALL:append =3D &quot; gtk+3&quot;<br>
&gt;&gt;&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; opencv libopencv-core-dev=
 libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev libope=
ncv-ml-dev&quot;<br>
&gt;&gt;&gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; So my local.conf file now looks like this<br>
&gt;&gt;&gt; So i am getting below error after baking my recipe ( Attached =
image).<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Please tell what should I need to do to resolve this.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks in advance<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;&gt; View/Reply Online (#59056): <a href=3D"https://lists.yoctoproj=
ect.org/g/yocto/message/59056" rel=3D"noreferrer" target=3D"_blank">https:/=
/lists.yoctoproject.org/g/yocto/message/59056</a><br>
&gt;&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/=
96519310/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/mt/96519310/1686489</a><br>
&gt;&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoprojec=
t.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto=
/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bl=
ank">alex.kanavin@gmail.com</a>]<br>
&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt;<br>
</blockquote></div>
</blockquote></div></div>

--000000000000e6ffe805f33d7157--

