Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51CE3E006EE; Tue, 15 Jul 2014 10:31:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C7CBE00543
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 10:31:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6FHVmTo008961
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jul 2014 10:31:49 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Tue, 15 Jul 2014 10:31:48 -0700
Message-ID: <53C56584.2090508@windriver.com>
Date: Tue, 15 Jul 2014 12:31:48 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <53C55C76.2080907@windriver.com>
	<CAPhnLPA7SruANaY7Gvby4j8SpzCa+iA55QDRzoO3N3Yz1i9Tcg@mail.gmail.com>
In-Reply-To: <CAPhnLPA7SruANaY7Gvby4j8SpzCa+iA55QDRzoO3N3Yz1i9Tcg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP 1.7 poky build tags?
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
X-List-Received-Date: Tue, 15 Jul 2014 17:31:54 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/15/14, 12:29 PM, Flanagan, Elizabeth wrote:
> On Tue, Jul 15, 2014 at 9:53 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> I think the YP 1.7 build tags are missing in the Poky repository.
>>
>> It looks to me (based on the test reports) that the following tags should be
>> created:
>
> We've actually stopped doing rc build tags as of 1.6_M2, as there were
> community complaints about the vast number of tags. We still utilize
> milestone tags (1.7_M1) and final release tags (yocto-1.7 and
> daisy-11.0.1), but for release candidates we utilize the email sent
> out that an rc is available.

I was not aware of that.  My personal opinion is that I'd rather have a vast 
number of tags that capture builds then no tags.  I was trying to give someone a 
pointer to the RC2 and had to dig through my email to find it.

--Mark

>>
>> 1.7_M1.rc1: 68824d9b8f6e290da078383316b3f4b732585f2b
>> 1.7_M1.rc2: a5531a2b8983318b99c119a87b78a92cf84160b8
>>
>> --Mark
>
> -b
>


