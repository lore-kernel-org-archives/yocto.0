Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 361B9E00D64; Tue, 11 Oct 2016 06:08:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 116F9E00D5B
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 06:08:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9BD8Ma7016926
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Oct 2016 06:08:22 -0700 (PDT)
Received: from soho-mhatle-m.local (147.11.116.82) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 11 Oct 2016 06:08:21 -0700
To: Paul Eggleton <paul.eggleton@intel.com>, <yocto@yoctoproject.org>
References: <1878410.VRsuNqsyKH@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <939194c5-0b17-e93f-75e7-9d01fa552cc9@windriver.com>
Date: Tue, 11 Oct 2016 15:08:20 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1878410.VRsuNqsyKH@peggleto-mobl.ger.corp.intel.com>
Cc: Ulf Magnusson <ulfalizer@gmail.com>
Subject: Re: Docs help - proper way of adding a userspace header for the kernel
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
X-List-Received-Date: Tue, 11 Oct 2016 13:08:28 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/11/16 4:21 AM, Paul Eggleton wrote:
> Hi folks,
> 
> Would someone be able to help Scott with the background for this:
> 
>   https://bugzilla.yoctoproject.org/show_bug.cgi?id=8596
> 
> It's not really my area of expertise and we really want this documented 
> properly once and for all.

I have added more information into a comment of the defect.

In generally "don't do this", there are a few exceptions.

--Mark

> Thanks,
> Paul
> 


