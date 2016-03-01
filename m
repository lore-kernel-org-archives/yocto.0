Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5BC3E00C4C; Tue,  1 Mar 2016 10:44:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 358 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Mar 2016 10:44:26 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BC29E00C3B
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 10:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1456857865; l=3432;
	s=domk; d=jenslucius.de;
	h=Content-Type:In-Reply-To:MIME-Version:Date:From:References:To:
	Subject; bh=oW9W0j9IBQYUn/qVN4q/ZLhucbcsBj9+bQxCO4B9xgc=;
	b=KdC1GFm2lg0YsEtEKVF0KSCx6T4ce7kgo0Q/aHmyoVu/KxcwKaFBmGslcjCks77+rcZ
	FSXEiIfyQRb1tVwsCTwT4reuSReLT2F8xnWUvWCf9XvjYNDK0y4Cj6Yglr4TqbKOh6FYU
	BI9hiLOq5SUS4ag9zJrXuOiQa3USlbyUqaE=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgBcHsubAgpnn8ldS
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p57915006.dip0.t-ipconnect.de [87.145.80.6])
	by smtp.strato.de (RZmta 37.20 DYNA|AUTH)
	with ESMTPSA id 000ec9s21IcQ3At
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with
	521 ECDH bits, eq. 15360 bits RSA))
	(Client did not present a certificate);
	Tue, 1 Mar 2016 19:38:26 +0100 (CET)
To: Valentin Le bescond <valentin.lebescond@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, urnen81@yahoo.es
References: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
From: Jens Lucius <incnews@jenslucius.de>
Message-ID: <56D5E155.1090209@jenslucius.de>
Date: Tue, 1 Mar 2016 19:37:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
Subject: Re: [meta-chip] How to flash yocto's output into CHIP
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
X-List-Received-Date: Tue, 01 Mar 2016 18:44:29 -0000
Content-Type: multipart/alternative;
	boundary="------------080404010003010907030203"

--------------080404010003010907030203
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi

There is a pull request for the meta-sunxi layer. Maybe this would be a 
good starting point?

https://github.com/linux-sunxi/meta-sunxi/pull/126

Regards,

Jens

Am 23.02.2016 um 21:09 schrieb Valentin Le bescond:
> Hi,
>
> I'm wondering if anyone managed to flash the CHIP board with a 
> (successful) yocto image build.
>
> I didn't succeed but here are the few things I found :
>
> Comparing the files expected in CHIP-tools/ and the ones available in 
> Yocto deploy/image/chip/ I see some are missing in yocto :
> uboot-env.bin
> sunxi-spl-with-ecc.bin
>
> I tried using the ones downloaded with chip-update-firmware.sh but it 
> doesn't work...
>
> While flashing, at some point, the chip (in FEL mode) disconnects the 
> USB connection. If it goes well the chip reconnects as a ttyACM0. If 
> it doesn't go well (which is my case), chip never shows up !
>
> If anyone managed to get the thing working please let me know. If not 
> I am willing to try any idea you may have.
>
> Regards,
>
> Valentin
>
>


--------------080404010003010907030203
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body smarttemplateinserted="true" text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    There is a pull request for the meta-sunxi layer. Maybe this would
    be a good starting point?<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/linux-sunxi/meta-sunxi/pull/126">https://github.com/linux-sunxi/meta-sunxi/pull/126</a><br>
    <br>
    Regards,<br>
    <br>
    Jens<br>
    <br>
    <div class="moz-cite-prefix">Am 23.02.2016 um 21:09 schrieb Valentin
      Le bescond:<br>
    </div>
    <blockquote
cite="mid:CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>Hi,<br>
              <br>
            </div>
            I'm wondering if anyone managed to flash the CHIP board with
            a (successful) yocto image build.<br>
            <br>
          </div>
          I didn't succeed but here are the few things I found :
          <p>Comparing the files expected in CHIP-tools/ and the ones
            available in Yocto deploy/image/chip/ I see some are missing
            in yocto : <br>
            uboot-env.bin<br>
            sunxi-spl-with-ecc.bin</p>
          I tried using the ones downloaded with chip-update-firmware.sh
          but it doesn't work...<br>
          <br>
        </div>
        <div>While flashing, at some point, the chip (in FEL mode)
          disconnects the USB connection. If it goes well the chip
          reconnects as a <span class="ember-view" id="ember1076"><span
              class="search-highlight">ttyA</span>CM0. If it doesn't go
            well (which is my case), chip never shows up !<br>
            <br>
          </span></div>
        <div><span class="ember-view" id="ember1076">If anyone managed
            to get the thing working please let me know. If not I am
            willing to try any idea you may have.<br>
            <br>
          </span></div>
        <div><span class="ember-view" id="ember1076">Regards,<br>
            <br>
          </span></div>
        <div><span class="ember-view" id="ember1076">Valentin</span></div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------080404010003010907030203--
