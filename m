Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E923E0095C; Thu,  4 Jan 2018 12:39:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BCEEE0085E
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 12:39:30 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id e19so1909117uam.6
	for <yocto@yoctoproject.org>; Thu, 04 Jan 2018 12:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RZiKX3KRRUkBdHacTFz+JuC4fctfx24NcrkD59A9TUw=;
	b=IscmlIxn1t9wQzCm8bnsYui6IHe9nfGyQGWdWBiCpdEWjwyN+l4dI7/u9q0QHllZqv
	x15P1K74tu4DEFjIZcrgfXAcRgy20kNrp886p6K8GIwHexQSnt3OP5NbAWfaESIp7Bus
	UeaDHl4lMpXpVn9sAi3KalAI+gRZXa116zDUXo2QcvV+uEDqas9ZuQzf8IpHbmxhsXIx
	nFPqDHjTgxJ7YF4dCSF0ibrwsfg/lnoNG2XuoCukj9G6nIhmmiPCWD7bqjGXWsoX8U4d
	A0nJEFIbI+r4MXwtUy4BeA0+K4YO7fne32zmNfbnsB8yXVBqT2CZgN6CRElTTKbruogx
	S6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RZiKX3KRRUkBdHacTFz+JuC4fctfx24NcrkD59A9TUw=;
	b=gJIpU5AA+IiBRy2/bhhn29jhwmNAb9tmyGN3A87e40hYyzyQtMjpWM/5c+HphXQ68T
	ov6d2ciWsTxnWFcikZsZix7RBiqoMRKlmFWR2ZtrpcGHiIAVvfIV1pkNKjKdE71xo1wm
	ehoCAMlRoMTDuWLjC7Gj7GfmXUi12HRHqGbSCQEr5gPX2c1Ude1QsLHhVjPQaQiWXgxy
	5EqnHzGDy6kHEC7HanWKNfeD9/7bAzaQ3/txjubliFNvkQYm0Op/Z1bTLq+bu7hRnUWN
	TAdD/YfKgtVd+zDXxGEM2hDLU8ZlwsDiJckvVEscd8kROlKpQqy/C6n+M1EeMZBwlktK
	pYOg==
X-Gm-Message-State: AKwxytcWoS93IsMKupLoqSx3OYXZ8Qdfd14gmHB5biKaK3Bn1JSBrulE
	eBsBh7jkmzMWDqjCy5+7NFSiqLCrnIDqmH+4SNsImqUVFs/hClQEAE/hpQ4dIgnmbTXmGpjaaSD
	k5EHF+aWrwAXqCFmJcM4qTlU=
X-Google-Smtp-Source: ACJfBovrCkI5N0Djobt1fzOCcWknpUgBLZnJGRDw01RyqK3bt2Hx9xul8p0T1Upl3Vsx3zNd5vSTlsZcBLt7thv77v4=
X-Received: by 10.159.51.209 with SMTP id y17mr846798uab.175.1515098370026;
	Thu, 04 Jan 2018 12:39:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.28.74 with HTTP; Thu, 4 Jan 2018 12:39:29 -0800 (PST)
In-Reply-To: <CAJTo0LZzwePmfR1jMFaE30i-963GJrd90bTBwa7pOnxuiWaZxQ@mail.gmail.com>
References: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
	<CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
	<CAOLNbFa3bmtTmUEszDF4OQABgY411ieT3+0iJC1zkekk80CWfg@mail.gmail.com>
	<CAJTo0LZzwePmfR1jMFaE30i-963GJrd90bTBwa7pOnxuiWaZxQ@mail.gmail.com>
From: Rail Shafigulin <rail@esenciatech.com>
Date: Thu, 4 Jan 2018 12:39:29 -0800
Message-ID: <CAOLNbFZQKNih2yhYFpDg_nK3=Znka1g-cK4aVMjVvv3RLttC7Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: running autoreconf during a configuration step
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
X-List-Received-Date: Thu, 04 Jan 2018 20:39:32 -0000
Content-Type: text/plain; charset="UTF-8"

Ross,

Thanks for the help. Really appreciate it.

On Thu, Jan 4, 2018 at 8:35 AM, Burton, Ross <ross.burton@intel.com> wrote:
> If you look at autotools.bbclass you'll see it already passes -i.
>
> Ross
>
> On 4 January 2018 at 16:20, Rail Shafigulin <rail@esenciatech.com> wrote:
>>
>> How do I add parameters to it? I need to run autoreconf -i. Didn't
>> find any EXTRA_OE<something> variables.
>>
>> On Thu, Jan 4, 2018 at 8:15 AM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>> > On 4 January 2018 at 15:45, Rail Shafigulin <rail@esenciatech.com>
>> > wrote:
>> >>
>> >> I'm somewhat new to Yocto. Trying to build libsoc,
>> >> https://github.com/jackmitch/libsoc. The steps are outlined here,
>> >> https://github.com/jackmitch/libsoc#manually-building. The first one
>> >> is to run autoreconf -i. I've been looking through documentation but
>> >> didn't find anything on how to do it. Is there an EXTRA_OE<something>
>> >> variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
>> >> that is remotely related to it is EXTRA_OECONFIG, but it is for
>> >> ./configure step. I would appreciate any help with it.
>> >
>> >
>> > The autotools class will run autoreconf and then configure, so you just
>> > need
>> > to inherit that class.
>> >
>> > Ross
>>
>>
>>
>> --
>> Rail Shafigulin
>> Software Engineer
>> Esencia Technologies
>>
>> --
>>
>>
>>
>>
>> *ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
>> Santa Clara CA 95054
>> ________________________________________________________
>>
>> Phone: +1 408 736 8284 Fax: +1 408 519 3475
>> http://www.esenciatech.com | http://www.lnttechservices.com
>>
>>
>



-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



