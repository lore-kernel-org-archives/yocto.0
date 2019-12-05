Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.12435.1575564706171279411
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 08:51:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 140.211.169.56, mailfrom: leonardo.sandoval.gonzalez@linux.intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A319E00D16; Thu,  5 Dec 2019 08:51:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C675E007EE
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2019 08:51:43 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 08:51:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,282,1571727600"; 
   d="scan'208";a="263331691"
Received: from unknown (HELO [10.219.4.36]) ([10.219.4.36])
  by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2019 08:51:41 -0800
Subject: Re: [yocto] [patchtest-oe][PATCH] test_patch_upstream_status: Be explicit about case sensitivity
To: Paul Barker <paul@betafive.co.uk>,
 Yocto discussion list <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
 Daniela Plascencia <daniela.plascencia@linux.intel.com>,
 Changqing Li <changqing.li@windriver.com>
References: <20191115130931.47159-1-paul@betafive.co.uk>
 <15DBADFE51BB7B5E.20368@lists.yoctoproject.org>
 <2345c284-9cb3-487b-bb02-d6bf0dafc250@www.fastmail.com>
From: "Leonardo Sandoval" <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <3550f653-cfd9-fb83-12df-b9e7c90cff8b@linux.intel.com>
Date: Thu, 5 Dec 2019 10:51:41 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <2345c284-9cb3-487b-bb02-d6bf0dafc250@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 12/5/2019 6:55 AM, Paul Barker wrote:
> On Fri, 29 Nov 2019, at 16:09, Paul Barker wrote:
>> On Fri, 15 Nov 2019, at 13:09, Paul Barker wrote:
>>> The case sensitivity of the checks for the "Upstream-Status" label
>>> should match so that failure messages make sense. The checks in the
>>> parse_upstream_status module are case sensitive and so the initial regex
>>> check should also be made case sensitive.
>>>
>>> A quick note about case sensitivity is added to the advice given if
>>> "Upstream-Status" is not found.
>>>
>>> Signed-off-by: Paul Barker <paul@betafive.co.uk>
>>> ---
>>> tests/test_patch_upstream_status.py | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/tests/test_patch_upstream_status.py
>>> b/tests/test_patch_upstream_status.py
>>> index a477dfb..ecccc58 100644
>>> --- a/tests/test_patch_upstream_status.py
>>> +++ b/tests/test_patch_upstream_status.py
>>> @@ -23,7 +23,7 @@ import os
>>>
>>> class PatchUpstreamStatus(base.Base):
>>>
>>> - upstream_status_regex = re.compile("(?<=\+)Upstream.Status", re.IGNORECASE)
>>> + upstream_status_regex = re.compile("(?<=\+)Upstream.Status")
>>>
>>> @classmethod
>>> def setUpClassLocal(cls):
>>> @@ -47,7 +47,7 @@ class PatchUpstreamStatus(base.Base):
>>> payload = newpatch.__str__()
>>> if not self.upstream_status_regex.search(payload):
>>> self.fail('Added patch file is missing Upstream-Status
>>> in the header',
>>> - 'Add Upstream-Status: <Valid status> to the
>>> header of %s' % newpatch.path,
>>> + 'Add Upstream-Status: <Valid status> (case
>>> sensitive) to the header of %s' % newpatch.path,
>>> data=[('Standard format',
>>> self.standard_format), ('Valid status', self.valid_status)])
>>> for line in payload.splitlines():
>>> if self.patchmetadata_regex.match(line):
>>> -- 
>>> 2.17.1
>>>
>>>
>> Ping.
> Cc'ing the maintainers listed in the readme along with Changqing Li as discussed during the Yocto Project call on Tuesday.

Sorry for the delay Paul. Together with Paul E., we started the 
patchtest but since late 2017 I am not longer maintaining it. I 
definitely can help review patches and enhancements.

>
> Could you confirm who's maintaining patchtest-oe these days and update the readme? I've got a few ideas for enhancements and I may be able to assist with maintaining these repositories after the new year but I'd like to get these initial changes in first.

>
