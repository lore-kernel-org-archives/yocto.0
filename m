Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75628E00812; Fri, 12 May 2017 11:06:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34753E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 11:06:28 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id g126so41609521ith.0
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 11:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=+FEdZDVoypJIozYFfOi6nIkGKm16b9Y9KwNvm5opv4s=;
	b=S1FS8WErKs+TMEeBh/DSCSmJm7GR6LQo0/VJ7V2n1/ZPcxZELqSNrt69/NEZzLVVVI
	4DlUBduKRIMgnEeNbxnQmt90PnCW4FXPWG7mKMHb8GuhBwpFjoCvWbjZxR/hQOO6Ul49
	UTucKAww5igePlgqoYFxKSrEcVuQjyTj73bHVVIWQGidFlfr/UGC9ttMblqFVgl7PfA1
	jcd9V9L+MgR2u2inibvr7je5lqAtMksNOBmwDVcqbLmLKIwr9/lobTKxktlNvExyf6wh
	aWzzpVE3kguxINDYAWdKB+xmeI47FzXO6C1SLME8qV68MkPnrzTY0CDoNSoJmY1/1fyQ
	Kgug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+FEdZDVoypJIozYFfOi6nIkGKm16b9Y9KwNvm5opv4s=;
	b=qdiAFk9FhPNhbAnCHri261l+MCOii1QNNX4tCQYBKh6ciHpSumZhuoQeDoTiwhx9tA
	svzyB72h+LSRo21Uk56c2DgZ1GdFzByjE9sdoeDxmvQuLLLyz3Qphz54bIxvVBYTIk9z
	y5mA6tDnS3xXcK5dLNnKzxpI8SeZoLEwuDdz+ncaYVEjEhRW7pf9hJd+j6rnutSvAJfH
	9ukFFxp3QHlsR0mUimd/ovYmMzO34lqkNFjr+x6X6z1o5DkJ7Bzng/fohDyZ9YPKwHQ3
	fws08JcmYGS7NM8EwckZdeBX8ZZcl5vz/wN1y0Hk8Z8hql97R9UVLU7rJkP8jBhgsPDf
	F5lA==
X-Gm-Message-State: AODbwcCY4GM0AWaB9lBp9+SmWLhBjWL5SW6akUu5s6gzecBaCdmCILc6
	QUWgPAm6xJnxM81VkULRJBjwyeFb1TD/caI=
X-Received: by 10.36.94.84 with SMTP id h81mr5365507itb.35.1494612387971; Fri,
	12 May 2017 11:06:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 12 May 2017 11:05:47 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 12 May 2017 19:05:47 +0100
Message-ID: <CAK18fxGut3dLRm+9O5kBc701aHfp_t+jVXDZN6gPVUSrqTMX2w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Pull requests and jenkins
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
X-List-Received-Date: Fri, 12 May 2017 18:06:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

I know I promised long ago but finally I took a Friday to invest into
github pull requests integrated with a jenkins server.

The first PR on which I worked for this integration is
https://github.com/agherzan/meta-raspberrypi/pull/67 . This PR:
- migrates Readme to markdown file - any objections about this?
- adds badges for jenkins builds and gitter room
- add info about pull requests

As well I pushed a PR from an external fork for testing -
https://github.com/agherzan/meta-raspberrypi/pull/68 . This adds a log
entry in gitignore which won't hurt anyway.

Now, what I propose  is to start using pull requests as main way of
contributing and mailing list as an additional (optional) way of
advertising changes. We will keep it though for general discussions
but keep contributions and issues (bug tracking) in github.

About the jenkins server. The current setup is the following: for each
PR, jenkins triggers rpi-basic-image for rpi, rpi2 and rpi3 using the
target branch as the one on which the dependencies will be checked out
(poky, meta-oe etc). If all three builds succeed then the PR is
approved. I plan to start to add weekly builds for master and last two
branches (morty and krogoth at this point) and additional boards. But
for now I think it's a good start.

Thoughts?

--
Andrei Gherzan

