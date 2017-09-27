Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EFCDE00CC2; Wed, 27 Sep 2017 10:45:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2EBAE00C99
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:45:10 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id o143so9844993ywd.12
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=dXsC5sPfiK4V0aPoH84+VJ1CYn0ifHvjE4G0t4WT/0w=;
	b=OU8xXTUGXHFvf6sBb3VnMMFiQLA3tZGVbNr7axXe1H8n9epZRHAGCNCmQMUa2UHTL9
	lrRjVp+72NJ61we291X2vlTGHgQ7kgTbIzjxgMyClDi6oUDWE9SbVgqdh1rEYsy5lAlU
	YRVlJVcr4HgG8BUxN5LQI73Ne7qCIawRa4u5jgcbsaUn0COpGe2wbvXb/MU/qiApklDw
	qWHcwnVdHdlOJRut7tK7QUdGl7TyAsCIt0BNN0CTTlgCwuaw1gidZ8VR2+fZ9DfrP1YR
	TDar19RycArFYSupYBN0d++Pf/7eWZ6muQDs2FVO8hgMmiDhywdn9gzaLpgqhlgKiiT4
	b0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=dXsC5sPfiK4V0aPoH84+VJ1CYn0ifHvjE4G0t4WT/0w=;
	b=jkko1SqS0UFcSxmoGmtSoxptMbR5tHYr+9eneR1g55qh5VL/zvnVKM4xJVIVBNi5w1
	HdGvHCXdqtANG4buEErLui0nvT9GJujtzVs8FeQzNo48J3cI85I+WhlgGbscAA4bUjXx
	jF4Tvx4Jrf5Yqhp0nDFe5wOLG/wUTNEuUIAoiVJ9MtpGC9FChMFGUh3RXPwRtvwoXczb
	XFG25AzlhFOSAq1TL5YKHKkWuOo2ICRXvHV/gXD4CvU0uPBexiQQvOYuXMpr55n2BwmE
	nAPSxPTEZ9xrZxRStvP329mILvburBPJYRMSLcpgJ3CUyH19oFRxmNUK1ksRStsEeKHG
	dR9Q==
X-Gm-Message-State: AHPjjUgfM1VTOgZOacRc7VGmMZjQVhTa+q7OkuOZv6OVdM7fBJCyiR6p
	mMEODLmrJaQFM6wXWR5iEb1gd3PR
X-Received: by 10.37.97.83 with SMTP id v80mr1540146ybb.333.1506534309825;
	Wed, 27 Sep 2017 10:45:09 -0700 (PDT)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com.
	[209.85.218.49]) by smtp.gmail.com with ESMTPSA id
	q68sm4743871ywe.24.2017.09.27.10.45.08
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 10:45:08 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f49.google.com with SMTP id n82so12856312oib.8
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:45:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCP3AIGJpLrRW/pQBz4xohoXXEM2srsJGKi9uqLVDTM78aCYGstj+8/+eDV7aVQYwHfLNNhDMjcFGgW6QSnvTg=
X-Received: by 10.157.20.233 with SMTP id r38mr1512274otr.357.1506534308175;
	Wed, 27 Sep 2017 10:45:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.66.149 with HTTP; Wed, 27 Sep 2017 10:45:07 -0700 (PDT)
In-Reply-To: <20170927173431.GA4112@jama>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
	<20170927173431.GA4112@jama>
Date: Wed, 27 Sep 2017 14:45:07 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqV0ZbkY4GQJuwRxJ+n1gf7R9izcHV77fAby2fk4E48QQ@mail.gmail.com>
Message-ID: <CAP9ODKqV0ZbkY4GQJuwRxJ+n1gf7R9izcHV77fAby2fk4E48QQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 17:45:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Martin,

On Wed, Sep 27, 2017 at 2:34 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
...
>> Martin, do you have any idea how other alternative we have?
>
> In theory you can set QT_PACKAGES_ARCH to MACHINE_ARCH in rpi-base.inc
> to make it explicit, but that's also really bad (as e.g. rpi2 and rpi3
> will each build it's own qtwebengine and all it's deps even when it
> should be the same for both).

Agreed and that was the reason of we create MACHINE_SOCARCH in
meta-freescale. It allows for SoC specific packages but compatible
across machines.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

