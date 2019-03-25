Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A135AE0097C; Mon, 25 Mar 2019 09:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 449 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Mar 2019 09:29:05 PDT
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81F7E00942
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 09:29:05 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 4F6DB2400E6
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 17:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1553530895; bh=mUbtt+1qVPPv+qq56w11C5HhH2ye5HdufnBh1liBFNM=;
	h=Date:From:To:Cc:Subject:From;
	b=HnDaBV6ro9i/XqcnEK/YqtDhIzQq748Pk2yODoix/UPIbbEpvPc5VzWiImHJghCG/
	OoDobj8L/2TNPEzHdIuw6ytzwd7gCFAFmm95bfNKwhC1PFRyL2nrzgniStxj967+PO
	mnFsDC7GIUmo1YpBkvF8bObrrDBnqS2JhPHztLD96jUQ+LgewpuP4HJQeVRkzdDiqm
	OEEBYqdWUhe5IQ7ueyFcuoDP21h3kSB+ozCHlXEZsXWcfgo1cYLctOGlfPKMmJ/+Yq
	ZMsTY/CxPYyKBGTe6mUUUOymeg2io2sSaq0Y/mNX3i9PibPkkPOuAS2L3bUv5a3OVZ
	AvG8eHMerQJyA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44Sff62t6Gz9rxM;
	Mon, 25 Mar 2019 17:21:34 +0100 (CET)
Date: Mon, 25 Mar 2019 17:21:33 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: jairo <jairo@futurasmus-knxlab.es>
Message-ID: <20190325172133.50597470@yaise-pc1>
In-Reply-To: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Mon, 25 Mar 2019 16:29:07 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

On Mon, 25 Mar 2019 16:01:37 +0100
jairo <jairo@futurasmus-knxlab.es> wrote:

> Hi all,
> 
> I want to make a system with a rescue partition.
> 
> What is the minimum to make a rescue image? Or how can it be done?
> 
> I use a board with a imx6 micro from phytec, and in the meta-yogurt
> layer there is a recipe called phytec-initramfs-image.bb that creates
> an image or partition with cpio.gz format of 11MB containing rootfs,
> can it be used That image as a rescue? If so, how do you copy a cpio
> partition in an UBI MTD system?

To create an initramfs rescue image (assuming that's what you would
want to do?) You need to tell yocto that there is a initramfs to be
built:

To your local.conf you can add

  # for initramfs-usage
  INITRAMFS_IMAGE = "rescue-image-initramfs"
  INITRAMFS_IMAGE_BUNDLE = "1"

and you'll to craete a corresponding .bb-file. There are example over
the internet if you search for it. I needed the following packages:

  PACKAGE_INSTALL = "packagegroup-core-boot \
                     ppp          \
                     bash         \
                     sshd         \
                     rauc         \
                     mtd-utils    \
  "

This gave me a initramfs of 25-30 MB and barebox wasnot able to
jump to the kernel so I had to patch.

After that you just need to add a partition for the initramfs and its
device-tree-blob (dtb) to the UBIFS and flash it and boot it.

You should, if you haven't already, come up with a complete strategy of
how to do your updates and upgrades using RAUC or another update-system.

best regards,
--
Patrick.




