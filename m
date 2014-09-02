Return-Path: <danismostlikely@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75AE4E0054C; Tue,  2 Sep 2014 15:50:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danismostlikely[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3908BE004F5
	for <yocto@yoctoproject.org>; Tue,  2 Sep 2014 15:50:51 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id m20so7858322qcx.35
	for <yocto@yoctoproject.org>; Tue, 02 Sep 2014 15:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=m2ScJa+ED90lGvwGcNkc8GcBOUgftr/BwczGOlzWUWQ=;
	b=Yue7gvqGjizZeth8TxcDLY3YjM4WQM1YoScMKugLO4jyBogflVoAWgryDco5nYzavu
	SsGn7xhxZ/rQaSvLZLdHF5dONPAW1nKxQma+3v4j4St/wWoxxt7c1fV89me9x5Ej+1xd
	EtEMuXLn2Ei9r8ruc6ppKp3pwYRNPKgDAio2p+XXywZfX1rzg8IygMbWxqK6+Pu2SyP1
	wTrD3w8l77JSPCDWk7B256UqA7AbRnY5A7VJ7JtpqtKvB2UCruarYNtnXbnFQS8eugT5
	D2Rzs3ib8U4mL1PrzVSD75A1Qnb7ZA63iS8PxXnViiJaP2A+uGcYsQNHSbjAAAKqKTeS
	jH0w==
MIME-Version: 1.0
X-Received: by 10.224.173.7 with SMTP id n7mr2875582qaz.15.1409698250459; Tue,
	02 Sep 2014 15:50:50 -0700 (PDT)
Received: by 10.96.205.134 with HTTP; Tue, 2 Sep 2014 15:50:50 -0700 (PDT)
In-Reply-To: <CAMKF1sq7w79s-TBV=RU8d2NP7ueJ8U8UFRSe2jBcfOzJ14qQzw@mail.gmail.com>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
	<CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
	<CAMKF1spj67i2i_50m=oTUpS3x2J=de0UxGf70zLhn-a7c4M3QA@mail.gmail.com>
	<1409314734.29296.169.camel@ted>
	<CAMKF1spiNQm8GVSNApqqhd6WFJnD8-=2A0_JxD85dKGaqkgOoA@mail.gmail.com>
	<CAMKF1sq7w79s-TBV=RU8d2NP7ueJ8U8UFRSe2jBcfOzJ14qQzw@mail.gmail.com>
Date: Tue, 2 Sep 2014 16:50:50 -0600
Message-ID: <CACS+7ZSnU5Juu5iWh2aO=4vW86BJFP6DP0ckRDAdF2O98xWVPA@mail.gmail.com>
From: Dan McGregor <danismostlikely@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Wed, 03 Sep 2014 08:06:32 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Otavio Salvador <otavio@ossystems.com.br>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Tue, 02 Sep 2014 22:50:55 -0000
Content-Type: text/plain; charset=UTF-8

On 29 August 2014 21:01, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Aug 29, 2014 at 4:59 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Fri, Aug 29, 2014 at 5:18 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> On Thu, 2014-08-28 at 18:46 -0700, Khem Raj wrote:
>>>> On Thu, Aug 28, 2014 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> > reproduced. will apprise as I have some fix.
>>>>
>>>> OK pushed another patch to the contrib tree that should take care of both
>>>> xf86-input-synaptics xf86-input-vmmouse
>>>
>>> https://autobuilder.yoctoproject.org/main/builders/nightly-fsl-arm/builds/17/steps/BuildImages/logs/stdio
>>>
>>> xf86-video-imxfb has the same issue and will need the same fix. Otavio
>>> cc'd...
>>>
>>
>> I have sent a patch to meta-fsl-arm for this
>
> Until its installed, the patch is here
> http://patchwork.openembedded.org/patch/79443/
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

Is it possible to add an RREPLACES to these recipes so there's a clean
upgrade path from eglibc?

