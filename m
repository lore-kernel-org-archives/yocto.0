Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74337E00E49; Thu, 21 Apr 2016 10:47:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1A4E00CE8
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:47:30 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id e190so8225687lfe.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=J9tdyaDk9HkOccqtlN8RNy2obr23Ms7ZxKfcAwU1/dc=;
	b=PABmhhuomkN7cHdo16CK793FHGcQazosADPxdy3wfJIc7RgLZo5CypGZV2nu0jdkGG
	2LCSB873PIABJuJfq8yQfMepKXM4fWLzM1FQ1uzAmCmrliN+NLopJQftmdLMgLkHYkyo
	0dhZeOJvn6wgAEtpZQ6VXRc6rAx6od15BF+EK6lnem7x50m4Jq1Mzr9wvMiXJaZZmcUr
	jj6PrR8AISq3x3FR4y65TXsgQ5l2HNMLltEdlnGlBN8bVEFGvcamUOvop0ritHNScdD5
	0y7t8TYh6nzHOZRUpU5eCIfP56VkZakg+sxUIjGlwEvy4lWWKaELUXwIRqKIDH+pG55E
	JQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=J9tdyaDk9HkOccqtlN8RNy2obr23Ms7ZxKfcAwU1/dc=;
	b=RYoEyJMazcMm0q6gVKYGACbtPH5GAo/QCmK4b6fRCbJnt5SM3Xt5M8bO3KCy+wn/Rs
	fpe8B43cmO2ukGeCRtRPhiVR2UyK9M+0V+5tnCRG0Cvrij4HIyXTTdYgOspzPwGohpQm
	/6wXdTs1m7gyLsLOtqRgfJQx7WBUnlRQk4tFytXEkdbHzbnfJud+8o2YEqRe1itvIXXh
	jddGF7Gtye1T0fcBe3S3HWp9cyyyc+B34NLhzXRW+dBCemAg0djBI7X4rw50nXaDyox6
	X1uXyR2v8xb6LwkxagBm5cnxMdLdpvn11Mn2MZ/dJv6YG2lAAHmF9SyuKWoUzWRK0j8a
	2ATw==
X-Gm-Message-State: AOPr4FW9LB/8BkAR4HJO96zJ63CxR3YBi1t5xjbMA4Gs1MNF+dN0WPKs2QraJpDZeYABRmkTitGNjNlWEG4kbA==
MIME-Version: 1.0
X-Received: by 10.25.196.20 with SMTP id u20mr1508468lff.164.1461260849968;
	Thu, 21 Apr 2016 10:47:29 -0700 (PDT)
Received: by 10.112.128.196 with HTTP; Thu, 21 Apr 2016 10:47:29 -0700 (PDT)
X-Originating-IP: [81.159.212.160]
In-Reply-To: <CAJjOg+G2Xyp96wE_yyr=XamnwpSdnn5Ywk4GoP0B8P-pFXOGrA@mail.gmail.com>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-3-git-send-email-theodor@gherzan.ro>
	<20160421174319.GQ1588@resin>
	<CAJjOg+G2Xyp96wE_yyr=XamnwpSdnn5Ywk4GoP0B8P-pFXOGrA@mail.gmail.com>
Date: Thu, 21 Apr 2016 18:47:29 +0100
Message-ID: <CAJjOg+EqA-Cbi+Sv+q5j64RxXt3UMwD+y8PUoOYU7A9FKrQp9g@mail.gmail.com>
From: Theodor Gherzan <theodor@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/5] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 17:47:47 -0000
Content-Type: text/plain; charset=UTF-8

A new config.txt setting has been introduced - enable_uart - the
purpose of which is to control the initialisation of the UART(*). The
default value varies according to the primary UART on the platform -
if the PL011 is the primary UART (that used for the console and boot
messages) then enable_uart defaults to 1, and if the mini-UART is the
primary then it defaults to 0.

The reason for the additional setting is that making use of the
mini-UART requires the core frequency to be fixed, so setting
enable_uart will limit the core to the minimum (unless force_turbo is
set, since that will fix the core frequency to the maximum, provided
the Pi is adequately powered and cooled). The previous default
behaviour, which rendered much of the output illegible, was not
useful, but we didn't want to restrict all users (even those who don't
care about the UART) to the minimum core frequency. We also wanted to
be able to remove the restriction when the PL011 is chosen on a Pi3,
hence the need for a dedicated setting indicating the reason for the
frequency limit.

On Thu, Apr 21, 2016 at 6:46 PM, Theodor Gherzan <theodor@gherzan.ro> wrote:
> Here is a full explination of this:
>
>
> On Thu, Apr 21, 2016 at 6:43 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Hi,
>>
>> On Thu, Apr 21, 2016 at 06:32:11PM +0100, Theodor Gherzan wrote:
>>> From: Theodor Gherzan <theodor@resin.io>
>>>
>>> Signed-off-by: Theodor Gherzan <theodor@resin.io>
>>> ---
>>>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
>>> index 4d41723..6ddf843 100644
>>> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>>> @@ -90,6 +90,12 @@ do_deploy() {
>>>          echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>>          echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>>      fi
>>> +
>>> +    # UART support
>>> +    if [ "${ENABLE_UART}" = "1" ]; then
>>> +        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>> +        echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>> What is the default value of enable_uart?
>>
>> --
>> Andrei Gherzan

