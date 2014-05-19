Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D4FE00B6C; Mon, 19 May 2014 06:48:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 408 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 May 2014 06:48:14 PDT
Received: from mail-out.m-online.net (unknown [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A89E00B66
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 06:48:14 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3gXLwj20mmz3hhYq;
	Mon, 19 May 2014 15:41:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3gXLwh4Yyrzbbkh;
	Mon, 19 May 2014 15:41:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 33wyMv91_MaN; Mon, 19 May 2014 15:41:10 +0200 (CEST)
X-Auth-Info: mqfu9FvqkvuBwgkxjUKxKm9pcMxLx1v+DBng9QMHVG4=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 19 May 2014 15:41:10 +0200 (CEST)
Message-ID: <537A09F5.2050809@denx.de>
Date: Mon, 19 May 2014 15:41:09 +0200
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Paul McGougan <PMcGougan@topcon.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<536CE9B4.6050303@windriver.com>
In-Reply-To: <536CE9B4.6050303@windriver.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 19 May 2014 13:48:20 -0000
X-Groupsio-MsgNum: 19698
Content-Type: multipart/mixed; boundary="------------000508000000020604000709"

--------------000508000000020604000709
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Paul,

sorry for late answer - I read only now you are talking about FIT.

On 09/05/2014 16:44, Bruce Ashfield wrote:
>>
>>  
>>
>> My first question is, is there a better place to be making the FIT image?
>>
> 
> It depends on if everything you need to construct the FIT image is
> in the kernel's build directory, or also available in the sysroot/deploy
> directories.
> 
> If you need kernel build artifacts, doing it in the bbappend (or a .inc,
> .bbclass, etc) of the kernel recipe is the right place.
> 

Indeed. This is what I did in a couple of projects. I added an
image_types_itb.bbclass to produce the FIT image. The IMAGE_FIT_ITS
variable contains the filename of the description file to be passed to
the mkimage tool, and can be overwritten by the image receipe.
Compressions are not needed for this image type, and I should be removed.

Is this the right place to post the patch ? Or should be addressed to
meta-oe ?

Best regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

--------------000508000000020604000709
Content-Type: text/x-patch;
 name="0001-meta-add-support-for-FIT-images.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-meta-add-support-for-FIT-images.patch"

From 0cb68067149657079cad88b029f04cddcadf613a Mon Sep 17 00:00:00 2001
From: Stefano Babic <sbabic@denx.de>
Date: Thu, 26 Sep 2013 17:21:00 +0200
Subject: [PATCH] meta: add support for FIT images

Signed-off-by: Stefano Babic <sbabic@denx.de>
---
 meta/classes/image_types_itb.bbclass | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 meta/classes/image_types_itb.bbclass

diff --git a/meta/classes/image_types_itb.bbclass b/meta/classes/image_types_itb.bbclass
new file mode 100644
index 0000000..1c43c79
--- /dev/null
+++ b/meta/classes/image_types_itb.bbclass
@@ -0,0 +1,25 @@
+inherit image_types kernel-arch
+
+oe_mkimage () {
+	cp ${IMAGE_FIT_ITS}  ${DEPLOY_DIR_IMAGE}/.
+
+	FIT_ITS=`basename ${IMAGE_FIT_ITS}`
+	mkimage -f ${FIT_ITS} ${DEPLOY_DIR_IMAGE}/$1.itb
+}
+
+COMPRESSIONTYPES += "gz.u-boot bz2.u-boot lzma.u-boot u-boot"
+
+COMPRESS_DEPENDS_u-boot = "u-boot-mkimage-native"
+COMPRESS_CMD_u-boot      = "oe_mkimage ${IMAGE_NAME}.rootfs.${type} none"
+
+COMPRESS_DEPENDS_gz.u-boot = "u-boot-mkimage-native"
+COMPRESS_CMD_gz.u-boot      = "${COMPRESS_CMD_gz}; oe_mkimage ${IMAGE_NAME}.rootfs.${type}.gz gzip"
+
+COMPRESS_DEPENDS_bz2.u-boot = "u-boot-mkimage-native"
+COMPRESS_CMD_bz2.u-boot      = "${COMPRESS_CMD_bz2}; oe_mkimage ${IMAGE_NAME}.rootfs.${type}.bz2 bzip2"
+
+COMPRESS_DEPENDS_lzma.u-boot = "u-boot-mkimage-native"
+COMPRESS_CMD_lzma.u-boot      = "${COMPRESS_CMD_lzma}; oe_mkimage ${IMAGE_NAME}.rootfs.${type}.lzma lzma"
+
+IMAGE_TYPES += "ext2.itb ext2.gz.itb ext2.bz2.itb ext2.lzma.itb ext3.gz.itb ext4.gz.itb"
+
-- 
1.9.1


--------------000508000000020604000709--
