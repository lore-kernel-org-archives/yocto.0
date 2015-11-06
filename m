Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B631FE00B77; Fri,  6 Nov 2015 07:12:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2759 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Nov 2015 07:12:45 PST
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51604E00A7F
	for <yocto@yoctoproject.org>; Fri,  6 Nov 2015 07:12:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tA6EQfdu010726
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 6 Nov 2015 06:26:42 -0800
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Fri, 6 Nov 2015 06:26:41 -0800
To: <v.narang@samsung.com>
References: <1527190987.610301446793765000.JavaMail.weblogic@ep2mlwas08d>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <563CB89F.50000@windriver.com>
Date: Fri, 6 Nov 2015 08:26:39 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1527190987.610301446793765000.JavaMail.weblogic@ep2mlwas08d>
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	doha Hwang <doha.hwang@samsung.com>,
	Hak-Bong Lee <hakbong5.lee@samsung.com>,
	Maninder Singh <maninder1.s@samsung.com>,
	Manjeet Pawar <manjeet.p@samsung.com>, PANKAJ MISHRA <pankaj.m@samsung.com>
Subject: Re: [PATCH 1/1] Fix AARCH64_TLSDESC relocation conflict
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
X-List-Received-Date: Fri, 06 Nov 2015 15:12:46 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 11/6/15 1:09 AM, Vaneet Narang wrote:
> Hi Mark, 
> 
>> I have done the same implementation for AARCH64.  Loader handles AARCH64_TLSDESC conflict as below.
>> case R_AARCH64_TLSDESC:
>> ....
>>            if (! sym)
>>              {
>>                td->arg = (void*)reloc->r_addend;
>>                td->entry = _dl_tlsdesc_undefweak;
>>              }
> 
> we have shared one patch in libc to handle AARCH64_TLS conflict on AARCH64. 
> https://sourceware.org/ml/libc-alpha/2015-11/msg00106.html
>  
> Since we are using cross prelink we don't run testsuite. we compile all test cases 
> from test suite manually as mentioned in tls.sh file and run on target. 
> 
> LD_DEBUG=libs LD_LIBRARY_PATH=. ./tls1
>        
>  1828:     prelink checking: ok
> 
> ....
> No segfault or abort() is observed hence i assume testcase is running properly.  

I will look into this further.  But you should start building the test cases on
the target and running them.

Some of the failures are segfault/aborts.  But many of them have to do with
prelink functionality.  For example, many failures are related to the inability
to 'unprelink' the binaries.

Something is changing the binary in a way that can not be reverted, and this is
a failure case.  The system must be able to be unprelinked for validation
purposes -- and also to permit being re-prelinked.

I will look into merging these patches later today and will also work on adding
the necessary patches to poky/oe-core and putting them into a contrib branch so
we're working on the same set of data.

--Mark

>          
> Thanks 
> Vaneet Narang
> 


