Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93360E00BB7; Tue, 12 Sep 2017 19:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8CD6E00C14
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:18:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2IuhG007165
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:18:56 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:18:54 -0700
To: wenzong fan <wenzong.fan@windriver.com>, Chanho Park <parkch98@gmail.com>, 
	<yocto@yoctoproject.org>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
	<20170905055958.54697-4-wenzong.fan@windriver.com>
	<CAPTzV14TtSer1QRZ+5fEiSCUjXiqb4VF9pSuCmNQ5-HUC1Adag@mail.gmail.com>
	<1f2a8ebb-bc8c-6e26-3381-8df2b043b387@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <d03d0a77-16e4-1e98-1d5b-17c60bafea02@windriver.com>
Date: Tue, 12 Sep 2017 21:19:05 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1f2a8ebb-bc8c-6e26-3381-8df2b043b387@windriver.com>
Subject: Re: [meta-selinux][PATCH 04/21] libsemanage: uprev to 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:19:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/12/17 9:06 PM, wenzong fan wrote:
> On 09/12/2017 06:59 PM, Chanho Park wrote:
>> Hi,
>>
>> I can't apply this patch on top of the master branch. Which revision did 
>> you make the patches?
> 
> Oops, that's my fault. I did a "sed -i -e 's/Subject: [/Subject: 
> [meta-selinux][/g' 00*" to add prefix for mail subjects, that also 
> changed the removed patch files in libsemanage.
> 
> I'll send v2.
> 
> Thanks
> Wenzong

I don't see the original set of patches in my archives.  When you rebase, please
rebase on top of mgh/master-next.

--Mark

