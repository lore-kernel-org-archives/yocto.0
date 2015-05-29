Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CED6E00988; Fri, 29 May 2015 12:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA28E0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:46:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2015 12:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,519,1427785200"; d="scan'208";a="717709834"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 29 May 2015 12:46:11 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.143]) with mapi id
	14.03.0224.002; Fri, 29 May 2015 12:46:11 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>, Trevor Woerner
	<twoerner@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Question on building out-of-tree modules on the target
Thread-Index: AdCReOu3pXj0Q3tfSEaVNG//rlsQSQJBlt8A//+P5QD///6w4A==
Date: Fri, 29 May 2015 19:46:10 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EFAF5B@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
	<5568BC20.7080703@gmail.com> <D18E0E6B.CFFFE%darren.hart@intel.com>
In-Reply-To: <D18E0E6B.CFFFE%darren.hart@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Fri, 29 May 2015 19:46:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok - so we established that we want it... If I get some clarifications in t=
here about the "rarity" of the situation that would allow someone to develo=
p on the target and also the benefits of having a verified cross-developmen=
t system if they were to develop on the host, does the rest of the section =
stand as is?  Are there any issues with it?

Thanks,=20
Scott

>-----Original Message-----
>From: Hart, Darren
>Sent: Friday, May 29, 2015 12:40 PM
>To: Trevor Woerner; Rifenbark, Scott M; yocto@yoctoproject.org
>Cc: Wold, Saul
>Subject: Re: [yocto] Question on building out-of-tree modules on the targe=
t
>
>On 5/29/15, 12:21 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:
>
>>Hi Scott,
>>
>>On 05/18/15 10:42, Rifenbark, Scott M wrote:
>>> I have a section in the YP Linux Kernel Development Manual that talks
>>>about building out-of-tree-modules on the target -
>>
>>Interestingly enough, I was just reading through that document the
>>other day. As soon as I saw a section titled "Building Out-Of-Tree
>>Modules _On The Target_" I thought to myself "why would anyone be doing
>>development on the target and not the host?" and skipped to the next
>section.
>>
>>If it were me, I'd just remove that section altogether. I'm of the
>>opinion that doing development work on the target is wrong (if for no
>>other reason than to prove your cross-development setup is working
>>correctly), but that's just me.
>>
>>;-)
>>
>
>I personally agree, but having it documented means I get to answer a lot f=
ew
>emails about people insisting on doing this. The section stays.
>
>--
>Darren Hart
>Intel Open Source Technology Center
>


