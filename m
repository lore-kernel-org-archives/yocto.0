Return-Path: <ito@lineo.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E89C61DA4
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 02:34:21 +0000 (UTC)
Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web10.3550.1675132459770680376
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 18:34:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [172.31.28.27] (vpn1.lineo.co.jp [203.141.200.204])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 473FD802D343A;
	Tue, 31 Jan 2023 11:34:17 +0900 (JST)
Message-ID: <9a1053bd-d55b-9705-989d-36ad9f733ef5@lineo.co.jp>
Date: Tue, 31 Jan 2023 11:34:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
 <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp>
 <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
Content-Language: en-US
From: Takayasu Ito <ito@lineo.co.jp>
In-Reply-To: <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 02:34:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59112

Hi  Nikita

The problem is that in the imx-vpu-hantro recipe, the encoder library,=20
libhantro_h1.so, is not installed for mx8mp, but is installed for mx8mm.

In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.
Therefore, the _encoder variable used in the waf wsctipt file is set to=20
true, so a check is made for the presence of hantro_h1, resulting in an=20
error.
At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so by=20
changing the setting to one for imx8m, which does not use a hardware=20
encoder, the build for imx8mp will pass.

Create the libimxvpuapi2_%.bbappen file and add
IMX_PLATFOEM:mx8mp-nxp-bsp =3D "imx8m"



Translated with www.DeepL.com/Translator (free version)
On 2023/01/30 20:19, Nikita Gupta wrote:
> Hello Takayasu
> Thanks for your suggestion,=C2=A0 but after implementing i am facing sa=
me=20
> thing (see attached image).
>=20
> Regards
> Nikita Gupta
>=20
> On Fri, 27 Jan 2023 at 17:55, Takayasu Ito <ito@lineo.co.jp=20
> <mailto:ito@lineo.co.jp>> wrote:
>=20
>     Hi Nikita
>=20
>      =C2=A0> *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugi=
ns-base
>     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>=20
>     If you do not put a space after the double quotation marks, the
>     package names before and after will be attached to each other
>     during the merge.
>=20
>     See
>     https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitba=
ke-user-manual-metadata.html#appending-and-prepending-override-style-synt=
ax <https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake=
-user-manual-metadata.html#appending-and-prepending-override-style-syntax=
>
>=20
>     On 2023/01/27 20:48, Nikita Gupta wrote:
>      > Hello List,
>      >
>      > As i earlier mentioned that i want to do some customisation in
>     local.conf by adding few pkgs (below).
>      > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-bas=
e
>     gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>      > gstreamer1.0-plugins-ugly =C2=A0gstreamer1.0-libav imx-vpuwrap
>     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
>      > LICENSE_FLAGS_ACCEPTED =3D " commercial"
>      > IMAGE_INSTALL:append =3D "kernel-devsrc"
>      > IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server
>     gst-variable-rtsp-server"
>      > IMAGE_INSTALL:append =3D " gtk+3"
>      > CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
>     libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
>      > libopencv-ml-dev"
>      > #LICENSE_FLAGS_WHITELIST =3D " commercial"
>      > IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
>      >=C2=A0 =C2=A0and iafter=C2=A0bitbake m getting below errors.
>      >
>      > nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitbake
>     imx-image-full*
>      > Loading cache: 100%
>     |##################################################################=
########################################|
>      > Time: 0:00:01
>      > Loaded 4736 entries from dependency cache.
>      > Parsing recipes: 100%
>     |##################################################################=
######################################|
>      > Time: 0:00:02
>      > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738
>     targets, 262 skipped, 3 masked, 0 errors.
>      > NOTE: Resolving any missing task queue dependencies
>      > ERROR: Nothing RPROVIDES
>     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
>      >
>     /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-=
layers/qt6-layer/recipes-fsl/images/imx-image-full.bb <http://imx-image-f=
ull.bb>
>      > <http://imx-image-full.bb <http://imx-image-full.bb>> RDEPENDS o=
n
>     or otherwise requires it)
>      > NOTE: Runtime target
>     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' is
>     unbuildable, removing...
>      > Missing or unbuildable dependency chain was:
>     ['imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>      > ERROR: Required build target 'imx-image-full' has no buildable
>     providers.
>      > Missing or unbuildable dependency chain was: ['imx-image-full',
>     'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>      >
>      > Summary: There were 2 ERROR messages, returning a non-zero exit =
code.
>      >
>      > These packages are needed i can not remove So please help me wha=
t
>     can i do in this.
>      >
>      > Thanks in Advance.
>      >
>      > On Fri, 27 Jan 2023 at 17:00, Nikita Gupta
>     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>     <mailto:nikitagupta2509@gmail.com
>     <mailto:nikitagupta2509@gmail.com>>> wrote:
>      >
>      >=C2=A0 =C2=A0 =C2=A0Hello Alex
>      >
>      >=C2=A0 =C2=A0 =C2=A0When i run bitbake libimxvpuapi2 and it shows=
 below error
>     (images attached).
>      >=C2=A0 =C2=A0 =C2=A0Can you please tell me that is "libimxvpuapi2=
" compatible
>     with imx8mplus board?
>      >
>      >=C2=A0 =C2=A0 =C2=A0Thanks in Advance
>      >
>      >=C2=A0 =C2=A0 =C2=A0On Fri, 27 Jan 2023 at 14:35, Alexander Kanav=
in
>     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
>     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>> wr=
ote:
>      >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The screenshot indicates the pr=
oblem originates in
>     libimxvpuapi2
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe. So you should get more =
information by running
>     'bitbake
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libimxvpuapi2'.
>      >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Alex
>      >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Fri, 27 Jan 2023 at 07:46, N=
ikita Gupta
>     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>     <mailto:nikitagupta2509@gmail.com
>     <mailto:nikitagupta2509@gmail.com>>> wrote:
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 > Hello Alexander
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 > I am not getting your query =
. Can u please explain
>     your question?
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 > Regards
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 > Nikita Gupta
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 > On Wed, Jan 25, 2023, 18:35 =
Alexander Kanavin
>     <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
>     <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>> wr=
ote:
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >> What happens if you bitbake=
 libimx=E2=80=A6 thingy directly?
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >> Alex
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >> On Wed 25. Jan 2023 at 13.4=
7, Nikita Gupta
>     <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>     <mailto:nikitagupta2509@gmail.com
>     <mailto:nikitagupta2509@gmail.com>>> wrote:
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> Hello list,
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> I was just making image fo=
r imx8mplus by adding few
>     pkgs in my local.conf but encountered few errors so i am here
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for your help.
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> I added below pkgs in my l=
ocal.conf file
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> IMAGE_INSTALL:append =3D "=
gstreamer1.0
>     gstreamer1.0-plugins-base gstreamer1.0-plugins-good
>     gstreamer1.0-plugins-bad
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-ugly=C2=A0=
 gstreamer1.0-libav imx-vpuwrap
>     imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0imx-gst1.0-plugin"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> LICENSE_FLAGS_WHITELIST =3D=
 "commercial"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> IMAGE_INSTALL:append =3D "=
kernel-devsrc"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> IMAGE_INSTALL_append +=3D =
"gstreamer1.0-rtsp-server
>     gst-variable-rtsp-server"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> IMAGE_INSTALL:append =3D "=
 gtk+3"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> CORE_IMAGE_EXTRA_INSTALL +=
=3D " opencv
>     libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libopencv-objdetect-dev libopen=
cv-ml-dev"
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> IMAGE_ROOTFS_EXTRA_SPACE =3D=
 "1048576 "
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> So my local.conf file now =
looks like this
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> So i am getting below erro=
r after baking my recipe (
>     Attached image).
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> Please tell what should I =
need to do to resolve this.
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>> Thanks in advance
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 >>>
>      >
>      >
>      >
>      > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>      > Links: You receive all messages sent to this group.
>      > View/Reply Online (#59078):
>     https://lists.yoctoproject.org/g/yocto/message/59078
>     <https://lists.yoctoproject.org/g/yocto/message/59078>
>      > Mute This Topic:
>     https://lists.yoctoproject.org/mt/96519310/3617373
>     <https://lists.yoctoproject.org/mt/96519310/3617373>
>      > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>      > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     <https://lists.yoctoproject.org/g/yocto/unsub> [ito@lineo.co.jp
>     <mailto:ito@lineo.co.jp>]
>      > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>      >
>=20
>     --=20
>     Takayasu Ito
>     Solution Department, Lineo Solutions, Inc.
>     https://www.lineo.co.jp/english/ <https://www.lineo.co.jp/english/>
>     Email: ito@lineo.co.jp <mailto:ito@lineo.co.jp>
>     Yocto Project Ambassador
>=20

--=20
Takayasu Ito
Yocto Project Ambassador
Solution Department Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp


