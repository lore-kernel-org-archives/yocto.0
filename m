Return-Path: <gizero@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F28E1E0059A
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 05:46:00 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so1036197qcs.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 05:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=DwUrMvcIPd1mZTTNBKYVdseusGYYp3X7XNmQgo2P6KM=;
	b=amY2b8z8qAx+M5LqVXBtneclzljU6/ByhY/OiZ5wz6bR9NHYgw9lxLzIlhLR28PKru
	QeZGp7+uczjcr5HON8tb51OrZEcklBHJkYvtMzyUINnVcQA0iA6+ju3cybN5fH6cgH7J
	I42u45Go3KV4AdDLESA/9VorVLD3iNQ4Z5AF0eyDycriiWcSBFrxLOsf42yy7uWssByW
	Au/0RetMJKxAr3vdgsZBYTi/TbeJms7TUGVSFrmElwi96Qg8iyUwEuspMPiqL3KFcJQF
	9mTUdWc5Mw14G35di/sCGtUQuIJ+x+0TfW6dFSnfxoseQ6EmvJEigZBINcr9OTKVL/FX
	dhAQ==
MIME-Version: 1.0
Received: by 10.224.218.195 with SMTP id hr3mr2920088qab.26.1333197960283;
	Sat, 31 Mar 2012 05:46:00 -0700 (PDT)
Received: by 10.229.157.199 with HTTP; Sat, 31 Mar 2012 05:46:00 -0700 (PDT)
In-Reply-To: <4F75EB5C.3020909@windriver.com>
References: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
	<4F75EB5C.3020909@windriver.com>
Date: Sat, 31 Mar 2012 14:46:00 +0200
Message-ID: <CAC+thW2r0=WFWV=xt3SNpmrxUByunmvhfA5P+Ynq_mqSgdoDVg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Suspicious warnings while beta testing yocto 1.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Mar 2012 12:46:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bruce,

On Fri, Mar 30, 2012 at 7:20 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 12-03-30 01:18 PM, Andrea Galbusera wrote:
>>
>> While beta testing yocto 1.2 I'm building for beagleboard with:
>>
>> OE Build Configuration:
>> BB_VERSION =A0 =A0 =A0 =A0=3D "1.15.1"
>> TARGET_ARCH =A0 =A0 =A0 =3D "arm"
>> TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"
>> MACHINE =A0 =A0 =A0 =A0 =A0 =3D "beagleboard"
>> DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
>> DISTRO_VERSION =A0 =A0=3D "1.1+snapshot-20120330"
>> TUNE_FEATURES =A0 =A0 =3D "armv7a vfp neon cortexa8"
>> TARGET_FPU =A0 =A0 =A0 =A0=3D "vfp-neon"
>> meta
>> meta-yocto =A0 =A0 =A0 =A0=3D "<unknown>:<unknown>"
>>
>> I see warnings complaining that some options set by the BSP are not
>> valid for the kernel being built. This is the first time I noticed and
>> it's confusing me. After some search I find a past conversation where
>> it was suggested that warnings like this for a Yocto maintained BSP
>> should be considered bugs. Can anyone explain this? Build is
>> completing successfully. Not yet tested the kernel on actual hardware.
>> Later I will see if something similar also happens in edison not.
>
>
> There are a few outstanding items for 1.2 as part of M4 .. one of
> them is squashing the remaining configuration values that are
> causing warnings.

Ok, thanks! Ignoring for now...


> Cheers,
>
> Bruce
>
>>
>> Here is the log:
>>
>> This BSP sets 15 invalid/obsolete kernel options.
>> These config options are not offered anywhere within this kernel.
>> The full list can be found in your workspace at:
>>
>> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/be=
agleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514=
1096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta=
/cfg/yocto/standard/beagleboard/invalid.cfg
>>
>> This BSP sets 50 kernel options that are possibly non-hardware related.
>> The full list can be found in your workspace at:
>>
>> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/be=
agleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514=
1096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta=
/cfg/yocto/standard/beagleboard/specified_non_hdw.cfg
>>
>> WARNING: There were 12 hardware options requested that do not
>> =A0 =A0 =A0 =A0 =A0have a corresponding value present in the final ".con=
fig" file.
>> =A0 =A0 =A0 =A0 =A0This probably means you aren't getting the config you=
 wanted.
>> The full list can be found in your workspace at:
>>
>> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/be=
agleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b7514=
1096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta=
/cfg/yocto/standard/beagleboard/mismatch.cfg
>>
>> Waiting a second to make sure you get a chance to see this...
>>
>> If useful I can provide the list of options as per given log files.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

