Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 505F8E007C2; Wed, 19 Nov 2014 17:52:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Nov 2014 17:52:12 PST
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDDFE0071C
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 17:52:11 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="43695997"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Nov 2014 09:47:51 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sAK1onUn031133;
	Thu, 20 Nov 2014 09:50:49 +0800
Received: from Fedora (10.167.226.40) by G08CNEXCHPEKD03.g08.fujitsu.local
	(10.167.33.89) with Microsoft SMTP Server id 14.3.181.6;
	Thu, 20 Nov 2014 09:51:08 +0800
Date: Thu, 20 Nov 2014 09:51:03 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Message-ID: <20141120095103.2f61ea12@Fedora>
In-Reply-To: <20141119205646.GL6216@mentor.com>
References: <1416382491-11239-1-git-send-email-qianl.fnst@cn.fujitsu.com>
	<20141119205646.GL6216@mentor.com>
Organization: FNST
X-Mailer: Claws Mail 3.9.3 (GTK+ 2.24.22; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Re: [oe] [meta-selinux][PATCH] ustr: Change the SRC_URI to upstream and add a new patch
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
X-List-Received-Date: Thu, 20 Nov 2014 01:52:14 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Wed, 19 Nov 2014 15:56:47 -0500
Joe MacDonald <Joe_MacDonald@mentor.com> wrote:

> Thanks for the submission.  Just a couple of comments.
> 
> [[oe] [meta-selinux][PATCH] ustr: Change the SRC_URI to upstream and add a
> new patch] On 14.11.19 (Wed 15:34) Qian Lei wrote:
> 
> > Official upstream is still Ok, using it first.
> > Add a new patch which is applied in Fedora20
> 
> As these are two unrelated issues, I think two patches would've been
> appropriate with 1/2 being the one that updates the SRC_URI and 2/2
> being the c99 patch.
> 
> You should also provide an upstream-status for the C99 patch.  As you
> say it came from Fedora, odds are it is already submitted upstream, so
> 'pending' could be appropriate here, but I don't know.
> 
> Finally, meta-selinux patches should go to yocto@yoctoproject.org (cc'd
> here), not the openembedded-dev@ list.
> 
> I'm fine with making the changes I described above or you can send out a
> new version of the patch/patches if you like.  I won't do anything with
> it before tomorrow, either way, to give everyone time to have a look.
> 
> -J.

Thanks for your reply.It really help me a lot. I'll take your advice and send a
new version of patches to yocto soon.

Qian Lei

