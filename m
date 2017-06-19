Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E469EE009A0; Mon, 19 Jun 2017 12:58:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97DE6E0084A
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 12:58:03 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id x70so3028723wme.0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 12:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xWgQQkvPTSbbpw3zyXwliDCUoPi+RPF2WzUmJpbQ0Oo=;
	b=i0yns9/YERFlzQC1Bo5ZWhlU8BSIWH/QZJuPyJyW0y9m3bD3GC9JRvOdhuA0dxv37V
	Jo3tVZ2cxF+7R6D1hrbZXX7uI3YCGFaFrkDh9fL1Onl4WJJLXpxdqloGSpZn4lFLv05D
	qbb+IGhe2Jyiq3NX7HBCAYxdIFinsBZPt5SKJm/8wsS2pXT/cJSKcci+0rCeRmm8Uetv
	3EU1kv3+L4t/EHnbUg/CK2SWXMl0mJJPi4sACS4pX/eyKBLc/iqYUuMqSCiavPfkCz6h
	DIJijy6dSSeB56HYfY23jvN4rfnQwYUSmvLpQ1dGakgaSm3cYQ6NtKkMFaTx2Dcfkot1
	ZD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xWgQQkvPTSbbpw3zyXwliDCUoPi+RPF2WzUmJpbQ0Oo=;
	b=t+VBziiKrcjgYeO57JbbkduEJL9YZIAraJzeVJe87yYAMyUcHK7qd9w1U9z/MxTRmB
	mAm9QbGs6izYKf+LoNIIcekLnJylwAT8jYQXpFpZup9LTFNKMdQaGX+B5iWQ6hc3Q3Bx
	aMwJjoYTW/dd+YB+Mob7wzzkBlUoxzABHOclisVDTVyWHXow+HcG2+SfEdocH6cXKmBq
	UfmVLbG5MdJ6uGVVLsg8704bf9Sqpmi34mrzZkQj9ZE+UUTvuimr+YOBL8lsXwKOLXyw
	Geagv53NfVrTAlKd679m+Umeazjo+rdNGae3bBaYT9vV9isoRlEMWEeuKORnprwAaKJN
	IAhA==
X-Gm-Message-State: AKS2vOwUJX2YS6Q6suaLkU+uXJsFOB6VIqbL0DcMYtNZ+T9yQ2arOq6u
	eP0Cwl+G3FGoPtwBf1VScwFFVhCK7Q==
X-Received: by 10.80.154.129 with SMTP id p1mr18589711edb.131.1497902282006;
	Mon, 19 Jun 2017 12:58:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Mon, 19 Jun 2017 12:57:31 -0700 (PDT)
In-Reply-To: <08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Jun 2017 12:57:31 -0700
Message-ID: <CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RTL8192EU rev B (SMIC) ==> rtl8192eu_nic.bin ?
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
X-List-Received-Date: Mon, 19 Jun 2017 19:58:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> Hello Everyone,
>
> How can I obtain : rtl8192eu_nic.bin?
>
> I got this message :
>
> RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=3D1, BT=3D0, GPS=3D0, HI P=
A=3D0
> usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
> usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
> usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with
> error -2
> usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed
>

you probably need to add the nonfree firmware bits something like this

https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipe=
s-kernel/linux-firmware/linux-firmware_git.bbappend

and

https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipe=
s-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb

might help

> Thanks,
>
> On 18/06/17 15:49, Martin Jansa wrote:
>
> You didn't say which versions you're using.
>
> If you're using latest oe-core with gcc7 then you will need v3 version of
> this change:
> http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/1132=
47.html
> I'll send it later today.
>
>> And how can I clean after building it ? It took about 70Gb of my drive
>
> Like any other recipe:
> bitbake -c clean foo
>
> On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> Hello Everyone,
>>
>> I tried to compile chromium but never succeeded, took me already 12 hour=
s
>> and stopped on 99%,
>> I used bitbake for doing it,
>>
>> Is chromium not compatible with arm CPU ? it was working with X86_64
>> before.
>> And how can I clean after building it ? It took about 70Gb of my drive
>>
>> Thanks
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

