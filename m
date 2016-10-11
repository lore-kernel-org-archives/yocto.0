Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7530FE00D27; Tue, 11 Oct 2016 01:15:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4AC7E00D1F
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 01:15:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9B8F4u9025782
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Oct 2016 01:15:04 -0700 (PDT)
Received: from soho-mhatle-m.local (147.11.116.158) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 11 Oct 2016 01:15:04 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Liam R. Howlett"
	<Liam.Howlett@windriver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1475855841-30009-10-git-send-email-Liam.Howlett@WindRiver.com>
	<46129713.8JFcdiNiyl@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <5819d101-a7bb-810a-f847-9eafb11e9e8e@windriver.com>
Date: Tue, 11 Oct 2016 10:15:02 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <46129713.8JFcdiNiyl@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2 09/12] layerindex: Add collection and version to layerbranch
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
X-List-Received-Date: Tue, 11 Oct 2016 08:15:07 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/10/16 3:32 AM, Paul Eggleton wrote:
> On Fri, 07 Oct 2016 11:57:18 Liam R. Howlett wrote:
>> Collection and version will be pulled from the layer.conf if it exists
>> and dependencies will be resolved by first checking for layers with the
>> dependency name and then checking for collections.  It is necessary to
>> shutdown tinfoil to avoid bitbake complaining about multiple instances.
> 
> That last bit of the commit message is now invalid in v2.

I have removed the errant comment (last line) from the commit message in the
current 'mhatle/django18' branch.

> Cheers,
> Paul
> 


