Return-Path: <matthew1phillips@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D61E00972; Wed,  5 Apr 2017 19:58:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matthew1phillips[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0286AE00961
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 19:58:09 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id r203so37318863oib.3
	for <yocto@yoctoproject.org>; Wed, 05 Apr 2017 19:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=eOx4BZzBjVFRw62RB9arD5xvV6V1YRgijg5Z8eXy+ss=;
	b=djf8o/4Q0nDF98qZR49o5r76AWQSB+tfOsF/3lBO3o5Uy3A14MYDCPerSZQ9XAdMRX
	Lj4RDJYHj3qsq1+htHbIora3p/cBSdfH95Ptwv9lnGmqwR9gpPLVznSZO9b9pn8dTCk7
	cCHjR0RQoFtU7574pJIc4oNVc/npcnK1e6qndDJuzpe/JtxTKAQMwf125Du2o+i7bf4z
	bJ3bdYuFQS87zzr64196yH8Wmi5ORHyUR1iWf2z4jkHzXjLQqMOqyhewN8uzqG+djESI
	5eXlJGqJnn+dtBd6kYxP6tzaMQhWT80JvItVx63o5z9ktDT6sAfjEmQ4tm93DIaDv3YP
	K8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=eOx4BZzBjVFRw62RB9arD5xvV6V1YRgijg5Z8eXy+ss=;
	b=qvXm/Av2PdWLwRm44Owluz2m0Y+x851tHfg2gxTZbCJ97joTH0QnVtKiiVzzJPLHbf
	p+T28E0yrJiXXyEHQKphZsfChIzsAtzjJNT3AwzJSJhnS1eULPAGvfLZsrU865zcfvMQ
	rfKZwjA+mgqozcyckUz7zmXNS2DwTAcauBt8qk4MAtBp7c63m+BFLvLp9hy3k+hewgOD
	mk4iGmsIRLaZPl7KbpN4H/42yNeA0eKrOk+ytfX0CTDUqsRxnUQWFuUoa+pQhP/xCOkQ
	2O0PIHLkbXoF5NPD97hRT+BrPbnnlUSzJJPtZWwaO17OyQsksQuqO2//iJUMq51hRF6C
	DNTA==
X-Gm-Message-State: AFeK/H1HqmmaZX7DGuQLSvwKCbBqbsyxjUg9E3mJfa6u+Pl+nEw/XTDwqVB2zllzM2Y/oYyf/eyrbqaX2NvSuA==
X-Received: by 10.157.46.16 with SMTP id q16mr4683101otb.102.1491447488952;
	Wed, 05 Apr 2017 19:58:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.26.124 with HTTP; Wed, 5 Apr 2017 19:57:48 -0700 (PDT)
From: Matthew Phillips <matthew1phillips@gmail.com>
Date: Wed, 5 Apr 2017 19:57:48 -0700
Message-ID: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Local repo no network help request
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
X-List-Received-Date: Thu, 06 Apr 2017 02:58:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I am trying to do the following:

I have a local git repo, pulled manually from a remote repo (via a script).
I have a .bb file set up referencing this repo. This .bb file includes
(among other things):

>> SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
>> SRCREV = "${AUTOREV}"

I do not want to use the network (so BB_NO_NETWORK is 1).

Although the SRC_URI is pointing to the correct path, the yocto build
fails because it tries to access the network.

How should I be doing this instead?

I can run a script (preferably bash atm) before the build if doing
something pre-build will help simplify anything.

Thank you,
M

