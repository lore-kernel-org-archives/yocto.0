Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB7F8E00AA2; Wed, 22 Jun 2016 07:21:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81718E00A44
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:21:25 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160622142122641_0685;
	Wed, 22 Jun 2016 07:21:22 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=15214 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bFj3Y-000493-24; Wed, 22 Jun 2016 10:23:04 -0400
Date: Wed, 22 Jun 2016 10:20:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Daniel." <danielhilst@gmail.com>
In-Reply-To: <CAF3SDA56FGwK7inSaOxdr9s4gZMX6V65WzNmjmjafJkebT72YQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1606221017510.27720@localhost.localdomain>
References: <alpine.LFD.2.20.1606220556090.21955@localhost.localdomain>
	<CAF3SDA56FGwK7inSaOxdr9s4gZMX6V65WzNmjmjafJkebT72YQ@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there really an "INITRD_IMAGE" variable?
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
X-List-Received-Date: Wed, 22 Jun 2016 14:21:30 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 22 Jun 2016, Daniel. wrote:

> Well I'm in Daisy and I can see that variable, so I think that the
> documentation is out of date :)
>
> [geckos@csi24 yocto-daisy]$ find sources/ -name "*.bb*" -exec grep
> --color -H INITRD_IMAGE {} \;
> sources/poky/meta/recipes-extended/images/core-image-testmaster.bb:INITRD_IMAGE
> = "core-image-testmaster-initramfs"
> sources/poky/meta/classes/image-live.bbclass:INITRD_IMAGE ?=
> "core-image-minimal-initramfs"
> sources/poky/meta/classes/image-live.bbclass:INITRD ?=
> "${DEPLOY_DIR_IMAGE}/${INITRD_IMAGE}-${MACHINE}.cpio.gz"
> sources/poky/meta/classes/image-live.bbclass:do_bootimg[depends] +=
> "${INITRD_IMAGE}:do_rootfs"
> [geckos@csi24 yocto-daisy]$

  it looks like there was a shift from INITRD_IMAGE to one of
INITRD_IMAGE_VM or INITRD_IMAGE_LIVE on feb 24, 2016 in this commit in
oe-core:

commit e38c94d6bf83ed3ca7f046d9503e81b927487bf2
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Wed Feb 24 01:23:58 2016 -0800

    syslinux.bbclass: make vm and live can be built together

    * The vm image(hdddirect, vmdk, qcow2, vdi) and live image (hddimg, iso)
      couldn't be built together because the following vars settings are
      conflicted:
      - SYSLINUX_ROOT (/dev/sda2 vs /dev/ram0)
      - LABELS (boot vs boot install)
      - INITRD (None vs live install)
      - SYSLINUX_CFG (see above)
      Introduce new vars (SYSLINUX_ROOT_VM/_LIVE, the samilar to others) to
      make them can work together, now we can build all of them together:

      IMAGE_FSTYPES += "live iso hddimg hdddirect vmdk qcow2 vdi"

    * Use SYSLINUX_CFG rather than SYSLINUXCFG to keep align with others
      SYSLINUX vars.

    * The SYSLINUX_TIMEOUT had been set, but it didn't work since
      AUTO_SYSLINUXMENU wasn't set, this would cause confusions, so also set
      AUTO_SYSLINUXMENU.

    * Move SYSLINUX_PROMPT and SYSLINUX_TIMEOUT to syslinux.bbclass rather
      than in separate classes since they are the same.

    * Set SYSLINUX_TIMEOUT to 50 to have a unique timeout for syslinux.

    [YOCTO #9161]

    Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>

and i guess someone just didn't notice the remaining references to
INITRD_IMAGE.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


