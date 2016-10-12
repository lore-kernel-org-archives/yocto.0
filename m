Return-Path: <Mark.Asselstine@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CDDBE00CEC; Wed, 12 Oct 2016 08:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C93FFE00CBB
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 08:04:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9CF3jAE008792
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Oct 2016 08:03:45 -0700 (PDT)
Received: from super-penguin.localnet (128.224.22.124) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Wed, 12 Oct 2016 08:03:44 -0700
From: Mark Asselstine <mark.asselstine@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Oct 2016 11:03:43 -0400
Message-ID: <1742113.CE0FQBtZUY@super-penguin>
Organization: Wind River Systems Inc.
User-Agent: KMail/5.2.3 (Linux/4.8.0-21-generic; KDE/5.26.0; x86_64; ; )
In-Reply-To: <d47350d4-c126-48ae-7286-2a602ad8c9d2@evosoft.com>
References: <d47350d4-c126-48ae-7286-2a602ad8c9d2@evosoft.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.22.124]
Subject: Re: yocto - linaro's lava integration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: mark.asselstine@windriver.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Oct 2016 15:04:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, October 10, 2016 12:23:07 PM EDT alfonso wrote:
> Hello everyone,
> 
> I'm trying to integrate the testing of the resulting yocto images using
> Linaro's LAVA project.
> 
> For now I am only using qemux86 images.
> 
> Now, I am quite a newbie in both projects and maybe in general on the
> subject of images so I might be asking the wrong questions.
> 
> So far, to test a qemu image using LAVA it is required a .img file. That
> would be the simplest configuration. On the other hand, my yocto project
> produces a .bin kernel file + .ext4 filesystem file. I don't seem to
> find a proper configuration in LAVA for .bin + .ext4 file testing. I
> presume there is a way to configure yocto to produce a .img file out of
> these two guys but I don't seem to find how.
> 
> Would anyone have a recommendation?

We have been using LAVA to test our Yocto based product for about 1 1/2years 
now using the produced .ext[34] and bzImage produced from a typical Yocto 
build. We have been using LAVA 1 however and I am only now starting to move to 
the latest LAVA 2. We have also been using hardware targets and not qemu but 
that is overall inconsequential.

Since our move to LAVA 2 is in progress I can't currently give you a step by 
step guide to accomplishing this. Let me look quickly today to see if the 
existing definition of the qemu device type will allow for specifying a disk 
image and kernel. If not then it either needs to be added or a new device type 
created with allows it. On the bright side the LAVA folks have done a good job 
about the layout of their code so jumping in to do this may seem to be a big 
hurdle but once you jump in you will find most things where you would expect 
them to be.

Alternatively you could use either a chroot or VM to update the .ext4 image 
with a kernel and grub.

Anyways, sorry for sparse information. Again if you give me some time I can 
provide you with more details. But definitely go ahead and dig in, you will 
find that what you want to do is possible.

Mark Asselstine






> 
> Thanks in advance for your help :)
> 
> Best,
> Alfonso



