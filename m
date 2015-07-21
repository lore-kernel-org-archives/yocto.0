Return-Path: <thomas.petazzoni@free-electrons.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CFC7E00861; Tue, 21 Jul 2015 08:13:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [37.187.137.238 listed in list.dnswl.org]
X-Greylist: delayed 730 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jul 2015 08:13:51 PDT
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C7AE0071C
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:13:51 -0700 (PDT)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 43DB1293B; Tue, 21 Jul 2015 17:01:47 +0200 (CEST)
Received: from localhost (ip-152.net-81-220-60.lyon.rev.numericable.fr
	[81.220.60.152])
	by mail.free-electrons.com (Postfix) with ESMTPSA id E4FCE1F41;
	Tue, 21 Jul 2015 17:01:46 +0200 (CEST)
Date: Tue, 21 Jul 2015 17:01:38 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Message-ID: <20150721170138.2d28ca74@free-electrons.com>
In-Reply-To: <55AC903C.7040509@topic.nl>
References: <55A79757.8010704@mlbassoc.com>
	<55AC903C.7040509@topic.nl>
Organization: Free Electrons
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Tue, 21 Jul 2015 15:13:56 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Mike Looijmans,

On Mon, 20 Jul 2015 08:07:56 +0200, Mike Looijmans wrote:

> with NAND, you'd have to use a fault-tolerant filesystem to store the rootfs. 
> Dunno if it's possible to store a squashfs as a volume into ubi.

It is. See ubiblock,
http://www.linux-mtd.infradead.org/doc/ubi.html#L_ubiblock.

Thomas

-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

