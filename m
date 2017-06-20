Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CC27E00BC4; Mon, 19 Jun 2017 20:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49BABE00B05
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 20:46:45 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id s66so63328095pfs.1
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 20:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=2vSLT+oz9wm3vgUWgbK+xgKPqIhIXqxMC1Cy62jEeC0=;
	b=DZdlwy5YCfgR4x+X5dQWIIlQNCd0mTistDC5xKcEAoOtqTIcOPLwdFWjPFep8jSgU0
	rbZFooKCAGFilI+pWNb9jszQIv+j7NZfxMiQ0bpsY6l5CxkMkU0sEldyHgwDi3fabFZk
	Ka1S0LWMahrkp5JChy7lkSlJRNdczSoG0S1N3Kb3VPd9aDipPz6fHslC/N7JuM6uNN9M
	W48elxrvoxaa8y12hr5NNBe0J9BtjexfLgjJIPl+6ITXbV23q+fAClblZ75Vd+j97sBq
	yOKUnHjZp5jL5zEpxvlQbUIRrw8NqcZ/eK8H4cN3pbkCnNB9fP+Ho8s1TCuV7RmNLZ48
	ilSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=2vSLT+oz9wm3vgUWgbK+xgKPqIhIXqxMC1Cy62jEeC0=;
	b=U30KEPvv9aJY/NSx8HFR5b6iTUsDfa/0/3avyz3QhkYfmCWKG2uKvfontUUFoMrptZ
	eY5KCPsOMQXmxV8R+zXiA5MVlhhCzqxKhUUdwvZfxMgsPtU1/w+el09LQHnBKu3r1oa+
	f3CbuQJp7zh8HiFPHG+V8hVfZQwvnlp9Nwm9OlueTW2JJfVNpePf0oJqspL6hM5nj1tl
	fhO/G6WiByYtfB5xV5t0y0SkvabOyffyirjCz6HwPnnXpf1nQrq6wnNWfrNriRc24jFt
	nHRuSc1O2Q1/KBHqU+uUhq5x+0KMildGeipfirclunzMlnqJZ8OoNz1UUBxXOWcmnb/G
	+Itg==
X-Gm-Message-State: AKS2vOzPENW8msLdyJfK/tze0ikbhTvJWyxoz8AUd2tcxVksymPZtVjt
	GbMxm548EZsj0WWF
X-Received: by 10.99.6.145 with SMTP id 139mr14605670pgg.157.1497930405043;
	Mon, 19 Jun 2017 20:46:45 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	j27sm10815745pgn.63.2017.06.19.20.46.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 20:46:44 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
	<CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <10259d92-4277-21d6-e0e0-ca4949eb419e@gmail.com>
Date: Tue, 20 Jun 2017 11:46:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com>
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
X-List-Received-Date: Tue, 20 Jun 2017 03:46:49 -0000
Content-Type: multipart/alternative;
	boundary="------------AAEF250A545FC00ACEB45A4E"
Content-Language: en-US

--------------AAEF250A545FC00ACEB45A4E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I got all the files needed, but now I get no response from the dongle 
when I plug it,

Here's the files on the board :
root@beaglebone:/lib/firmware/rtlwifi# ls
rtl8188efw.bin           rtl8192eu_ap_wowlan.bin rtl8723bs_bt.bin
rtl8188eufw.bin    rtl8192eu_nic.bin rtl8723bs_nic.bin
rtl8192cfw.bin           rtl8192eu_wowlan.bin rtl8723bs_wowlan.bin
rtl8192cfwU.bin          rtl8192sefw.bin rtl8723bu_ap_wowlan.bin
rtl8192cfwU_B.bin        rtl8712u.bin rtl8723bu_nic.bin
rtl8192cufw.bin          rtl8723aufw_A.bin rtl8723bu_wowlan.bin
rtl8192cufw_A.bin        rtl8723aufw_B.bin rtl8723fw.bin
rtl8192cufw_B.bin        rtl8723aufw_B_NoBT.bin rtl8723fw_B.bin
rtl8192cufw_TMSC.bin     rtl8723befw.bin rtl8821aefw.bin
rtl8192defw.bin          rtl8723befw_36.bin rtl8821aefw_29.bin
rtl8192eefw.bin          rtl8723bs_ap_wowlan.bin rtl8821aefw_wowlan.bin


On 20/06/17 03:57, Khem Raj wrote:
> On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <antonius.riko@gmail.com> wrote:
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
> you probably need to add the nonfree firmware bits something like this
>
> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
>
> and
>
> https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb
>
> might help
>
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
>>> And how can I clean after building it ? It took about 70Gb of my drive
>> Like any other recipe:
>> bitbake -c clean foo
>>
>> On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>>> Hello Everyone,
>>>
>>> I tried to compile chromium but never succeeded, took me already 12 hours
>>> and stopped on 99%,
>>> I used bitbake for doing it,
>>>
>>> Is chromium not compatible with arm CPU ? it was working with X86_64
>>> before.
>>> And how can I clean after building it ? It took about 70Gb of my drive
>>>
>>> Thanks
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
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

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------AAEF250A545FC00ACEB45A4E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I got all the files needed, but now I get no response from the
      dongle when I plug it, <br>
      <br>
      Here's the files on the board :<br>
      root@beaglebone:/lib/firmware/rtlwifi#
      ls                                       <br>
      rtl8188efw.bin           rtl8192eu_ap_wowlan.bin 
      rtl8723bs_bt.bin              <br>
      rtl8188eufw.bin       <font size="+2">   rtl8192eu_nic.bin  </font>     
      rtl8723bs_nic.bin             <br>
      rtl8192cfw.bin           rtl8192eu_wowlan.bin    
      rtl8723bs_wowlan.bin          <br>
      rtl8192cfwU.bin          rtl8192sefw.bin         
      rtl8723bu_ap_wowlan.bin       <br>
      rtl8192cfwU_B.bin        rtl8712u.bin            
      rtl8723bu_nic.bin             <br>
      rtl8192cufw.bin          rtl8723aufw_A.bin       
      rtl8723bu_wowlan.bin          <br>
      rtl8192cufw_A.bin        rtl8723aufw_B.bin       
      rtl8723fw.bin                 <br>
      rtl8192cufw_B.bin        rtl8723aufw_B_NoBT.bin  
      rtl8723fw_B.bin               <br>
      rtl8192cufw_TMSC.bin     rtl8723befw.bin         
      rtl8821aefw.bin               <br>
      rtl8192defw.bin          rtl8723befw_36.bin      
      rtl8821aefw_29.bin            <br>
      rtl8192eefw.bin          rtl8723bs_ap_wowlan.bin 
      rtl8821aefw_wowlan.bin  </p>
    <br>
    <div class="moz-cite-prefix">On 20/06/17 03:57, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1spe4TmYe5uE4ddcObCnMbk1usXhNg+=fZ1XrERduP0MAA@mail.gmail.com">
      <pre wrap="">On Sun, Jun 18, 2017 at 8:00 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello Everyone,

How can I obtain : rtl8192eu_nic.bin?

I got this message :

RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, GPS=0, HI PA=0
usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with
error -2
usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed

</pre>
      </blockquote>
      <pre wrap="">
you probably need to add the nonfree firmware bits something like this

<a class="moz-txt-link-freetext" href="https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend">https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend</a>

and

<a class="moz-txt-link-freetext" href="https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb">https://github.com/resin-os/meta-resin/blob/master/meta-resin-common/recipes-kernel/rtl8192cu/rtl8192cu_4.0.2_9000.bb</a>

might help

</pre>
      <blockquote type="cite">
        <pre wrap="">Thanks,

On 18/06/17 15:49, Martin Jansa wrote:

You didn't say which versions you're using.

If you're using latest oe-core with gcc7 then you will need v3 version of
this change:
<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html">http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html</a>
I'll send it later today.

</pre>
        <blockquote type="cite">
          <pre wrap="">And how can I clean after building it ? It took about 70Gb of my drive
</pre>
        </blockquote>
        <pre wrap="">
Like any other recipe:
bitbake -c clean foo

On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">
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
</pre>
        </blockquote>
        <pre wrap="">


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

--------------AAEF250A545FC00ACEB45A4E--
