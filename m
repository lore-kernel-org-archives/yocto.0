Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4067BE00524; Tue, 15 Jul 2014 06:08:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5500E00524
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 06:08:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6FD8M3q012147
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jul 2014 06:08:23 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 15 Jul 2014 06:08:22 -0700
Message-ID: <53C527C2.8000502@windriver.com>
Date: Tue, 15 Jul 2014 09:08:18 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4c2985c7070540f08bd68ba8a7c25331@CY1PR0301MB0715.namprd03.prod.outlook.com>
In-Reply-To: <4c2985c7070540f08bd68ba8a7c25331@CY1PR0301MB0715.namprd03.prod.outlook.com>
Subject: Re: Query about the kernel version supported by Yocto
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
X-List-Received-Date: Tue, 15 Jul 2014 13:08:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-07-15 06:14 AM, zhenhua.luo@freescale.com wrote:
> Hi all,
>
> The git tree of several kernel version is maintained in the Yocto official git repository, 3.4, 3,8, 3.10 and 3.14, is there any reason to skip kernel 3.12 which is a LTS version?
>
> What's the policy of kernel selection of kernel that is supported by Yocto?

We support three kernels at any given time. The latest LTSI (note: not
LTS) kernel, the latest mainline kernel that fits our release window,
and a -dev kernel.

The "latest mainline kernel" for a given release has it's version locked
about 6-8 weeks before release, but has already gone through our build
testing via the -dev kernel (which tracks mainline).

Bruce

>
>
> Best Regards,
>
> Zhenhua
>


