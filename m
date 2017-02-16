Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C3D5E00A2C; Thu, 16 Feb 2017 05:50:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B18E00A1C
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:50:53 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id d5so1423763uag.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=z1QDpXI+HBOWAnH3OJWmaCc/1jMQt+0lf1cLeB6hC7I=;
	b=utmxULwPr/Y7oxzpILtRV6m2FUHFVdWyw4s4W48oQ3OdP/sYIJrlfwxjE9j1ZE1Aj4
	G5Gy8nAXqL3yS6Qr98pkzZsLCx9fHfvuxApb9tERWMVd6mdvKFTWi1+PtM/hpcxZDe4v
	zhpFMY65G9P+HgunsN1h8gDfSlpbC1Rc3H1ttKFtK+3uibGR4uwE29O6aEebSmfSlOs8
	aV325vAD92zBJ4sABm+CJx8JXu1fEtomG0stqOojqrIEe2pVn/w7yDG0ywTCzWkPgK0/
	UsmRnIOwVnA0Muouz0QQZpEI6KGp/86W7miCSkHwxgM1UyOOoT7SINKM9L/bZKpzrl8F
	lJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=z1QDpXI+HBOWAnH3OJWmaCc/1jMQt+0lf1cLeB6hC7I=;
	b=FfBqRn+rGVSQPBfKDbgaS49IkuTKS7gK2iL6vcTQJiXds2cEdj2k193+HmoRteSNGO
	HgYs1P6fPKSByiZOZNyBvDOQ1F+1Ctf+92NsOn04gnDBTS6OG5jquLY3DeHBZfjvm9lK
	zeSYfTMOyLGrttJc/iqY9AIpKXL26axNgZWEBjqcLTUxgoLsaenk+6r7VH0YZujbioj3
	NvALvenslwXev2p3N8DAySw0Ynw2RNDH5nixyg5CYvLrrh+I3bgVBVXzlfmOgSlzyedU
	00yWL67yFVisQd3l9nFayhhvKG4tyuwyI0FrQrJ6DbkLZ79NxFxeQcxUllOZbDd17yl8
	gXbw==
X-Gm-Message-State: AMke39m/ezU5XmM97rtYIhEbP+500cHVw5xpD56wikszlmyEuyDmdhDM7Buw5h52gOs4Bv+5vp3RzMYnFfl7SA==
X-Received: by 10.176.0.149 with SMTP id 21mr1119477uaj.81.1487253052920; Thu,
	16 Feb 2017 05:50:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Thu, 16 Feb 2017 05:50:52 -0800 (PST)
In-Reply-To: <CALbNGRS=i0ZWmvrtbTXkj2LxQw0_iGRu0K5qu=5D-rtzRS1uLA@mail.gmail.com>
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
	<ed3fbe7c-ea82-6467-d678-fb6f4478f23f@mlbassoc.com>
	<CALbNGRS=i0ZWmvrtbTXkj2LxQw0_iGRu0K5qu=5D-rtzRS1uLA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 16 Feb 2017 14:50:52 +0100
Message-ID: <CALbNGRQ8-SSnNv4DeNMBQ1xiBSvLidA-mpmOhEHGiLqF=CUyFg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Thu, 16 Feb 2017 13:50:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2017 at 2:42 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Thu, Feb 16, 2017 at 2:38 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2017-02-16 12:49, Andreas M=C3=BCller wrote:
>>>
>>> xorg-xserver recommends xf86-input-libinput since oe-core's commit
>>>
>>> | commit 2d005faff6341a81a2afae28860101ba9db51ae8
>>> | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
>>> | Date:   Wed Oct 26 11:37:38 2016 +0300
>>> |
>>> |    conf: Use xf86-input-libinput by default
>>> | ...
>>>
>>> As nice side effect warnings for missing evdev in Xorg.0.log are gone.
>>>
>>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>>
>>
>> So, does this let my simple config (HDMI+USB keyboard/mouse) work with n=
o
>> further fiddling?
As far as I remember you are using an elder release. To be honest: I
don't know if and what oe-core suggests ifo nput driver for elder
environments.

In my environment I do simply nothing but follow oe-core with
xf86-input-libinput recommendation and whatever I have connected so
far by USB (mouse/touchscreen/keyboard) it simply worked.

Andreas

