Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60282E007C4
	for <yocto@yoctoproject.org>; Thu, 26 Dec 2013 16:26:35 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id cc10so9109135wib.16
	for <yocto@yoctoproject.org>; Thu, 26 Dec 2013 16:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=nA1cqEtcGK72XrOXIS8dneYCSFTvuBG+I1Q3zVB3hiQ=;
	b=cpmdTgT7Tdfntx8mMPX4BuZcVKPxAGKHy3sKV3OE6VVpmLKF80QMiX9c4gx9UazPJZ
	Qz60/tgkACn96w5hr0fFQ50VHAH8GQe0jq/UVCi/LAfw9jzRNielPX+sPesKwldaE75+
	TreG82odGjMiGJomfm5cP74QSF3efgmZP+SH+hkqsb6n6GYKg6xg1zO8ILIopAHGD94h
	bx9PqllqBdy7CNk5y4Tj+JlmjHuhK6huTGeo4a16gz9IIlY/Xgcrwjlj2kQjcjVTX53D
	6Hwlg2rHaepwGXGPF9UQTKk0ihoviGWVP8ssERp/mQtjV+3fsr7y5xf8xbotoTUxJuge
	4H0g==
X-Received: by 10.180.160.166 with SMTP id xl6mr31093495wib.43.1388103994275; 
	Thu, 26 Dec 2013 16:26:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.24.170 with HTTP; Thu, 26 Dec 2013 16:26:14 -0800 (PST)
From: Insop Song <insop.song@gmail.com>
Date: Thu, 26 Dec 2013 16:26:14 -0800
Message-ID: <CACzyEJ-0d5wm7MytFrSmR42vMxjar6YP0=8TpD-LwoXd6qz2gg@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: package install in using INITSCRIPT_PARAMS
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
X-List-Received-Date: Fri, 27 Dec 2013 00:26:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I've use the following to set up SystemV init.d configuration and it
works fine for full root file system generation.

----------------------------------------------------------------
my example>

INITSCRIPT_NAME = "startwifi"
INITSCRIPT_PARAMS = "start 99 S ."

----------------------------------------------------------------

However, if I don't include the above application as part of the image
and later install it using RPM installation (busybox rpm), then
"/etc/rcS" is not set up on rpm installation.

I'd think that this should be set upon rpm installation as well.
What do you think?

Thank you,

Insop



My build env
-------------------------------------------------------------------
Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "powerpc-fsl_networking-linux"
MACHINE           = "b4860qds"
DISTRO            = "fsl-networking"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "m32 fpu-hard e6500 altivec"
TARGET_FPU        = "hard"
meta
meta-yocto
meta-yocto-bsp    = "(nobranch):5130199a19fd7410003001e99ca736699a350f10"
meta-fsl-ppc      = "(nobranch):77d0e8f5455830a813fa5a823e37da990eec3635"
meta-fsl-ppc-toolchain = "(nobranch):8ec94cec04527cb971c125b1ddd2c5375034d723"
meta-virtualization = "(nobranch):ad6df4f59cd7646f61db29e8fa51f878329d6f93"
meta-fsl-networking = "(nobranch):04ff616e1b6e97b7d9497adfe7b858d0e969135b"
meta-oe
meta-networking   = "(nobranch):7c8dd8f096b64a709175d37a08a4fb02ca263616"

