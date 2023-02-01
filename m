Return-Path: <ito@lineo.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2284AC38142
	for <webhook@archiver.kernel.org>; Wed,  1 Feb 2023 02:07:09 +0000 (UTC)
Received: from mail.lineo.co.jp (mail.lineo.co.jp [203.141.200.203])
 by mx.groups.io with SMTP id smtpd.web11.13793.1675217219237621173
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 18:06:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lineo.co.jp, ip: 203.141.200.203, mailfrom: ito@lineo.co.jp)
Received: from [10.2.0.7] (y254190.ppp.asahi-net.or.jp [118.243.254.190])
	by mail.lineo.co.jp (Postfix) with ESMTPSA id 87EE9803339BE;
	Wed,  1 Feb 2023 11:06:56 +0900 (JST)
Message-ID: <05a800f3-651c-3e50-2bc4-e970c4e0e876@lineo.co.jp>
Date: Wed, 1 Feb 2023 11:06:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Khem Raj <raj.khem@gmail.com>
Cc: Nikita Gupta <nikitagupta2509@gmail.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
 <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp>
 <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
 <9a1053bd-d55b-9705-989d-36ad9f733ef5@lineo.co.jp>
 <CAMKF1srN5gMQXw1nruWSaPEc8qXEcpvTK3mxMnzGGK-kQSF7PQ@mail.gmail.com>
Content-Language: en-US
From: Takayasu Ito <ito@lineo.co.jp>
In-Reply-To: <CAMKF1srN5gMQXw1nruWSaPEc8qXEcpvTK3mxMnzGGK-kQSF7PQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Feb 2023 02:07:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59125

Hi All

If the imx8mp encoder is fully backward compatible with the imx8mm=20
encoder, then
PLATFORM:mx8mp-nxp-bsp =3D "IMX8MP"
defined in imx-vpu-hantro_1.27.0.bb
to
PLATFORM:mx8mp-nxp-bsp =3D "IMX8MM"
in the bbappend file, the header file for hantro_h1 that the source code=20
for the encoder in libimxvpuapi2 refers to, and that is used when=20
linking It is confirmed that libhantro_h1.so is extracted under=20
resipe-sysroot of libimxvpuapi2.

I have not been able to confirm the compatibility of hantro_h1 and=20
hantro_vc8000e, so please use at your own risk.


 >> Create the libimxvpuapi2_%.bbappen file and add
 >> IMX_PLATFOEM:mx8mp-nxp-bsp =3D "imx8m"
 >>
 >
 > I think this is perhaps in right direction but I would suggest
 >
 > IMX_PLATFORM:mx8mp-nxp-bsp =3D "imx8mm"



On 2023/01/31 17:40, Khem Raj wrote:
> On Mon, Jan 30, 2023 at 6:34 PM Takayasu Ito <ito@lineo.co.jp> wrote:
>>
>> Hi  Nikita
>>
>> The problem is that in the imx-vpu-hantro recipe, the encoder library,
>> libhantro_h1.so, is not installed for mx8mp, but is installed for mx8m=
m.
>>
>> In the libimxvpuapi2 recipe, imx8mp specifies imx8mm in IMX_PLATFORM.
>> Therefore, the _encoder variable used in the waf wsctipt file is set t=
o
>> true, so a check is made for the presence of hantro_h1, resulting in a=
n
>> error.
>> At this time, libimxvpuapi2 support for imx8m is imx8m and imx8mm, so =
by
>> changing the setting to one for imx8m, which does not use a hardware
>> encoder, the build for imx8mp will pass.
>>
>> Create the libimxvpuapi2_%.bbappen file and add
>> IMX_PLATFOEM:mx8mp-nxp-bsp =3D "imx8m"
>>
>=20
> I think this is perhaps in right direction but I would suggest
>=20
> IMX_PLATFORM:mx8mp-nxp-bsp =3D "imx8mm"
>=20
>>
>>
>> Translated with www.DeepL.com/Translator (free version)
>> On 2023/01/30 20:19, Nikita Gupta wrote:
>>> Hello Takayasu
>>> Thanks for your suggestion,  but after implementing i am facing same
>>> thing (see attached image).
>>>
>>> Regards
>>> Nikita Gupta
>>>
>>> On Fri, 27 Jan 2023 at 17:55, Takayasu Ito <ito@lineo.co.jp
>>> <mailto:ito@lineo.co.jp>> wrote:
>>>
>>>      Hi Nikita
>>>
>>>        > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins=
-base
>>>      gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>>>
>>>      If you do not put a space after the double quotation marks, the
>>>      package names before and after will be attached to each other
>>>      during the merge.
>>>
>>>      See
>>>      https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bi=
tbake-user-manual-metadata.html#appending-and-prepending-override-style-s=
yntax <https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitb=
ake-user-manual-metadata.html#appending-and-prepending-override-style-syn=
tax>
>>>
>>>      On 2023/01/27 20:48, Nikita Gupta wrote:
>>>       > Hello List,
>>>       >
>>>       > As i earlier mentioned that i want to do some customisation i=
n
>>>      local.conf by adding few pkgs (below).
>>>       > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-=
base
>>>      gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>>>       > gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap
>>>      imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plug=
in"
>>>       > LICENSE_FLAGS_ACCEPTED =3D " commercial"
>>>       > IMAGE_INSTALL:append =3D "kernel-devsrc"
>>>       > IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server
>>>      gst-variable-rtsp-server"
>>>       > IMAGE_INSTALL:append =3D " gtk+3"
>>>       > CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
>>>      libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-=
dev
>>>       > libopencv-ml-dev"
>>>       > #LICENSE_FLAGS_WHITELIST =3D " commercial"
>>>       > IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
>>>       >   and iafter bitbake m getting below errors.
>>>       >
>>>       > nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitb=
ake
>>>      imx-image-full*
>>>       > Loading cache: 100%
>>>      |###############################################################=
###########################################|
>>>       > Time: 0:00:01
>>>       > Loaded 4736 entries from dependency cache.
>>>       > Parsing recipes: 100%
>>>      |###############################################################=
#########################################|
>>>       > Time: 0:00:02
>>>       > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4=
738
>>>      targets, 262 skipped, 3 masked, 0 errors.
>>>       > NOTE: Resolving any missing task queue dependencies
>>>       > ERROR: Nothing RPROVIDES
>>>      'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' (but
>>>       >
>>>      /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynam=
ic-layers/qt6-layer/recipes-fsl/images/imx-image-full.bb <http://imx-imag=
e-full.bb>
>>>       > <http://imx-image-full.bb <http://imx-image-full.bb>> RDEPEND=
S on
>>>      or otherwise requires it)
>>>       > NOTE: Runtime target
>>>      'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server' is
>>>      unbuildable, removing...
>>>       > Missing or unbuildable dependency chain was:
>>>      ['imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>>>       > ERROR: Required build target 'imx-image-full' has no buildabl=
e
>>>      providers.
>>>       > Missing or unbuildable dependency chain was: ['imx-image-full=
',
>>>      'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>>>       >
>>>       > Summary: There were 2 ERROR messages, returning a non-zero ex=
it code.
>>>       >
>>>       > These packages are needed i can not remove So please help me =
what
>>>      can i do in this.
>>>       >
>>>       > Thanks in Advance.
>>>       >
>>>       > On Fri, 27 Jan 2023 at 17:00, Nikita Gupta
>>>      <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>>>      <mailto:nikitagupta2509@gmail.com
>>>      <mailto:nikitagupta2509@gmail.com>>> wrote:
>>>       >
>>>       >     Hello Alex
>>>       >
>>>       >     When i run bitbake libimxvpuapi2 and it shows below error
>>>      (images attached).
>>>       >     Can you please tell me that is "libimxvpuapi2" compatible
>>>      with imx8mplus board?
>>>       >
>>>       >     Thanks in Advance
>>>       >
>>>       >     On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin
>>>      <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
>>>      <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>=
 wrote:
>>>       >
>>>       >         The screenshot indicates the problem originates in
>>>      libimxvpuapi2
>>>       >         recipe. So you should get more information by running
>>>      'bitbake
>>>       >         libimxvpuapi2'.
>>>       >
>>>       >         Alex
>>>       >
>>>       >         On Fri, 27 Jan 2023 at 07:46, Nikita Gupta
>>>      <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>>>      <mailto:nikitagupta2509@gmail.com
>>>      <mailto:nikitagupta2509@gmail.com>>> wrote:
>>>       >          >
>>>       >          > Hello Alexander
>>>       >          >
>>>       >          > I am not getting your query . Can u please explain
>>>      your question?
>>>       >          >
>>>       >          > Regards
>>>       >          > Nikita Gupta
>>>       >          >
>>>       >          > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin
>>>      <alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>
>>>      <mailto:alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>>=
 wrote:
>>>       >          >>
>>>       >          >> What happens if you bitbake libimx=E2=80=A6 thing=
y directly?
>>>       >          >>
>>>       >          >> Alex
>>>       >          >>
>>>       >          >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta
>>>      <nikitagupta2509@gmail.com <mailto:nikitagupta2509@gmail.com>
>>>      <mailto:nikitagupta2509@gmail.com
>>>      <mailto:nikitagupta2509@gmail.com>>> wrote:
>>>       >          >>>
>>>       >          >>> Hello list,
>>>       >          >>>
>>>       >          >>> I was just making image for imx8mplus by adding =
few
>>>      pkgs in my local.conf but encountered few errors so i am here
>>>       >         for your help.
>>>       >          >>> I added below pkgs in my local.conf file
>>>       >          >>>
>>>       >          >>> IMAGE_INSTALL:append =3D "gstreamer1.0
>>>      gstreamer1.0-plugins-base gstreamer1.0-plugins-good
>>>      gstreamer1.0-plugins-bad
>>>       >         gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpu=
wrap
>>>      imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
>>>       >         imx-gst1.0-plugin"
>>>       >          >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>>>       >          >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>>>       >          >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-ser=
ver
>>>      gst-variable-rtsp-server"
>>>       >          >>> IMAGE_INSTALL:append =3D " gtk+3"
>>>       >          >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv
>>>      libopencv-core-dev libopencv-highgui-dev libopencv-imgproc-dev
>>>       >         libopencv-objdetect-dev libopencv-ml-dev"
>>>       >          >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>>>       >          >>>
>>>       >          >>> So my local.conf file now looks like this
>>>       >          >>> So i am getting below error after baking my reci=
pe (
>>>      Attached image).
>>>       >          >>>
>>>       >          >>> Please tell what should I need to do to resolve =
this.
>>>       >          >>>
>>>       >          >>> Thanks in advance
>>>       >          >>>
>>>       >          >>>
>>>       >          >>>
>>>       >
>>>       >
>>>       >
>>>       >
>>>       >
>>>
>>>      --
>>>      Takayasu Ito
>>>      Solution Department, Lineo Solutions, Inc.
>>>      https://www.lineo.co.jp/english/ <https://www.lineo.co.jp/englis=
h/>
>>>      Email: ito@lineo.co.jp <mailto:ito@lineo.co.jp>
>>>      Yocto Project Ambassador
>>>
>>
>> --
>> Takayasu Ito
>> Yocto Project Ambassador
>> Solution Department Lineo Solutions, Inc.
>> https://www.lineo.co.jp/english/
>> Email: ito@lineo.co.jp
>>
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59116): https://lists.yoctoproject.org/g/yocto/mes=
sage/59116
>> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/3617373
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ito@lineo.c=
o.jp]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

--=20
Takayasu Ito
Yocto Project Ambassador
Solution Department Lineo Solutions, Inc.
https://www.lineo.co.jp/english/
Email: ito@lineo.co.jp


