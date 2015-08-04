Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC1D3E00AA2; Tue,  4 Aug 2015 09:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 857DEE009C5
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 09:55:04 -0700 (PDT)
Received: by pacgq8 with SMTP id gq8so12724722pac.3
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 09:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=lj+ZADiKNW3jf29CHE9QorCPieKiaTqzFeYnccoVMyc=;
	b=ZqZX6I1LLFzh1pSy4tpbp8nSp9fJQ93XcLuohobcss7UC7s0mIF+1o5gusabot7kRR
	Zja4bVBl9GJFKsMPVPodRYQTZ8MW1fygwaRPli61KvXjd+JRd83By0R/znT/YqSi4WhB
	j3dkqIEekk0/IaAm07sXnJlqZ2vHgy90ZquzT0nFaSmMPjXEcZ6ZSpm26G+LMlIMfX+V
	w15hcVq47ECVvq1yKnr2tfui+/1PlxLjen40szQVpGw3Mpr3KmXpFsCkaolxQpLv+RKY
	0qu9IsfBUj3i9nrRIQK4UhQXXyVK0G8inx1yAfz+bSCSWE957tpQ4nLwBEIeXlgWtFXS
	klsA==
MIME-Version: 1.0
X-Received: by 10.68.224.71 with SMTP id ra7mr9741906pbc.69.1438707304516;
	Tue, 04 Aug 2015 09:55:04 -0700 (PDT)
Received: by 10.70.65.4 with HTTP; Tue, 4 Aug 2015 09:55:04 -0700 (PDT)
In-Reply-To: <55C0E581.6080603@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<CALbNGRSs3KQj4RYopow=+kwJXE-46yU-t5o-FWSbR0wqBoqESw@mail.gmail.com>
	<55C0E581.6080603@osg.samsung.com>
Date: Tue, 4 Aug 2015 18:55:04 +0200
Message-ID: <CALbNGRS+Ybpup6OCWh1rZZEk4TUXoBJEXt+GzHqXP60+TGOqZQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Tue, 04 Aug 2015 16:55:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 4, 2015 at 6:17 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Hello Andreas,
>
> On 08/03/2015 10:14 PM, Andreas M=C3=BCller wrote:
>> On Thu, Jul 30, 2015 at 10:34 AM, Javier Martinez Canillas
>> <javier@osg.samsung.com> wrote:
>>> From: Derek Foreman <derekf@osg.samsung.com>
>>>
>>> The Raspberry Pi boards can use one of two graphics stacks: The "userla=
nd"
>>> user-space driver or the VC4 drm/kms kernel driver. This patch allows t=
he
>>> user to choose if the VC4 driver has to be used instead and set the rig=
ht
>>> preferred providers for that case.
>>>
>>> Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
>>> [javier: Extend commit msg and made conditional instead removing userla=
nd]
>>> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>>>
>>> ---
>>>
>>>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>>>  conf/machine/include/rpi-default-versions.inc  | 2 +-
>>>  2 files changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/mach=
ine/include/rpi-default-providers.inc
>>> index ee3a3acce7bd..233f177bd16e 100644
>>> --- a/conf/machine/include/rpi-default-providers.inc
>>> +++ b/conf/machine/include/rpi-default-providers.inc
>>> @@ -3,8 +3,8 @@
>>>  PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"
>>>  PREFERRED_PROVIDER_u-boot =3D "u-boot-rpi"
>>>  PREFERRED_PROVIDER_virtual/xserver =3D "xserver-xorg"
>>> -PREFERRED_PROVIDER_virtual/egl ?=3D "userland"
>>> -PREFERRED_PROVIDER_virtual/libgles2 ?=3D "userland"
>>> -PREFERRED_PROVIDER_virtual/libgl ?=3D "mesa-gl"
>>> -PREFERRED_PROVIDER_virtual/mesa ?=3D "mesa-gl"
>>> +PREFERRED_PROVIDER_virtual/egl ?=3D "${@bb.utils.contains('DISTRO_FEAT=
URES', 'vc4-gfx', 'mesa', 'userland', d)}"
>>> +PREFERRED_PROVIDER_virtual/libgles2 ?=3D "${@bb.utils.contains('DISTRO=
_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
>>> +PREFERRED_PROVIDER_virtual/libgl ?=3D "${@bb.utils.contains('DISTRO_FE=
ATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>>> +PREFERRED_PROVIDER_virtual/mesa ?=3D "${@bb.utils.contains('DISTRO_FEA=
TURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>>>  PREFERRED_PROVIDER_jpeg =3D "jpeg"
>>> diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machi=
ne/include/rpi-default-versions.inc
>>> index bcf78281b6ff..c07ecac5924b 100644
>>> --- a/conf/machine/include/rpi-default-versions.inc
>>> +++ b/conf/machine/include/rpi-default-versions.inc
>>> @@ -1,3 +1,3 @@
>>>  # RaspberryPi BSP default versions
>>>
>>> -PREFERRED_VERSION_linux-raspberrypi ?=3D "3.18.%"
>>> +PREFERRED_VERSION_linux-raspberrypi ?=3D "${@bb.utils.contains("DISTRO=
_FEATURES", "vc4-gfx", "4.1.%", "3.18.%", d)}"
>>> --
>>> 2.4.3
>>>
>>> --
>> This patch series is an exciting starter but I think it is incomplete:
>> Without further configuration mesa simply builds swrast which is not
>> what we want. We need some '--with-gallium-drivers=3Dvc4' right? [1]
>>
>
> Yes, this is only the kernel changes. I'm testing with more patches on to=
p
> for mesa and libdrm [0]. I always find hard to draw a line between a BSP
> and a distro layer so I didn't know if I should include those in the seri=
es
> or not. But you are right and probably at least the GALLIUMDRIVERSTIZEN
> vc4 append should be in a mesa .bbappend. I'll do that when posting a v2
> once I get more feedback from others.
>
>> Andreas
>>
>> [1] http://dri.freedesktop.org/wiki/VC4/
>>
>
> [0]: https://github.com/martinezjavier/meta-raspberrypi/commits/rpi2-vc4-=
gfx
>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America
Another thing: With witch version of RasPi did you test. With V2 I get

[    1.342175] [drm:vc4_hdmi_bind] *ERROR* Failed to get ddc i2c adapter by=
 node
[    1.349359] vc4-drm soc:vc4@0x7e4c0000: failed to bind
3f902000.brcm,vc4-hdmi (ops vc4_hdmi_ops): -517

Andreas

