Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BE87E00ADB; Sun,  5 Mar 2017 23:04:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133FAE00ACD
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 23:04:48 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id p64so20776471qke.1
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 23:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RX80ddRY5sU4IPi3CrXTYvm+9rNxWAiAT2ESiQ6lU8Q=;
	b=lVY6KEcpyBM/jCSW6pYxU4icn8HIhkPb8qskIrtXMY1GAEXF3AINRcfY5Vrf3LBepD
	v8uJFH8WuHMfSs8iBZARxEzlQUjo0pVLQFs6VRYiT+1LDNgI/L/FAjzHIau37pUj0v2J
	nxSgP+iwPpkQfdK3FyN9PIthNZvVJFxFJeYqKdfWJ8ROLi6UmSbW4sOR2EPVKNEwaEfO
	CKQhWb0pMEf/KavSgqqqfCXtNLFdNHdfzNiyxpP9n7ZhX+m4ruz2dDhogIsCrkHQlhGP
	zBZJ182mS/kuAtekyHRbDLEPwmIEVeEl9J3NQZX4DDThStEirHf3ERA1yGVCrDAzyLSx
	C4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RX80ddRY5sU4IPi3CrXTYvm+9rNxWAiAT2ESiQ6lU8Q=;
	b=cv0kIr9CHTx+Gafe0fxntsc4DOu9N0ep+9QUC8YV1D/iGp4v45oPg1NYnRDR5JTLnY
	HqFdgzV6qH4+HmzvKGHxOTymJhc3zVMzWQmcWtUqmkAWVjdOTQtosVrc3zWkiH76DZ1W
	tn6Ex2yo3Z6zf6X3ivzA4c5ZF+Y9Ndlvqa3JXKKDqN3qBZxNSx5FgjxT0ygJOd7LEu1m
	cMcW+7VC3zUG54ie9jOgLXgjStj+QfiP7MljmDqNeIlXe52LXu1d1VcFZRe4sKdlsLuk
	ing7hMvN7kKUnx3JgHD2O2xjxfsWEqSZ5o6vpoqogPp0CGO101BWWJwwSBWfZwoheTi6
	mK3Q==
X-Gm-Message-State: AMke39nVR79ssEY9lYO6TdFf1gIjJ3q6CC18hEC8nJpQhxJUSfWWKCR4OGXcp4pWjXOF+jxDNYwIbsUfhbAV4g==
X-Received: by 10.237.34.59 with SMTP id n56mr14849555qtc.231.1488783888058;
	Sun, 05 Mar 2017 23:04:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.52.165 with HTTP; Sun, 5 Mar 2017 23:04:47 -0800 (PST)
In-Reply-To: <CAHUNapQFj7r1w8pGJHOremoau+kE__iY0P45wNbS-JNkvmw3CA@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
	<CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
	<CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
	<20170227090747.GA1959@linux-uys3>
	<CAHUNapQFj7r1w8pGJHOremoau+kE__iY0P45wNbS-JNkvmw3CA@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Mon, 6 Mar 2017 15:04:47 +0800
Message-ID: <CAJrj+DOLDeRFLM7Htj3Bu6TKxS+sfeaqszApdgtQkm0dZG6SRg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Mon, 06 Mar 2017 07:04:52 -0000
Content-Type: multipart/alternative; boundary=001a1141ac38cb8fc0054a0a82ba

--001a1141ac38cb8fc0054a0a82ba
Content-Type: text/plain; charset=UTF-8

2017-03-06 13:06 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> I can assume everyone can build/include u-boot successfully when using
> unmodified repositories?
>
Yes, I can build it successfully.

--001a1141ac38cb8fc0054a0a82ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2017-03-06 13:06 GMT+08:00 Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">I can assume everyone can build/=
include u-boot successfully when using<br>
unmodified repositories?<br>
</blockquote></div>Yes, I can build it successfully.=C2=A0</div></div>

--001a1141ac38cb8fc0054a0a82ba--
