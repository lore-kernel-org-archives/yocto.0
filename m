Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42658E00307
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 16:03:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 93769F811F5; Wed, 18 Jan 2012 17:03:09 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5A492F811F4;
	Wed, 18 Jan 2012 17:03:07 -0700 (MST)
Message-ID: <4F175DBB.1070606@mlbassoc.com>
Date: Wed, 18 Jan 2012 17:03:07 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Yang, Fei" <fei.yang@intel.com>
References: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
	<4F1745A6.3050502@mlbassoc.com>
	<02E7334B1630744CBDC55DA8586225831FAF4D@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <02E7334B1630744CBDC55DA8586225831FAF4D@ORSMSX102.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making machine config a build dependency for core-image recipes
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
X-List-Received-Date: Thu, 19 Jan 2012 00:03:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-18 16:50, Yang, Fei wrote:
>> This package is not marked as machine dependent via
>>     PACKAGE_ARCH = "${MACHINE_ARCH}"
>> perhaps it should be since /etc/inittab is target dependent?
>
> Well, I just checked poky/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb, it does have PACKAGE_ARCH = "${MACHINE_ARCH}". Am I looking at wrong bb file? There is another file named sysvinit_2.88dsf.bb which doesn't have PACKAGE_ARCH set.

Sorry, missed that one.  You should be rebuilding sysvinit-inittab

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

