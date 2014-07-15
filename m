Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6BCBE00547; Tue, 15 Jul 2014 11:30:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 902C7E004FF;
	Tue, 15 Jul 2014 11:30:50 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id c1so3244883igq.1
	for <multiple recipients>; Tue, 15 Jul 2014 11:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Ls+du3xCqHuq3VedPpXQvoFYDEIM9iPJk0xRoHOx5Ik=;
	b=Hktm2CZGe1i6llHZvQzeymldBqDBnvcucWksVANIFFqMe1lCgE4mmJgHfJqrdoQS4e
	XuEitnUkoRDkhsngUgV2FUFzUq6vvhLyQZF8ZBvFvwDXR0JvGbNXSGms2Q5FKbnyDEuC
	hlgoiLAfFs9Cw+qbaKhiU/A4pFYR9TrjubIOZi1BOczHoGlubLwwWJQnE1wnoOzU/B87
	a4napDMA8uVADx2iESbuGrPn38tjNewPADLuTlw8WFrtxx6sfGe7r7gKT9G7cqmJt5Kj
	sTaL2IAaemNzPOskH2MjHhSJYHnRed6I02l4iWp409PsA4+G8wp2hQOIoLAa7Ux+Tqir
	Aqjg==
X-Received: by 10.50.13.102 with SMTP id g6mr9101027igc.20.1405449049686; Tue,
	15 Jul 2014 11:30:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:30:19 -0700 (PDT)
In-Reply-To: <CAP3RZoiaZLH+adych_EReWMHZZuVvf6=v3Yg3-aJoYyQ7h9Axw@mail.gmail.com>
References: <CAP3RZoiaZLH+adych_EReWMHZZuVvf6=v3Yg3-aJoYyQ7h9Axw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 15 Jul 2014 11:30:19 -0700
Message-ID: <CAMKF1sreRwGBVpy_GO9mDG1SmqrLRyFJC_JGC=5btzDsBfbpig@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_rootfs is throwing errors
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
X-List-Received-Date: Tue, 15 Jul 2014 18:30:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 14, 2014 at 8:53 AM, jags gediya <jags.gediya@gmail.com> wrote:
> Exception: OSError: [Errno 13] Permission denied
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/jags/Projects/asai_iotg/asai_iotg/src/build/tmp/work/imx6slevk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.26461

Do you have your filesystems permissions and mask ( 022 ) set up properly ?

