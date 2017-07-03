Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A28FE00BC2; Mon,  3 Jul 2017 09:35:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52795E00A38
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 09:35:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2017 09:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,304,1496127600"; d="scan'208";a="106622533"
Received: from unknown (HELO [10.219.128.139]) ([10.219.128.139])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2017 09:34:42 -0700
To: Joshua Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
	<1499090555.3470.10.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <6c23d69d-9122-f157-f7d4-613f1a620b5d@linux.intel.com>
Date: Mon, 3 Jul 2017 11:34:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1499090555.3470.10.camel@linux.intel.com>
Cc: monserratx.sedeno.bustos@intel.com
Subject: Re: [yocto-autobuilder][PATCHv2 1/5] buildsteps/BuildImages: Setproperty BUILDIMAGES
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
X-List-Received-Date: Mon, 03 Jul 2017 16:35:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 07/03/2017 09:02 AM, Joshua Lock wrote:
> On Tue, 2017-06-06 at 10:46 -0500, Aníbal Limón wrote:
>> In certain situations is need to know what images was built for
>> example the DAFT executes flashing over certain image.
>>
>> [YOCTO #10604]
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>  lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py |
>> 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/BuildImages.py
>> index 30f7a18..7262fd3 100644
>> --- a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/BuildImages.py
>> +++ b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/BuildImages.py
>> @@ -146,6 +146,9 @@ class BuildImages(BitbakeShellCommand):
>>                  if self.minnowExists is None or self.minnowExists ==
>> "True":
>>                      self.command = ". ./oe-init-build-env; bitbake "
>> + bitbakeflags + self.images
>>                      self.description = ["Building " +
>> str(self.images)]
>> +        
>> +        self.setProperty("BUILDIMAGES", self.images)
> 
> Generally speaking caps case property names should only be used when
> they map to a variable in OE. BuildImages would work.

Agree,

Anibal
> 
>> +
>>          ShellCommand.start(self)
>>  
>>      def describe(self, done=False):

