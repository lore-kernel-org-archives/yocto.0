Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89FCAE0043B; Thu,  5 Jan 2017 06:36:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	UPPERCASE_50_75 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C79E003E4
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 06:36:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2017 06:36:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; d="scan'208";a="1079533020"
Received: from jlaako-lnx.fi.intel.com (HELO jlaako-lnx.fi.intel.com.)
	([10.237.72.67])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2017 06:36:23 -0800
From: Jussi Laako <jussi.laako@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jan 2017 16:35:59 +0200
Message-Id: <20170105143559.19780-2-jussi.laako@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170105143559.19780-1-jussi.laako@linux.intel.com>
References: <20170105143559.19780-1-jussi.laako@linux.intel.com>
Subject: yocto-kernel-cache: [PATCH] Update audio support v2
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
X-List-Received-Date: Thu, 05 Jan 2017 14:36:35 -0000

Updates audio support to work with modern audio hardware while dropping
some legacy parts.

Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
---
 cfg/sound.cfg | 145 +++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 134 insertions(+), 11 deletions(-)

diff --git a/cfg/sound.cfg b/cfg/sound.cfg
index d296ae7c..52794263 100644
--- a/cfg/sound.cfg
+++ b/cfg/sound.cfg
@@ -1,16 +1,139 @@
-CONFIG_SOUND_OSS_CORE=y
-CONFIG_SOUND_OSS_CORE_PRECLAIM=y
+CONFIG_SOUND=m
+# CONFIG_SOUND_OSS_CORE is not set
+CONFIG_SND=m
+CONFIG_SND_TIMER=m
+CONFIG_SND_HRTIMER=m
+CONFIG_SND_SEQ_HRTIMER_DEFAULT=y
+CONFIG_SND_PCM=m
+CONFIG_SND_COMPRESS_OFFLOAD=m
 CONFIG_SND_RAWMIDI=m
-CONFIG_SND_SEQUENCER=y
-CONFIG_SND_OSSEMUL=y
-CONFIG_SND_MIXER_OSS=y
-CONFIG_SND_PCM_OSS=y
-CONFIG_SND_PCM_OSS_PLUGINS=y
-CONFIG_SND_SEQUENCER_OSS=y
+CONFIG_SND_SEQUENCER=m
 CONFIG_SND_RAWMIDI_SEQ=m
-CONFIG_SND_AC97_CODEC=m
-CONFIG_SND_ENS1370=m
+# CONFIG_SND_MIXER_OSS is not set
+# CONFIG_SND_PCM_OSS is not set
+# CONFIG_SND_SEQUENCER_OSS is not set
+# CONFIG_SND_SUPPORT_OLD_API is not set
+CONFIG_SND_OPL3_LIB_SEQ=m
+CONFIG_SND_EMU10K1_SEQ=m
+CONFIG_SND_MPU401_UART=m
+CONFIG_SND_OPL3_LIB=m
+CONFIG_SND_ALOOP=m
+CONFIG_SND_AC97_POWER_SAVE=y
+CONFIG_SND_AC97_POWER_SAVE_DEFAULT=0
+CONFIG_SND_ATIIXP=m
+CONFIG_SND_ATIIXP_MODEM=m
+CONFIG_SND_CA0106=m
+CONFIG_SND_CMIPCI=m
+CONFIG_SND_OXYGEN_LIB=m
+CONFIG_SND_OXYGEN=m
+CONFIG_SND_CTXFI=m
+CONFIG_SND_EMU10K1=m
+CONFIG_SND_EMU10K1X=m
+# CONFIG_SND_ENS1370 is not set
+CONFIG_SND_HDSP=m
+CONFIG_SND_HDSPM=m
+CONFIG_SND_ICE1712=m
+CONFIG_SND_ICE1724=m
 CONFIG_SND_INTEL8X0=m
+CONFIG_SND_RME96=m
+CONFIG_SND_RME9652=m
+CONFIG_SND_VIRTUOSO=m
+CONFIG_SND_HDA_CODEC_VIA=m
+CONFIG_SND_SOC_AC97_BUS=y
+CONFIG_SND_SOC_COMPRESS=y
+CONFIG_SND_SOC_AMD_ACP=m
+CONFIG_SND_SST_MFLD_PLATFORM=m
+CONFIG_SND_SST_IPC=m
+CONFIG_SND_SST_IPC_ACPI=m
+CONFIG_SND_SOC_INTEL_SST_FIRMWARE=m
+CONFIG_SND_SOC_INTEL_HASWELL=m
+CONFIG_SND_SOC_INTEL_HASWELL_MACH=m
+CONFIG_SND_SOC_INTEL_BXT_DA7219_MAX98357A_MACH=m
+CONFIG_SND_SOC_INTEL_BXT_RT298_MACH=m
+CONFIG_SND_SOC_INTEL_BROADWELL_MACH=m
+CONFIG_SND_SOC_INTEL_BYTCR_RT5640_MACH=m
+CONFIG_SND_SOC_INTEL_BYTCR_RT5651_MACH=m
+CONFIG_SND_SOC_INTEL_CHT_BSW_RT5672_MACH=m
+CONFIG_SND_SOC_INTEL_CHT_BSW_RT5645_MACH=m
+CONFIG_SND_SOC_INTEL_CHT_BSW_MAX98090_TI_MACH=m
+CONFIG_SND_SOC_INTEL_SKL_NAU88L25_SSM4567_MACH=m
+CONFIG_SND_SOC_INTEL_SKL_NAU88L25_MAX98357A_MACH=m
+CONFIG_SND_SOC_AC97_CODEC=m
+CONFIG_SND_SOC_AK4104=m
+CONFIG_SND_SOC_AK4554=m
+CONFIG_SND_SOC_AK4613=m
+CONFIG_SND_SOC_AK4642=m
+CONFIG_SND_SOC_AK5386=m
+CONFIG_SND_SOC_ALC5623=m
+CONFIG_SND_SOC_CS35L32=m
+CONFIG_SND_SOC_CS35L33=m
+CONFIG_SND_SOC_CS42L51=m
+CONFIG_SND_SOC_CS42L51_I2C=m
+CONFIG_SND_SOC_CS42L52=m
+CONFIG_SND_SOC_CS42L56=m
+CONFIG_SND_SOC_CS42L73=m
+CONFIG_SND_SOC_CS4265=m
+CONFIG_SND_SOC_CS4270=m
+CONFIG_SND_SOC_CS4271=m
+CONFIG_SND_SOC_CS4271_I2C=m
+CONFIG_SND_SOC_CS4271_SPI=m
+CONFIG_SND_SOC_CS42XX8=m
+CONFIG_SND_SOC_CS42XX8_I2C=m
+CONFIG_SND_SOC_CS4349=m
+CONFIG_SND_SOC_CS53L30=m
+CONFIG_SND_SOC_DA7219=m
+CONFIG_SND_SOC_MAX98090=m
+CONFIG_SND_SOC_MAX98357A=m
+CONFIG_SND_SOC_PCM1681=m
+CONFIG_SND_SOC_PCM179X=m
+CONFIG_SND_SOC_PCM179X_I2C=m
+CONFIG_SND_SOC_PCM179X_SPI=m
+CONFIG_SND_SOC_PCM3168A=m
+CONFIG_SND_SOC_PCM3168A_I2C=m
+CONFIG_SND_SOC_PCM3168A_SPI=m
+CONFIG_SND_SOC_PCM512x=m
+CONFIG_SND_SOC_PCM512x_I2C=m
+CONFIG_SND_SOC_PCM512x_SPI=m
+CONFIG_SND_SOC_RL6231=m
+CONFIG_SND_SOC_RT298=m
+CONFIG_SND_SOC_RT5616=m
+CONFIG_SND_SOC_RT5631=m
+CONFIG_SND_SOC_RT5640=m
+CONFIG_SND_SOC_RT5645=m
+CONFIG_SND_SOC_RT5651=m
+CONFIG_SND_SOC_RT5670=m
+CONFIG_SND_SOC_SPDIF=m
+CONFIG_SND_SOC_SSM4567=m
+CONFIG_SND_SOC_TLV320AIC31XX=m
+CONFIG_SND_SOC_TLV320AIC3X=m
+CONFIG_SND_SOC_TS3A227E=m
+CONFIG_SND_SOC_WM8510=m
+CONFIG_SND_SOC_WM8523=m
+CONFIG_SND_SOC_WM8580=m
+CONFIG_SND_SOC_WM8711=m
+CONFIG_SND_SOC_WM8728=m
+CONFIG_SND_SOC_WM8731=m
+CONFIG_SND_SOC_WM8737=m
+CONFIG_SND_SOC_WM8741=m
+CONFIG_SND_SOC_WM8750=m
+CONFIG_SND_SOC_WM8753=m
+CONFIG_SND_SOC_WM8770=m
+CONFIG_SND_SOC_WM8776=m
+CONFIG_SND_SOC_WM8804=m
+CONFIG_SND_SOC_WM8804_I2C=m
+CONFIG_SND_SOC_WM8804_SPI=m
+CONFIG_SND_SOC_WM8903=m
+CONFIG_SND_SOC_WM8960=m
+CONFIG_SND_SOC_WM8962=m
+CONFIG_SND_SOC_WM8974=m
+CONFIG_SND_SOC_WM8978=m
+CONFIG_SND_SOC_WM8985=m
+CONFIG_SND_SOC_NAU8825=m
+CONFIG_SND_SOC_TPA6130A2=m
+CONFIG_SND_SIMPLE_CARD_UTILS=m
+CONFIG_SND_SIMPLE_CARD=m
 CONFIG_SND_USB=y
 CONFIG_SND_USB_AUDIO=m
-CONFIG_AC97_BUS=m
+CONFIG_SND_USB_USX2Y=m
+CONFIG_SND_USB_US122L=m
+CONFIG_SND_USB_HIFACE=m
-- 
2.11.0


