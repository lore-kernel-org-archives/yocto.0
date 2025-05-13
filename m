Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E85EAC3ABC3
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 08:28:30 +0000 (UTC)
Subject: Disabling APM Events from boot #kernel #scarthgap #uboot #yocto
To: yocto@lists.yoctoproject.org
From: "Matt" <matt.holmes@zethon.com>
X-Originating-Location: Wembley, England, GB (109.176.155.130)
X-Originating-Platform: Linux Firefox 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 May 2025 01:28:29 -0700
Message-ID: <Ef5p.1747124909490032750.h2Rx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LU3nDo5cSnvQmsBZOsJI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 08:28:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65324

--LU3nDo5cSnvQmsBZOsJI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am currently trying to disable APM Events for my board's GPU since it has=
 a high performance impact on my program. I am using the ti-linux-staging 6=
.6 kernel with the u-boot-ti-staging u-boot on scarthgap, and the GPU drive=
r is from PowerVR using their Rogue architecture.

Currently I have tried editing the kernel configs to disable APM but the op=
tions seem to have no effect, even though the changes are visible on the bo=
ard itself.
I am also trying to edit the u-boot parameters of the pvrsrvkm module but n=
ot sure about where to make the change in the u-boot source.

Is there anything wrong with what I have tried with the kernel or is there =
any other method I can try to achieve this?

Many thanks,
Matt

Below is my fragment used to modify the kernel:

# SPI
CONFIG_SPI_OMAP24XX=3Dy
CONFIG_SPI_SLAVE=3Dy
CONFIG_SPI_SPIDEV=3Dy
# Disable energy saving mode for GPUs
CONFIG_ENERGY_MODEL=3Dn
CONFIG_SUSPEND=3Dn
CONFIG_WQ_POWER_EFFICIENT_DEFAULT=3Dn
# CONFIG_PM=3Dn # Currently breaks the am68
CONFIG_PM_SLEEP=3Dn
CONFIG_HIBERNATION=3Dn
CONFIG_CPU_PM=3Dn
CONFIG_CPU_IDLE=3Dn
CONFIG_ARCH_SUSPEND_POSSIBLE=3Dn
CONFIG_PM_CLK=3Dn # Doesn't work without CONFIG_PM=3Dn
CONFIG_PM_GENERIC_DOMAINS=3Dn
CONFIG_PM_GENERIC_DOMAINS_OF=3Dn
CONFIG_CPU_FREQ_GOV_POWERSAVE=3Dn
CONFIG_CPU_FREQ_GOV_CONSERVATIVE=3Dn
CONFIG_ARCH_HIBERNATION_POSSIBLE=3Dn
CONFIG_ARCH_SUSPEND_POSSIBLE=3Dn
CONFIG_ACPI=3Dn
CONFIG_APM_DO_ENABLE=3Dn

--LU3nDo5cSnvQmsBZOsJI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,<br /><br />I am currently trying to disable APM Events for my =
board's GPU since it has a high performance impact on my program. I am usin=
g the ti-linux-staging 6.6 kernel with the u-boot-ti-staging u-boot on scar=
thgap, and the GPU driver is from PowerVR using their Rogue architecture.</=
div>
<div>&nbsp;</div>
<div>Currently I have tried editing the kernel configs to disable APM but t=
he options seem to have no effect, even though the changes are visible on t=
he board itself.<br />I am also trying to edit the u-boot parameters of the=
 pvrsrvkm module but not sure about where to make the change in the u-boot =
source.<br /><br /></div>
<div>&nbsp;</div>
<div>Is there anything wrong with what I have tried with the kernel or is t=
here any other method I can try to achieve this?<br /><br />Many thanks,</d=
iv>
<div>Matt</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Below is my fragment used to modify the kernel:</div>
<div>
<div>&nbsp;</div>
<div># SPI<br />CONFIG_SPI_OMAP24XX=3Dy<br />CONFIG_SPI_SLAVE=3Dy<br />CONF=
IG_SPI_SPIDEV=3Dy</div>
<div># Disable energy saving mode for GPUs<br />CONFIG_ENERGY_MODEL=3Dn<br =
/>CONFIG_SUSPEND=3Dn<br />CONFIG_WQ_POWER_EFFICIENT_DEFAULT=3Dn<br /># CONF=
IG_PM=3Dn # Currently breaks the am68<br />CONFIG_PM_SLEEP=3Dn<br />CONFIG_=
HIBERNATION=3Dn<br />CONFIG_CPU_PM=3Dn<br />CONFIG_CPU_IDLE=3Dn</div>
<div>CONFIG_ARCH_SUSPEND_POSSIBLE=3Dn<br />CONFIG_PM_CLK=3Dn # Doesn't work=
 without CONFIG_PM=3Dn<br />CONFIG_PM_GENERIC_DOMAINS=3Dn<br />CONFIG_PM_GE=
NERIC_DOMAINS_OF=3Dn<br />CONFIG_CPU_FREQ_GOV_POWERSAVE=3Dn<br />CONFIG_CPU=
_FREQ_GOV_CONSERVATIVE=3Dn</div>
<div>CONFIG_ARCH_HIBERNATION_POSSIBLE=3Dn<br />CONFIG_ARCH_SUSPEND_POSSIBLE=
=3Dn</div>
<div>CONFIG_ACPI=3Dn<br />CONFIG_APM_DO_ENABLE=3Dn</div>
</div>

--LU3nDo5cSnvQmsBZOsJI--

