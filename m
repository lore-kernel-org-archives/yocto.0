Return-Path: <ito@lineo.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4515CC54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 12:26:00 +0000 (UTC)
Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.100719.1674822351111917562
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 04:25:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [192.168.3.12] (softbank126088165209.bbtec.net [126.88.165.209])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 7998C80312C4E;
	Fri, 27 Jan 2023 21:25:48 +0900 (JST)
Message-ID: <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp>
Date: Fri, 27 Jan 2023 21:25:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
Content-Language: en-US
To: Nikita Gupta <nikitagupta2509@gmail.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
From: Takayasu Ito <ito@lineo.co.jp>
In-Reply-To: <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59079

Hi Nikita

 > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gstr=
eamer1.0-plugins-good gstreamer1.0-plugins-bad

If you do not put a space after the double quotation marks, the package n=
ames before and after will be attached to each other=20
during the merge.

See=20
https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#appending-and-prepending-override-style-syntax

On 2023/01/27 20:48, Nikita Gupta wrote:
> Hello List,
>=20
> As i earlier mentioned that i want to do some customisation in local.co=
nf by adding few pkgs (below).
> *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gstre=
amer1.0-plugins-good gstreamer1.0-plugins-bad=20
> gstreamer1.0-plugins-ugly =C2=A0gstreamer1.0-libav imx-vpuwrap imx-gpu-=
g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
> LICENSE_FLAGS_ACCEPTED =3D " commercial"
> IMAGE_INSTALL:append =3D "kernel-devsrc"
> IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server gst-variable-rtsp-se=
rver"
> IMAGE_INSTALL:append =3D " gtk+3"
> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev libopencv-hig=
hgui-dev libopencv-imgproc-dev libopencv-objdetect-dev=20
> libopencv-ml-dev"
> #LICENSE_FLAGS_WHITELIST =3D " commercial"
> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
>  =C2=A0and iafter=C2=A0bitbake m getting below errors.
>=20
> nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitbake imx-im=
age-full*
> Loading cache: 100% |##################################################=
########################################################|=20
> Time: 0:00:01
> Loaded 4736 entries from dependency cache.
> Parsing recipes: 100% |################################################=
########################################################|=20
> Time: 0:00:02
> Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738 target=
s, 262 skipped, 3 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rt=
sp-server' (but=20
> /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-laye=
rs/qt6-layer/recipes-fsl/images/imx-image-full.bb=20
> <http://imx-image-full.bb> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-s=
erver' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['imx-gst1.0-pluginkernel-=
devsrcgstreamer1.0-rtsp-server']
> ERROR: Required build target 'imx-image-full' has no buildable provider=
s.
> Missing or unbuildable dependency chain was: ['imx-image-full', 'imx-gs=
t1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>=20
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>=20
> These packages are needed i can not remove So please help me what can i=
 do in this.
>=20
> Thanks in Advance.
>=20
> On Fri, 27 Jan 2023 at 17:00, Nikita Gupta <nikitagupta2509@gmail.com <=
mailto:nikitagupta2509@gmail.com>> wrote:
>=20
>     Hello Alex
>=20
>     When i run bitbake libimxvpuapi2 and it shows below error (images a=
ttached).
>     Can you please tell me that is "libimxvpuapi2" compatible with imx8=
mplus board?
>=20
>     Thanks in Advance
>=20
>     On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin <alex.kanavin@gmail=
.com <mailto:alex.kanavin@gmail.com>> wrote:
>=20
>         The screenshot indicates the problem originates in libimxvpuapi=
2
>         recipe. So you should get more information by running 'bitbake
>         libimxvpuapi2'.
>=20
>         Alex
>=20
>         On Fri, 27 Jan 2023 at 07:46, Nikita Gupta <nikitagupta2509@gma=
il.com <mailto:nikitagupta2509@gmail.com>> wrote:
>          >
>          > Hello Alexander
>          >
>          > I am not getting your query . Can u please explain your ques=
tion?
>          >
>          > Regards
>          > Nikita Gupta
>          >
>          > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin@=
gmail.com <mailto:alex.kanavin@gmail.com>> wrote:
>          >>
>          >> What happens if you bitbake libimx=E2=80=A6 thingy directly=
?
>          >>
>          >> Alex
>          >>
>          >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509=
@gmail.com <mailto:nikitagupta2509@gmail.com>> wrote:
>          >>>
>          >>> Hello list,
>          >>>
>          >>> I was just making image for imx8mplus by adding few pkgs i=
n my local.conf but encountered few errors so i am here
>         for your help.
>          >>> I added below pkgs in my local.conf file
>          >>>
>          >>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugin=
s-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>         gstreamer1.0-plugins-ugly=C2=A0 gstreamer1.0-libav imx-vpuwrap =
imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
>         imx-gst1.0-plugin"
>          >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>          >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>          >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server gst-va=
riable-rtsp-server"
>          >>> IMAGE_INSTALL:append =3D " gtk+3"
>          >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev =
libopencv-highgui-dev libopencv-imgproc-dev
>         libopencv-objdetect-dev libopencv-ml-dev"
>          >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>          >>>
>          >>> So my local.conf file now looks like this
>          >>> So i am getting below error after baking my recipe ( Attac=
hed image).
>          >>>
>          >>> Please tell what should I need to do to resolve this.
>          >>>
>          >>> Thanks in advance
>          >>>
>          >>>
>          >>>
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59078): https://lists.yoctoproject.org/g/yocto/mess=
age/59078
> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/3617373
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ito@lineo.co=
.jp]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Takayasu Ito
Solution Department, Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp
Yocto Project Ambassador


