Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E13E00AE6; Sun, 18 Jun 2017 15:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCF0E00718
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 15:03:15 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id u62so7641175pgb.0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 15:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=uV0Zm6qUa+nWwbUO8ChcGB4OwbR6hll2wl4IpfVI69w=;
	b=Wu0SJeB50R6s1TRnDQk45t78nsWSc4J/l9brQCHAA4XybzvP+l62p3Od3fhfrdb6aK
	mlJiZLrF+yL7ZZJTCARa/oVUJt4Fbf5Kw3x8GnIhIgRxtLLd7jGwKIx39Zqn3NddhXkQ
	Se9zm2NOTVtLZK0zPh5yCIf/85AxTD0XoF9QfYBsR/Yp8HJxLBwPr8wNjWitsYvYs9x3
	AcCPXSqMnSxE/+mgCvRSqBpC07j2fy8M5TKvgEd2A33CaJ6Uvjusq8jEkwN62ljoFgd6
	Y0UHDI8iy7xVN1gXhyYeOy5YaqxlIs71YerkE7p/CiZ1CHIIB/1GARf9c2EcvDPVkPrY
	/VDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=uV0Zm6qUa+nWwbUO8ChcGB4OwbR6hll2wl4IpfVI69w=;
	b=CV1k73yBGM+wPwyGF7UgVtGQgcDaWq+6oU13UmI6Ri7EQlYiHwZe+3kRXOALEtQTJx
	ZTlsDQr1ycgOh3+5vca/CQjJGjLzBVTENRsd7oGA2BYJ0TndN+CoPayfrzn4/+Vj8hCo
	x2sXexM9apmLBFEcFShbh1Ttpml9vTY4bdoexwqge7EBr9mdA8deau3p14qd6eBVjeYW
	Fpnhm36RHcS3DEe6BK2w+rfh9njuNx41upoyU/ve3diIaXlyoY+fXJYNQz2SRUnMD8Xy
	bmiTDtd0icxPgGCNy13eN+gY1XAsTYDM7hcYshtabEDdy4E4kECQCs1Uthuc3uyqqmwV
	3ZuA==
X-Gm-Message-State: AKS2vOwnVV13JIaXK/l5kdag3MqoIaAFnjHWX/Tcpd4ABuTrL2HlZGHJ
	0gYvgW1BQT2D4wv6
X-Received: by 10.84.238.134 with SMTP id v6mr26436194plk.261.1497823394743;
	Sun, 18 Jun 2017 15:03:14 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	o66sm17720861pga.64.2017.06.18.15.03.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 15:03:14 -0700 (PDT)
To: =?UTF-8?Q?Maciej_Borz=c4=99cki?= <maciej.borzecki@rndity.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
	<6bd2859e-81c5-3089-f8fe-44bd2c24bf96@gmail.com>
	<CAJTo0Larp6KyHDWNvA+b4CQ-jHdHMo2OAgYr-dQu+2-M4qcYYA@mail.gmail.com>
	<CAD4b0_Jo9sFCfbtwijnDAFsMY4A4rVH_xMuhpQF1TLRajndLuA@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <f1ef864b-f5df-acd4-b5c0-aaf7c8ea1778@gmail.com>
Date: Mon, 19 Jun 2017 06:03:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAD4b0_Jo9sFCfbtwijnDAFsMY4A4rVH_xMuhpQF1TLRajndLuA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd image to sdcard ?
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
X-List-Received-Date: Sun, 18 Jun 2017 22:03:18 -0000
Content-Type: multipart/alternative;
	boundary="------------97D4E91AD5B04D4D8CEF6AB7"
Content-Language: en-US

--------------97D4E91AD5B04D4D8CEF6AB7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Guys,

I think this one will answer my question,

http://git.yoctoproject.org/cgit.cgi/poky/tree/README.hardware

Line 140...

|Texas Instruments Beaglebone (beaglebone) 
========================================= ....... Anyway I recompiled 
the image to get 'wic' file now. IMAGE_FSTYPES ="ext3 tar.bz2 wic" |


On 19/06/17 03:37, Maciej Borzęcki wrote:
> On Sun, Jun 18, 2017 at 9:17 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 18 June 2017 at 12:48, Riko Ho <antonius.riko@gmail.com> wrote:
>>> Which one of these files can be downloaded by "dd" directly to SDcard ? or
>>> how to write it to sdcard ?
>>
>> The beaglebone BSP doesn't write a SD card image (although it probably
>> should now that wic exists).  Google has various pages explaining how a
>> beaglebone needs a SD card to be formatted,
>> https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black
>> was near the top of my search.
>>
> If you're using 'beaglebone' machine defined in meta-yocto-bsp, then
> there is a corresponding wks file
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/beaglebone.wks
> which should produce a bootable SD card image. Both `wic` and
> `wic.bmap` are added to IMAGE_FSTYPES automatically.
>
> Cheers,

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------97D4E91AD5B04D4D8CEF6AB7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Thanks Guys,<br>
    </p>
    <p>I think this one will answer my question,</p>
    <p><a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit.cgi/poky/tree/README.hardware">http://git.yoctoproject.org/cgit.cgi/poky/tree/README.hardware</a></p>
    <p>Line 140...</p>
    <pre><code>Texas Instruments Beaglebone (beaglebone)
========================================= .......

Anyway I recompiled the image to get 'wic' file now.

IMAGE_FSTYPES ="ext3 tar.bz2 wic"
</code></pre>
    <br>
    <div class="moz-cite-prefix">On 19/06/17 03:37, Maciej Borzęcki
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAD4b0_Jo9sFCfbtwijnDAFsMY4A4rVH_xMuhpQF1TLRajndLuA@mail.gmail.com">
      <pre wrap="">On Sun, Jun 18, 2017 at 9:17 PM, Burton, Ross <a class="moz-txt-link-rfc2396E" href="mailto:ross.burton@intel.com">&lt;ross.burton@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
On 18 June 2017 at 12:48, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">
Which one of these files can be downloaded by "dd" directly to SDcard ? or
how to write it to sdcard ?
</pre>
        </blockquote>
        <pre wrap="">

The beaglebone BSP doesn't write a SD card image (although it probably
should now that wic exists).  Google has various pages explaining how a
beaglebone needs a SD card to be formatted,
<a class="moz-txt-link-freetext" href="https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black">https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black</a>
was near the top of my search.

</pre>
      </blockquote>
      <pre wrap="">
If you're using 'beaglebone' machine defined in meta-yocto-bsp, then
there is a corresponding wks file
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/beaglebone.wks">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/beaglebone.wks</a>
which should produce a bootable SD card image. Both `wic` and
`wic.bmap` are added to IMAGE_FSTYPES automatically.

Cheers,
</pre>
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

--------------97D4E91AD5B04D4D8CEF6AB7--
