Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7D8FE00C23; Fri, 27 Nov 2015 08:50:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E122E00C0F
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 08:50:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Nov 2015 08:50:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,352,1444719600"; d="scan'208";a="861128285"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2015 08:50:23 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
	<1448496046-13186-12-git-send-email-anibal.limon@linux.intel.com>
	<24145352.t6tiEOYyAT@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <56588A03.6070202@linux.intel.com>
Date: Fri, 27 Nov 2015 10:51:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <24145352.t6tiEOYyAT@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 11/17] utils/git.py: Add method for apply patches into a branch.
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
X-List-Received-Date: Fri, 27 Nov 2015 16:50:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Good observation, i'll make this change.

	alimon

On 11/26/2015 02:28 PM, Paul Eggleton wrote:
> On Wednesday 25 November 2015 18:00:40 Aníbal Limón wrote:
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>  modules/utils/git.py | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/modules/utils/git.py b/modules/utils/git.py
>> index 48ed46d..d7f5713 100644
>> --- a/modules/utils/git.py
>> +++ b/modules/utils/git.py
>> @@ -61,6 +61,9 @@ class Git(object):
>>      def create_patch(self, out_dir):
>>          return self._cmd("format-patch -M10 -1 -o " + out_dir)
>>
>> +    def apply_patch(self, patch_file):
>> +        return self._cmd("am %s" % patch_file)
>> +
>>      def status(self):
>>          return self._cmd("status --porcelain")
> 
> Just a warning (which may not apply in your situation, not sure) - you may 
> need to do extra cleanup beyond git am --abort if this fails; see:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e0b9a96002bb23e7c2c8a8c9c4d2431461fd6cb7
> 
> Cheers,
> Paul
> 

