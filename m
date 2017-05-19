Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D79E3E00B58; Thu, 18 May 2017 23:32:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [213.174.32.96 listed in dnsbl.sorbs.net]
Received: from mailout01.ims-firmen.de (mailout01.ims-firmen.de
	[213.174.32.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA92E00B47
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 23:32:28 -0700 (PDT)
Received: from mailin01.ims-firmen.de ([192.168.1.141])
	by mailout01.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1dBbSc-0002nJ-iG; Fri, 19 May 2017 08:32:26 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin01.ims-firmen.de with esmtpsa
	(TLSv1.2:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1dBbSc-0004OK-1q; Fri, 19 May 2017 08:32:26 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 1097B514477;
	Fri, 19 May 2017 08:32:26 +0200 (CEST)
To: Khem Raj <raj.khem@gmail.com>
References: <973975c4-73b9-d312-b7cc-493678a53805@iseg-hv.de>
	<CAMKF1soSDHzsPyDhBrYxu4--7vq-i2uRbACTrHJKYBTX32HBaA@mail.gmail.com>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <1d4f5724-a710-9a33-72a6-e65d6f86b833@iseg-hv.de>
Date: Fri, 19 May 2017 08:30:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1soSDHzsPyDhBrYxu4--7vq-i2uRbACTrHJKYBTX32HBaA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error: when reparsing
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
X-List-Received-Date: Fri, 19 May 2017 06:32:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Ok. So according to you I can only build one image per day succesfully ?


Am 18.05.2017 um 18:00 schrieb Khem Raj:
> On Thu, May 18, 2017 at 8:14 AM, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
>> Hi,
>>
>> I was building a custom-linux-image. I succesfully build the image with the
>> help of bitbake tool.
>>
>> When rebuilding the same image again, i was experiencing an error.
>>
>> ERROR: When reparsing <filepath>.do_install, the basehash value changed from
>> 3c2401cc61fce5eb899de19dbf78862f to 558516a74162944aff656a7d01321b12. The
>> metadata is not deterministic and this needs to be fixed.
>>
>> Then i deleted the build/tmp and build/sstate, and again tried to rebuild.
>> But Now I encountered with an another errors.
>>
>> Error:
>> </home/hutch/yocto_master_wcs_10_4_2013/oe-core/build/tmp/deploy/ipk/all/nativesdk-packagegroup-sdk-host_1.0-r11_all.ipk
>>     Matched in b manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk
>> Please verify which package should provide the above files.
>> NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn't need to be
>> rerun and all succeeded.
>>
>> I deleted all the files in /deploy/ipk, build/sstate, build/tmp-glibc and
>> also deploy/sdk/ for building a new image.
>>
>> Is there any alternative for rebuilding the image without the above errors
>> and without deleting the file everytime.
> if you are using DATE, TIME or combination of these
> variables in metadata then this could cause
> such issues.
>
>> Best Regards,
>> Rajesh
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


