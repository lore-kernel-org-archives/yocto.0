Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08047E00D04; Mon, 23 Oct 2017 10:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF890E00CF2
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 10:17:52 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id x7so17594083pfa.1
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 10:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2OXjvouPz7HgEDya8jUMKugvAqkuUsKKLGwslrS23ww=;
	b=ZqM/XbrdBp6x7A0vsPG4bIH7tjUTBspqJVHmZRfpQZIKDl1TwLbPala5BRqrAFNNkM
	Pt+RMl3ZMhvfzDiJv2Gp/8P/owbztfBtHs1g9pyMmdNZ4Tp/iyeyju2Y0ZGJjd4W+rb0
	ByJXicniC4WkIJJSuR9GiKdkgbD+bHTaVRovlMGoqM+P8jstnRSHPYhQ5uyllqgQVU6P
	GmErFvMNgn+2o9F4nZUV82zoyug4+fr99fExhh8tN2oJLUb/POa+Z1/4ZobbAY01yCKA
	jlHRo655uf5/Ma8NVHVykM0qV9+EFxXb3KvVSO/HGjZ6fyUZOfC+fkqbrhgMvR80yR3T
	TL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2OXjvouPz7HgEDya8jUMKugvAqkuUsKKLGwslrS23ww=;
	b=uVzpy4N7uVa4iuYJqCuxw3mA1nWZhoOYR0PVTR4mk9sQknXy2NEOY3+aEo51pSipdl
	OHr+bnW3leA5MQEL2+fjBsfGvgwm0e3P1Gd3qJPACXlyX4VeERWbjf02r3hreC6rSaly
	X1iCRXk5SMoq0IVi5NePRSpmi3+2ZDSQnvsxx6W0UATLThnwQ2YfIYcJ6Ufuc7v6v25C
	/byqqeL34cBt6NXQfJjIDEKyX+h1gnMsCNO9+nXbKJc2IBgXlMgrpJd1lyOtHr078N6w
	g2R67I6MCFJBN4bLpbIUOUl6MT0Lkovfm7ZjoBnjA7us9lGrVus33CG7n7tpSqiIHfl1
	7u7A==
X-Gm-Message-State: AMCzsaUGhDeeFQfUWOYYwQ68okUz7v8Tb7SyLvZhkntFb6f4CR79T9+D
	s3o7jj+n72BdzQY0HTvMrNUCrv6kZfy5GGYMOZw=
X-Google-Smtp-Source: ABhQp+Tm78ncXHs4nV5wpT2nsbjiaVbnAqrvyaRDBGzmE0qCBM6y/5m4yhmI/oQ7qDFkoFmO/IBSLDG+n5U0zucWZRg=
X-Received: by 10.99.124.75 with SMTP id l11mr12077000pgn.439.1508779071636;
	Mon, 23 Oct 2017 10:17:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 23 Oct 2017 10:17:21 -0700 (PDT)
In-Reply-To: <CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
References: <CAAWyHBL094mGuwrWkcO4GhCEp+honQ+9zV8Y04bEugGjV3uhSQ@mail.gmail.com>
	<CAAWyHBKp8tNACEFR6xfDp6qKAzUKYyVrH9PuG0xajLz=FHyUMA@mail.gmail.com>
	<CAAWyHBLAwfw-JDA8HFqAeUWJyCysv2Bn3RcswfTqftHxZ+USXA@mail.gmail.com>
	<CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
	<CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Oct 2017 10:17:21 -0700
Message-ID: <CAMKF1sqLnq1pGKjjnNNgN=j+kqX-QBFVFpsGC4zSa8Rvqn7hQQ@mail.gmail.com>
To: vishal ashapur <vishalashapur@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling_gcc
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
X-List-Received-Date: Mon, 23 Oct 2017 17:17:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 23, 2017 at 4:52 AM, vishal ashapur <vishalashapur@gmail.com> wrote:
> Hi
> I'm building a Linux kernel from yocto, on which I have to enable gcc. Can u
> please tell me how to enable gcc. And also usb_modeswitch package

it uses gcc, I think you need to clarify your question a bit so
someone can provide you help.

