Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3404DE00C81; Tue, 13 Dec 2016 06:03:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72F9E00C75
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 06:03:19 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2016 06:03:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; d="scan'208";a="202078105"
Received: from mlopezva-mobl.amr.corp.intel.com (HELO [10.254.191.171])
	([10.254.191.171])
	by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2016 06:03:17 -0800
To: Patrick Ohly <patrick.ohly@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
	<4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
	<f62528f8-aadc-2542-2d2a-96faaa5af01f@linux.intel.com>
	<1481557268.17535.234.camel@intel.com>
	<a696ba47-0a02-d90e-d2cd-297a40dd73c4@linux.intel.com>
	<1481569357.17535.247.camel@intel.com>
From: "Lopez, Mariano" <mariano.lopez@linux.intel.com>
Message-ID: <687ed4bc-4a94-ef33-9b5c-83bfa73f3409@linux.intel.com>
Date: Tue, 13 Dec 2016 08:03:17 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1481569357.17535.247.camel@intel.com>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 13 Dec 2016 14:03:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/12/2016 1:02 PM, Patrick Ohly wrote:
> On Mon, 2016-12-12 at 09:49 -0600, Mariano Lopez wrote:
>> On 12/12/16 09:41, Patrick Ohly wrote:
>>> On Mon, 2016-12-12 at 08:59 -0600, Mariano Lopez wrote:
>>>>>> In particular the "complexity" column is a bit subjective. Stefano, I
>>>>>> hope you don't mind that I did not quite buy the "easy to use"
>>>>>> characterization of swupdate ;-)
>>>>> No worry...and I have not written myself. It was inserted by Mariano, so
>>>>> it looks like that swupdate at least for Mariano is "easy to use".
>>>>> I think it is correct to point out that customization is required.
>>>> Compared to other update mechanism that I tested it was the easier to
>>>> implement.
>>> Which "getting started" document or presentation were you using? The
>>> documentation for mender (https://docs.mender.io/) is very
>>> straight-forward (partly of course because it doesn't need to cover many
>>> variations), while for swupdate
>>> (http://sbabic.github.io/swupdate/swupdate.html) I found it less clear
>>> how to begin.
>>>
>> When I did a research in update mechanism, mender wasn't yet available,
>> and indeed it seems very straight forward (need to test it before final
>> veredict). But if you compare SWUpdate, swupd, and OSTree; SWUpdate is
>> by far less complex than the other two
> Ease-of-use is not necessarily determined by the complexity. Good
> integration and documentation can go a long way towards making a complex
> solution easy to use - when sticking to the pre-defined usage patterns.
>
> The opposite is also true: a simple solution may be hard to use if all
> one gets is the source code and one first has to reverse-engineer the
> usage model.

Completely agree with you Patrick, it could be a simple solution very 
hard to use because of the lack of documentation

>
> I agree that the complexity is roughly swupdate < ostree < swupd and
> there's also no doubt that the latter two aren't easy to use (mostly due
> to lacking documentation and integration), but I'm still not sure what
> documentation the "easy to use" verdict for swupdate is based on.
>

I based my verdict using this source:
https://sbabic.github.io/swupdate/
You can follow this and create your update image few hours.

Cheers
Mariano

