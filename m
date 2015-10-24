Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CC39E00B66; Sat, 24 Oct 2015 14:34:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1541E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:34:45 -0700 (PDT)
Received: by lffz202 with SMTP id z202so114522163lff.3
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:34:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=30HxmWnoN2E7X+XF9WhNjQ+Dio6ro6ci3k5ExOvmREg=;
	b=JTZvtoCBQc8iRUo7XO+t3JEgEi/+MJ2yqvT5hKidxDUX/Mp3P0WKjeXG2iETp4kBvl
	pLEORXK58PIMhSP6vMSZSNiZR8H1/s45PWiAZ2BrBOK5fPfPirmPTOKKHoKJTqH805eY
	UZGLOkCPc5Sec0Z7y/jLipzExVJ0yRtEL0G10BuGkLH09L6hGznC1Dvy6kMnm0zTGtB/
	KED8o5qH0rw6ECszvs+i0Rm2Wt/Hv+Bd4rJEYdaBJEMLAiKfSai4ctAr1vqnVDsq6KEq
	PW6/1tA/TEoPbnrFx/nzjfs0cwrSHhQVmIPBH33Aj4WwrUoA/CokAmtiEfiEvk89xBzw
	J6Pg==
X-Gm-Message-State: ALoCoQkX1M5kvwGpuMwrsSQrMSym49rBAcih/Cpsdw5jkY7eCmQnKSmYeI7AHoS+ugS+x8fOFacb
X-Received: by 10.112.131.70 with SMTP id ok6mr14244013lbb.71.1445722483879;
	Sat, 24 Oct 2015 14:34:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.198.71 with HTTP; Sat, 24 Oct 2015 14:34:04 -0700 (PDT)
X-Originating-IP: [88.67.185.162]
In-Reply-To: <5879328.63HBpW5fi6@peggleto-mobl.ger.corp.intel.com>
References: <DUB122-W3822DB1A9BC96901F1DF0924B0@phx.gbl>
	<560E7269.6090903@gmail.com>
	<CAK18fxE5L0e9Mz-a-90K0Rs5GSkXfOvvc0JHbf2UR+aF15u-=w@mail.gmail.com>
	<5879328.63HBpW5fi6@peggleto-mobl.ger.corp.intel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Oct 2015 23:34:04 +0200
Message-ID: <CAK18fxFK0gBzcWKu_JWgJSpKo5Fxb=9cnay+9eKjyW4vQ3So_A@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [raspberryp2] Error during the build of linux kernel
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
X-List-Received-Date: Sat, 24 Oct 2015 21:34:47 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 11:32 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Saturday 24 October 2015 23:29:28 Andrei Gherzan wrote:
>> Hi,
>>
>> On Fri, Oct 2, 2015 at 2:02 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>> > On 10/02/15 07:58, Karim ATIKI wrote:
>> >> Hello Trevor,
>> >>
>> >> Thanks for your feedback.
>> >> You really think that "Fido" is an older release ?
>> >
>> > Sorry, I didn't mean to imply it was "old" and therefore should be
>> > avoided, I meant to point out that it was something that was released
>> > before the switch to gcc5 by default :-)
>> >
>> >> Is the 1.9 release of Yocto stable enough yet ? And will this pb be
>> >> fixed as well ?
>> >
>> > I think the next release will be 2.0. Whether or not it is stable enough
>> > is something you will have to evaluate for yourself :-) I'm rather
>> > certain this issue is already fixed in master, therefore it should be
>> > available for the next release.
>> >
>> >> Karim
>> >
>> > Did you really mean to reply personally? I've re-CC'ed the list, hope
>> > you don't mind.
>>
>> First of all please use the correct email subject tag: [rasberrypi].
>> Otherwise your email might get overlooked.
>
> You mean [meta-raspberrypi] right?
>

Myeah. Thanks for pointing that out. My bad.

--
Andrei Gherzan

