Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6B12E00C93; Wed, 12 Jun 2019 02:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A0FDE00C37
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 02:47:31 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id w9so3872172wmd.1
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 02:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=wci5Pd9eH1HXsOdIvwzU8uBAe1fu5YpXSlMNTfBOCfk=;
	b=JhTf3mc9cA3GRTve52OVJUGheUqE79NJaw7RNzNcBp4ztIGdQE5M4qRiFYm9aGR6PQ
	YpgCHdlNDMV706RNfxl4JV/nmdKsQesDzNLYsQ8r7OXef6CTlf18Iz0gQ7DVOIWbLM7t
	jGE7Q+3be+JpqlIZsZ6xXBlWOVNAk61b/x+Fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=wci5Pd9eH1HXsOdIvwzU8uBAe1fu5YpXSlMNTfBOCfk=;
	b=a580iAxK34CWw7aHz2sZK9l1TMlaAwlvxv1cnS/wM2rumEQyypmFZM/tN+vcjmt2B0
	ZnzG6ziT2+khnwYWPAUSEnOUyaJ0LZDGOIZiGDEkytynIZGAnMvEnmLwvEGhlnxK4TLG
	r+rkqXOrGQqXFjJvdPzwd9ODB8lqnTRyV2DCL9AdT4pe7t0O2B89RBbwn3YYPpPgdnmr
	U2FP6hgu78yyYXzZO571U7SK/OmbGh5HrPtd6f2tjX0H13z2/CJgRqWqmzriIzeKcaHk
	qOIx3rz57uIYmBojW94bCnFOhmXF2cLocRUE8+ExPbbHjCXMYrQXAX3s4yt+uWnIP8ec
	cX5w==
X-Gm-Message-State: APjAAAV/CzJTmFatc8yEim4D/DR6q9SDrXHsNCGxqfswWSkWLKsTDatz
	Z7RTV8ZcFgQ5Seq4W0sspKSvywNDKeQ=
X-Google-Smtp-Source: APXvYqxIhJcIRCM+k/7AaOUL+DkRBOrgjGJW6091IrD1w2Zyy9lv6JZ2J2MwzFXu6Y0EvvKJuRt/rg==
X-Received: by 2002:a1c:a7c6:: with SMTP id
	q189mr21829917wme.146.1560332850320; 
	Wed, 12 Jun 2019 02:47:30 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g11sm11872747wrq.89.2019.06.12.02.47.26
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 12 Jun 2019 02:47:29 -0700 (PDT)
Message-ID: <2c0a96e74f3acf0ac45f2bc55908df330fd85cab.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Date: Wed, 12 Jun 2019 10:47:18 +0100
In-Reply-To: <CAA=hcWRzPWecUL0-e2hhNYE2RzjbuL9=fCLqTyy7GRFD563yGQ@mail.gmail.com>
References: <CAA=hcWRzPWecUL0-e2hhNYE2RzjbuL9=fCLqTyy7GRFD563yGQ@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: Download git source not the latest
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
X-List-Received-Date: Wed, 12 Jun 2019 09:47:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-06-11 at 20:38 +1000, JH wrote:
> Hi,
> 
> I set up SRCREV = "${AUTOREV}" in the recipe of my application, but
> too often it downloaded the old revision. How can I force the bitbake
> to download the latest git source?

What did you set PV to?

You need to have SRCPV in PV for autorev to work properly.

Regards,

Richard


