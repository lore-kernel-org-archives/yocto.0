Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05284E00C5B; Mon,  2 Apr 2018 15:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f67.google.com (mail-pl0-f67.google.com
	[209.85.160.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3DE2E0084D
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 15:49:11 -0700 (PDT)
Received: by mail-pl0-f67.google.com with SMTP id 61-v6so4150633plb.2
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 15:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=nH/xltlefTRiwBEwlMOcyTtBH5GUfJil5CfBNg9rel0=;
	b=G9UwLgLYNAgzblvlD6B42ItyvhufoBCyz8qFvcFrsr4FtarNOSCMlDUu9hc8orylt5
	FZItj4VGSPBzuQ+y6Z+UYDV6XLHIKX9DXyGx7wV4dB8KiRvv/5AZbRt07DByIe7KkdNv
	n8OolUrwNScbMnbYOKq1EnCexuEBtbXk4wn0XYj8nYWgF7ZROzZLlstok1e6lZnwNwJr
	50qtREYRtaf0cf1fgwR9hXtCIl2w70JiAGFLlPFWdampKXCqBujINbeH17mBIjuHcWu/
	X7iAljQ3Jx6hGntRJrC6tUQJBaetMlgZi6Yg1Dqyfos72UZb9O3G1DHlMkIJbSKaNoCy
	nJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=nH/xltlefTRiwBEwlMOcyTtBH5GUfJil5CfBNg9rel0=;
	b=ty/W3KOautwxB5cLQTsqfMH9dwkeoEtELizi8/HkbRHaxRz3WG1AQm0vy0p+TFsUUB
	5+VGGSmXNTvSoV4xzI1cYT4bwxtPlJAN9GWzoc6aeKIZPN13P3HIhQvl0LanjWbpV0WL
	5STvSf46ZaESlJzQITsQVQm9dPjQVCzf0mO9HkzTNujATSQGL7YDFmvSi9mlkBM5ENAj
	5ztvBUTuxMoxXPgDfLBETOUaOVjf4S8EGqHdwOpyzf7c2EGTjMiIiQr50PpeKUkp9XV2
	4MRc5+Tu0tYSkSoq56wkEGTpYvUjBi6KbiwRptGySHPSfnMcvWV2m2ON6O/kevovMhvY
	ig4w==
X-Gm-Message-State: AElRT7HMiqOQ7VlxisfH+YWQ/7Vyrdw5PRMlCaOh8kQvKizL+WtUY3V1
	NF+orJ3N/4pXMp5rCa9MREVvqA==
X-Google-Smtp-Source: AIpwx495WVryD8yVc4MFdrf2fsLzXev/06tQRxlRbzzcyGGNp60mKq2gME3s9b6i+7GoAHFxB+H43g==
X-Received: by 10.98.76.68 with SMTP id z65mr8694001pfa.181.1522709351385;
	Mon, 02 Apr 2018 15:49:11 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:5c16:1135:7539:66e4?
	([2601:202:4000:1184:5c16:1135:7539:66e4])
	by smtp.gmail.com with ESMTPSA id
	l80sm2568313pfb.38.2018.04.02.15.49.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 15:49:10 -0700 (PDT)
To: Chris Elledge <celledge@digitallumens.com>, yocto@yoctoproject.org
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; keydata=
	xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <8e16692f-6654-60b2-0079-b2006eaeb219@gmail.com>
Date: Mon, 2 Apr 2018 15:49:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Mon, 02 Apr 2018 22:49:13 -0000
Content-Type: multipart/alternative;
	boundary="------------889D9AE2FCAB77DE3D82C956"
Content-Language: en-US

--------------889D9AE2FCAB77DE3D82C956
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 04/02/2018 01:15 PM, Chris Elledge wrote:
> I recently upgraded my Yocto based project to Yocto 2.4.2, and I
> encountered a problem when building my custom kernel for an AT91
> SAMA5D3X platform. I've been using an ARM Thumb2 kernel for a while
> successfully until this release. It appears that the issue stems from
> the change to binutils version 2.29.1.
>
> Here's a good description of the problem:
> https://patchwork.kernel.org/patch/10072695/
>

I will take a look. Can you provide a reproducer? ie qemuarm tweak??

- armin

> I tried out their test script, and it flagged the
> arm-poky-linux-gnueabi- toolchain built by Yocto 2.4.2 as being buggy.
> Has anyone else encountered this problem and figured out a way around
> it without disabling Thumb compilation of the kernel?
>
> Thanks,
> Chris
>
> The bug showed up in my kernel with the following oops at kernel boot:
> Internal error: Oops - undefined instruction: 0 [#1] PREEMPT THUMB2
> Modules linked in:
> CPU: 0 PID: 1 Comm: init Not tainted 4.9.91-custom #53
> Hardware name: Atmel SAMA5
> task: df448000 task.stack: df44a000
> PC is at ret_fast_syscall+0x2/0x54
> LR is at SyS_brk+0xe9/0x104
> pc : [<c0105e62>]    lr : [<c016bca1>]    psr: 60000013
> sp : df44bfa8  ip : 50c5387d  fp : 00001000
> r10: 00000000  r9 : df44a000  r8 : c0106044
> r7 : 0000002d  r6 : b6f3e050  r5 : 00010034  r4 : 00000008
> r3 : df448000  r2 : ffff0001  r1 : 00000000  r0 : 00bda000
> Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
> Control: 50c5387d  Table: 3ec84059  DAC: 00000051
> Process init (pid: 1, stack limit = 0xdf44a210)
> Stack: (0xdf44bfa8 to 0xdf44c000)
> bfa0:                   00000008 00010034 00000000 00000001 beddcfb8
> 00000000
> bfc0: 00000008 00010034 b6f3e050 0000002d 00000000 00000001 00000001
> 00001000
> bfe0: 00000001 beddce3c b6f54cf4 b6f55b28 20000010 00000000 ec846eac
> 80cafe65
> Code: 0000bd08 00000000 00000000 b6720000 (1000f8d9)
>
>
>


--------------889D9AE2FCAB77DE3D82C956
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/02/2018 01:15 PM, Chris Elledge
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com">
      <div dir="ltr">I recently upgraded my Yocto based project to Yocto
        2.4.2, and I encountered a problem when building my custom
        kernel for an AT91 SAMA5D3X platform. I've been using an ARM
        Thumb2 kernel for a while successfully until this release. It
        appears that the issue stems from the change to binutils version
        2.29.1.
        <div><br>
        </div>
        <div>Here's a good description of the problem:</div>
        <div><a href="https://patchwork.kernel.org/patch/10072695/"
            moz-do-not-send="true">https://patchwork.kernel.org/patch/10072695/</a><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
    I will take a look. Can you provide a reproducer? ie qemuarm tweak??<br>
    <br>
    - armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com">
      <div dir="ltr">
        <div>I tried out their test script, and it flagged the
          arm-poky-linux-gnueabi- toolchain built by Yocto 2.4.2 as
          being buggy. Has anyone else encountered this problem and
          figured out a way around it without disabling Thumb
          compilation of the kernel?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Chris</div>
        <div><br>
        </div>
        <div>The bug showed up in my kernel with the following oops at
          kernel boot:</div>
        <div>
          <div>Internal error: Oops - undefined instruction: 0 [#1]
            PREEMPT THUMB2</div>
          <div>Modules linked in:</div>
          <div>CPU: 0 PID: 1 Comm: init Not tainted 4.9.91-custom #53</div>
          <div>Hardware name: Atmel SAMA5</div>
          <div>task: df448000 task.stack: df44a000</div>
          <div>PC is at ret_fast_syscall+0x2/0x54</div>
          <div>LR is at SyS_brk+0xe9/0x104</div>
          <div>pc : [&lt;c0105e62&gt;]    lr : [&lt;c016bca1&gt;]   
            psr: 60000013</div>
          <div>sp : df44bfa8  ip : 50c5387d  fp : 00001000</div>
          <div>r10: 00000000  r9 : df44a000  r8 : c0106044</div>
          <div>r7 : 0000002d  r6 : b6f3e050  r5 : 00010034  r4 :
            00000008</div>
          <div>r3 : df448000  r2 : ffff0001  r1 : 00000000  r0 :
            00bda000</div>
          <div>Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM 
            Segment none</div>
          <div>Control: 50c5387d  Table: 3ec84059  DAC: 00000051</div>
          <div>Process init (pid: 1, stack limit = 0xdf44a210)</div>
          <div>Stack: (0xdf44bfa8 to 0xdf44c000)</div>
          <div>bfa0:                   00000008 00010034 00000000
            00000001 beddcfb8 00000000</div>
          <div>bfc0: 00000008 00010034 b6f3e050 0000002d 00000000
            00000001 00000001 00001000</div>
          <div>bfe0: 00000001 beddce3c b6f54cf4 b6f55b28 20000010
            00000000 ec846eac 80cafe65</div>
          <div>Code: 0000bd08 00000000 00000000 b6720000 (1000f8d9)</div>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------889D9AE2FCAB77DE3D82C956--
