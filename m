Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D9F1E00852; Fri, 12 May 2017 12:55:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88981E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:55:55 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id e28so52796819uah.0
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 12:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lFFRHce25m86Ja8V5aU3x1OCEhx67ByUVljuY08qbPQ=;
	b=PhqGVKnBhWGwgMv+I5cSu6UHhxtUedFtE8SfSx+Gi9DsfzWUEN67k/oEa/aUnyql0j
	JtfKwc0VU4xXgaX0yDYU9U3xAj/BeWgFpGimsaFoi7daqtecwwraSospv5b4BNWXHD3J
	K4Ao0+ahK424KgDYDA+S1zgZ9FYdFGe/8+Uxbid60kTO/luokdXcaNSK0Egr2+bdbxMz
	mSRQQWDz/ETRJAGGg5gV6Gg0EtwarTfKx0Iazv2Zvbb30itTTPQHUO5Jr2cnykBS620b
	wWHGqJU1fArnQrzD6B8LCsiIfOPC1QXWAsyA0f/HeoIMnH8kajdZgvnNQMFPMhtpqvGX
	Ycpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lFFRHce25m86Ja8V5aU3x1OCEhx67ByUVljuY08qbPQ=;
	b=fcph2tdIBecxsV3Ok4t3zflH1AjyuuajqrL1Na/Llr6vR2bjXs3+9F8sFEoleBt+mm
	PFdMi/b0XVpr0E3dUXrASm1TaWvdhnJ992AMrGt64ea/wBFDhvmJcAvcxe86jYbfyLJf
	QWfZYRLVNEK6pgfSa00ZGwTDqsAMyYJr6BIKbblNW6H/YSDtlqbAm9LV2am5ohngL7pD
	je3mX2K/E+oABOz/mWs9iWwR1cC8J6wLniHqAraRCONV5efkibKnqngn2zxU+cMzrbd7
	HuNe2nvZGa0ndfAAzeUM+pIFVp/HbjUYtpxytR5sdpS1/uQOdS+LHbQhn5kmxdwcAGQf
	XFDw==
X-Gm-Message-State: AODbwcBiQw7HeTMV8sBNPArGUGfCg0aMc0gvx8v59MQy1621LTJwXrO3
	shGMZBImA3r6By7YLejBoOwldeFpFg==
X-Received: by 10.176.25.108 with SMTP id u44mr3154226uag.16.1494618954012;
	Fri, 12 May 2017 12:55:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Fri, 12 May 2017 12:55:53 -0700 (PDT)
In-Reply-To: <em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
	<CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
	<em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 12 May 2017 15:55:53 -0400
Message-ID: <CAHUNapTAuyhpDJ8ATx+arrGaN_JTy1ubs98zdTzJxh97gcxmbw@mail.gmail.com>
To: "peter@gmail.com" <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
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
X-List-Received-Date: Fri, 12 May 2017 19:55:58 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

There isn't enough information here for me to help you.

Could you please list the commands and steps you used to build the image?
- what repositories are you using?
- what branches of those repositories?
- if you changed any config files, what did you change?
- what command did you run to build your image?
- what did bitbake print as your build configuration?

Which i.mx board are you using? There are dozens of them.

Best regards,
    Trevor


On Fri, May 12, 2017 at 3:34 PM, peter@gmail.com
<balazovic.peter@gmail.com> wrote:
> I build on i.mx (NXP) machine, I want to get configured as dhcp  (no
> static)...
>
>
> ------ Original Message ------
> From: "Trevor Woerner" <twoerner@gmail.com>
> To: "Peter Balazovic" <balazovic.peter@gmail.com>
> Cc: "Yocto list discussion" <yocto@yoctoproject.org>
> Sent: 5/12/2017 9:32:17 PM
> Subject: Re: [yocto] dhcp eth0 network
>
>> Hi Peter,
>>
>> For what MACHINE are you building? What's your target hardware? Can
>> you summarize the steps you took to build your image?
>>
>> What do you want eth0 to do? dhcp or static ip?
>>
>> Best regards,
>>     Trevor
>>
>>
>> On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
>> <balazovic.peter@gmail.com> wrote:
>>>
>>>  Dears,
>>>
>>>  I got Yocto image and unfortunatelly network is not somehow enabled &
>>>  proprely configured. After "ifconfig" no eth0 configured.
>>>
>>>
>>>>  ifconfig
>>>
>>>  lo    Link encap:Local Loopback
>>>         inet addr:127.0.0.1 Mask:255.0.0.0
>>>   ....
>>>
>>>
>>>
>>>>  /etc/network
>>>>  ls
>>>
>>>  if-down.d if-post-down.d if-pre-up.d  if-up.d
>>>
>>>
>>>  How should I setup "eth0" to get network working properly?
>>>
>>>  Thanks.
>>>
>>>
>>>
>>>  --
>>>  _______________________________________________
>>>  yocto mailing list
>>>  yocto@yoctoproject.org
>>>  https://lists.yoctoproject.org/listinfo/yocto
>>>
>

