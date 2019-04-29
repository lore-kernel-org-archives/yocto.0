Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9B83E00CAA; Sun, 28 Apr 2019 23:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABB62E00B58
	for <yocto@yoctoproject.org>; Sun, 28 Apr 2019 23:10:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x3T6An69004000
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 28 Apr 2019 23:10:49 -0700 (PDT)
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 28 Apr 2019 23:10:48 -0700
To: <yocto@yoctoproject.org>
References: <1551779986-178606-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <be3270d6-bfce-5a40-aa62-942d4df83f07@windriver.com>
Date: Mon, 29 Apr 2019 14:10:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1551779986-178606-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [patchtest][PATCH] core-image-patchtest: avoid skip parse recipe
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
X-List-Received-Date: Mon, 29 Apr 2019 06:10:50 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

ping

On 3/5/19 5:59 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> patchtest [1] failed since the recipe is skipparsed since it defines
> REQUIRED_DISTRO_FEATURES.  patchtest don't really need
> DISTRO_FEATURES, so fix the problem by set REQUIRED_DISTRO_FEATURES/
> COMPATIBLE_MACHINE/COMPATIBLE_HOST to "" to avoid skip parse
>
> [Yocto #13005]
>
> [1] https://patchwork.openembedded.org/series/9949/
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   meta-patchtest/recipes-core/images/core-image-patchtest.bb | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/meta-patchtest/recipes-core/images/core-image-patchtest.bb b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
> index 47e4041..95279d2 100644
> --- a/meta-patchtest/recipes-core/images/core-image-patchtest.bb
> +++ b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
> @@ -30,6 +30,9 @@ TMPBUILD="\$(mktemp -d)"
>   BRANCH="\$(get-target-branch \$REPO \$MBOX | awk '{print \$NF}')"
>   cd \$REPO
>   source ./oe-init-build-env \$TMPBUILD
> +echo "COMPATIBLE_MACHINE_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
> +echo "COMPATIBLE_HOST_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
> +echo "REQUIRED_DISTRO_FEATURES_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
>   test-mboxes -r \$REPO -s \$SUITESTART -m \$MBOX -o \$RESULTS -- --base-branch \$BRANCH
>   rm -rf \$TMPBUILD
>    }

-- 
BRs

Sandy(Li Changqing)


