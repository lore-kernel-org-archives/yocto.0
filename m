Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14CCEE00B8D; Mon,  2 Apr 2018 13:30:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73473E00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 13:30:07 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id r29so5390973ywa.12
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 13:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pPgJLDKtqK1dPgw+dbmKRbBP5ZS7bXUjd/ihojLYbZY=;
	b=lDSdsdlMpqfd5fZePnI/gAIhsg5RHvuZO0WdiiczmHBvistnRSVZVqHyUcKUnUZsNz
	YY6d/vhQYwVlzNCFCJGKkWXmnOkVWnszIARe1TY45Bjp98uVEKSa2yuLM5HdRVe6BkqA
	2qQqG4tk0WPE2Hyiw7q86W6CAbmc1bI3Vf569WzPgkgWp/kIlPK7HQftyiwcU6WwJJCO
	ftPGQksHlCh2jHkmKQTPTYWQ3d+jE5jlci1MG/v7lBrKgJFscPpK1NFbGDvKEPSyIzlj
	n9vI6BiozERtb53Qa6XhDPdu0waxikLj0rcImqK7dGxondz6v93WIqzSWBl6o8E8t14F
	WwjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pPgJLDKtqK1dPgw+dbmKRbBP5ZS7bXUjd/ihojLYbZY=;
	b=k/u/RI3aXhy+GyvjtyaHefHsuvqJkwuFgUk9iiW9wQNcq0H7IOCHYf5ySTLnH5LBsE
	fSgUUkuIirf6hmewIo89ztdX2GEgnwAoYDip0LgE4MT/fN/7rMTS6pDz81wMZc+cf6Hw
	Uk2Dd3xMntnYypAkjc3oNRsTjGu1Utog5dhtN0G+IjuFo22EMT5XbSNWIgLu/RWlxDDw
	7iM7ZVXc8OWSa2cZZDpsJ7CRmpsq1kKwYI3X+9IsQhFO87RLLeRbPWSqV3W8yqmeRGKn
	J9/gzpKtZWuMOe6WPRrBm/tRfYAZwZYxT1fzB5Vn62/kyhidSjP6DOt8E0oJXjjrGMfX
	El4Q==
X-Gm-Message-State: ALQs6tD188qgHE6gsaLs3xdLtOCvzPb83b0uUIX/jWRbpPjsWb8gtY0f
	wJ4ly5ppA0JJ3bQ6wr66PPjiRSsK4jV6uDBy+jA=
X-Google-Smtp-Source: AIpwx48mF5M6Yag+t2v8FMqfkYvB77iZtxUzCz9/ohJ0fAQy82bE0NA6s+4LPkq70YjOQf9qwRufq0G92DWYyyN0uUU=
X-Received: by 10.13.249.197 with SMTP id j188mr6389447ywf.318.1522701006577; 
	Mon, 02 Apr 2018 13:30:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Mon, 2 Apr 2018 13:30:06 -0700 (PDT)
In-Reply-To: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Mon, 2 Apr 2018 22:30:06 +0200
Message-ID: <CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>, Yocto Project <yocto@yoctoproject.org>
Cc: ML mesa-dev <mesa-dev@lists.freedesktop.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 20:30:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 2, 2018 at 3:05 PM, Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
> On Mon, Apr 2, 2018 at 2:42 PM, Daniel Stone <daniel@fooishbar.org> wrote=
:
>> Hi Andreas,
>>
>> On 31 March 2018 at 15:18, Andreas M=C3=BCller <schnitzeltony@gmail.com>=
 wrote:
>>> Thanks for prompt an VERY helpful support. I did:
>>>
>>> * Check my configure and found: --disable-dri3!
>>> * Tested your patch (with --disable-dri3) and as expected it fixes the =
issue
>>> * Found what causes --disable-dri3 - it came in by the Openembedded
>>> update mentioned in first email. FWIW: I use a fork for
>>> meta-raspberrypi - the original is not affected so I am the only one
>>> with this issue...
>>
>> Glad to hear it!
>>
>>> I have two questions related to dri2/your patch (sorry asking for more =
:)
>>>
>>> 1. Your patch fixes improper initialized variable. Do you think it is
>>> worth being applied?
>>
>> Yes, definitely: I've sent it in now. It's sadly missed 17.3.8
>> (scheduled to be released about an hour ago), but hopefully we can get
>> it in for a 17.3.9, if we have one. Else it'll be in 18.0.1.
>>
>>> 2. In the thread I mentioned in my first email Trevor mentioned that
>>> he has seen error message 'Modifier 0x0 vs. tiling(0x7000000000000001)
>>> mismatch' when trying to get chromium GLES accelerated. Maybe a stupid
>>> question but is it possible that applications running at X can ask for
>>> dri2 explicitly?
>>
>> He said that only happened when using the system (rather than bundled)
>> libraries, which would presumably be using DRI2 by default. I've
>> submitted a bug to OE to ask them to enable DRI3 by default, but in
>> the meantime this Mesa fix should hopefully work anyway.
> Thanks - I was thinking same. OE-Core enables DRI3 for x11 AND vulcan
> only - and vulcan is not in my distro features (and does not make much
> sense for VC4)
>
> Added yocto mailing list to merge both threads together and avoid cross-t=
ak.
>
> Thanks again for taking care
>
Hi Daniel,

Just sent out patches to oe-core

* Apply your patch with dri2 modifier init
* Prefer dri3 over dri2 for x11/opengl distro features

See what happens...

Cheers

Andreas

