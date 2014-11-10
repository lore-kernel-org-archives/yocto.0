Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11830E0085F; Mon, 10 Nov 2014 06:44:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73D47E007C2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 06:44:40 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 733AE2079371;
	Mon, 10 Nov 2014 14:44:39 +0000 (UTC)
Message-ID: <5460CF51.1040407@mindchasers.com>
Date: Mon, 10 Nov 2014 09:44:33 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <545FD907.2070003@mindchasers.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E52758@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E52758@ORSMSX101.amr.corp.intel.com>
Subject: Re: newbb.vim vs skeleton recipe in yocto-docs dev manual....
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
X-List-Received-Date: Mon, 10 Nov 2014 14:44:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2014 09:28 AM, Rifenbark, Scott M wrote:
> newbb.vim needs to be patched.

Thanks Scott.  I'll submit a patch later this week.  Let me see if 
anyone else wants to provide input on what should be in the template.

Bob


>
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bob Cochran
>> Sent: Sunday, November 09, 2014 1:14 PM
>> To: Yocto discussion list
>> Subject: [yocto] newbb.vim vs skeleton recipe in yocto-docs dev manual....
>>
>> Hi,
>>
>> I just noticed that newbb.vim in bitbake/contrib is notably different from the
>> skeleton recipe proposed in the latest Dev Manual.
>>
>> I'll submit a patch if someone can give me some guidance on what should be
>> in newbb.vim (or maybe it's the manual that needs to be patched).
>>
>> Bob
>>
>>
>>  From yocto-docs: Dev Manual (modify the following skeleton recipe):
>>
>> SUMMARY = ""
>> HOMEPAGE = ""
>> LICENSE = ""
>> LIC_FILES_CHKSUM = ""
>> SRC_URI = ""
>> SRC_URI[md5sum] = ""
>> SRC_URI[sha256sum] = ""
>> S = "${WORKDIR}/${PN}-${PV}"
>>
>>
>>
>>  From newbb.vim:
>>
>> DESCRIPTION = ""
>> HOMEPAGE = ""
>> LICENSE = ""
>> SECTION = ""
>> DEPENDS = ""
>>
>> SRC_URI = ""
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


