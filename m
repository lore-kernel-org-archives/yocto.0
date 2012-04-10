Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D075E01363
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 05:44:48 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so3744196qcs.35
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 05:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Hnse8o33OGdsDxAOKwe6/dS60nYnRjJuqynm/zshGvg=;
	b=tqWh2WCPAn/2sjj9zOOUiUQ5RSBAgrPZ5DPurRgWSiiQScML6bA65/WPPnF2/q+kDC
	JuGmPUEnO9mu3Ny0pTruG3LCn+4RAu+HWEWRJczG+R3yzS1v7duUZRljS5+Ux+WsA4yc
	trNXOVjzxHFKh3fLC+MjpC2Ca+9F+M1ewsfZnRgxTtdaEFR43nA6HFZsIlgVrgqiVljW
	qh3pjORKDjArsjJc6i54VWw7bjIyHvFbt8cb+/4bYtQweJPzK4vFuYcM8/DPiPmCpJEn
	mxVxVNyBmE3RVntCjCm9Ts4dl0XwmhyS7K4QSbxnefnOfQpAE/b+3HMAqtC7/BanLXuP
	pCfg==
Received: by 10.224.209.4 with SMTP id ge4mr13923543qab.12.1334061887749;
	Tue, 10 Apr 2012 05:44:47 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id dm8sm30398557qab.18.2012.04.10.05.44.46
	(version=SSLv3 cipher=OTHER); Tue, 10 Apr 2012 05:44:46 -0700 (PDT)
Message-ID: <4F842B3D.2070705@gmail.com>
Date: Tue, 10 Apr 2012 08:44:45 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F834792.20402@gmail.com> <4F835F6B.3010608@linux.intel.com>
In-Reply-To: <4F835F6B.3010608@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build error on core-image-sato-sdk
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
X-List-Received-Date: Tue, 10 Apr 2012 12:44:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2012 06:15 PM, Darren Hart wrote:
>
> On 04/09/2012 01:33 PM, jfabernathy wrote:
>> at the end of the build of core-image-sato-sdk I got the following
>> error.  I'm using the edison branch with the latest changes and also
>> building the meta-cedartrail.  I had previously built core-image-sato
>> successfully with this setup.
>>
>> Any ideas?
>>
>> ERROR: Function 'build_boot_bin' failed (see
>> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /build/cdv-edison/tmp/work/cedartrail-poky-linux/core-image-sato-sdk-1.0-r0/temp/log.do_bootimg.25810
>> Log data follows:
>> | mkdosfs: seek failed
> Interesting.
>
> Can you provide the "OE Build Configuration" blob that prints at the
> start of the build - I'm mostly interested in your commit IDs for.
OE Build Configuration:
BB_VERSION        = "1.13.3"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "cedartrail"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1.1"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto        = "edison:0fbd6a161576b2cafa8583adde0ffb15347c884a"
meta-cedartrail   = "edison:072c6e99616c25c31521e05560433c67fb2a0292"
meta-jfa          = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks

> Also, please include the HEAD of your poky edison tree.
Not sure what git command you want, but here is the git show:

jim@ubuntu-x64:~/poky$ git show edison
commit 0fbd6a161576b2cafa8583adde0ffb15347c884a
Author: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Date:   Wed Mar 14 15:49:33 2012 -0700

     poky.conf: Bumping SKD_VERSION

     SDK_VERSION needs a bump for 1.1.1 release

     Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>

diff --git a/meta-yocto/conf/distro/poky.conf 
b/meta-yocto/conf/distro/poky.conf
index b7c167d..accbb26 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -2,7 +2,7 @@ DISTRO = "poky"
  DISTRO_NAME = "Yocto (Built by Poky 6.0.1)"
  DISTRO_VERSION = "1.1.1"
  SDK_VENDOR = "-pokysdk"
-SDK_VERSION := 
"${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
+SDK_VERSION := "${DISTRO_VERSION}"

  MAINTAINER = "Poky <poky@yoctoproject.org>"

> Thanks,
>


