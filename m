Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54B4DE00C44; Mon, 14 Mar 2016 09:43:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00, RCVD_IN_BRBL_LASTEXT,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 478 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Mar 2016 09:43:26 PDT
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BA2E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 09:43:26 -0700 (PDT)
Received: from zama.noir.com (zama.noir.com [192.168.1.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 156DCE19E5;
	Mon, 14 Mar 2016 09:34:53 -0700 (PDT)
To: yocto@yoctoproject.org
References: <56E64947.5020606@mlbassoc.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <cdc27932-91ca-378d-1582-286b72cc3e7f@noir.com>
Date: Mon, 14 Mar 2016 09:34:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <56E64947.5020606@mlbassoc.com>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 16:43:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/13/16 22:16 , Gary Thomas wrote:
> I'd like to to some testing that qemu just doesn't seem up to
> so I attempted to build a live ISO per the documentation. I
> added these lines to local.conf:
>   IMAGE_FSTYPES_genericx86 += "live"
>   NOISO_genericx86 = "0"
>
> When I try to build core-image-base I get this error:
>   ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use 
> image live, hddimg or iso.
>   ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
>   ERROR: Failed to parse recipe: 
> /local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-initramfs.bb
>
> I'm using a recent Poky checkout 
> (d53413d3a8444c38a83ea37867c8af7754d8e702)
>
> Am I just doing something wrong here? I was following this section of 
> the mega-manual:
>
>   26.56. image-live.bbclass¶
>
>   The image-live class supports building "live" images.
>
>   Normally, you do not use this class directly. Instead, you add 
> "live" to IMAGE_FSTYPES.
>   For example, if you were building an ISO image, you would add "live" 
> to IMAGE_FSTYPES,
>   set the NOISO variable to "0" and the build system would use the 
> image-live class to
>   build the ISO image.
>
> I don't have any available hardware for this testing, so I thought
> I'd use VirtualBox.  Is this a reasonable approach?  I want to use
> a live ISO so I get a writable file system.  I tried just using the
> .hddimage but that doesn't boot with VirtualBox :-(
>
> To be clear, along with the additions above in local.conf, I tried:
>   $ MACHINE=genericx86 bitbake core-image-base
>
> Thanks for any ideas
You can boot the .hddimg on VirtualBox by first converting it to vdi, 
(or vmdk), using:

qemu-img convert -O vdi foo.hddimg foo.vdi

The vmdk doesn't seem to work for me on VMware, oddly.  And adding vmdk 
to IMAGE_FSTYPES doesn't seem to work either as it is apparently built 
from hdddirect, (no clue why that's distinct from hddimg but it doesn't 
boot for me).

--rich

