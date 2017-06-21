Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59D6DE00B49; Tue, 20 Jun 2017 19:33:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D130E00B2F
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 19:33:05 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id f185so70921636pgc.0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 19:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=BRxR7ShQZYrXa5U1vmaXId9I9m2Dj37chYIdl8PfXeY=;
	b=QpthFEDTSS27PpFPskAHGQhMeKktvwebY4LRwTMQCwy2OGDWavpRGbV+5C/jk94tsI
	Ot4+YM1Cb3OmA4vs8aQFAzdfmLDMK0xpbrPhXiFij/kgOtByQxYjLzep9WbquwzusjpD
	qqNJCXlOxIqaXsEh8c91PEwaXFD6TU1CCppmF2oMud7uP8+x0K0R1stqnpXQ93VeSYOr
	vrLxVljn7ZQ8dwNFYawUbkIcf0+HX+JZklPlyeRTRltWGxE/LIzhXjUfS8eOFLyOgyST
	2FcONKrZle/ud5+GRQmJFyryBnj/F7gmNtw6CrL3JYUHcr4MGoKWZGk5fiorO3Qfm1mT
	0FPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=BRxR7ShQZYrXa5U1vmaXId9I9m2Dj37chYIdl8PfXeY=;
	b=Ar2pdKFbvGXA1TbiWx0g/fUEqgJZ+dqV/0I+hpkTuM/BzBAdO2LatuXZHBlQ0wA7n5
	ANBmCx5IIBbX9iL9xJo3lRgiXYxh7tGz5VljLcFi2CXaSb7FmGVA5T10SMaNPrMVWews
	TFh+V2VvuIuLUro1mszkMjz8XHXwwnXUChtNTsmV65udXux9vo8fn6VUwqwwZPjiQLB0
	VkF78j3oR4pePEefyA/P8eSL0CnYqVcgd2zQWTxlw9e9YDrIynYpy5977XRHDrNC3zpL
	0bVdlhA0uZZSTBoDze3mElMhEo4xFS0M2a6t9muBzd5y02Mo/dfTtHYa8EFvwVl5D3Ar
	PqhQ==
X-Gm-Message-State: AKS2vOwZta83igwwNeKEPaxgfb9XefzvFnz/jUy0eSqzFemnLGsdlDdZ
	u8vtTpXiAMnnS2TA
X-Received: by 10.84.132.42 with SMTP id 39mr38648839ple.226.1498012385018;
	Tue, 20 Jun 2017 19:33:05 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	d1sm14371248pfj.51.2017.06.20.19.33.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Jun 2017 19:33:04 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
	<CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com>
	<10259d92-4277-21d6-e0e0-ca4949eb419e@gmail.com>
	<CAMKF1spo=pDw1XDhwwbPoQTMjkY-fXmvSgvLrNh5Tum5tn_-wA@mail.gmail.com>
	<cc299730-167a-9ba2-fae2-ef0d130649fb@gmail.com>
	<CAMKF1srQzBbfaTzGtJvFVkYicd5WpyUvkDWSOPHFQ3Q=fdk29g@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <83213a84-e26d-18e9-404e-ecbb9f95f3e5@gmail.com>
Date: Wed, 21 Jun 2017 10:32:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srQzBbfaTzGtJvFVkYicd5WpyUvkDWSOPHFQ3Q=fdk29g@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Jun 2017 02:33:08 -0000
Content-Type: multipart/alternative;
	boundary="------------901C52E00EC2E61DE42D156C"
Content-Language: en-US

--------------901C52E00EC2E61DE42D156C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I got those messages :

===

musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver
musb-hdrc musb-hdrc.1.auto: new USB bus registered, assigned bus number 1
musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89, <AValid), 
retry #1, port1 00000100
musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89, <AValid), 
retry #2, port1 00000104
musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89, <AValid), 
retry #3, port1 00000104
musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (88, <AValid), 
retry #3, port1 0008010c
====

waiting for vrise ?


On 21/06/17 10:28, Khem Raj wrote:
> On Tue, Jun 20, 2017 at 9:52 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>> How can I obtain that "udev" ? and where can I find the log ? "dmesg" |
>> "grep" ?
>>
>> Two days ago, I saw activity on UART when the dongle was inserted, but it's
>> gone now, I can't see the activity..
>> Any clues ?
> dmesg should have some information may be
>
>> Thanks
>>
>> On 20/06/17 12:51, Khem Raj wrote:
>>
>> On Mon, Jun 19, 2017 at 8:46 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> I got all the files needed, but now I get no response from the dongle when I
>> plug it,
>>
>> you might want to check logs and see if there are udev events generated
>> on insertion.
>>
>> Here's the files on the board :
>> root@beaglebone:/lib/firmware/rtlwifi# ls
>> rtl8188efw.bin           rtl8192eu_ap_wowlan.bin  rtl8723bs_bt.bin
>> rtl8188eufw.bin          rtl8192eu_nic.bin        rtl8723bs_nic.bin
>> rtl8192cfw.bin           rtl8192eu_wowlan.bin     rtl8723bs_wowlan.bin
>> rtl8192cfwU.bin          rtl8192sefw.bin          rtl8723bu_ap_wowlan.bin
>> rtl8192cfwU_B.bin        rtl8712u.bin             rtl8723bu_nic.bin
>> rtl8192cufw.bin          rtl8723aufw_A.bin        rtl8723bu_wowlan.bin
>> rtl8192cufw_A.bin        rtl8723aufw_B.bin        rtl8723fw.bin
>> rtl8192cufw_B.bin        rtl8723aufw_B_NoBT.bin   rtl8723fw_B.bin
>> rtl8192cufw_TMSC.bin     rtl8723befw.bin          rtl8821aefw.bin
>> rtl8192defw.bin          rtl8723befw_36.bin       rtl8821aefw_29.bin
>> rtl8192eefw.bin          rtl8723bs_ap_wowlan.bin  rtl8821aefw_wowlan.bin
>>
>>
>> On 20/06/17 03:57, Khem Raj wrote:
>>
>> On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> Hello Everyone,
>>
>> How can I obtain : rtl8192eu_nic.bin?
>>
>> I got this message :
>>
>> RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, GPS=0, HI PA=0
>> usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
>> usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
>> usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with
>> error -2
>> usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed
>>
>> you probably need to add the nonfree firmware bits something like this
>>
>> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
>>
>> and
>>
>> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb
>>
>> might help
>>
>> Thanks,
>>
>> On 18/06/17 15:49, Martin Jansa wrote:
>>
>> You didn't say which versions you're using.
>>
>> If you're using latest oe-core with gcc7 then you will need v3 version of
>> this change:
>> http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html
>> I'll send it later today.
>>
>> And how can I clean after building it ? It took about 70Gb of my drive
>>
>> Like any other recipe:
>> bitbake -c clean foo
>>
>> On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> Hello Everyone,
>>
>> I tried to compile chromium but never succeeded, took me already 12 hours
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
>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/
>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------901C52E00EC2E61DE42D156C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I got those messages :</p>
    <p>===</p>
    <p>musb-hdrc musb-hdrc.1.auto: MUSB HDRC host driver<br>
      musb-hdrc musb-hdrc.1.auto: new USB bus registered, assigned bus
      number 1<br>
      musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89,
      &lt;AValid), retry #1, port1 00000100<br>
      musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89,
      &lt;AValid), retry #2, port1 00000104<br>
      musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (89,
      &lt;AValid), retry #3, port1 00000104<br>
      musb-hdrc musb-hdrc.1.auto: VBUS_ERROR in a_wait_vrise (88,
      &lt;AValid), retry #3, port1 0008010c<br>
      ====</p>
    <p>waiting for vrise ?<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 21/06/17 10:28, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srQzBbfaTzGtJvFVkYicd5WpyUvkDWSOPHFQ3Q=fdk29g@mail.gmail.com">
      <pre wrap="">On Tue, Jun 20, 2017 at 9:52 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">How can I obtain that "udev" ? and where can I find the log ? "dmesg" |
"grep" ?

Two days ago, I saw activity on UART when the dongle was inserted, but it's
gone now, I can't see the activity..
Any clues ?
</pre>
      </blockquote>
      <pre wrap="">
dmesg should have some information may be

</pre>
      <blockquote type="cite">
        <pre wrap="">Thanks

On 20/06/17 12:51, Khem Raj wrote:

On Mon, Jun 19, 2017 at 8:46 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

I got all the files needed, but now I get no response from the dongle when I
plug it,

you might want to check logs and see if there are udev events generated
on insertion.

Here's the files on the board :
root@beaglebone:/lib/firmware/rtlwifi# ls
rtl8188efw.bin           rtl8192eu_ap_wowlan.bin  rtl8723bs_bt.bin
rtl8188eufw.bin          rtl8192eu_nic.bin        rtl8723bs_nic.bin
rtl8192cfw.bin           rtl8192eu_wowlan.bin     rtl8723bs_wowlan.bin
rtl8192cfwU.bin          rtl8192sefw.bin          rtl8723bu_ap_wowlan.bin
rtl8192cfwU_B.bin        rtl8712u.bin             rtl8723bu_nic.bin
rtl8192cufw.bin          rtl8723aufw_A.bin        rtl8723bu_wowlan.bin
rtl8192cufw_A.bin        rtl8723aufw_B.bin        rtl8723fw.bin
rtl8192cufw_B.bin        rtl8723aufw_B_NoBT.bin   rtl8723fw_B.bin
rtl8192cufw_TMSC.bin     rtl8723befw.bin          rtl8821aefw.bin
rtl8192defw.bin          rtl8723befw_36.bin       rtl8821aefw_29.bin
rtl8192eefw.bin          rtl8723bs_ap_wowlan.bin  rtl8821aefw_wowlan.bin


On 20/06/17 03:57, Khem Raj wrote:

On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

Hello Everyone,

How can I obtain : rtl8192eu_nic.bin?

I got this message :

RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, GPS=0, HI PA=0
usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with
error -2
usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed

you probably need to add the nonfree firmware bits something like this

<a class="moz-txt-link-freetext" href="https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend">https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend</a>

and

<a class="moz-txt-link-freetext" href="https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb">https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb</a>

might help

Thanks,

On 18/06/17 15:49, Martin Jansa wrote:

You didn't say which versions you're using.

If you're using latest oe-core with gcc7 then you will need v3 version of
this change:
<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html">http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html</a>
I'll send it later today.

And how can I clean after building it ? It took about 70Gb of my drive

Like any other recipe:
bitbake -c clean foo

On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

Hello Everyone,

I tried to compile chromium but never succeeded, took me already 12 hours
and stopped on 99%,
I used bitbake for doing it,

Is chromium not compatible with arm CPU ? it was working with X86_64
before.
And how can I clean after building it ? It took about 70Gb of my drive

Thanks
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>


--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/


--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>


--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/


--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/
</pre>
      </blockquote>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------901C52E00EC2E61DE42D156C--
