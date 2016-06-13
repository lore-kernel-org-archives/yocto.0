Return-Path: <matt@madison.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90972E00E5F; Mon, 13 Jun 2016 05:31:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53872E00E69
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 05:31:08 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id u74so83515719lff.2
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 05:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=madison-systems.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=22U+M0okJz97GLhn12pRyEBxv95DUS7w94muhyUo8mU=;
	b=cWS6om/Ry6dGLCYlYYcYL/6NS8xF0nbERstwzVRhKrnpA+ZjORhrPoZqKIE8RfKZgz
	0Om8L5I1EIhipbZKU1DdSquy1rht3F9C30X0A9m37IhICz2u4BbFJ+QY1wlO9UEypBDE
	FcqVfwcMc7uozNhWNPRPwdr+BTOW48a9+QpNii81q86k6voFm6KKuOvzZvzU1bp+aFnT
	n4oy9MexFDuclV/VmQiRhW6C3/6cb8vh9Ddz/1TsLMPicVE1NK+4riPRyEMm11h0dJ8d
	cN4EGONZ+siLLdRIFH6YPwvZBywbqxLQqFCyfBLl0+1IFJB9edAQhrgDz4Q3RrCPPDVv
	SzPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=22U+M0okJz97GLhn12pRyEBxv95DUS7w94muhyUo8mU=;
	b=DRLvHL90hc+0bw9yHlQ7yizJS62vR5s6PdPCHPDQNV9/hEgO99X43nxh2X5CMU4b37
	OjL4urTTFm1Vq9ztb2bSTDF+2ukrIvg2riZ2POzktgD4biFvz5W4EYxpiWAWCk3+wOji
	9GaytOdq2XF3q/bN7N9HxRJq2AkQZ9qPY7YKoVQUeQklcvgJ1ECDD5jH72J6ZsGsYLua
	9TPflYLGuYjSE+fEHk+1OAJVne85evzv9YQqFqmQ4euLEwh1VyiV/B2psyZjqykXDtEr
	5Agfh/eTRtiAHZ21Gg1jwJTQb9iVbc0nFO3kb1xaHPO1Q89n9UAW0MNCn5eAe++9DnIT
	mu9g==
X-Gm-Message-State: ALyK8tKcBw6x82fjpd6tfhlcQU+DuIhBxWpETd51LrZRBAjJE8aD1MhxcmdIjXyM5zFzs+keNgz1dinSuYmggw==
MIME-Version: 1.0
X-Received: by 10.25.214.84 with SMTP id n81mr199253lfg.162.1465821066786;
	Mon, 13 Jun 2016 05:31:06 -0700 (PDT)
Received: by 10.25.25.8 with HTTP; Mon, 13 Jun 2016 05:31:06 -0700 (PDT)
In-Reply-To: <CALmdmcAkpAp64nc8W89BhPMKN0_h7Vjij0K0KKrKKH63d6eELQ@mail.gmail.com>
References: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
	<CALmdmcAkpAp64nc8W89BhPMKN0_h7Vjij0K0KKrKKH63d6eELQ@mail.gmail.com>
Date: Mon, 13 Jun 2016 05:31:06 -0700
Message-ID: <CAGgRHJoa6G_UVbk6YvnPisMDA4BXEwRAb1Am3C5fYBjdU6ARgA@mail.gmail.com>
From: Matt Madison <matt@madison.systems>
To: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Issue creating systemd service recipe
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
X-List-Received-Date: Mon, 13 Jun 2016 12:31:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 11, 2016 at 10:32 AM, Alexis Lothor=C3=A9
<alexis.lothore@gmail.com> wrote:
> Hello Matt,
> thank you for your answer, I was typing a mail to, I found this fix too
> minutes before your answer ^^
> However, I do not understand why the first syntax did not work, since the
> systemd class seems to seek the service file here to. Here is the code wh=
ich
> make me think of that possibility, in systemd.bbclass :

Yes, the search code does work; I have some recipes that install
systemd services into /etc/systemd/system.  I think the problem was in
your do_install().

[...]
>> do_install () {
>>     install -d ${D}{sysconfdir}/systemd/system
>>     install -d ${D}/opt/lowpan
>>     install -m 0755 ${WORKDIR}/lowpan.service
>> ${D}{sysconfdir}/systemd/system
            ^--- missing '$' here
>>     install -m 0755 ${WORKDIR}/init.sh ${D}/opt/lowpan
>> }

-Matt

