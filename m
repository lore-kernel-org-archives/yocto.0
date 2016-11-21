Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41FD1E00C49; Mon, 21 Nov 2016 08:08:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F273E009B1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:08:14 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id q130so356984545qke.1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hDsMbRp5bgOgIjHcRIAT558A35GscPkpxZtP+bp0oKY=;
	b=kyIIQTpkEoy10BFYJld2voScP8/8goXoNkoIN9cWTyLDeWChKUFltx/vZBqNYXIJOl
	DskvRJ/iW8vedtOydmPTDXXSqc95uNu6IX1hLz+bguJnft1ti973GBKgrSImeZV+q5BS
	DBLNhVtdFYl2Wed1mU6auhlOxKLethrECZH1H8MGxFOZQw3dBbbVP0NyEbYRYdBzG6Lp
	4MCKqMP16hZYKVnN0o3FuajouK9J4lud/LU28+MJxDFEzaiOHhfqzSj75j89izW1HOJG
	quvWWS+XsjWWAwQNXSLbFdiif3rI4527ETX33WACAO67OB5usaYT78mWPOIK8/c4Qwo4
	PxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hDsMbRp5bgOgIjHcRIAT558A35GscPkpxZtP+bp0oKY=;
	b=ZMjNrpBV3q/Nm7HkXILnPIoUnSk8vE1ec5UDIp6HkJSRUaZYrezOqiasTs8gDXd/BD
	rghDqAvCgMuM7gFeg9jf+F6lR4bcLljjjztirtFFfddlhdux3PrBC8pLSVM9ptiGni1O
	TTguCPDnC/A7b6tsPzRDL1WqU9rwoxJEbzcGNxIbvxCD7mOVZ5JVCjuI0JdErq+w665c
	yqUnknnwXHeuBrKZb100u2unxApj0SG9WAyvPiVVy3WWk7H8EAKQiLYPGTwQAZg86UjI
	a9aDL7zSzopzoB2m4yPAlZubxzqrwsFvSD8axHRWIfPd0wgkfugmdv2hTeiSB+CUXigq
	ISfg==
X-Gm-Message-State: AKaTC02qwOTyQ3coux85AlCLMkRlULvGximfEB+TsDFQRw/T4zOGKw0O4VmlJ45qre13O5dkslKB0vgZfsswfQ==
X-Received: by 10.55.123.129 with SMTP id w123mr17885896qkc.288.1479744493483; 
	Mon, 21 Nov 2016 08:08:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.32.99 with HTTP; Mon, 21 Nov 2016 08:08:13 -0800 (PST)
In-Reply-To: <CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 21 Nov 2016 11:08:13 -0500
Message-ID: <CAHUNapTFmCBrC_daEaqFhJ2nHFeoLYRZa6tHOGu9WDGF=eruHg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Mon, 21 Nov 2016 16:08:16 -0000
Content-Type: text/plain; charset=UTF-8

Wow, this is great news! Thanks, both of you :-)

On Sun, Nov 20, 2016 at 2:28 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Herve
>
> On Sun, Nov 20, 2016 at 12:00 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
>> Hi Khem, Trevor,
>>
>> I've submitted part of it yesterday, the rest should come out today
>> hopefully.
>> The 2 machine types - raspberrypi3 and raspberrypi3-64 - have been submitted
>> to yocto/meta-raspberrypi.
>> They will need tune-cortexa53.inc - I've sent a version to oe-core, but I
>> got it wrong again, so I will resend it hopefully again, along with a
>> modified version of arch-armv8.inc.
>
> I gave a whirl at building and looking closely at them. As it seems
> the OE core patch is
> not needed since for armv8 we want to keep it like x86 ( common )
> I have therefore made changes to your patches and staged them here.
>
> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>
> Which should work without any change in OE-Core, secondly I have
> further divided them
> and also fixed 4.8 to compile arm64.
>
>>
>> I have some patches to support 64bits on Raspberrypi3 that should be pushed
>> -hopefully - today. They're on 4.7.10, though.
>
> I think it will be better to rebase them to 4.8 and eventually 4.9 if
> they are not too intrusive.
>
>>
>> Herve
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Khem Raj
>> Sent: samedi 19 novembre 2016 18:30
>> To: Trevor Woerner <twoerner@gmail.com>
>> Cc: yocto@yoctoproject.org
>> Subject: ***SPAM*** Re: [yocto] [raspberrypi] raspi3 vs raspi2
>>
>> On Fri, Nov 18, 2016 at 1:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>>> Hi,
>>>
>>> I was wondering if there were any plans to create a
>>> MACHINE=raspberrypi3 that treats the raspi3 like the CortexA53 that it
>>> is instead of generating images that are backwards compatible with the
>> CortexA7 that is the raspi2?
>>
>> Thats a good question. I know few folks who have done 64bit port of OE on
>> rpi3 so I would be interested in such patches where we add rpi3-64 machine
>> type.
>> do you have patches to submit ? Please do
>>
>>>
>>> Best regards,
>>>         Trevor
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

