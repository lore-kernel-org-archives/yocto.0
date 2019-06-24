Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B752FE00BAD; Mon, 24 Jun 2019 01:43:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A38DCE00B6C
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 01:43:20 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id s7so318604iob.11
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 01:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2swak3/diajlmScuxkAOANl6lEk97ftuRQ3RBDHKclc=;
	b=uuuf1vFTy5c7DAa6sFJaSf0vrVa+HB0k9m+jOzyr+rowiYT1tmvkTccGHVXJ+hB/pu
	Ec2o/G1lJhdYrSd5inJj6bSrKJecei5skuFiQAxzPH5ayBtrmbtNb5Jr+PVjHBSI/WU1
	R+e4q84HC+ji6aFc5a/FLiqcn6etbZ8Vxb0+26nsNuMbX4R9jYFvd4E6k5Vx9Mon9sDk
	RvO7FLNMd13sI2Ns+OyaqC8hNiJIN0a9aYFYLSwW6qAPM3N8sgC5Aw89d9+OR8uOZZ5r
	pfDMjxIcXaHyKxb1DE8agLlbsSvjDPE6h/SdgCxrhm9dlrBHpLYXYqqE+L9eIP05d9Kt
	iO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2swak3/diajlmScuxkAOANl6lEk97ftuRQ3RBDHKclc=;
	b=mLIGjVyGdt3HWNffQmwKDR2fbkYL/BlcCmwVLURjCrFDT8SatzX5AizfL72asTm70I
	sYSY4XKWrDqEeT010ejtBHBCR70t47sC+aldB9k7AV3L6gUCE3+SfZfnZZxeWriM9cuF
	knESU4bD3U4OiRO2ROXN9ieUN3sOmfzXmDjTMAXEvwB3ZWW+XUgPtMpzxC4cbBGfx0C1
	C95ZGRXKOftNKyIED9Pux9ttRKm/M30eEjr555xqJPWGA9LpxPCHZTwOwChmlz+u20t7
	R6ls9v5qT4ELw81+Sc2fePNbwGyBYHESZeQJ/2lVn1aBg6i5GeWJCl9l/wEA+EB3ACnT
	pxsA==
X-Gm-Message-State: APjAAAUUAIgxXMK2m2udPyn6VH3HJhcLd/2uw7/0F0atxW0W+hswky5U
	yw5d2m5zi6gGbpgMjNdY8bFbovmk6komJaugMz7nCbyP
X-Google-Smtp-Source: APXvYqzhf+VZsoy81xGJYRvJOmBJf8oRCgWcVqGkf6VTKlexfLyHnXgXlQGkViuc/Js1BC4bF9lAvwR6LLvFpOtL1u4=
X-Received: by 2002:a05:6638:2a9:: with SMTP id
	d9mr121488419jaq.94.1561365799672; 
	Mon, 24 Jun 2019 01:43:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:8a3d:0:0:0:0:0 with HTTP; Mon, 24 Jun 2019 01:43:19
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Mon, 24 Jun 2019 18:43:19 +1000
Message-ID: <CAA=hcWSBOS6bpctp_wbs+ENHnnYxAviUEDvXjCSBJMamyRF9pg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Failed Linux network getnameinfo
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
X-List-Received-Date: Mon, 24 Jun 2019 08:43:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I can run following code in Ubuntu to print out the host address, but
I could not get host address (empty) in Yoctor imx6 build. That
function is POSIX compatible, what I could be missing?

struct sockaddr *addr;     /* input */
socklen_t addrlen;         /* input */
char hbuf[NI_MAXHOST];

if (getnameinfo(addr, addrlen, hbuf, sizeof(hbuf), NULL, 0, NI_NAMEREQD))
      printf("could not resolve hostname");
else
      printf("host=%s\n", hbuf);

Thank you.

Kind regards,

- jupiter

