Return-Path: <darren.hart@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB492E00988; Fri, 29 May 2015 12:58:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C0F4E0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:58:42 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 29 May 2015 12:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,519,1427785200"; d="scan'208";a="578981391"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga003.jf.intel.com with ESMTP; 29 May 2015 12:58:41 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Fri, 29 May 2015 12:58:39 -0700
Received: from fmsmsx118.amr.corp.intel.com ([169.254.1.234]) by
	FMSMSX153.amr.corp.intel.com ([169.254.9.37]) with mapi id
	14.03.0224.002; Fri, 29 May 2015 12:58:37 -0700
From: "Hart, Darren" <darren.hart@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Trevor Woerner
	<twoerner@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question on building out-of-tree modules on the target
Thread-Index: AdCReOu3pXj0Q3tfSEaVNG//rlsQSQJBlt8A//+P5QD///6w4IAABoaA
Date: Fri, 29 May 2015 19:58:37 +0000
Message-ID: <D18E10A4.D001E%darren.hart@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
	<5568BC20.7080703@gmail.com> <D18E0E6B.CFFFE%darren.hart@intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EFAF5B@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EFAF5B@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.116.179]
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Question on building out-of-tree modules on the target
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
X-List-Received-Date: Fri, 29 May 2015 19:58:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11D80CEF4BF75240B6455C4C41F53F1D@intel.com>
Content-Transfer-Encoding: quoted-printable

On 5/29/15, 12:46 PM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

>Ok - so we established that we want it... If I get some clarifications in
>there about the "rarity" of the situation that would allow someone to
>develop on the target and also the benefits of having a verified
>cross-development system if they were to develop on the host, does the
>rest of the section stand as is?  Are there any issues with it?


Adding something like:

"While the traditional Yocto Project development model would be to include
kernel modules as part of the normal build process, some developers find
it useful to build modules on the target."

This section is lagging the 1.8 addition of kernel-devsrc, which was not
applied uniformly across all included SDK images. There is probably a
patch necessary to do that for a 1.8 point release, and then this document
could be made to reflect that.

--
Darren

>
>Thanks,=20
>Scott
>
>>-----Original Message-----
>>From: Hart, Darren
>>Sent: Friday, May 29, 2015 12:40 PM
>>To: Trevor Woerner; Rifenbark, Scott M; yocto@yoctoproject.org
>>Cc: Wold, Saul
>>Subject: Re: [yocto] Question on building out-of-tree modules on the
>>target
>>
>>On 5/29/15, 12:21 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:
>>
>>>Hi Scott,
>>>
>>>On 05/18/15 10:42, Rifenbark, Scott M wrote:
>>>> I have a section in the YP Linux Kernel Development Manual that talks
>>>>about building out-of-tree-modules on the target -
>>>
>>>Interestingly enough, I was just reading through that document the
>>>other day. As soon as I saw a section titled "Building Out-Of-Tree
>>>Modules _On The Target_" I thought to myself "why would anyone be doing
>>>development on the target and not the host?" and skipped to the next
>>section.
>>>
>>>If it were me, I'd just remove that section altogether. I'm of the
>>>opinion that doing development work on the target is wrong (if for no
>>>other reason than to prove your cross-development setup is working
>>>correctly), but that's just me.
>>>
>>>;-)
>>>
>>
>>I personally agree, but having it documented means I get to answer a lot
>>few
>>emails about people insisting on doing this. The section stays.
>>
>>--
>>Darren Hart
>>Intel Open Source Technology Center
>>
>
>


--=20
Darren Hart
Intel Open Source Technology Center



