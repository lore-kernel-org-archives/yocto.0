Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FD7EE0080C; Fri,  6 Feb 2015 05:11:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E81E00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 05:10:58 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t16DAujX007126
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 Feb 2015 05:10:56 -0800 (PST)
Received: from server.local (128.224.22.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 6 Feb 2015 05:10:56 -0800
Message-ID: <54D4BD5F.2090903@windriver.com>
Date: Fri, 6 Feb 2015 08:10:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>, <yocto@yoctoproject.org>
References: <E23391EC-9A66-4657-8E7B-B14FC4A1A03D@gmail.com>
In-Reply-To: <E23391EC-9A66-4657-8E7B-B14FC4A1A03D@gmail.com>
Subject: Re: [meta-selinux] Kernel bbappend missing for 3.17 ?
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
X-List-Received-Date: Fri, 06 Feb 2015 13:11:04 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-02-06 7:37 AM, Timo Pulkkinen wrote:
> Hello,
>
> it seems that there is no bbappend -file for kernel 3.17 which causes selinux not to be enabled in the kernel.
> The repository contains only recipe/bbappend file for kernel 3.14 (linux-yocto_3.14.bbappend). Is this correct?
>

If we wait a few days, I'll have a 3.19 kernel available, and 3.17
will be removed.

3.17 had a few issues when it was introduced, and hence the 3.14 LTSI
kernel stayed the default for many cases, which probably explains why
the bbappend isn't around.

Bruce


> br,
> Timo
>


