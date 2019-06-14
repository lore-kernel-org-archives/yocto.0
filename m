Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F8C2E00E0D; Fri, 14 Jun 2019 01:01:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0460E00DBD
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 01:01:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5E80wdK018045
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2019 01:01:25 -0700
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 14 Jun 2019 01:01:18 -0700
To: Armin Kuster <akuster808@gmail.com>, <yocto@yoctoproject.org>
References: <20190510030957.26040-1-akuster808@gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <26b35a5c-4225-b4f0-3222-76a74e80688e@windriver.com>
Date: Fri, 14 Jun 2019 16:13:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20190510030957.26040-1-akuster808@gmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: [meta-security][PATCH 1/2] oe-selftest: add running cve checker
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
X-List-Received-Date: Fri, 14 Jun 2019 08:01:52 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Armin,

I just noticed this selftest case.
Have you considered putting it into oe-core?

Best Regards,
Chen Qi

On 05/10/2019 11:09 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   lib/oeqa/selftest/cases/cvechecker.py | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
>   create mode 100644 lib/oeqa/selftest/cases/cvechecker.py
>
> diff --git a/lib/oeqa/selftest/cases/cvechecker.py b/lib/oeqa/selftest/cases/cvechecker.py
> new file mode 100644
> index 0000000..23ca7d2
> --- /dev/null
> +++ b/lib/oeqa/selftest/cases/cvechecker.py
> @@ -0,0 +1,27 @@
> +import os
> +import re
> +
> +from oeqa.selftest.case import OESelftestTestCase
> +from oeqa.utils.commands import bitbake, get_bb_var
> +
> +class CveCheckerTests(OESelftestTestCase):
> +    def test_cve_checker(self):
> +        image = "core-image-sato"
> +
> +        deploy_dir = get_bb_var("DEPLOY_DIR_IMAGE")
> +        image_link_name = get_bb_var('IMAGE_LINK_NAME', image)
> +
> +        manifest_link = os.path.join(deploy_dir, "%s.cve" % image_link_name)
> +
> +        self.logger.info('CVE_CHECK_MANIFEST = "%s"' % manifest_link)
> +        if (not 'cve-check' in get_bb_var('INHERIT')):
> +            add_cve_check_config = 'INHERIT += "cve-check"'
> +            self.append_config(add_cve_check_config)
> +        self.append_config('CVE_CHECK_MANIFEST = "%s"' % manifest_link)
> +        result = bitbake("-k -c cve_check %s" % image, ignore_status=True)
> +        if (not 'cve-check' in get_bb_var('INHERIT')):
> +            self.remove_config(add_cve_check_config)
> +
> +        isfile = os.path.isfile(manifest_link)
> +        self.assertEqual(True, isfile, 'Failed to create cve data file : %s' % manifest_link)
> +



