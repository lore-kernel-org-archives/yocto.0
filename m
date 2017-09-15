Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36B96E00CC1; Fri, 15 Sep 2017 06:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.50 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3352E00CAE
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:56:58 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id i130so1558246pgc.3
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=swbTvfDw9gTVba7y547bcnvBTEyj+3G3ExAl+vOWpas=;
	b=IWdOKmc4lijo2+wnTnZ0aqPywM1FFrk4zsMO/GqA8fMjH5Jxd/iNzN8F+0zKDTh2A5
	LO85nXOfm/D78F7YPCHW6A8G0WMF8hP0cD1PVjZHus6mTwMor6eUVtHhFR/H6vairDgr
	heR2wCG9s6QdCAcRTEcLjGG3t5MJIS/YZ4Hql8JutG4WfmP9H9tRlUoYftIOtP94j2/U
	Ehha5kh3KtafaEWYMWvoF7t5a/4m0MuHh+i7RdAfMokoVqGtZTxux2DJYRa61eB3MqTu
	xDRXY5p1wkSwBqMbFVqyxVeuocPCiZCW2tGbc+gMlfwZ6s7P5Zg8OvRZa4/8vXPshEOG
	Eqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=swbTvfDw9gTVba7y547bcnvBTEyj+3G3ExAl+vOWpas=;
	b=P2rSUj4nUg8CsAxRBkwdGFHQ4kTmGN7jnl8zDJ/N3PdanUiOSYPQFGhlCQKj09CCt6
	qjrHwqHBYoDNzQB0p/WqwosaCxyNsDPsKtaHnQ2ES0PS8uQmfXEG79XUGjMR/M38OVb0
	OFCiYfSO1UF3UrqN2hMgYjqVqxndKVL/unmY1scprJ3gpGqhArdpEQWF0FTNz/SD5RCu
	MGOPZzVOPDbNulBLvV/EdwyaCmsgus4DhrgMohdVSltH6pVEUqq7p1ZSSWIKaLif9wVm
	HGEU4dp5BzbBw2faXmEsekPX05jgZEp9orbPXSls50z4BrqpprDlCpvuhF/EjgZVx804
	NzLg==
X-Gm-Message-State: AHPjjUhx7J+ruSJkxQM7gStlKmNUkaYtuT8IFuPMp81cQULPKRFll+mp
	pVa2gKkngmdTcgnFUOiir3I2PqK+UjtiFH+2uoA=
X-Google-Smtp-Source: AOwi7QA9Xtss8Y4xnLaylZDMbKTuHtdCzntI3IDgzUSW+nYekwVnzhuYboNWlSLPM3bQ8jK/QGrhZ4xOfkA6oWCIZ/s=
X-Received: by 10.84.204.133 with SMTP id b5mr2623704ple.440.1505483818610;
	Fri, 15 Sep 2017 06:56:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Fri, 15 Sep 2017 06:56:28 -0700 (PDT)
In-Reply-To: <F134F05EDC574B48AC0E09D6006F7C02@PAULD>
References: <F134F05EDC574B48AC0E09D6006F7C02@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Sep 2017 06:56:28 -0700
Message-ID: <CAMKF1srh8uxO1qKPjA=oBKfb2M8o+Wd=A8pqFmsVv7VhnipDBw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty to Pyro upgrade
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
X-List-Received-Date: Fri, 15 Sep 2017 13:56:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 14, 2017 at 11:15 PM, Paul D. DeRocco
<pderocco@ix.netcom.com> wrote:
> I just upgraded to Pyro, and now I get several Python errors in
> sstate_sign_package(), complaining there is no module named oe.gpg_sign.
>
> I reused the Morty sstate-cache. Is that legal, or do I need to nuke it
> and start over?

its too optimistic to use sstate across releases and I dont think abi is
guaranteed

>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

