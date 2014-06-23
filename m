Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B272AE0054C; Sun, 22 Jun 2014 23:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50770E00543
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:29:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5N6TD38029092
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:29:13 -0700 (PDT)
Received: from Pascal-MacBookPro.local (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Sun, 22 Jun 2014 23:29:12 -0700
Message-ID: <53A7C937.5000703@windriver.com>
Date: Mon, 23 Jun 2014 14:29:11 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1399879397.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1399879397.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140623142910958
Subject: Re: [meta-selinux][PATCH 0/2] initscripts/devpts.sh: fix context for /dev/pts
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
X-List-Received-Date: Mon, 23 Jun 2014 06:29:16 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-5-12 ÏÂÎç3:31, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> devpts use file_use_trans to allocate security contexts. As there are no
> range_trans rules for initrc_t mounting devpts, the security level of
> mountpoint will be derived from the initrc process, to be systemhigh
> (s15:c0.c1023), instead of expected systemlow(s0).
>      
> This will block login shells to search PTYs, so use restorecon to fix
> this.
> 
> The following changes since commit 368f65a475069ed384d82be09c2515fb765e22ec:
> 
>    initscripts/checkroot.sh: restore file contexts for /run (2014-05-09 08:59:54 -0400)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/fix-pts
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-pts
> 
> Wenzong Fan (2):
>    initscripts: add a local copy of devpts.sh
>    initscripts/devpts.sh: fix context for /dev/pts
> 
>   recipes-core/initscripts/initscripts/devpts.sh    |   29 +++++++++++++++++++++
>   recipes-core/initscripts/initscripts_1.0.bbappend |    2 ++
>   2 files changed, 31 insertions(+)
>   create mode 100755 recipes-core/initscripts/initscripts/devpts.sh
> 

Merged, thanks. :)

-- 
- Pascal

