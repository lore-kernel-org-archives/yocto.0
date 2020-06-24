Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1950.1593031630798137544
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jun 2020 13:47:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F6EE01D77; Wed, 24 Jun 2020 13:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA63FE01D41
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2020 13:47:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 05OKkDKV009061
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 24 Jun 2020 13:46:39 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 24 Jun
 2020 13:46:07 -0700
Subject: Re: [yocto] License reporting for golang (and rust)
To: Irving ST <irving@ssfivy.com>,
        Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <24bd30f8-5663-2e14-0710-cbb2c8676363@windriver.com>
Date: Wed, 24 Jun 2020 16:46:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAN--ZaUr1C_rKY05_yWuD=A-S7deSvd5gFSYc2ZE-V7vDTkZxw@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-06-22 4:53 a.m., Irving ST wrote:
> Hello,
> 
> I am building a device that uses some Go (and Rust) dependencies. This
> is on Yocto 2.7 / Warrior.
> 
> I noticed that after building an image, the generated license.manifest
> and package.manifest (in tmp/deploy/licenses/) does not contain any
> mention of go packages or rust crates. The go packages seem to
> generate directories in tmp/deploy/licenses/ but they do not seem to
> be reported in the final image.
> 
> For example, an image that contains docker (from meta-virtualization
> layer) has build dependencies on, say, go-cli (also from
> meta-virtualization layer). This is specified in the docker recipe
> having DEPENDS on go-cli recipe. I saw tmp/deploy/licenses/go-cli
> directory exists with licensing information, but
> tmp/deploy/licenses//license.manifest does not contain any reference
> to go-cli.
> 
> My best *guess* at the moment is because go packages are build
> dependencies (DEPENDS instead of RDEPENDS), they are not considered
> shipped packages by bitbake (because they are not shipped, the final
> docker package is) and are not listed in the manifest files. This
> makes licensing compliance more difficult since I still need to show
> the copyright notices even for permissive licenses like MIT - but I
> can't show it if I don't know that it has been shipped with the image
> (since it's not in the manifest).
> 
> Is there a way to get a manifest of go packages shipped into the image?
> This issue seems to happen with rust crates as well, so a solution /
> explanation for rust would be greatly appreciated too.
> 
> Sorry if this has been resolved somewhere, I'm not exactly super
> familiar with the golang build system or its integration with Yocto.


Hi Irving,

I haven't heard or such a problem until now.

If possible, please check if it's still happening on a newer release
or the master branch.

If it is still an issue, please open a bug with detailed steps
to reproduce in:

    https://bugzilla.yoctoproject.org/
See:
    https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Information_levels

We're a little short on people to fix bugs so you could assign
the defect to yourself. If you're not able to do that, we review new
bugs once a week so maybe someone will decide to work on the defect.

Thanks,
../Randy
> 
> Best regards,
> Irving Tjiptowarsono
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
