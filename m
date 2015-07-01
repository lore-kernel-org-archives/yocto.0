Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DCACE00A1E; Wed,  1 Jul 2015 09:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71FA9E009F3
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 09:43:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jul 2015 09:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,387,1432623600"; d="scan'208";a="754152978"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.163])
	([10.219.4.163])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jul 2015 09:43:13 -0700
Message-ID: <559418C1.5040202@linux.intel.com>
Date: Wed, 01 Jul 2015 11:43:45 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>, 
	"Stanciu, Alin" <Alin.Stanciu@spirent.com>
References: <A50844B104EDFA45BBC46099A9C6C8407B0BB7D6@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
	<CAFZh4h_P6NrLmWNuK-4d0UYANwR0DfB3RBTOGZ_AjpszFz6a9g@mail.gmail.com>
In-Reply-To: <CAFZh4h_P6NrLmWNuK-4d0UYANwR0DfB3RBTOGZ_AjpszFz6a9g@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Retrieve list of all software/applications/packages installed on Yocto
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
X-List-Received-Date: Wed, 01 Jul 2015 16:43:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 07/01/2015 06:41 AM, Brian Hutchinson wrote:
> On Jul 1, 2015 7:34 AM, "Stanciu, Alin" <Alin.Stanciu@spirent.com> wrote:
>>
>> Hello,
>>
>>
>>
>> I would simply like to know how to obtain a list of all software
> packages/products (basically all applications) running in my Yocto build.
>>
>>
>>
>> Can this be done via a recipe? How can I find out whether my build has a
> recipe? What are other ways are there to get the listing?
>>
>>
>>
>> Thanks
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> Spirent Communications e-mail confidentiality.
>> ------------------------------------------------------------------------
>> This e-mail contains confidential and / or privileged information
> belonging to Spirent Communications plc, its affiliates and / or
> subsidiaries. If you are not the intended recipient, you are hereby
> notified that any disclosure, copying, distribution and / or the taking of
> any action based upon reliance on the contents of this transmission is
> strictly forbidden. If you have received this message in error please
> notify the sender by return e-mail and delete it from your system.
>>
>> Spirent Communications plc
>> Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United
> Kingdom.
>> Tel No. +44 (0) 1293 767676
>> Fax No. +44 (0) 1293 767677
>>
>> Registered in England Number 470893
>> Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10
> 9XN, United Kingdom.
>>
>> Or if within the US,
>>
>> Spirent Communications,
>> 27349 Agoura Road, Calabasas, CA, 91301, USA.
>> Tel No. 1-818-676- 2300
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> When you build your image ... a manifest file will contain the list of
> packages (with versions) contained in that image.
>
> If you have a running system, you can generate kind of the same list
> (depending on which package manager is being used - if any) by running a
> command like opkg list-installed.
>
In case one needs a more detail on the image, you can enable 
*buildhistory* class. More info on

http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#maintaining-build-output-quality

and specifically this

http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#understanding-what-the-build-history-contains


> Regards,
>
> Brian
>
>
>

