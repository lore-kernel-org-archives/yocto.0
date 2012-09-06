Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E1AE01430
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 15:14:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2012 15:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,381,1344236400"; d="scan'208";a="189761416"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by azsmga001.ch.intel.com with ESMTP; 06 Sep 2012 15:14:41 -0700
Message-ID: <50492051.8020109@linux.intel.com>
Date: Thu, 06 Sep 2012 15:14:41 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Chris Conlon <chris@yassl.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
	<ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
	<A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
In-Reply-To: <A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
Cc: yocto@yoctoproject.org
Subject: Re: CyaSSL Yocto Recipe
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
X-List-Received-Date: Thu, 06 Sep 2012 22:14:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/06/2012 02:59 PM, Chris Conlon wrote:
> Adding a direct link to the CyaSSL recipe file for review:
>
> www.yassl.com/files/yocto/cyassl_2.3.0.bb
> <http://www.yassl.com/files/yocto/cyassl_2.3.0.bb>
>
Chris,

On initial inspection of this recipe it looks OK, what package/libraries 
does it provide?  Are they the same as the openssl package?

You may need RCONFLICTS_${PN} and/or RPROVIDES_${PN}, where the ${PN} 
may need to be the package names in openssl, I need to check that.

I would suggest that initially you make this available as a standard
layer, possibly called meta-cyassl, it could be hosted on GitHub. You 
can add it to the OpenEmbedded Layer Index. See 
http://www.openembedded.org/wiki/LayerIndex

Distributions that want to use this instead of OpenSSL can then use your 
layer and select your recipe, if it's setup correctly it will provide 
what they need.

I hope this is helpful in moving things forward for you.

Sau!
Yocto Project Component Wrangler
aka Yocto Project User Space Architect

> Best Regards,
> Chris
>
> On Sep 6, 2012, at 10:32 AM, Kamble, Nitin A wrote:
>
>> And here is bit of information about CyaSSL from their
>> website.http://www.yassl.com/yaSSL/Products-cyassl.html
>> The CyaSSL embedded SSL library is a lightweight SSL library written
>> in ANSI C and targeted for embedded and RTOS environments - primarily
>> because of its small size, speed, and feature set.  It is commonly
>> used in standard operating environments as well because of its
>> royalty-free pricing and excellent cross platform support.  CyaSSL
>> supports industry standards up to the current TLS 1.2 level, is up
>> to20 times smaller than OpenSSL, and offers progressive ciphers such
>> as HC-128, RABBIT, and NTRU.  User benchmarking and feedback reports
>> dramatically better performance when using CyaSSL over OpenSSL.
>> Thanks,
>> Nitin
>> *From:*Chris Conlon [mailto:chris@yassl.com]
>> *Sent:*Thursday, September 06, 2012 9:07 AM
>> *To:*yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> *Cc:*Kamble, Nitin A
>> *Subject:*CyaSSL Yocto Recipe
>>
>> Hi,
>>
>> As per discussions with a few of the Yocto members, we have put
>> together a Yocto Project recipe for the CyaSSL embedded SSL library.
>> I have attached the recipe here for review and comments.
>>
>> Thanks,
>>
>> Chris Conlon
>> www.yassl.com <http://www.yassl.com>
>> chris@yassl.com <mailto:chris@yassl.com>
>> Skype: chris_conlon_07
>> +1 406 209 0601
>>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

