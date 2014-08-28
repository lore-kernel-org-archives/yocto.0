Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47AA5E00805; Thu, 28 Aug 2014 03:26:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E96E6E007F6
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 03:26:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7SAQftR009627
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 03:26:42 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 28 Aug 2014 03:26:41 -0700
Message-ID: <53FF03DF.8030602@windriver.com>
Date: Thu, 28 Aug 2014 18:26:39 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1406618541.git.wenzong.fan@windriver.com>
In-Reply-To: <cover.1406618541.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140828182639695
Subject: Re: [meta-selinux][PATCH 0/2] refpolicy: split do_install to three steps & update refpolicy-minimum
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
X-List-Received-Date: Thu, 28 Aug 2014 10:26:44 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-7-29 ÏÂÎç3:30, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> * split do_install to three steps:
>    + prepare_policy_store()
>    + rebuild_policy()
>    + install_misc_files()
> 
> This gets refpolicy-minimum work by re-writing the prepare_policy_store().
> 
> * update refpolicy-minimum to support compressed policy.
> 
> The following changes since commit a34718ae6ea2539545be1e49c497030f6246345c:
> 
>    swig-native: repair patching error (2014-07-19 23:24:44 -0400)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib wenzong/refpolicy
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/refpolicy
> 
> Wenzong Fan (2):
>    refpolicy: split do_install to three steps
>    refpolicy / minimum: support compressed policy
> 
>   .../refpolicy/refpolicy-minimum_2.20130424.bb      |   26 +++++++++----
>   recipes-security/refpolicy/refpolicy_common.inc    |   39 +++++++++++++-------
>   2 files changed, 43 insertions(+), 22 deletions(-)
> 

Merged. Thanks:)

-- 
- Pascal

