Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBECCE00C60; Wed,  7 Oct 2015 22:15:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1257AE007C9
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 22:15:54 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t985FsmH014730
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 Oct 2015 22:15:54 -0700 (PDT)
Received: from [128.224.162.154] (128.224.162.154) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 7 Oct 2015 22:15:53 -0700
Message-ID: <5615FC07.4030707@windriver.com>
Date: Thu, 8 Oct 2015 13:15:51 +0800
From: wenzong fan <wenzong.fan@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Joe Slater <jslater@windriver.com>, <yocto@yoctoproject.org>,
	<randy.macleod@windriver.com>
References: <1444260963-11591-1-git-send-email-jslater@windriver.com>
In-Reply-To: <1444260963-11591-1-git-send-email-jslater@windriver.com>
Cc: joe.slater@windriver.com
Subject: Re: [meta-selinux][PATCH 1/1] refpolicy: SRCREV_FORMAT needed
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
X-List-Received-Date: Thu, 08 Oct 2015 05:15:57 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/08/2015 07:36 AM, Joe Slater wrote:
> Signed-off-by: Joe Slater <jslater@windriver.com>
> ---
>   recipes-security/refpolicy/refpolicy_git.inc |    1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
> index 6db4b9e..32b3195 100644
> --- a/recipes-security/refpolicy/refpolicy_git.inc
> +++ b/recipes-security/refpolicy/refpolicy_git.inc
> @@ -3,6 +3,7 @@ SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git
>
>   SRCREV_refpolicy = "c8c2b8b0c80a59414aefc4d32fdd2e8152ea5af2"
>   SRCREV_refpolicy-contrib = "32c25f2d965569e18489913fbda5e0f0c6f90d51"

Hi Joe,

You may need to update your patch, upstream version has:

+SRCREV_refpolicy = "${AUTOREV}"
+SRCREV_refpolicy-contrib = "${AUTOREV}"
...

Thanks
Wenzong

> +SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
>
>   FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
>
>

