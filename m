Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B809E00777; Tue,  3 Mar 2015 06:37:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01DF8E00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 06:36:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t23EalGd022258
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Mar 2015 06:36:47 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 3 Mar 2015 06:36:47 -0800
Message-ID: <54F5C6DA.5020405@windriver.com>
Date: Tue, 3 Mar 2015 09:36:10 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503030829260.3838@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503030829260.3838@Device-040570>
Subject: Re: what is the "simplest unit of kernel Metadata"?
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
X-List-Received-Date: Tue, 03 Mar 2015 14:37:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-03 08:32 AM, Robert P. J. Day wrote:
>
>    kernel dev manual, section 3.4.1, claims:
>
> "The simplest unit of kernel Metadata is the configuration-only
> feature. This feature consists of one or more Linux kernel
> configuration parameters in a configuration fragment file (.cfg) and a
> .scc file that describes the fragment."
>
>    that pretty clearly suggests that .cfg fragment files *must* be
> accompanied by a related .scc file. but earlier in that same manual,
> some examples use only .cfg files:
>
>       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>       SRC_URI += "file://8250.cfg"
>
> so how should that be worded?

It is talking about the in-tree meta-data, where .cfg files are
referenced and included by .scc files.

As a convenience to someone working in a recipe who really doesn't
care about the implementation details and just want to add a few
configuration items to their kernel .. A .cfg file that is referenced
in the SRC_URI is detected, and a .scc file generated to include that
fragment. So the end result is that the config items are processed
and merged into the kernel config, with no special processing of those
fragments required.

So the documentation is correct, but it is staying out of some of
the internal details of how that .cfg file actually gets processed.

Cheers,

Bruce

>
> rday
>


