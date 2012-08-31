Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C9DBE00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:32:16 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 31 Aug 2012 13:32:15 -0700
Received: by obbtb18 with SMTP id tb18so8093549obb.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:32:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=RVBkK44/y5/sWEho6Jkmf8V4haWrFqs64MymtYbJpmI=;
	b=k8LSMm4NdWZ3DFTcsJMb9aGFz2HZsJfQjBdrh8vClCAq79Qy27NeNI5JXcR0soKaTg
	EjGjexYscfJuUMj7l5meoJ6t4xlZcD/k9jo2uX7IiQbnqgdnNm9gNHm5g4UaMMAl/D7A
	DOTUNQghI3kJQQeFthab6gWYP5ECIBkIxZnX8raJ7CJJq6p+4aXqqL+LBa9u+NHtSo2c
	3QEuSkiSQCRqFPXxq/QBXFeXejAyoFAPFdN2jt/GlQMZ1cOx6TUV45sQPkGIP394vJiH
	aByRgTl/bmI+YevcFygNh7EEi19DAYc/JMEnxXoQ53qSNoUnSV0QlLezQrxQNXWeFUhs
	PRkg==
Received: by 10.60.29.72 with SMTP id i8mr8878026oeh.26.1346445135071; Fri, 31
	Aug 2012 13:32:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Fri, 31 Aug 2012 13:31:54 -0700 (PDT)
In-Reply-To: <50411C77.5080504@gmail.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
	<CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
	<CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
	<5040FCFD.4070409@gmail.com>
	<CAJTo0LYcTE7WRj-bu4nBn_psLJ6m++xmmJaUjK5sH48rkfEX6w@mail.gmail.com>
	<50411C77.5080504@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2012 21:31:54 +0100
Message-ID: <CAJTo0LZ0i2U3yp-=DX3eQuQLS=vM9eWX9BxT6p2iwHr0JGZV8w@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQlHwSRt1z7bCkMTT4QYDgVuLxRz+lDEOFK1IiKdX5hR0qUMO81/WO3gdDj165uHjGJl5tjy
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
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
X-List-Received-Date: Fri, 31 Aug 2012 20:32:16 -0000
Content-Type: text/plain; charset=UTF-8

On 31 August 2012 21:20, Jim Abernathy <jfabernathy@gmail.com> wrote:
> the firmware I need must not be in the Denzil for Cedartrail BSP. It built
> fine with the DISTRO_EXTRA_RDEPENDS added, but both the Intel and Realtek
> cards can't load the firmware.

Entirely possible.  Either steal the latest firmware package from
oe-core master, or grab the files you need from
http://git.kernel.org/?p=linux/kernel/git/dwmw2/linux-firmware.git;a=tree
directly and put them in /lib/firmware/ yourself, building your own
package when you have it working.

Ross

