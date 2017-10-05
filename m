Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD751E00D87; Thu,  5 Oct 2017 15:01:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DCCDE00CE2
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 15:01:06 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id z1so3044508wre.3
	for <yocto@yoctoproject.org>; Thu, 05 Oct 2017 15:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wJaTlm4/ke+fAIKZwlB8v4AgO8wOD1dSEHp+BXAO7Cg=;
	b=f9OQEjVeadRSveTCbQAvGI5URkHe1B0Ap5fDTnFcNj1yYfUw71Yat5PHQA+ixe4l42
	MGoVBdI+D2wzWPOlG+T8xFNTUgzMchrALDItRqSpIVf0ucFume70q790XlFET0o3FkFk
	PWFg2BFsBfl4ZHGpgGYBOwhC7BJiNq1xFedjsiJzjVspKHjVEJhSNvtp1UdZ1AEWBmUn
	FsktE4QkIyvRVaW9UTeC7woFLEVJerr8OLFjuirU8fDYHtCH8v9TAdzBY3Kdlnxb6nVq
	OEPzOwciHm46aD158kuE+MieOZX36FlwksMXUKyvCNNitbqlwnKek/G8DD9ECnPegC72
	gnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wJaTlm4/ke+fAIKZwlB8v4AgO8wOD1dSEHp+BXAO7Cg=;
	b=HOfU8akpazmaotc5v2g4Q/smW3ooEx15XeHOshn/SzwTdcPNG8zFNlUb9ERAocDYiv
	NS0NojsSagSHzpgCL2Bp6dPTYn81eK8WYVBN5HOOTaVwj0xqvvQUiPVc8PgR0AOIFy5q
	CIuu8NYbKbA92xbAUPqsCNujmdBsGIUYxWbgrPwwcMGRPsR0Z/GI3PIZGQ2gAx7Nr74T
	cG8sraPSTqchqLiREG2zvgdw9aQTEFqyuHXUImwp01yWLV80VPZNuCCkbCLgF9R+OuxM
	X/R9MagH7tQiJr+u1pLaMwx1xE4VqTe1ZeKNaq/DU0/SCcn/NMPSjvQMQthi7OzeBoiG
	ieIA==
X-Gm-Message-State: AMCzsaVc8nVJ9K1lgi7qhwzSaJZZu4io83Ey39QsHLQfceIayZ+KBgLH
	QHpO7g2vUXIsI2r00p/dh3ZuEjzce69OX0wR1Iw=
X-Google-Smtp-Source: AOwi7QBTuOkF0dG8WJVhYsY1RtwymSCDKDbA0QteDie5aQUlF4Q5jq1AN//6EPofUrxHOYk8sH1082CTQ0NxDYYmiGY=
X-Received: by 10.223.161.141 with SMTP id u13mr90380wru.140.1507240865498;
	Thu, 05 Oct 2017 15:01:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Thu, 5 Oct 2017 15:01:04 -0700 (PDT)
In-Reply-To: <233e125cbeac4053ad541b2e4b853168@XBOX02.axis.com>
References: <233e125cbeac4053ad541b2e4b853168@XBOX02.axis.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 5 Oct 2017 15:01:04 -0700
Message-ID: <CAJ86T=UKUORO7ysPtX1-gUatEuD6ZT32Ji7=NZJ=Wu72q8DAyg@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Ross Burton <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][pyro] Fast-forward to master?
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
X-List-Received-Date: Thu, 05 Oct 2017 22:01:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 5, 2017 at 1:46 PM, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> I would like to suggest fast-forwarding the pyro branch of
> meta-gplv2 to master. The only change that I see as questionable
> is the change to mc, but since the change was accepted for master,
> I see no reason why it should not be acceptable for pyro (even
> though it is not necessary there).

Agreed.

I'm planning to submit the gmp fix for aarch64 as a backport to the
GPLv2 gmp recipe in oe-core morty, so the same fix needs to be
available in pyro too. Fast-forwarding meta-gplv2 pyro currently looks
safe and in this case maybe better than trying to submit just that one
fix into the meta-gplv2 pyro branch.

> //Peter
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

