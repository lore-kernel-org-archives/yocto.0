Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55809E00C43; Wed,  6 Feb 2019 14:24:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3420CE00C06
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:24:17 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id p197so10088364itp.0
	for <yocto@yoctoproject.org>; Wed, 06 Feb 2019 14:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/fkOzyzljIvYxJnkaCm4x9BWCKAQdUUYbtmoX7C0Lfg=;
	b=d4XzkSVIPOT6d8dF4BSWzEj41bSUTOjfrPzOKK7lTbDPSW++/4OPMcIqQzF9MLC9zN
	sn/id6sTPGcwVziYOKVTIAMNV1uX8dWr3d4lkDdpqggAzwqsRCgJNMn9kaJAXhnH3Mlk
	1OLPwtZ/5mGLmqCZZF9ubfipH3iNJeaPIU1Gh2HGmAyr7tD0bsOfJ+7QbaAWgx6i8Uri
	2Q3mbJeyduarFpqlk4vT0xAlXcRs+gCr4Ep37nbBdW9AAcruOdXgI+v0r8RfeCXxszor
	bA+ms/7dWG7HXdEVBLgjcMWzahb3DPTyI2crmOlphdSogznXUeaM3/qC9SFWGCTsKI4M
	lveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/fkOzyzljIvYxJnkaCm4x9BWCKAQdUUYbtmoX7C0Lfg=;
	b=KTrNIu/p6fnYLbfytbMAqH7KAsfWWwlVlmB4jSXuvTYKdNJHzy+smw5tSNwzumwlaG
	rtQRREPtbExmOli6nvNiUFS3wJ2Dk8SkK+4wqMFM16n2RwDY1OZuxTSff+8uBnHIhDqC
	NOi+OB0WS3OPjHVTPUFfrgDPyB/Xlj0mfIxs35BVA4h8ffwXS/xoM/w9eN+H1MH8T568
	M51JngM+caWxlT7e0+xtnXmASdva0jbU1+Z+72ggHQFlTNGZ8VkVEN5tqYBLiJAehihG
	dvXF3kUa9S5dw9fZ8aX3g528ZhuUbTLnaOgATrgQxsFJaC7gp7qujansDkyQ89P2UN65
	jmkA==
X-Gm-Message-State: AHQUAuafeP0F3d0xqAGu2TA1JsLpfUrAQ8Q3vkrU49mpJ6A2LlKeARDs
	At0SyvNKXK7SRcxedFzpa2cimsFKQsmqpKCnlY4=
X-Google-Smtp-Source: AHgI3Ia++1L+CSsr1OUdPWtAKCVaphI0ibY2Icm86D4Ql3bHoS2uABHR3Z9CNXa/yO5NqMKoKGa146QgYqLmCxS0dpY=
X-Received: by 2002:a24:1dce:: with SMTP id 197mr3905683itj.154.1549491856635; 
	Wed, 06 Feb 2019 14:24:16 -0800 (PST)
MIME-Version: 1.0
References: <1549477388545.2721@planar.com>
	<CALbNGRQrxMp2MuLPy1newCaHRLf2BAL9uohqc_A8bPoSodtMHA@mail.gmail.com>
	<1549490698733.2960@planar.com>
In-Reply-To: <1549490698733.2960@planar.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 6 Feb 2019 23:24:04 +0100
Message-ID: <CALbNGRQFycyLQALGNqRc43evigPgH8m6KatgbHSfmbfpHmfUcA@mail.gmail.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 22:24:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 6, 2019 at 11:05 PM Matt Schuckmann
<Matt.Schuckmann@planar.com> wrote:
>
> Hi Andreas,
>
> Thanks for the response, do you set build type in each recipe individually or is there some central .conf file or other other location that you set it?
>
> Matt S.
Honestly: I do not set them yet because I thought RelWithDebInfo is
default. That assumption was based on some projects but I checked now:
it does not seem to be something to rely on...

Andreas

