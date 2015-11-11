Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84450E00473; Wed, 11 Nov 2015 12:14:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61861E00343
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 12:14:12 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 11 Nov 2015 12:14:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,277,1444719600"; d="scan'208";a="848746497"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2015 12:14:11 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
	<1447106501-470-5-git-send-email-anibal.limon@linux.intel.com>
	<1584000.36hq9YZtW0@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5643A1B9.1040608@linux.intel.com>
Date: Wed, 11 Nov 2015 14:14:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1584000.36hq9YZtW0@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 04/10][AUH] buildhistory.py: Don't modify BB_ENV_EXTRAWHITE before init.
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
X-List-Received-Date: Wed, 11 Nov 2015 20:14:18 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 11/10/2015 02:54 AM, Paul Eggleton wrote:
> On Monday 09 November 2015 16:01:35 Aníbal Limón wrote:
>> Move code for add BUILDHISTORY_DIR to __init__ method because
>> it fails when import in early step.
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>  buildhistory.py | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/buildhistory.py b/buildhistory.py
>> index 1732f23..6eca6e1 100644
>> --- a/buildhistory.py
>> +++ b/buildhistory.py
>> @@ -30,11 +30,10 @@ from errors import *
>>  from bitbake import *
>>  from git import Git
>>
>> -os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
>> -                                    " BUILDHISTORY_DIR"
>> -
>>  class BuildHistory(object):
>>      def __init__(self, bb, pn, workdir):
>> +        os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] +
>> \ +                                    " BUILDHISTORY_DIR"
>>          self.bb = bb
>>          self.pn = pn
>>          self.workdir = workdir
> 
> I'm not particularly happy with setting this through the environment. Leaving 
> that aside though, rather than putting it at the top of the constructor can 
> you please put this just before the line where we actually set 
> BUILDHISTORY_DIR in the environment?

I know that you aren't happy with this setting in the environment but
now is the only way to have a organized output (per recipe) of AUH as
you can see in the Status email i sent.

I'll change the code to be together this set of BUILDHISTORY_DIR.


> 
> Cheers,
> Paul
> 

