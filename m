Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EBC2E009A0; Fri,  2 Jun 2017 16:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06949E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 16:57:22 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id 7so36093884wmo.1
	for <yocto@yoctoproject.org>; Fri, 02 Jun 2017 16:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fWSsCvCT7DCDwBJqfLMSLh/plXJH17v8c1joUbaazyI=;
	b=fpAZJc3mKpoWSS+kiJN+liR5N79srcxHcuyvAn6n7c8u2yrq+qLUQf7N+n/TsxQEaX
	FbpO9Xvaj8XW4wwQO2fOgTttJoHRm+s/HMO0fYCQ9e4bXVNolUxnOO4ZwzaG3OceV8vB
	d5Xxz2xn8fFbukROEtke8s7SfNMEkaAfwgIoeRmnhYpZai2nAvUGtz0vxtTzunKrJtX3
	mpzq1cSuQN8EQNybSiKnYRT54y/JvUfKygoYgitKvx6qj/ALi3lB5y3HlZfzWG9t81jW
	lhPXkpuKiv4NzpSTsg/xTkqTtW7BbCUqNChw3fMGd2Lp7myp1avUxnKzimbtJ9krf+7u
	v82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fWSsCvCT7DCDwBJqfLMSLh/plXJH17v8c1joUbaazyI=;
	b=RLaM2pdAyBCI4hkua0RIQUmP1x4QaUFmVzx+HoFl6Cp3OeIkD+beKRkwrx9VwGQAPd
	dJwVhD5tckFKVlA/+z8EOQ8q6SpYdryWKoCJsExTcSStk59Ug2emmVBhTFcCDu/LorQ+
	6xgaaGL+hLVrzmx7JOTebmmh1N7PBjAzTBh7pwUPLgyAvWxS5N7yz6GX80SbBWPf3UXx
	eEPORaYsHBhyA2TBlAO3GvW93iPe8JkfCGJ17267pUCczhMSLwUbkrpnZy07nMKWlPqJ
	eSzn2mzYFunigF03PPYfkbN70C4sAFfL+g4LVu/oNg6bX7qxeWdNWXELZ+31HwhkEVEU
	PJdg==
X-Gm-Message-State: AODbwcAH5VsAQ4Pfd5Vty/PGfN5qLKt9bNbMmC0OlWKj8jRAs+mNXJ71
	jw8prVIpzYX27fSP5Ura5XXL3gV7SA==
X-Received: by 10.80.143.227 with SMTP id y90mr7925063edy.131.1496447841521;
	Fri, 02 Jun 2017 16:57:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Fri, 2 Jun 2017 16:56:50 -0700 (PDT)
In-Reply-To: <ogstl6$5tv$1@blaine.gmane.org>
References: <ogstl6$5tv$1@blaine.gmane.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Jun 2017 16:56:50 -0700
Message-ID: <CAMKF1soAhvG-qdO9Axpuw4cNHuoCuPwfSJKm2L85WGe924LeRQ@mail.gmail.com>
To: Ferry Toth <ftoth@exalondelft.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libpam-systemd not built, but enabled in systemd PACKAGECONFIG
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
X-List-Received-Date: Fri, 02 Jun 2017 23:57:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 2, 2017 at 4:51 PM, Ferry Toth <ftoth@exalondelft.nl> wrote:
> That is when building systemd with morty.
>
> I have DISTRO_FEATURES pam set, but I find --disable-pam in the configure
> log.
>
> In fact only --enable-split-usr  --enable-xz and --enable-nls are set
> according to the log. None of these are set through PACKAGECONFIG.
>
> And everything that is set through PACKAGECONFIG is --disabled...
>
> It looks inverted..
>
> What am I doing wrong?

Can you show output of

bitbake -e systemd | grep -e "^DISTRO_FEATURES="

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

