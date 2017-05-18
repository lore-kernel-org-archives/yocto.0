Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F588E00B45; Thu, 18 May 2017 12:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EA1BE00B49
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 12:01:18 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id d127so62744893wmf.0
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 12:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Ovx9g4QsM68rMs8vMkMEvjXUyLo3KRdFylpqEFV9ul0=;
	b=NF2yv4ODw1OI1r1s00oNfg0z0pQ2ayhha1GC+R6FB/gSY5uk1uLqBgZPUrsQ7Bft2Y
	H5DGwkMXBknp8MjHLrlv/jqKvVF5gVpb2u2Bba6bl4pYPNLWSK2u7h3jNIrVtyud0JkD
	ejYPGxzyFcRBwoHNXUpZnz08wszZD+RFRrrqAZJbGU5xTa1KddfYDaH2PYUEdb870WWl
	kie27dipq5s4tsfQlMo91/e1/Pn8j/8wCWzYaRVc+mknw0XWHvghVGwYNahJBZQ5vHTl
	W5dpknWA08Mp2TWL/wYDYzkRWE1+YNTskvHsjwv43H7f2+XYhkqcv5RGKbJzkMGKKidB
	3TOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Ovx9g4QsM68rMs8vMkMEvjXUyLo3KRdFylpqEFV9ul0=;
	b=rADpOxdafO/BP8VImevxblRbv/YkvKMgyrnQNxhhOBG310M/9Il1kJabcgMkd7EmPH
	WEbiV1UTs7aYCXUSYgFmrGXM+liCikDY1kHwh8JM+IE48NAJ04GiMbIDUTV+xMwQsRyA
	MQ5gcXlXNQ8gceH3G3yG7gtBJC4MLvSQuxfbhbeDdU3L8UfYG9hraes+HhT0Q687SQ17
	Ws2wt+OCT6TwAIbtDiob3K25j0Izt2HUUIXZjrQVtU7gmNF/KLnraaOe/CDdKB16iMS2
	+4g47uQUiuRG3U72ZJkHYIs3aiwWE4dCEKsiPhxqbctAzwJBV5/bIPcjkjCE9FapbCcs
	DYwA==
X-Gm-Message-State: AODbwcCDl3MnSlaYEQlGmj4sKlnAZKkMIPqWfV6uHiEdZfLj5l+1nTGC
	Hf8RorQ3dAAn6xVg4UR60qci9tFI6Q==
X-Received: by 10.80.182.35 with SMTP id b32mr4381089ede.123.1495134077230;
	Thu, 18 May 2017 12:01:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Thu, 18 May 2017 12:00:46 -0700 (PDT)
In-Reply-To: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 May 2017 12:00:46 -0700
Message-ID: <CAMKF1srtHuVr5k7Vg857CURYiPMOX29C65ThMtkJzQR72bOpgA@mail.gmail.com>
To: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky/classes] [PATCH] new alternatesrc.bbclass
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
X-List-Received-Date: Thu, 18 May 2017 19:01:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 18, 2017 at 11:11 AM, Koehler, Yannick (HPN Aruba)
<yannick.koehler@hpe.com> wrote:
> In our environment, we have package that are store inside git in their ow=
n repo.  Using SRC_URI we fetch the code and build it from the git repo its=
elf and all is fine.  When developer wants to change the content of the pac=
kage, they had to clone, change, commit, push and only then they were able =
to test because yocto recipe clone/fetch from the git server only.

You could also let devs push into user branches ( joe/pull1 ) and use
EXTERNALSRC pointing to user branch

