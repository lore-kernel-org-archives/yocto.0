Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F65E00AAA; Thu, 23 Mar 2017 08:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD78BE00AA2
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:30:51 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id r203so62075243oib.3
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=AR2FnYsXxpmEgMTtdZTxVVfkuk6Xmt+xRf51DUjSl2s=;
	b=qMTYNi4EgX7XxV/tzX9S+4P8I2hFIy2mvrlQdkIAsrB3SkFzEtB9jy07ytBdx02CCf
	M9OTmBGiqj/R1uGs5UZbqXqExply8GH8Qp1oumxZGwN1xn4ledeYMfBrMJHKjEzIs7Qr
	TyEot6dyUuiXvL7XEVDJBhZa8eWchvSryypcE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AR2FnYsXxpmEgMTtdZTxVVfkuk6Xmt+xRf51DUjSl2s=;
	b=GNtdkV4M4/KuLlNx/h1rmd2p70SWz4NPZRfw0o3xrMG1DiGS8eIVDK0fw25vAAwv/z
	TY3jDukp8ScMYVemwjwKz89FfWPAwCyQovoDPRtUlNNCbFB5W68HaxOCdilaBdj58cvX
	XXvNSPuDhlReb0kng/STr9i5qZHo1bLl5z+w+cpkfO6BHp/4s78Ovq2mhL7J/5QAyF2U
	WvbgJhY59sC/wrlqA98d96mcqCGMCAXyWII9G3UoAeupTBKG4IrvG+n104bacP8QB05N
	/7EcT8jfgxgAIfgmWmMutu4y0M5tpcGU8RUi0DGUQeEXPP+DG/trnUFZrxGUzBkzgpf5
	5ryQ==
X-Gm-Message-State: AFeK/H0dqmvY83HAlJadPBsKi2nvNuS1LOtQBfUClrB87jOVKX5NYD0RI0FdRdzNR/QaLYvbhY6RJ6tM4RxNCG1F
X-Received: by 10.202.87.81 with SMTP id l78mr1767769oib.1.1490283050568; Thu,
	23 Mar 2017 08:30:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.21 with HTTP; Thu, 23 Mar 2017 08:30:10 -0700 (PDT)
From: Alain Achkar <alain.achkar@triacta.com>
Date: Thu, 23 Mar 2017 11:30:10 -0400
Message-ID: <CAGkf0HBCPSm51-q8VhY0GmFnWrh2ZEDcfhxMZBgbpnweMuyy8A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is there a searchable, complete archive of the Yocto mailing lists?
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
X-List-Received-Date: Thu, 23 Mar 2017 15:30:55 -0000
Content-Type: multipart/alternative; boundary=001a1147ce8cd9241a054b678f6c

--001a1147ce8cd9241a054b678f6c
Content-Type: text/plain; charset=UTF-8

I know I can subscribe to the mailing lists and I know I can download
month-by-month archives from here:
https://lists.yoctoproject.org/pipermail/yocto/ but these methods seem a
bit cumbersome.

So, does anyone know if there is a way to search online through *all*
postings to *one* mailing list, or through *all* postings to *all* mailing
lists?

If not, are there any archives per year, instead of per month?

--001a1147ce8cd9241a054b678f6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I know I can subscribe to the mailing lists and I know I c=
an download month-by-month archives from here:=C2=A0<a href=3D"https://list=
s.yoctoproject.org/pipermail/yocto/">https://lists.yoctoproject.org/piperma=
il/yocto/</a> but these methods seem a bit cumbersome.<div><br></div><div>S=
o, does anyone know if there is a way to search online through *all* postin=
gs to *one* mailing list, or through *all* postings to *all* mailing lists?=
</div><div><br></div><div>If not, are there any archives per year, instead =
of per month?</div><div><br></div><br>
</div>

--001a1147ce8cd9241a054b678f6c--
