Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D53AE0086E; Thu,  5 Mar 2015 08:59:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B89E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 08:59:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t25Gxa6D008731
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Mar 2015 08:59:36 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 5 Mar 2015 08:59:36 -0800
Message-ID: <54F88B52.3000004@windriver.com>
Date: Thu, 5 Mar 2015 11:58:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Nathan Rossi
	<nathan@nathanrossi.com>, "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.11.1503050659220.9386@Device-040570>	<CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: in kernel manual, should pick another example for KMACHINE
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
X-List-Received-Date: Thu, 05 Mar 2015 16:59:49 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-05 11:56 AM, Rifenbark, Scott M wrote:
> I like Nathan's suggestion for the text.  Can someone explain to me though why emenlow is not a good example here?  In the linux-yocto_3.14.bbappend file, KMACHINE_emenlow-noemgd is set equal to "emenlow".  Isn't this equating emenlow-noemgd and emenlow?  I am probably mis-understanding it so I could use some further explanation.
>

The example was a good one, the issue that is being mentioned is
simply that meta-intel has removed the emlow* machine definitions,
so there's no code to use as a concrete addition to the docs.

Bruce

> Thanks,
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Nathan Rossi
>> Sent: Thursday, March 05, 2015 5:48 AM
>> To: Robert P. J. Day
>> Cc: Yocto discussion list
>> Subject: Re: [yocto] in kernel manual, should pick another example for
>> KMACHINE
>>
>> On Thu, Mar 5, 2015 at 10:03 PM, Robert P. J. Day <rpjday@crashcourse.ca>
>> wrote:
>>>
>>>    in section 3.2 of the kernel dev manual, there is a discussion of
>>> KMACHINE and how it is *typically* set to the same value as MACHINE,
>>> but there are cases where that might not be true; however, the example
>>> used to demonstrate this -- emenlow and emenlow-noemgd -- doesn't
>> seem
>>> appropriate as there is no "emenlow" machine definition file anymore
>>> in meta-intel. AFAICT, all of those non-noemgd machine definitions are
>>> gone.
>>>
>>>    in all the layers i have checked out, the only layer where i see
>>> KMACHINE covering a number of MACHINE values is meta-xilinx
>>> (zynq-based machines). it sounds picky but, when demonstrating some
>>> concept, i think it's important that examples used actually exist in
>>> the code base in case people want to check.
>>
>> It comes around a bit due to the nature of different types of hardware. You
>> will find that amongst most of the meta-* bsp layers there exists two types of
>> MACHINE. You have the layers like meta-xilinx, meta-ti, etc which have
>> machines for each board. And then there are the layers like meta-intel which
>> have machines for each platform or SoC. There are a number of reasons for
>> each way.
>>
>> At least for Zynq, the kernel can (if you ignore that it has FPGA
>> logic) be configured and built the same way for all the boards with device
>> trees handling the differences. And as such the configuration is setup for the
>> SoC instead of the board. The reason that you actually see KMACHINE
>> differences in meta-xilinx is that the layer uses the linux-yocto build flow as
>> well as providing an in layer config cache for its targeted KMACHINE's. Which I
>> believe is rarely done in bsp layers that inherit linux-yocto for their kernels (or
>> bbappend to linux-yocto).
>>
>> You could re-word the documentation to cover this case with something like:
>> "This variable is typically set to the same value as the MACHINE variable
>> however in some cases may instead refer to the underlying platform of the
>> MACHINE."
>>
>> Regards,
>> Nathan
>>
>>>
>>> rday
>>>
>>> --
>>>
>>>
>> ===========================================================
>> =============
>>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>>                          http://crashcourse.ca
>>>
>>> Twitter:                                       http://twitter.com/rpjday
>>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>>>
>> ===========================================================
>> ===========
>>> ==
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


