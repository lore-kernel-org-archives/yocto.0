Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A4DFE00D0D; Thu, 23 Nov 2017 21:41:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77E4AE00D04;
	Thu, 23 Nov 2017 21:41:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vAO5fLBa025099
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 23 Nov 2017 21:41:21 -0800 (PST)
Received: from [128.224.162.151] (128.224.162.151) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 23 Nov 2017 21:41:20 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: Michael Halstead <michael@yoctoproject.org>
References: <cover.1511437793.git.hongxu.jia@windriver.com>
	<CAJTo0La5+dpVjgmDnkqP3wX+M2L-1sk11-wxreL1+7xR1anYfg@mail.gmail.com>
	<CAMKF1sp96uZ5JY9NDPg=+eEmx7qivCe=5sJ=2gSxjO83k98vqw@mail.gmail.com>
	<aa13bf27-012d-1a09-fd47-1f36dd2742d1@windriver.com>
Message-ID: <5a0e5dbf-7ee7-bc4c-5bd6-dce3d9e2defb@windriver.com>
Date: Fri, 24 Nov 2017 13:44:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <aa13bf27-012d-1a09-fd47-1f36dd2742d1@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] [PATCH 00/15] create meta-installer layer
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
X-List-Received-Date: Fri, 24 Nov 2017 05:41:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2017年11月24日 09:55, Hongxu Jia wrote:
> On 2017年11月24日 08:35, Khem Raj wrote:
>>
>> On Thu, Nov 23, 2017 at 4:15 AM Burton, Ross <ross.burton@intel.com 
>> <mailto:ross.burton@intel.com>> wrote:
>>
>>     I honestly don't see why this has to belong in meta-openembedded
>>     and can't live in a standalone repository.
>>
>>
>> I share the same opinion it should probably be
>>  Repo of its own
>>
>
> Hi Ross & Khem,
>
> Since both of you think it should be as a standalone repository,
> I do not insist on it.
>
> Hi Michael,
>
> Would you please create a repository on http://git.yoctoproject.org/
> the layer name called `meta-installer', should I resend pull request
> for review or directly push the repo contents to it once it's created.
>

Hi Michael,

I think we should called the layer `meta-anaconda', Alex suggestion
is reasonable. There are many available installers, and this would
make it clear what the directory contains

//Hongxu

> If the latter one, should I send my ssh pub key to you privately?
>
> //Hongxu
>
>
>>
>>     Ross 


