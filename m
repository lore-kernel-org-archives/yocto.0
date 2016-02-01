Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 525E6E0079A; Mon,  1 Feb 2016 10:24:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79A67E00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 10:24:54 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id 9so88243625iom.1
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 10:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sxSnDY97hQZb/bsFff/y12+37Ai29iauEtDWp578ZOw=;
	b=wz9DQ9W3sHJ7rYTlGMwRJruvr/eSlF8PN6Uu0qxV9PnGT5inaXClVoqliGT4nxIG5K
	MJHxLIhIGmCzZr7+QNAsOcoZhfaKc9WycGr/RfIQplvXWCf5ZGFVefhphGKzzzW67D4V
	lVFxA8hP6iDwkex7KQ5Rgsd18tlMUP1bY652k7n0hZ+A/PkN2Et/dWjsadc+P/+4oEsn
	2AuMvicpQ5Kfjh2XYD2QzECCKdBdQ9b+PqEM1c/KfEnbb5BobMyOhd/WJCq4FTJAvRk2
	2A8u83eosMttEfi/Kv6a44LvJXraU5yoQkIb3NIY2M2PvwMn7zsA/Lj9puHDfLgW6YOM
	/qBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=sxSnDY97hQZb/bsFff/y12+37Ai29iauEtDWp578ZOw=;
	b=Vg4a2c0a66avt3JpqujDFPH1yC6tEN/X7vM8P25Q+5uTEb7DvXwjdfQdsCspKZ9bZJ
	dVAKL8lSeJGpf8A5UV7NYjTxz4VeEDEMtyPxbVlaq0QpMqtWclmfdHad+o/BH7yiS7oQ
	B+rjteGpN87oRzP5ll5bDRZHWUUM2FUYMmyYfkQyal5hrKpLdVMEjZRrqsk01joWHTt0
	QQHzA1K0Y36WUY4piSieCqCFa0DjZvrUMHxI9hodgn4E2y+Yf5xqO7eN5YUULaledt3S
	M0d7JAGkBREFYqiNVdiwNSoJJZxJERZFTdqLZpQC5Vb+P0Z3/7poPwWSAGAIt8IosznM
	lMbQ==
X-Gm-Message-State: AG10YOTQQL0oLivyHJRD50YzlR4II0veSuPlFhJMtkLcmS2hTL4o29C0UJTrmA31wQW0p56Zh6o/r2oSa2xDGg==
X-Received: by 10.107.9.211 with SMTP id 80mr17739111ioj.112.1454351093494;
	Mon, 01 Feb 2016 10:24:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Mon, 1 Feb 2016 10:24:24 -0800 (PST)
In-Reply-To: <56AF9FA4.8050603@mvista.com>
References: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
	<56AF9FA4.8050603@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 1 Feb 2016 10:24:24 -0800
Message-ID: <CAMKF1soHPUQpA6v3t_T+KH7HeYLWcKRc5H+J_HPQHgTSHmz0OA@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Glibc 2.24 _might_ require minimum kernel version 3.2
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
X-List-Received-Date: Mon, 01 Feb 2016 18:24:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 1, 2016 at 10:10 AM, akuster <akuster@mvista.com> wrote:
>
>
> On 01/31/2016 09:41 AM, Khem Raj wrote:
>> Hi
>>
>> This is FYI, as I have sent a RFT for glibc 2.24, there might be another change
>> coming which is under discussion on glibc mailing lists which is on
>> supported minimum
>> kernel version bump to 3.2 since 2.6.32 will be EOLed this summer [1]
>>
>> If anyone is planning on using upcoming yocto/OE release and sticking
>> to kernels older than  3.2 then please plan for upgrading your kernel.
>
> Nope.

Thanks, its like 10month ahead of time warning so no one then forces
to keep us using 2.6.32
you have been informed

