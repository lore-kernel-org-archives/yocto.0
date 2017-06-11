Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 297DAE00718; Sun, 11 Jun 2017 03:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA95BE00349
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 03:07:23 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v5BA7Ena003668
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Sun, 11 Jun 2017 11:07:15 +0100
Message-ID: <1497175634.6630.279.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>, "Hernandez, Alejandro"
	<alejandro.hernandez@intel.com>
Date: Sun, 11 Jun 2017 11:07:14 +0100
In-Reply-To: <20170609013019.GC21118@pek-khao-d1>
References: <1496947514-11876-1-git-send-email-bruce.ashfield@windriver.com>
	<20170609013019.GC21118@pek-khao-d1>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Sun, 11 Jun 2017 11:07:16 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] yocto-bsp: update reference BSPs to 4.1 latest
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
X-List-Received-Date: Sun, 11 Jun 2017 10:07:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-06-09 at 09:30 +0800, Kevin Hao wrote:
> On Thu, Jun 08, 2017 at 02:45:14PM -0400, Bruce Ashfield wrote:
> > 
> > The reference BSPs are lagging on their 4.1 SRCREVs, which means
> > -stable updates, and gcc-7 build fixes are missing.
> I have made a patch to update the SRCREVs for 4.1, 4.4, 4,9 and 4.10
> three weeks ago,
> but it seems not get merged. I just sent a ping for the merging.

The trouble is you and Alejandro send updates against the same file and
one invariably fails to apply. I've fixed it up and applied it but one
of you basing on the other would help with this.

Cheers,

Richard

