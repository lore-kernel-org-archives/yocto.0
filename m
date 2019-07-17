Return-Path: <rahimi.nv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B01E00D75; Wed, 17 Jul 2019 10:38:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rahimi.nv[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA2CCE00B33
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 10:38:39 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id n9so25808598wru.0
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 10:38:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9oj9eHnn6tYrquhKniLE6XjwlejmmMS/mIFUlP6gpp4=;
	b=lO/ZE3xCaZQsx2qRosczpbICOUD4yQC7HYmLT3zQu2dU8pqC6SjERbepv9mxbBHJsJ
	hNj5Gi2uRJf1Mq5NcXS2okd7I3iuFBRwPtYhDHgb8rv3KNKvGS4d6hkr6rg67UaEv2Gp
	rlgvv9Kl9JCaUe8eWCzTi8GNHmApRaqbD5ar0O3CLVw5jaXJlzJ6MSGFlQxWYu5Hwxzr
	GcvsB8dtC+IcgiRxut2jFDZ8RBBCGsNgatnkMc6IbYyLtnZ9ZMjYvjbLEZmVlCzJSAJj
	t7YUYto8+2NkhYiFF8lmIbHogAY5vth4kQE77M4cVMFuK4Of+ObA5ZffGW3u/ME1WOmw
	me4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9oj9eHnn6tYrquhKniLE6XjwlejmmMS/mIFUlP6gpp4=;
	b=f0pdTk7BkUG9SM6V/K6fSW3TVfYdqx0YXDeVVu0dqEtazDlCCFn9Lf9uZxpPLN7s/q
	y+FvEBNdaEaW9OcIyEzpnPzcLUijnVbZGYO3KHIyyBz1FT+oKmaIl1kOcJYaN6RD0f42
	vzLxwLqr2w9+wCXJv4Jl2jPOTB1lMa0A62liAnEPv7rfHGWUAyyuqRm8rAhVVcQU2SsW
	yWoA7CWvvzpwhksgxKY2hgXT4BepAOFExlB/TUuNMOxUnfXsGTgjsqjp3mpMXkku8U8b
	xu9DM8fdgXbw3K+rCpM69WB6dlirDR/E749c2Hp7m1kvx2prLA9Hu2wHCMDaJ4A+zJGS
	R7Yw==
X-Gm-Message-State: APjAAAV6ogX92OF0+2nafOTeEhX3trx+AkYQpRDQbs3DOynsZPN09dht
	eLMv09WH0RRdmmfrKhcciyftyP3NIlirbaXc8JtcfkRzONjLyQ==
X-Google-Smtp-Source: APXvYqynE2bM3XrytoaNxyVeDE5TVe8FYaGsFSx0mMCwzHvsya/YI5kNusfKCOYowC0zTfk/X0QBMbZhqGE/tjhdFXc=
X-Received: by 2002:a5d:50c2:: with SMTP id f2mr15028425wrt.106.1563385118444; 
	Wed, 17 Jul 2019 10:38:38 -0700 (PDT)
MIME-Version: 1.0
From: Navid Rahimi <rahimi.nv@gmail.com>
Date: Wed, 17 Jul 2019 10:38:02 -0700
Message-ID: <CAOUBrm05qJnj9dJ03rxdm7=vBWy4cF=c+mrR2oJptLiNNH9WXw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem Compiling for Cyclone5
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
X-List-Received-Date: Wed, 17 Jul 2019 17:38:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

It seems there is something wrong going on. When I am trying to
compile as specific here [1], I get:

ERROR: ParseError at
/home/aleph/angstrom-build/layers/openembedded-core/meta/classes/image.bbclass:181:
Could not inherit file classes/sdcard_image-socfpga.bbclass

which should not be the case and is not the case for arria10. But for
cyclone5 I am unable to compile it. Can you guys give a tip to where
to look at and what to do? The complete output can be found here [2].

1) https://rocketboards.org/foswiki/Documentation/GSRDCompilingLinux
2) https://pastebin.com/5hMy0Ert

best wishes,
-navid

