Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65F7CE00D00; Mon,  2 Oct 2017 07:36:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.175 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B702E00CAB
	for <yocto@lists.yoctoproject.org>;
	Mon,  2 Oct 2017 07:36:48 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id 54so4123738wrz.10
	for <yocto@lists.yoctoproject.org>;
	Mon, 02 Oct 2017 07:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=mC10Vi2lTPP/kjUgOFOknmQHRF18brGUAzVh1Y8xPoE=;
	b=RFdzmV2UrTwSzEk0mJVyIexv/6s/n4C/Xm+/pfFeRzSufywk3AwYQQbou3Bc0a0w7L
	Isyw0PcX/+XzIhWrvNS4MT7OINlasTKi6qIkuREtShDW5djuUR77/mxBYouF1reK2/sY
	5qHJ+1ojTnf8QvAnb9iI/5IKsnBTAFTLgIQQ6sgWOD3slE2zt6ZzvRXTllr0aqjtjgFo
	fYsgbmRXyJE7uIeHRmifapWcknI9DDWHmYX2d/MmGVHd4vOsOF7ADwzRmNoRpE4xbZKp
	W8KkRDhqKWScl2mG1QIJklsfgujBxL3AkbDSRdnFtKNgEeL9VrjHb0i5ciyivM0B6qit
	3z1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=mC10Vi2lTPP/kjUgOFOknmQHRF18brGUAzVh1Y8xPoE=;
	b=m3p4jB1pGUunk8DxspYlfxpKnlIpoKe3cVX2pt3iggKxW96mWqvCxm99FfmBHQevZP
	XohHo0bMmYoj3DB0+8XBlBqP5tZFCutPfR+jqkH+aa034dZTgkQ65GtH5vMO7uH6z2ps
	fHNymRDbDOOP/sXyiaRo2+LHsXA3fb7U+iUmiREqSHcyoWLxLeq5XqM85mb9siZsa3Fv
	QDL/NvgPcVLO9OZGxKSFf/XdaUIcmmmkLS62BIrwupJtT0IPK4cxWM5bYIN+7sfUU6kz
	9NL0WWfcQIeAGcFoeReWh84NJ0jOTE3Sp0RoCCIMa9iN3vHmiJNzQcSERI94VKwxSRSJ
	My7Q==
X-Gm-Message-State: AHPjjUhSnQ3QbrBSZcQUqA2JAwAse485OBiT9AoSxmZcbfiV+uFQV4b8
	M590YBFhCFbDTW2AC6XyX6tUEA==
X-Google-Smtp-Source: AOwi7QBw6LDXtgl63nUlCwIhobDZ3Mz0snA0rjqMwhUPoZhvjSVayiNJ0x5m5bZ6Sw97IJbpbCDAVw==
X-Received: by 10.223.136.170 with SMTP id f39mr14832694wrf.164.1506955008138; 
	Mon, 02 Oct 2017 07:36:48 -0700 (PDT)
Received: from carbonA (host109-150-130-247.range109-150.btcentralplus.com.
	[109.150.130.247]) by smtp.gmail.com with ESMTPSA id
	e14sm6873584wra.55.2017.10.02.07.36.45
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 02 Oct 2017 07:36:46 -0700 (PDT)
Date: Mon, 2 Oct 2017 15:35:17 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Message-ID: <20171002143517.GA11297@carbonA>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
	<20170927173431.GA4112@jama>
	<CAP9ODKqV0ZbkY4GQJuwRxJ+n1gf7R9izcHV77fAby2fk4E48QQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP9ODKqV0ZbkY4GQJuwRxJ+n1gf7R9izcHV77fAby2fk4E48QQ@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
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
X-List-Received-Date: Mon, 02 Oct 2017 14:36:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 27, 2017 at 02:45:07PM -0300, Otavio Salvador wrote:
> Hello Martin,
>
> On Wed, Sep 27, 2017 at 2:34 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> ...
> >> Martin, do you have any idea how other alternative we have?
> >
> > In theory you can set QT_PACKAGES_ARCH to MACHINE_ARCH in rpi-base.inc
> > to make it explicit, but that's also really bad (as e.g. rpi2 and rpi3
> > will each build it's own qtwebengine and all it's deps even when it
> > should be the same for both).
>
> Agreed and that was the reason of we create MACHINE_SOCARCH in
> meta-freescale. It allows for SoC specific packages but compatible
> across machines.
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

Merged to master in the meanwhile.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

