Return-Path: <dfldashgkv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10727E00EBC; Mon, 28 Sep 2015 03:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shiftee[at]eircom.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f194.google.com (mail-wi0-f194.google.com
	[209.85.212.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CE85E00349
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 03:51:41 -0700 (PDT)
Received: by wicuu12 with SMTP id uu12so16904104wic.0
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 03:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=nGCVnC/AO8+tFwm6fLHZLDASzFYJRbpTnI7g/jKkB00=;
	b=06J9uLYXV4GyX+UTITldrUvQxcx3LOAzS6cxCUhnGZKddxwdPhEuM1P+l3XZAg4sby
	HzXiqhcOQUno4hqACPpc49gpnYTYRQ8kMLBCBkXkjMRH6lLZEJbpNJfVmkIbgkfgiBm2
	nmkQg9mTTyMxFfAQi5ANnKn4jwVPa3aL+OCBgDpo3Ac1WVuOlKDVNs63Z4YdpW9c5Jdo
	rRWsNHJhs3wMEqqp6lbuDjTV/gXv2Wi6gmpqD5cEKtKDVWAT43fsPLrMjxqTnwCNxeHX
	WLMLTNKScozCp9YnYKnRVIj2qY3l777rQOlQtNzQ7zp+OB2ncTQd3RAGCvoa6oMxwM8L
	fFEg==
MIME-Version: 1.0
X-Received: by 10.180.72.112 with SMTP id c16mr17347458wiv.15.1443437500758;
	Mon, 28 Sep 2015 03:51:40 -0700 (PDT)
Sender: dfldashgkv@gmail.com
Received: by 10.28.55.134 with HTTP; Mon, 28 Sep 2015 03:51:40 -0700 (PDT)
In-Reply-To: <5605B618.7010700@gmail.com>
References: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
	<5605B618.7010700@gmail.com>
Date: Mon, 28 Sep 2015 11:51:40 +0100
X-Google-Sender-Auth: o1QdqbDN7vxHkRv7ApABKydw8d4
Message-ID: <CAJv4cO3=XKLp4cXSG_o7zvHFP5-NBS7u3zBaee+vz-2rww21ZQ@mail.gmail.com>
From: "Mark O'Donovan" <shiftee@eircom.net>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Webkit2gtk opengl issue
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
X-List-Received-Date: Mon, 28 Sep 2015 10:51:46 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 25, 2015 at 10:01 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On 09/23/15 07:53, Mark O'Donovan wrote:
>> I am working on an am335x based project, with a webkitgtk
>> program on the screen, displaying a simple webpage.
>>
>> I want to use a standard yocto kernel, which I believe
>> means I must do without the SGX hardware acceleration
>> until an open-source driver is available.
>
> You need to use whatever kernel the accelerated drivers were written
> against. Sometimes that can be fairly recent, other times: not so much.
>
>> Thus in fido I had added opengl to DISTRO_FEATURES_remove
>> This worked with webkitgtk 1.x
>>
>> The webkitgtk 2.x recipe  also specifies opengl as optional.
>> However it depends on gtk+3 which depends on libepoxy
>> which requires virtual/egl.
>
> For ARM SoCs/boards that have mali (which isn't your case, but is mine),
> the user-space binary-only mali drivers PROVIDE egl, so it is possible
> for me to build libepoxy with DISTRO_FEATURES_remove = "opengl" and the
> mali test app and x11 server both build and run correctly.
>
>> Is this an oversight??
>>
>> Is it possible to build webkit 2.x without opengl??
>
> I don't know. But in the mali case it is possible to have mali provide
> egl/gles1/gles2 and have mesa-gl provide an opengl-only solution as a
> fall-back for any non-egl/gles1/2 apps (or at least theoretically it is).
>
> Hope this helps.



Thanks Ross, Trevor,

With webkitgtk 1.8 I was having issues with opengl present.
It seems not to be the case here.
My screen is completely blank.
I have discovered that the page fails to render due to
javascript.
Disabling JIT solves this issue.
The example below fails to render if JIT is enabled.
It will however render if I uncomment the 'alert' statement.

<!DOCTYPE html>
<html>
<head>
<title>Test</title>
</head>
<body>
<p>Page Rendered</p>
<script>
  //alert("JavaScript works")
</script>
</body>
</html>

Is there anything you would like me to test??

