Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F3F5E00DFF; Fri, 16 Dec 2016 10:24:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06ED0E00D49
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 10:24:50 -0800 (PST)
Received: by mail-qk0-f193.google.com with SMTP id n204so12616908qke.2
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 10:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+hkusFbTOud+qQBDfjA9wRNTztejq82EQIcqY7I5xJc=;
	b=uRLfvypR/jwg4ixxRRkNK9ZyumLaaNVowFYvqMtP7vkLNxaOcoqp9KA5S9qe/te37/
	6zqvYtQtOczNGEnZb8mEobNjdu0/NMI9ig3OUELz2wES3JUEEYHJ4pPD20e9jpjqizKd
	jtRW8i9eXXBwIHv0O9Wb7O+a2/Ez2CHKLUJxPNvyIghND0D5KkyBSRN3ubokIQZGffqa
	DL5/yhIjcAzX0yNFmga/uES+iNzKO9IcW99a2xWMEFO6mktcT3V3hYQB4wZxOCqEczqH
	sD6tg9Mm2EbTaC6zZHf1E2tijhXSzO5JJjb3gby4s/aQVlv3XrokMOhW1VfxKMyDs9y1
	iwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+hkusFbTOud+qQBDfjA9wRNTztejq82EQIcqY7I5xJc=;
	b=K8ESLs2C4C2H5EPNwEjrAnZlbNjhYnaCQIDhtl210xSo4GmRaTIvBDDMpTsfdSCGZV
	5+sf8LYq3Q2h0oxxpa+9FkieSApEHBGv7teeMylmq9CnS71PVRXriRSSgre8pPiDqZCM
	Lu5hD9LMOEdGyGpl/1QOHcVVYw6N1bJHviUm1yng8SghvWZdfPk81FdOfy/SR4ImZYAX
	tk9BqnwXGYbuL5KNxUbTo4hvT9KWDxwRs8e1OYBBf2JPENnXyRWWDTHJpoVT2MnokXG2
	o500UTptSXiZqE1XzRtJ40EJo/h0kSQ4gVfkCqozfj3cbs1YN0JuRXaV8V9A2xtgsbWc
	fl8g==
X-Gm-Message-State: AIkVDXKiH4Z0zFWEseNTWQCAc3XG/Ajg5hIN1aL5jDfUOui+O7uiCKdKFDXoPRA3SppGIUtpQ5fv0sJ7z88PiQ==
X-Received: by 10.55.91.1 with SMTP id p1mr4533319qkb.275.1481912689928; Fri,
	16 Dec 2016 10:24:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.46.162 with HTTP; Fri, 16 Dec 2016 10:24:49 -0800 (PST)
In-Reply-To: <ba7b7f02-aaff-cd8d-20ee-8619b6201ede@linux.intel.com>
References: <20161216150617.GA21846@openSUSE-i7.site>
	<ba7b7f02-aaff-cd8d-20ee-8619b6201ede@linux.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 16 Dec 2016 13:24:49 -0500
Message-ID: <CAHUNapTnNh23s42zBGVjgMPXmHVSaucu4d4g6pn-3s+w9insTw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PSA for anyone using openSUSE 42.2 (or similar)
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
X-List-Received-Date: Fri, 16 Dec 2016 18:24:54 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 16, 2016 at 11:06 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 12/16/2016 05:06 PM, Trevor Woerner wrote:
>>
>> I just made this adjustment but given it only happened once or twice a
>> week on
>> a reasonably busy build machine it might be hard to confirm. I'm also not
>> sure
>> if setting it to "infinity" is sensible ;-)
>>
>> I'm guessing other host distros probably also fall into this category.
>
>
> I've seen this on Debian Testing as well. Care to submit a documentation
> bug?
>
> https://bugzilla.yoctoproject.org/enter_bug.cgi?product=General%20Docs

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10818

