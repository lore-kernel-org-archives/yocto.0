Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57694E01653
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 18:46:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Oct 2013 18:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1076,1371106800"; d="scan'208";a="391368953"
Received: from unknown (HELO [10.255.15.234]) ([10.255.15.234])
	by orsmga001.jf.intel.com with ESMTP; 10 Oct 2013 18:45:56 -0700
Message-ID: <52575854.6080302@linux.intel.com>
Date: Thu, 10 Oct 2013 18:45:56 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130923 Thunderbird/17.0.9
MIME-Version: 1.0
To: Jeff Osier-Mixon <jefro@jefro.net>
References: <CAPhnLPBDr_LhzOpjs7-sOsf7ujKGDcchxirH45kfHcyqnUaxoA@mail.gmail.com>
	<52571E27.70308@gna.org>
	<CA+YB3raEO5Ek5EdkAuezyW+D3tj5-Aod2k+BRg5UWF_UWUHmtg@mail.gmail.com>
	<52572994.4050006@gna.org>
	<CAP9ODKoaV71QNHnqfwqnajhORu=1m82YaUiFo41HhcvUn6E-Rg@mail.gmail.com>
	<CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
In-Reply-To: <CA+YB3rZOFCTdJ0wtVa_qTt1QRZuT=nE2MZ2EXEqUs55Lyfiruw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Yocto Project 1.5_M5.rc6
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
X-List-Received-Date: Fri, 11 Oct 2013 01:46:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Sorry for the top post here. The real reason we still have Qt3 is 
because it's required part of the LSB spec.  OE-Core contains Qt4 and we 
know that meta-qt5 exists from Otavio and Martin.

I know that Richard and Paul have been watching what's going on with 
meta-qt5.

Sau!

On 10/10/2013 05:31 PM, Jeff Osier-Mixon wrote:
> Game, set, and match!  This is also why I don't play golf!
>
> There are many layers I would love to see in the YP QA process and I
> would count meta-qt5 in the top priority. However, we only have so
> many resources, so we have to focus on the core right now. I'd be
> happy to talk offline about finding ways to locate new resources.
>
> On Thu, Oct 10, 2013 at 5:01 PM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> On Thu, Oct 10, 2013 at 7:26 PM, Christian Gagneraud <chgans@gna.org> wrote:
>>> On 11/10/13 11:02, Jeff Osier-Mixon wrote:
>>>>
>>>> Hi Chris - well-intended sarcasm isn't usually a problem, but I want
>>>> to make sure to address your concerns here. We would like to see a
>>>> meta-qt5 as well but so far one has not been submitted. If you would
>>>> like to submit one, I would be happy to put you in touch with the
>>>> right maintainers who can guide you through the process.
>>>
>>>
>>> Hi Jeff,
>>>
>>> Well-intended answer! ;) But i want to make sure to address your concerns
>>> here. I would like to see the meta-qt5 [1] in Yocto's QA process. If you
>>> would like to integrate it, I would be happy to put you in touch with the
>>> right maintainers who can guide you through the process.
>>>
>>> Chris.
>>>
>>> [1] https://github.com/meta-qt5
>>
>> Hey, this was even easier.
>>
>> I am one of meta-qt5 maintainers and I am sure Martin will be more
>> than happy to get it into the QA process. Jeff ... this was easy :-)
>>
>> --
>> Otavio Salvador                             O.S. Systems
>> http://www.ossystems.com.br        http://code.ossystems.com.br
>> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>
>
>

