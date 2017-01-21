Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D1F8E00546; Sat, 21 Jan 2017 05:09:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 817B1E00546
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 05:09:00 -0800 (PST)
Received: by mail-oi0-f49.google.com with SMTP id j15so57564315oih.2
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 05:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=yUMn31WAHBOVX8fAl4RVaPDXdOvSxpola7yIVcteYmo=;
	b=rAs4l9WFTbg+qfRJn5Ut5wcD/2VU0bLlCcbdlD1iORdUrf+V8rtWs8l3qh8FkdSZPh
	uMbTnudnLaXDIbkzTWi4qGHfTVkQDXvw25P5lElVYDd5bcHogycWWPprMKggNaOt4iDp
	Xl1KF5HcgWVIRiQgo+WgOA7tnOC6/Tp8A8xMOGHMIdOyB51txA6Nax1BfZS/kqyKbef9
	TGP3oAozsKKucOHOXPKxIO/HM6aRfSscZO8L0ggZBt4Fpf9Qk21aUYdXeVnf1FCJOc2v
	pgcQOulVo1ZVP/EkP+Wh1D8f4GKtDR9c9JqmE8uGsYcmw/u2oITYnC/KK7Xa2c8p0BOy
	m+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=yUMn31WAHBOVX8fAl4RVaPDXdOvSxpola7yIVcteYmo=;
	b=eCs6kWJw3NAHK1PV7XZkjmR4JZnSSbHPTV+Zqhu5JQQ11G2N7tiX/OKBwQ5abBIOs9
	GAFgif+jfS1ACLE280k3FhCzNjfhzS7FvKliGgtcuBbSC2NpnXgE66CL4YWE0/KsH5H4
	qmuVNxG6EuKqtonq46h9aZ4RXIoEL6PzPgRaq+jmO9CMAlZgJz2NLhEmf83Ua0YTNm8c
	7pJTpykN3tNlunHNfiVMWzqVTKo2PwnWOl/58bJrHrfwlIrMkea60KTpGww6wyXqFM8t
	lwox1fVCw9iCJ8OfHU4QMSCxMF66SMjvWuSfDT3ZA+nrmbJpbwOZRByxEwdPx6UP7swj
	9eKA==
X-Gm-Message-State: AIkVDXJ0xSRFLAJDCEienfVjQBW/ZkFNh2Q6O+y7LUkP/sIxbIKEnRO0vGtUQJ8Jx24GzKVKwozG9QmdCjFbIw==
X-Received: by 10.202.190.136 with SMTP id o130mr9900556oif.14.1485004140415; 
	Sat, 21 Jan 2017 05:09:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Sat, 21 Jan 2017 05:08:59 -0800 (PST)
In-Reply-To: <093001d27325$7dc14cd0$7943e670$@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
	<19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
	<093001d27325$7dc14cd0$7943e670$@ln-systems.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Sat, 21 Jan 2017 14:08:59 +0100
Message-ID: <CAMjhiJiRY9cC_+cGL9j0AfVqjhPnBz2hZZur6k2iOGOyUPhBgw@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Sat, 21 Jan 2017 13:09:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Colin,

On Fri, Jan 20, 2017 at 2:59 PM, <colin.helliwell@ln-systems.com> wrote:
>
> DISTRO_FEATURES_remove =3D " sysvinit"
>
> I suspect there=E2=80=99s also some de-cluttering needed e.g. init.d scri=
pts still being installed as well as a .service.
>
I wouldn't expect these to be installed.  Which ones specifically?

Regards,

Leon.

