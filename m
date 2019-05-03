Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D089E00D51; Fri,  3 May 2019 04:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43AA8E00D4D
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 04:32:13 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id v9so4868841iol.10
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 04:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MCLNf4nIrqNPchYOUGdCxYxwcxcugpntWz627OqxGwQ=;
	b=NiPfpjkjoMv+vh9cXIndlnJmDN1BDUH8g6kFm0X7z/ryRUDWTyXJHu5DU+d5MoHtak
	EcUxWmER00emQe1upuStpplBDOB5RyydiNBNjnrO5+pyaJXWyyleJd2SBIwwpfoQs7Ix
	sndLI5h4teNATyMt2ytzXsCsJcd9MSNFHPbMpjuJUkpDcwBYAQbD2DVzcXMpEwLcvsiP
	LBv8D9AAcIAJobko2HEunytfEiX3o//6ydtqKMnRQv32URJMK8xe2cYOoPRLt83PT6Lk
	ARR/7x3RhD8L74YAATDaw9xkbfOhLgeTREYVgQkwNbzxT+UM2gd1s+yNp2hVsnzCzdhg
	530Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MCLNf4nIrqNPchYOUGdCxYxwcxcugpntWz627OqxGwQ=;
	b=hoCHlJEeFA6uAEeMM0GKRzAX2DsqcwDcKDnDXXBJIe8qn5TKnls2LBtk3yKPmFuQ81
	jbNjrx0ViZPmeI05QO6iP4+gno/qxzdYPCubD/bSKeU7iGfQ26zfF1Y63eq2fPr5Ruzh
	u2d/FhevK5ynTOczoraJoru4ikikb9U5STyIPQC71KdHwq/4IaerZBz4P8ovOUYZXNsJ
	uBgV2g3aBti0bY46qk4lgBb06qtPSSIDFPoem85LGifPd+R5oj2gTRqvkcVuOXmhpMeM
	2DB52YFTTZSugIRXlGldoGVCvOSw9TM5SY5L2Xs2dt0A1aHuVFjtNKwVuR6I9WK7DKI0
	Hs8w==
X-Gm-Message-State: APjAAAV970sJwOAdpGFh3OXJUxre/aM5I68v+mt022Ndl0dfgKLIOTQ/
	O0tzCz8jDWF1pmWOzCBzSmN0FJGjMn3Lx8WWp+P4sylwf6s=
X-Google-Smtp-Source: APXvYqz0hIdPclkTbpwRt4E1b9oNeHq+q4lJFQJoy9abWnyhVfzo8kXUD3y5Vrd8/Lg50dacDyXZ1YLMyyEeu/3TU54=
X-Received: by 2002:a6b:fe0f:: with SMTP id x15mr6904187ioh.78.1556883132682; 
	Fri, 03 May 2019 04:32:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Fri, 3 May 2019 04:32:11 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 3 May 2019 21:32:11 +1000
Message-ID: <CAA=hcWRVhxDwxX50GSMAHV4YKYE5m80aBMEuVLhNjMQQqffmhw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to create a cronjob in Yocto recipe?
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
X-List-Received-Date: Fri, 03 May 2019 11:32:14 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I try to figure out how to build cron job in Yocto image, my current
image does not have /etc/cron.d, is it correct I need to install the
cronie package (recipe
https://github.com/openembedded/openembedded-core/blob/master/meta/recipes-extended/cronie/cronie_1.5.4.bb)
to packagegroup, to create /etc/cron.d, then I just need to install
mycronjob.sh to the /etc/cron.d just like the desktop cron job, right?

Thank you.

Kind regards,

- jupiter

