Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF352E00804; Thu, 28 Aug 2014 03:26:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3F1E0049D
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 03:26:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7SAQ4CQ009564
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 03:26:05 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 28 Aug 2014 03:26:04 -0700
Message-ID: <53FF03BB.3000606@windriver.com>
Date: Thu, 28 Aug 2014 18:26:03 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chong Lu <Chong.Lu@windriver.com>, <yocto@yoctoproject.org>
References: <1405417945-24729-1-git-send-email-Chong.Lu@windriver.com>
In-Reply-To: <1405417945-24729-1-git-send-email-Chong.Lu@windriver.com>
X-TagToolbar-Keys: D20140828182603007
Subject: Re: [meta-selinux][PATCH 1/2] rpm: remove PR
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
X-List-Received-Date: Thu, 28 Aug 2014 10:26:07 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-7-15 下午5:52, Chong Lu 写道:
> Remove PR, since oe-core has a new version.
>
> Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
> ---
>   recipes-devtools/rpm/rpm_5.4.14.bbappend |    2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/recipes-devtools/rpm/rpm_5.4.14.bbappend b/recipes-devtools/rpm/rpm_5.4.14.bbappend
> index f2a82e1..df5dcef 100644
> --- a/recipes-devtools/rpm/rpm_5.4.14.bbappend
> +++ b/recipes-devtools/rpm/rpm_5.4.14.bbappend
> @@ -1,5 +1,3 @@
> -PR .= ".3"
> -
>   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>   SRC_URI += "file://rpm-fix-build-bug.patch \
>

Merged. Thanks:)

-- 
- Pascal

