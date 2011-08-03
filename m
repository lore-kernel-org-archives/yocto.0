Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04EF34C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 10:01:59 -0500 (CDT)
Received: from mail-yx0-f180.google.com ([209.85.213.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 03 Aug 2011 08:01:59 -0700
Received: by yxi11 with SMTP id 11so445233yxi.25
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2011 08:01:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.155.1 with SMTP id i1mr2467585yhk.131.1312383718787; Wed,
	03 Aug 2011 08:01:58 -0700 (PDT)
Received: by 10.236.105.131 with HTTP; Wed, 3 Aug 2011 08:01:58 -0700 (PDT)
In-Reply-To: <BAE8F4D8-4A85-435C-93DC-1DD174DA9AFE@kernel.crashing.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
	<1312381376.2344.671.camel@rex>
	<201108031529.17776.paul.eggleton@linux.intel.com>
	<BAE8F4D8-4A85-435C-93DC-1DD174DA9AFE@kernel.crashing.org>
Date: Wed, 3 Aug 2011 08:01:58 -0700
Message-ID: <CAPhnLPACr0n0BwT4M5pmpqVy84diPnHO6Z9gTJiNuLDTM8ebcw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Wed, 03 Aug 2011 15:02:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

No, they're generated ad-hoc when needed.

Scott, let's regenerate them and talk about a regular generation of
them offline.

-b

On Wed, Aug 3, 2011 at 7:49 AM, Kumar Gala <galak@kernel.crashing.org> wrote:
>
> On Aug 3, 2011, at 9:29 AM, Paul Eggleton wrote:
>
>> On Wednesday 03 August 2011 15:22:56 Richard Purdie wrote:
>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>>>> Bug submitted:
>>>>
>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
>>>>
>>>> My question still stands even w/o it being in formal docs.
>>>
>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core changes.
>>> I'd be interested to know where we've missed the references to it and
>>> get to get those references fixed.
>>
>> git grep tells me we still have it in local.conf.sample in meta-yocto, as well
>> as in the reference manual.
>
> Yep, and not sure if the online docs:
>
> http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html
>
> are generated nightly or not?
>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

