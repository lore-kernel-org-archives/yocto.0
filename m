Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E6EBE00A2F; Mon,  2 Jun 2014 15:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D3F4E00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 15:39:04 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id f8so5404330wiw.14
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 15:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=7ZY00cT9E4U2IXUI6fQscB2p4/54Dgoewf6/faX/mAA=;
	b=DfoTZoXpxTCXiC6WgBgGs0Bk/OeYAhe7kmFeDJHktZsi3XFe1BKoD82X0SaCy0QN6L
	8hOicRwZ+9lJJeZLC9iZWhMLS3l18EWX3Xby8kcp+PZIuIoA3wLx7QAITvt2GIgJy+kS
	8XBsISz7ibWBbbXtC0IVJe+8GKxKXWA8OVrVrBG3LTwhxvqlIpWD9DT88R0mWTcY8wVt
	J3ZI2pw4c++iiE54k2fG0bnMLCSpdbPfuPkzO0onS0HgFncCCCbGkZXQXmUAv91ypvwM
	KdcdtPNO6cf88Dp8jIUmFUZhr5d6fkXesKnJR5pYXe3jMbBanx0+IfAvSt9fxCm3s4lR
	CJiQ==
X-Received: by 10.194.79.36 with SMTP id g4mr52125410wjx.71.1401748743515;
	Mon, 02 Jun 2014 15:39:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Mon, 2 Jun 2014 15:38:43 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Mon, 2 Jun 2014 15:38:43 -0700
Message-ID: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Subject: [yocto and jenkins]
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
X-List-Received-Date: Mon, 02 Jun 2014 22:39:09 -0000
Content-Type: text/plain; charset=UTF-8

All,

I've been building yocto using jenkins.

I want to include yocto's build environment variable "BUILD_NUMBER" to
yocto's kernel.

1, I've tried this in one of my conf file, add

GS_SDK_VERSION = "GS-SDK-V1.5-${BUILD_NUMBER}"

But ${BUILD_NUMBER} is not expended


2, I've looked at Keon's example from
https://git.linaro.org/openembedded/jenkins-setup.git

I've put the following in conf/local.conf

JENKINS_BUILD_NUMBER = "`echo ${BUILD_NUMBER}`"

Then add GS_SDK_VERSION = "GS-SDK-V1.5-${JENKINS_BUILD_NUMBER}"

It still doesn't expand.

So my question is

- how to include environment variable to yocto's running?

Thank you,

Insop

