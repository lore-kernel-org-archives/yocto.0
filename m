Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D01DE00C66; Tue, 17 Jun 2014 08:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC308E00C73
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:57:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5HFv0Mk000184
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jun 2014 08:57:01 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 17 Jun 2014 08:57:00 -0700
Message-ID: <53A0654A.5060606@windriver.com>
Date: Tue, 17 Jun 2014 23:56:58 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Patrick Doyle <wpdster@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
	<CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
In-Reply-To: <CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 15:57:37 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 06/17/2014 11:31 PM, Patrick Doyle wrote:
> Thanks Paul,
> I hope I didn't step on any toes with this.  I'm still confused about
> what parts of the project are "Yocto" and what parts are "OE".

The oe-core is a part of yocto project, which is the meta layer in
poky.

>
> Do you have any guesses as to when this might show up in the official
> dora branch?

I've resend it oe-core, and will ping RP sooner.


@Paul,
I'm sorry, seems that I missed your email, but I still can't find it
when I searched again.

// Robert

>
> I am asking because we have a development flow here (I'm still not
> sure I'm 100% happy with it, but it's what we've got), where we mirror
> the poky repository, check out from that mirror very occasionally, and
> generate a complete-from-scratch even more occasionally.
> Unfortunately, we have a situation right now where, if somebody were
> to do that (say, hypothetically speaking, a new person joins the
> team), we can't generate a complete build from scratch.  I could apply
> my patch to our local mirror, and thus break the mirror.  Or I could
> create a local clone of the mirror and reference our local clone.  Or
> …
>
> If this will show up in dora in a matter of hours to a day or so, I'm
> going to stop thinking about this.  If it is anticipated that it will
> take longer, then I'll come up with a solution.
>
> I'm not trying to complain nor advocate that this patch get applied
> faster than would be normal, I'm just trying to plan my day :-)
>
> --wpd
>
>
> On Tue, Jun 17, 2014 at 11:07 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Hi Patrick,
>>
>> On Tuesday 17 June 2014 09:36:05 Patrick Doyle wrote:
>>> It seems that 585324fee380109acd9986388f857f413a60b896 is no
>>> longer there in git and it has been rewritten to
>>> ffc3ad4945da69f3caa2b40e4eed715a9a8d9526
>>
>> FYI I sent a similar patch for dora to the OE-Core list a week ago; hopefully
>> it should be merged soon.
>>
>> (Robert: I think my CC of the patch to you at the time bounced, not sure what
>> happened.)
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>
>

