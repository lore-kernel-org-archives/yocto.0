Return-Path: <prvs=2054d270f=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F33DE00DF0; Tue,  5 Nov 2019 00:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [91.230.2.91 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Nov 2019 00:27:28 PST
Received: from mail2.skidata.com (mail2.skidata.com [91.230.2.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FAEE007D4
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 00:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=skidata.com; i=@skidata.com; q=dns/txt; s=selector1;
	t=1572942449; x=1604478449;
	h=subject:to:cc:references:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=+5PGtiu2Lr2DtXV7tQMtFa60jBELmuz4k7IIT/2xhWE=;
	b=GcwUor6Ur8ZNK9EGNOgys96inXQ18VBHB59Ud8SE/ULgxCQLQDe6v6tQ
	ePxNmTMuQWVmHwADVguct9g0EBYp7ffrhoQ5FW1VFXte6nTtKVA5UTJN9
	4R0L02vb9M6E7fOWjT3NrpLKJtiIT6D6LiFapK5G27Y68i4oVRp9d79au
	vINwRPfINPkenEh+0MJDxb+AMIDV2+NC4chwZgScn/VOboJD8XlC1YYnQ
	A6mKNcrnbE5WfDbAFzDAZif+j9Oa8yMX3SlWI9nAdyfuaZNhlUNPZRsUh
	7v898/rZFmJGXWWiG4mYublC6o5/52bEqH9o6S/xQfmzp4WACmc5RJVJ6 A==;
IronPort-SDR: X10Hquqp8P5Ly5GUCh3TCtvZ+XYhHrQM2TEYSAhFsduzq+Ts8MfXZzeffqMtwkGVU8Yn1D9WXE
	mmfGTFs+ZY/2HZPSWA2XRnjnZqX6JAlW9YjuDLJ051jS3mJJaqp1l2DDqW/1vcfUbsQ1C03IrA
	m7T73z+5ofJDdTvOsJxH0kya17WDM7Zyifh2Issgigb/GZmy84FrEduePnReflVf/TEggWXGG3
	23IDEBBexavpeooScugd2YvVZT1tjGI8SsDXBEldSZOABaPjcIXe9nn+rtBE1CpIVvfTTdp/g9
	iqc=
X-IronPort-AV: E=Sophos;i="5.68,270,1569276000"; 
   d="scan'208";a="2407040"
To: Vincent Prince <vincent.prince.fr@gmail.com>, "Shockley, Timothy"
	<timothy.shockley@intel.com>
References: <94A31A34C56D884EA74A31C5DD73175B63C2DF48@FMSMSX103.amr.corp.intel.com>
	<CAB2nKc9pSP+YzipHSqgRW5kYu5KM7sV30jBwqGSvEF7zAYCwmA@mail.gmail.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <0905d063-a943-e74b-c54e-3b1f1fa43c8a@skidata.com>
Date: Tue, 5 Nov 2019 09:26:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAB2nKc9pSP+YzipHSqgRW5kYu5KM7sV30jBwqGSvEF7zAYCwmA@mail.gmail.com>
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex4srv.skidata.net (192.168.111.82) To
	sdex5srv.skidata.net (192.168.111.83)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, henning@itconsulting-heinold.de,
	"Maxin B. John" <maxin.john@intel.com>
Subject: Re: help with meta-java
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
X-List-Received-Date: Tue, 05 Nov 2019 08:27:30 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,
unfortunately, due to a different focus on my day job in the previous 
months I didn't had time for doing any work on meta-java.

This will change in the coming weeks and I will start to review and test 
patches again.

Nonetheless it would be great if one of the other listed maintainers (or 
somebody else) can support me as there will be significant refactoring, 
cleanup and update work to be done ;-)

regards;Richard.L

On 05/11/2019 09:18, Vincent Prince wrote:
> Hi Tim,
> 
> There are some pending stuff on meta-java ML
> openembedded-devel@lists.openembedded.org and layer is not zeus
> compatible yet.
> I'm trying to contact layer maintainers for several weeks, i don't
> know if information is obsolete or if people are too busy/away?
> 
> Main layer maintainers:
>    Henning Heinold <henning@itconsulting-heinold.de>
>    Maxin John <maxin.john@intel.com>
>    Otavio Salvador <otavio@ossystems.com.br>
>    Richard Leitner <richard.leitner@skidata.com>
> 
> For now, I just use master-next, and I'm considering using
> https://github.com/AdoptOpenJDK/ prebuilds, meta-java is quite hard to
> understand I found :)
> 
> Best regards,
> Vincent
> 
> Le lun. 4 nov. 2019 à 18:23, Shockley, Timothy
> <timothy.shockley@intel.com> a écrit :
>>
>> Helllo,
>>
>>
>>
>> I am looking for some help with meta-java, specifically upgrading to zeus branch and also upgrading openjdk to a more recent release in order to address CVEs. Wondering if there is anyone else working / needing this?
>>
>>
>>
>> Thanks,
>>
>> Tim Shockley
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

