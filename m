Return-Path: <jefro.net@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C7C8E003DA
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 10:50:18 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id c26so4543835qad.14
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 10:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=oqi8gP28gTlIAbKEvCtRdEwalt1DMhnJfxGeVN9EAnY=;
	b=dojr1pAF/1qi4eKKsdKwcD1o5KqTHu554KfcxLskPYqG4EyOSQ0fYQs/DM3/GXARui
	9uh5aMemmf1J12ZJgFMjP0xlDb13JdAENzmHA/VsGmU/MJY50ErPk3ePAFuK+LgH2AGX
	EW8OAcSW5pGA9rZJerQZFY6FV+mlJ4J0jczIwNfITKr1V4SnBAy1s2hmGABetP00o4FO
	UdZKNGl5Vuy5twTx32Hn0aucfxpewTPMN7gEMfnpHbzFyFZfnsRyo3r03DQNMyq8eHoO
	beX6F5SXnI6T0CqEgzCWbIB5RURd/IzukusQUoSi2706sfqLj1L9lzEC0JmjvMv4X04e
	3obg==
MIME-Version: 1.0
Received: by 10.49.82.48 with SMTP id f16mr2075804qey.58.1353005417926; Thu,
	15 Nov 2012 10:50:17 -0800 (PST)
Sender: jefro.net@gmail.com
Received: by 10.229.217.200 with HTTP; Thu, 15 Nov 2012 10:50:17 -0800 (PST)
In-Reply-To: <50A53378.6030602@intel.com>
References: <50A4DA8C.6020507@axis.com>
	<50A53378.6030602@intel.com>
Date: Thu, 15 Nov 2012 10:50:17 -0800
X-Google-Sender-Auth: AghkiMODB7sqg81mIQ4lmLRs03Y
Message-ID: <CA+YB3rbLAE8Bt2-PU0iFxh2QwtVWwE=kb3ooFc5bOdX=Cj66qQ@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Scott Garman <scott.a.garman@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Virtual machine images from yocto developer day
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
X-List-Received-Date: Thu, 15 Nov 2012 18:50:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 15, 2012 at 10:24 AM, Scott Garman <scott.a.garman@intel.com> wrote:
> On 11/15/2012 04:05 AM, Fredrik Hugosson wrote:
>>
>> Hi!
>>
>> Thanks for a great developer day in Barcelona!
>>
>> Is it possible to get the vdi-files or appliances (which ever it was)
>> used for the labs? It would save some valuable time when doing labs with
>> beginners here at work.
>>
>> Best regards
>> /Fredrik Hugosson
>
>
> Which labs? For the intro labs, the computers were running Linux natively. I
> took some notes on how I set up those machines I can send you off-list if
> you'd like - let me know.
>
> Things *should* just work if you're using a recent release of Ubuntu,
> Fedora, or OpenSUSE and follow the setup instructions in our Quick Start
> Guide:
>
> https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

Just a side note that I should have materials available on the website
by the end of this week

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

