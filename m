Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D995E01404
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 02:24:29 -0700 (PDT)
Received: by bkty5 with SMTP id y5so156994bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 02:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=97UwFlMpnR9WWGOUUtlsVXHCcse4w82ymBQ+SHBHufA=;
	b=XD4MFuvnJxSpuALTN6iRtqnFrrgl0bBohEAJVKmo5tKK+2ZpiQYV785ESVo7DyJeb1
	BWABshSEKjvIR7yQ4lr1xu8L1HnONY0DelANaVeou3PSebVBL03V3ac7iP3sKgCb5Fqc
	Vx3o3HfvC/mMVJAYjYlwB94RN74InPBzfVTw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=97UwFlMpnR9WWGOUUtlsVXHCcse4w82ymBQ+SHBHufA=;
	b=PYbx2jYxU73mnzVJVsWpp1RJmQtg65OJZq8p7t/puEtU79SmFAn1oo+aTPayE8bcEx
	jl12NNVBn0apRwQgfPPE/P7p/PCvlyqg1kG2Y/nx0O27KX2Y6nISKIwoUPSptpQf8R2R
	aLZQeahn+sYyaRNZWviLfwZ9CKmcW/hDYeSJyV379z+OsJQIYhlS6E/CayWGrgUZ1fgt
	++tNnjd9nrfmGkj4v56OCtl3Zv17svLXuzN7O1mTdt95/FDdhkZLjTym1XfSINGkDMKP
	TFPALNSWBejInys6LAKyGQYpN3gu0MgZiwT8GK76T/nx0VVps95IB0OcmSeHVfVGp/NR
	mZeQ==
Received: by 10.204.130.10 with SMTP id q10mr193898bks.90.1345713865685;
	Thu, 23 Aug 2012 02:24:25 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id he8sm4144892bkc.3.2012.08.23.02.24.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 02:24:24 -0700 (PDT)
Date: Thu, 23 Aug 2012 11:24:20 +0200
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120823111211.dc88b42c-eca6-4b9e-ad44-f26b84dfcdad.mhubig@imko.de>
Mail-Followup-To: Yocto Project Mailing List <yocto@yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQlUOL0GRycti5QmJQ8fta9p4YH7xqiUhw0uBKkvAfHS/gRFfUiIocEbOkUtLuwWGupvuWPx
Subject: Wrong ENTRYPOINT and LOADADDRESS in uImage
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
X-List-Received-Date: Thu, 23 Aug 2012 09:24:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi @all,

I have a customized Yocto-Linux Recipe in my BSP, and now I'm seeing that
the UBOOT_ENTRYPOINT and UBOOT_LOADADDRESS settings in my ${MACHINE}.conf
is not honored in the resulting uImage.

The relevant part of kernel.bbclass is in kernel_do_deploy():

| if test "x${KERNEL_IMAGETYPE}" = "xuImage" ; then 
|
|     if test -e arch/${ARCH}/boot/uImage ; then
|         cp arch/${ARCH}/boot/uImage ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
|
|     elif test -e arch/${ARCH}/boot/compressed/vmlinux ; then
| 	${OBJCOPY} -O binary -R .note -R .comment -S \
| 	    arch/${ARCH}/boot/compressed/vmlinux linux.bin
| 	uboot-mkimage -A ${ARCH} -O linux -T kernel -C none \
| 	    -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} \
| 	    -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin \
| 	    ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
| 	rm -f linux.bin
|
|     else
| 	${OBJCOPY} -O binary -R .note -R .comment -S vmlinux linux.bin
| 	rm -f linux.bin.gz
| 	gzip -9 linux.bin
| 	uboot-mkimage -A ${ARCH} -O linux -T kernel -C gzip \
| 	    -a ${UBOOT_ENTRYPOINT} -e ${UBOOT_ENTRYPOINT} \
| 	    -n "${DISTRO_NAME}/${PV}/${MACHINE}" -d linux.bin.gz \
| 	    ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
|         rm -f linux.bin.gz
|     fi
| fi

As you can easily see, if there is an "arch/${ARCH}/boot/uImage" present,
uboot-mkimage is not used to set the ENTRYPOINT and LOADADDRESS. So I'm
wondering who is setting these entries instead, and how do I adjust them?

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

