Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.12477.1575564890431879629
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 08:54:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: leonardo.sandoval.gonzalez@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B2D3E01138; Thu,  5 Dec 2019 08:54:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED4FE00D16
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 08:54:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 08:54:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; 
   d="scan'208";a="263332505"
Received: from unknown (HELO [10.219.4.36]) ([10.219.4.36])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2019 08:54:48 -0800
Subject: Re: [yocto] [patchtest][PATCH 1/2] patchtest: Fix printing of exception tracebacks
To: Paul Barker <paul@betafive.co.uk>,
 Yocto discussion list <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
 Changqing Li <changqing.li@windriver.com>
References: <20191115132324.47411-1-paul@betafive.co.uk>
 <15DBAE02AEF74F96.7552@lists.yoctoproject.org>
 <4a7ab633-f3e0-4a5b-8c7b-ee94272e1209@www.fastmail.com>
From: "Leonardo Sandoval" <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <51e540e5-a34c-5441-c2b5-ed08d688797f@linux.intel.com>
Date: Thu, 5 Dec 2019 10:54:47 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <4a7ab633-f3e0-4a5b-8c7b-ee94272e1209@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

LGTM

On 12/5/2019 6:56 AM, Paul Barker wrote:
> On Fri, 29 Nov 2019, at 16:09, Paul Barker wrote:
>> On Fri, 15 Nov 2019, at 13:23, Paul Barker wrote:
>>> The addError() handler is called outside of an actual exception handler
>>> so sys.exc_info() doesn't actually return an exception. This means that
>>> traceback.print_exc() doesn't know what to print. Instead we need to use
>>> traceback.print_exception() with the err object we've been given.
>>>
>>> Signed-off-by: Paul Barker <paul@betafive.co.uk>
>>> ---
>>> patchtest | 3 +--
>>> 1 file changed, 1 insertion(+), 2 deletions(-)
>>>
>>> diff --git a/patchtest b/patchtest
>>> index 592f73e..59b19f5 100755
>>> --- a/patchtest
>>> +++ b/patchtest
>>> @@ -101,8 +101,7 @@ def getResult(patch, mergepatch):
>>>
>>> def addError(self, test, err):
>>> self.test_error = True
>>> - (ty, va, trace) = err
>>> - logger.error(traceback.print_exc())
>>> + logger.error(traceback.print_exception(*err))
>>>
>>> def addFailure(self, test, err):
>>> self.test_failure = True
>>> -- 
>>> 2.17.1
>>>
>>>
>> Ping on this and the following patch.
> Cc'ing the maintainers listed in the readme along with Changqing Li as discussed during the Yocto Project call on Tuesday.
>
> Could you confirm who's maintaining patchtest these days and update the readme? I've got a few ideas for enhancements and I may be able to assist with maintaining these repositories after the new year but I'd like to get these initial changes in first.
>
