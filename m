Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB26E01633
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 08:14:06 -0800 (PST)
Received: from [172.56.22.86] (helo=[172.16.1.10])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1Vd0JJ-0000c9-SC; Sun, 03 Nov 2013 16:13:59 +0000
Message-ID: <5276763F.8070308@twobit.us>
Date: Sun, 03 Nov 2013 11:13:51 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 172.56.22.86
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-measured][PATCH 0/7] Update to latest oe-core/Poky
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
X-List-Received-Date: Sun, 03 Nov 2013 16:14:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Thanks Saul,

I'll dust off my vPro test hardware this week and get these rolled in.

Regards,
- Philip

On 11/01/2013 06:02 PM, Saul Wold wrote:
> This patch set updates to use the latest 3.10 kernel and adds the needed
> support, including switching form unionfs to aufs for the initramfs.  
> 
> Saul Wold (7):
>   trousers: Add libgcc as Runtime dependency
>   linux-yocto: Update to 3.10 and set as default
>   measured-image-bootimg: imstall mboot.c32 for iso
>   measured-image-bootimg: add libcom32
>   pcr-calc: Use site-packages instead of dist-packages
>   init-boot-tpm.sh: Use aufs instead of unionfs for 3.10 kernel
>   core-image-tpm: add kmod and udev-extraconf
> 
>  conf/distro/oe-measured.conf                                           | 2 +-
>  .../linux/{linux-yocto_3.8.bbappend => linux-yocto_3.10.bbappend}      | 0
>  recipes-tpm/images/core-image-tpm-initramfs.bb                         | 2 ++
>  recipes-tpm/images/core-image-tpm.inc                                  | 3 ++-
>  recipes-tpm/initrdscripts/files/init-boot-tpm.sh                       | 2 +-
>  recipes-tpm/trousers/trousers_0.3.10.bb                                | 2 ++
>  recipes-txt/images/measured-image-bootimg.inc                          | 2 ++
>  recipes-txt/pcr-calc/pcr-calc_git.bb                                   | 2 +-
>  8 files changed, 11 insertions(+), 4 deletions(-)
>  rename recipes-kernel/linux/{linux-yocto_3.8.bbappend => linux-yocto_3.10.bbappend} (100%)
> 


