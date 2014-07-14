Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8080AE0076C; Sun, 13 Jul 2014 19:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6558FE004DD
	for <yocto@yoctoproject.org>; Sun, 13 Jul 2014 19:32:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6E2WoGT012203
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 13 Jul 2014 19:32:50 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Jul 2014 19:32:49 -0700
Message-ID: <53C34150.6030300@windriver.com>
Date: Mon, 14 Jul 2014 10:32:48 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Armin Kuster <akuster@mvista.com>, <yocto@yoctoproject.org>
References: <1404167751-3278-1-git-send-email-akuster@mvista.com>
In-Reply-To: <1404167751-3278-1-git-send-email-akuster@mvista.com>
X-TagToolbar-Keys: D20140714103248179
Subject: Re: [meta-selinux][PATCH] gnupg: use wildcard in name
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
X-List-Received-Date: Mon, 14 Jul 2014 02:32:58 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-7-1 ÉÏÎç6:35, Armin Kuster Ð´µÀ:
> There are two versions of gnupg so limit the wildcard to the 2.x series
> 
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   recipes-support/gnupg/{gnupg_2.0.22.bbappend => gnupg_2.%.bbappend} | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename recipes-support/gnupg/{gnupg_2.0.22.bbappend => gnupg_2.%.bbappend} (100%)
> 
> diff --git a/recipes-support/gnupg/gnupg_2.0.22.bbappend b/recipes-support/gnupg/gnupg_2.%.bbappend
> similarity index 100%
> rename from recipes-support/gnupg/gnupg_2.0.22.bbappend
> rename to recipes-support/gnupg/gnupg_2.%.bbappend
> 

Merged. Thank you, Armin. :)

-- 
- Pascal

