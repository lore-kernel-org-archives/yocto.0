Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2156E0070B; Mon, 19 Jan 2015 04:58:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE4FE004F2
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 04:58:25 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56270944"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Jan 2015 20:54:56 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0JCvksc012067;
	Mon, 19 Jan 2015 20:57:46 +0800
Received: from Fedora (10.167.226.40) by G08CNEXCHPEKD01.g08.fujitsu.local
	(10.167.33.89) with Microsoft SMTP Server id 14.3.181.6;
	Mon, 19 Jan 2015 20:58:29 +0800
Date: Mon, 19 Jan 2015 20:57:58 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Message-ID: <20150119205758.1ff97d78@Fedora>
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D77B0BA@SESTOEX04.enea.se>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D77B0BA@SESTOEX04.enea.se>
Organization: FNST
X-Mailer: Claws Mail 3.9.3 (GTK+ 2.24.22; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 0/2] cluster: Fix some error and format
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
X-List-Received-Date: Mon, 19 Jan 2015 12:58:29 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Mon, 19 Jan 2015 11:32:35 +0000
Alexandru Vaduva <Alexandru.Vaduva@enea.com> wrote:

> Does this fix the error I encounter when building the package.
> The log is attached to this email and is also available in the bugzilla
> issue: https://bugzilla.yoctoproject.org/show_bug.cgi?id=7176

Actually no. This patch use the kernel source in bitbake world instead of
that on the host. This error only appeared on my build enviroment. 

But your error is to build openldap, not cluster.



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Qian Lei Sent: Monday, January 19, 2015 12:08 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and format
> 
> Use KERNEL_SRC instead of hardcode path in configure. Also fix license format.
> 
> *** BLURB HERE ***
> 
> Qian Lei (2):
>   cluster: Fix license format
>   cluster: Add a patch to fix the path of kernel source
> 
>  .../cluster/0001-Fix-the-kernel-source-patch.patch | 38
> ++++++++++++++++++++++ .../recipes-cgl/cluster/cluster_3.2.0.bb           |
> 5 +-- 2 files changed, 41 insertions(+), 2 deletions(-)  create mode 100644
> meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch
> 
> --
> 1.8.3.1
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Qian Lei

