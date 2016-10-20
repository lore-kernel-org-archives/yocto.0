Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90BB6E00955; Wed, 19 Oct 2016 20:55:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8590E008D3
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 20:55:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9K3t1Zu005906
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Oct 2016 20:55:01 -0700 (PDT)
Received: from server.local (128.224.23.33) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 19 Oct 2016 20:55:00 -0700
To: Paul Eggleton <paul.eggleton@intel.com>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, <yocto@yoctoproject.org>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <47ed04f5-61b9-cdf6-bda6-b724d6a67591@windriver.com>
Date: Wed, 19 Oct 2016 23:54:59 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 03:55:04 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-19 10:25 PM, Paul Eggleton wrote:
> Hi all,
>
> I've been gathering material for the 2.2 release notes, here is what I have at
> the moment. Things missing:
>
> * Any new features/enhancements for the kernel tools - Bruce, is there
> anything worth noting?

It is probably worth mentioning a few things on that front, I'll provide
some raw bullets points here .. and they can be wordsmithed as needed:

  - kernel tools were streamlined, with patching/configuration overhead
    reduced or eliminated in most cases.
  - kernel configuration audit was improved and runs as a standalone tool
  - kernel configuration audit provides symbol resolution and dependency
    information to allow troubleshooting of missing/incorrect/invalid 
symbols
  - kernel tools use upstream utilities directly, without local patches or
    wrappers.

Bruce

>
> * Known issues that are worth calling out
>
> Note that I haven't included all of the bugfixes in this release since we
> haven't been recently and there are a lot of them. I do have a list of them if
> we want to include them but not only is it very long, it's not guaranteed to
> be devoid of fixes for regressions within the release and I also haven't
> tweaked any of the items to be more understandable out of context as I have
> with the features/enhancements.
>
> Let me know if I've missed or misrepresented anything.
>
> Cheers,
> Paul
>


