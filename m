Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A60BEE0070B; Sun,  1 Feb 2015 15:43:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D89EE00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 15:43:16 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id rd3so74720574pab.3
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 15:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=3m7MA29HgRv2VI7LJ7WPuyf9IBuj5h2HUpNMW+vdmik=;
	b=FP9XBVK1vn537DvWICg+Y3sgiUnKsJJKcv72NcKWtJBtO5sTx+7SMiDEKC5psg6n0X
	LCJpylJ/Z7HGjAK6UTUH1t2fdYTpVEYE2wH51fre7YXwFd/jF/zMu5JnJbITcxmeD2Dn
	xITpwBU0kvQYLXNLRuh2afJk4hbkNDL91TKUz2peFzXieQZT37Qq4KOPPEu6KPvtTSu5
	hiCzGPjeFbxX7oRYXcrMPnCxOvfDPiWLskBCRn7fY4KTzR7mVG5waqVWp7JmCATu8BPo
	LLkfVvg2IbXykRzlsE7B42ZBpK4A1zGqKMW6aHErm9w7FJiFNct8yWURUGMXRzcS9/SD
	DSPg==
MIME-Version: 1.0
X-Received: by 10.66.161.170 with SMTP id xt10mr14889034pab.14.1422834195942; 
	Sun, 01 Feb 2015 15:43:15 -0800 (PST)
Received: by 10.70.44.167 with HTTP; Sun, 1 Feb 2015 15:43:15 -0800 (PST)
In-Reply-To: <CALbNGRTNvURyxef1Y3HMi=FS6EBOe0H32VviguaLyF+MtKaCaA@mail.gmail.com>
References: <CAEfap_CVpqLp+WW471hVXgMhaf+JGK1fLtsKftOP4cC+FnCXUQ@mail.gmail.com>
	<CALbNGRTNvURyxef1Y3HMi=FS6EBOe0H32VviguaLyF+MtKaCaA@mail.gmail.com>
Date: Mon, 2 Feb 2015 00:43:15 +0100
Message-ID: <CALbNGRRyHaDswaG-R9fZTQUPOX=rjOW9gpvoUNwZiYtvLJO0_w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: 1.7 - QtCreator ERROR while linking- /usr/bin/ld:cannot find /lib/libpthread.so.0 inside
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
X-List-Received-Date: Sun, 01 Feb 2015 23:43:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 2, 2015 at 12:27 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> Maybe off-topic but how did you get qt-creator on target do something
> useful without target qmake?
>
..SDK (builds qmake) no target - forget my question

Andreas

