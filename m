Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8EDE00305
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 11:52:58 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2011 11:52:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98934923"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2011 11:52:57 -0800
Message-ID: <4EF23907.5020105@linux.intel.com>
Date: Wed, 21 Dec 2011 11:52:39 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Chris Larson <kergoth@gmail.com>
References: <cover.1324493490.git.dvhart@linux.intel.com>
	<87d56d9907a3ecd03e46d4fbca3c682a893133b6.1324493490.git.dvhart@linux.intel.com>
	<CABcZANkN1n28ZhSfeecx+voUmhe=8-Z_t3qQ_Xy5nMR=xMVbig@mail.gmail.com>
In-Reply-To: <CABcZANkN1n28ZhSfeecx+voUmhe=8-Z_t3qQ_Xy5nMR=xMVbig@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/9] native.bbclass: Fix variable remapping coverage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 19:52:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/21/2011 11:26 AM, Chris Larson wrote:
> On Wed, Dec 21, 2011 at 11:58 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> diff --git a/meta/recipes-devtools/autoconf/autoconf.inc b/meta/recipes-devtools/autoconf/autoconf.inc
>> index 08a1b02..1d0cf90 100644
>> --- a/meta/recipes-devtools/autoconf/autoconf.inc
>> +++ b/meta/recipes-devtools/autoconf/autoconf.inc
>> @@ -6,6 +6,8 @@ LICENSE = "GPLv3"
>>  HOMEPAGE = "http://www.gnu.org/software/autoconf/"
>>  SECTION = "devel"
>>  DEPENDS += "m4-native"
>> +DEPENDS_virtclass-native = "m4-native gnu-config-native"
>> +DEPENDS_virtclass-nativesdk = "m4-nativesdk gnu-config-nativesdk"
> 
> Is this bit needed? If so, I'm not seeing a description of this change
> in the commit message, unless I'm missing something.

It appears to me that Richard just moved these from autoconf_2.68.bb to
autoconf.inc unchanged. The [R]DEPENDS stuff in the recipe may have been
added to work around the issue this patch addresses, and the DEPENDS was
redundant. After removing that and the RDEPENDS* (which are now handled
properly by native.bbclass) moving the remaining 2 DEPENDS_virtuclass*
assignments into the .inc along with the only remaining DEPENDS makes
sense to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

