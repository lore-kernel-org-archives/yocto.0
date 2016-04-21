Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E421EE00CB8; Thu, 21 Apr 2016 16:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 419A3E00B37
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 16:30:10 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id n63so32476041qkf.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 16:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Yab4rlbf50pV485xyB9Fnx+j8KI7V5rCoayQ9kq0tf8=;
	b=gnhdawWEEt/BBUe6d+cqBU2b+GRGLLcfjzupMmVumljklDDL/XQzZXA78rDuwYvsIK
	PrIxnCLURlKap2OVezWyt7k3yNEOlu0zWXNFV6gg3T6GxSyG2dFuYHkR5HNDwzD6936q
	tt5NgmkzjS1s1js5AKvjIXedRtW3lkhrqhNbxLgwX2ZVBxkcnOuNTHz47wMsLPJDO2PA
	hDkEHoctzMe1YoXz5lqbdfP29uLq2idHmZ8I/ciCWdpaNQ0gPEBq6GvXtvRM8u0G2Urw
	hrsACudCMOnu2iW31R9gRuQr2rWeCW8p+13rMMatIzEiRZN/68t/vOWjmtHBfL6hlib2
	T6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Yab4rlbf50pV485xyB9Fnx+j8KI7V5rCoayQ9kq0tf8=;
	b=Dd6Irz/VRxu+Y43i1dYKb/YRUUiQdqu2n7OaUdYJFVoe/oL3z4icl358GHFxuMN7aG
	m4JnsN08wIizi1405UOstpTaS0hFduALfgoUvO8VKXzG+17piu0uWZnMtVvQXnV9k4vX
	gjvlp2Pud2MoGYmn1XLcTeRZXSQ3Lbbs2JEJL/dIYv6t0PMB5YJ9cfALdLQ0/wWaQGeU
	qoe7ZBWuqW5gNkIlC/7fzufCO4ZgzaIu3iYFkDDm69leCmst6lX0Wy/KzCvkdLFiyRaU
	Bl1zQiJ+S69uaCpDrM7tAKBcrf3gWgeLvGI5AODMbZOw2GiDAbR0wF/c5h9yG0L+ckP4
	N+2A==
X-Gm-Message-State: AOPr4FVPeb+L4iOARNpGoysFgeRp0VKEEz3dEdXovLbxSoEWRPDZkTRsZBPd0JYP592mW2u0vUGZPopqZnFLDg==
X-Received: by 10.55.200.137 with SMTP id t9mr9712342qkl.41.1461281409642;
	Thu, 21 Apr 2016 16:30:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 21 Apr 2016 16:29:40 -0700 (PDT)
In-Reply-To: <CAAz8cFg-FP_2wiT_6YaTHtrtTesHNUm1Zd4Kneb-7fz5aiNj4w@mail.gmail.com>
References: <CAAz8cFi=_GeHhBWjLjL-obNOSb+9n890E8J_J17HWXF7Qzz1Aw@mail.gmail.com>
	<CAAz8cFg-FP_2wiT_6YaTHtrtTesHNUm1Zd4Kneb-7fz5aiNj4w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Apr 2016 16:29:40 -0700
Message-ID: <CAMKF1sokqkRVNo7+hP=QB9Z2Qz6TDy-K98Qx0UQ3LqHNBmanwQ@mail.gmail.com>
To: Sassan Panahinejad <sassan@sassan.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Preventing rebuild of dependencies
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
X-List-Received-Date: Thu, 21 Apr 2016 23:30:11 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 21, 2016 at 6:08 AM, Sassan Panahinejad <sassan@sassan.me.uk> wrote:
> Hi,
>
> On several Yocto-based projects I've worked on, I've ended up accidentally
> triggering rebuilds of large packages such as QT or Chromium.
>
> The example I keep running into at the moment is whenever I modify the
> kernel config, I trigger Chromium to rebuild next time I rebuild the image.
> This means losing as much as 4 hours every time.
>
> When searching for a solution, I found other posts and the workaround
> usually given is not to rebuild the image after kernel changes and copy the
> kernel manually. That's all very well, but I'm also making changes to other
> parts of the system and therefore need to be able to rebuild the image
> without waiting for Chromium to compile.
>
> The problem seems to come down to one of Chromium's deps depending on the
> kernel for some headers. Now naturally changes to a dependency results in a
> rebuild, but I the operator know that the change in question will not have
> any affect.

Then use locked sstate mechanism.

>
> I'd like to just be able to blacklist rebuilding of Chromium and QT, but I
> can't find a way other than sticking in some fake rules in the Chromium
> recipe. In buildroot, one could often cheat by touching the relevant stamp
> file to make it think it had rebuilt. Is the same possible in Yocto?
>
> Note: sstate-cache is enabled.
>
> Thanks
> Sassan Panahinejad
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

