Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7293E00BF3; Thu, 19 Jun 2014 20:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 111EBE00BAE
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 20:36:10 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id hi2so366900wib.4
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 20:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7FIPl3tbmYVByY/EM3YguUfaF972hyMhi/dBWRl0ibU=;
	b=eL8ZEgX3UGFv78chAivaT7KwsTtCrLcHBEyyiFNaR2gGqWT9EdIFjkSxPGID7NgApa
	VYj2oJp43dNnlm0Z7WF6UbV0dnoGg/s43nmC4iQly5pi4lP6Z0G+lTEqfxMvBbgL8QJ9
	n+lTkwvaxFUPffAFUNisB8kW28kZrstLmNXHN70mes3TogqoUhRTMZccRIOM9e2ugdVs
	XE2A/kBHskh+JwlS2y25Vf15fd8Qg8iUG/T5+PwTmJFAvpvrjgwMS8MOAEUQgz0+ET1g
	P8vY5tLqtjcOP5kvI0L4SKBb4uP01uKgcWb0i0hBWPBiNwhP9SNSo9rk3d60rfpotRFX
	oMjg==
X-Received: by 10.194.71.12 with SMTP id q12mr777903wju.5.1403235370005; Thu,
	19 Jun 2014 20:36:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.44.136 with HTTP; Thu, 19 Jun 2014 20:35:49 -0700 (PDT)
In-Reply-To: <CAJTo0LZo9EbHG2Nc8=5zZQMFfidMQh2fPLPyHWSOT0kC9LDmrQ@mail.gmail.com>
References: <CACzyEJ-cuXazzEDHpiVx-ad1jMaBvFL6AX8vDk-YVbPnEJ031A@mail.gmail.com>
	<CAJTo0LZo9EbHG2Nc8=5zZQMFfidMQh2fPLPyHWSOT0kC9LDmrQ@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 19 Jun 2014 20:35:49 -0700
Message-ID: <CACzyEJ_LqoPW5O5zbyg3784U477JOgDirdGWEPKqBuzsS+e3cA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: how to disable shell access
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
X-List-Received-Date: Fri, 20 Jun 2014 03:36:17 -0000
Content-Type: text/plain; charset=UTF-8

Thank you Ross,

To answer my own question on "1. how to change the default password of root?"
- remove "debug-tweaks" and do as it is described in
"https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password"

Ref:
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password
http://bec-systems.com/site/967/setting-the-root-password-in-an-openembedded-image
https://lists.yoctoproject.org/pipermail/poky/2013-August/009098.html
http://gumstix.8.x6.nabble.com/Duovero-EXTRA-IMAGE-FEATURES-tools-sdk-password-td4968867.html

ISS

On Tue, Jun 17, 2014 at 1:54 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 17 June 2014 21:23, Insop Song <insop.song@gmail.com> wrote:
>> 2. how to block shell access but to open for debugging access
>> For this, I could think of that we could block ssh access and only open console.
>> Or opening ssh for a hidden port only.
>
> The Raumfeld multi-room audio system has a neat solution for this: you
> insert a USB stick with a special file to enable the SSH daemon.  The
> filename is a md5sum, presumably a hash of something along the lines
> of "open sesame".  This is their magic "root me" button, as root has
> no password.
>
> Ross

