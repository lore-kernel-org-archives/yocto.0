Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C8C1E00D7E; Mon, 14 Oct 2019 02:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14717E007C2
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 02:15:08 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id t8so11220588lfc.13
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 02:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=g+hzOY36Fepncw+q51aeqew23dmE0ekentOFbOGJ5o8=;
	b=hgGibNgm6U1U8Wb2fX5LflvNlxXLuf1QfEHR9WyVRlMZiN01dsdDi5luk01uJHD4rZ
	tZvsxTghwvq5PKUFW1I3zEuPMldN2XRC3NkAC/hZAiRRoNni+o3eFpsLTJm2E91SuW4W
	7nkObapW1KhtkZG/DAyEONOTYytQh90/VCDEZq3E8H742rMAUetipk6eRie8rlRLFIW8
	J/xh1rN5IodHY26VJUJpIhYsoAUTbvHI5g70qWeRDyfGRXlPZjhzAQyl+dBgUTrvjnu5
	oAyZeTcrR1URPInFfJpl1v8kcSYlO9ZPL7llsSDPc7F9hwgUGmydlSd6f+8Sr1hNNgOH
	2beg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=g+hzOY36Fepncw+q51aeqew23dmE0ekentOFbOGJ5o8=;
	b=fpogmleKyJDpKIK6P32OJDKaRxaiyz3xCJTZsCg3IMSUzIo4yphDu2eRn/n/kcV2ln
	wVvue+KHRqOZereU880uyp9RlHWNRM0XVwFq7Ri9tJlv0hNAot/MFhGe2in/sc3M5GGc
	7m+rW/9pvymGhrSQx6G3zMamw2rfFc/ktQqdkCXwA5NoGJeoqRklDeyTk/5HjtxHoZGe
	uoO4xkzD+0uHwByuJyKmxEFhVMM7S5mC0kT2PkwIR8VJ9vO6xuWpQDpb5am8Njx6PV2U
	Y6IzkEpU3FjI4Av8cAPpOzASow8Or1ttxKtXopPT+Y7Gfhpa0H2hrXZc7tJleTuw5Vbw
	x3Xg==
X-Gm-Message-State: APjAAAVfU6W2enYJh5u8q4LFIfl1IMeSFgQG9Fsy6a2Pdgor8Rfr5NH3
	rxqnq6jE19ZT4M8rEsXwxUretQSTjRbnA4e/Z7Tnhg==
X-Google-Smtp-Source: APXvYqxiw0YYZGcn8QCH5+Wc0z4k8h38Sz7f7EYP4KGnmT/mIV2E/hqKyTxqzan05BQo+D15MMLUnSx2BWx6fzcHyWw=
X-Received: by 2002:ac2:414f:: with SMTP id c15mr16769887lfi.157.1571044507847;
	Mon, 14 Oct 2019 02:15:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191013093004.zxzgukocmkrliu42@laas.fr>
In-Reply-To: <20191013093004.zxzgukocmkrliu42@laas.fr>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 14 Oct 2019 11:14:56 +0200
Message-ID: <CAP71WjxXTjENM2hzM9nzu97r7UXcK5NLK=__ryYBO-Nrmhu23Q@mail.gmail.com>
To: Guilhem Saurel <guilhem.saurel@laas.fr>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: download.yoctoproject.org - Certificate expired
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
X-List-Received-Date: Mon, 14 Oct 2019 09:15:10 -0000
Content-Type: text/plain; charset="UTF-8"

hi Guilhem,

On Sun, Oct 13, 2019 at 12:00 PM Guilhem Saurel <guilhem.saurel@laas.fr> wrote:
>
> Hi,
>
> The certificate installed on https://download.yoctoproject.org expired about 4
> days ago. Is anyone else experiencing the same issue? Is a new certificate going
> to be installed ?

thanks for reporting the issue. We will be looking into it!

>
> Thanks,
> Guilhem.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

