Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B319E007BA; Sun, 23 Apr 2017 08:12:09 -0700 (PDT)
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
	*      [209.85.128.173 listed in list.dnswl.org]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAAFCE00349
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:12:06 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id z109so78287351wrb.1
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 08:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O63mzabcDKoE9R0d+A93G6DUQdKElGf+2kt1wDfQoMw=;
	b=YVlBnqTTkdWg2THcwLsP7P837Z8clJyt9Ld8HpDfOa06BLRlSRGbzXL4OKWD11aA5H
	Kvo+cbVcYjkwpTo5MJsVwC5NL4hZF4h9cH6Vq2sf+kZV1dPsx8QjH1vGGsGtRmJIiYtu
	vVjrb1B+cgyNH2eI3MzYZ6v8eZIir3HpP0R+oEO/AKaoP8JMJ8LPwlNnxm0SHeM1lz71
	063w60ruRH8pumb/vo+tZHEOWZuprf1xsrjVOiO+7sAE+rKU1TgBHPoZFKQLNYu1A9SV
	N4bR6BtCYu6LhKNax/pv1JOnCkw3Q2btCUuKKr6f6+xhC+qGZiV1csELa78vE29VHSKD
	IqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O63mzabcDKoE9R0d+A93G6DUQdKElGf+2kt1wDfQoMw=;
	b=FhsjUgOUzM4HqMj+cmzl2h+Qsmd43YOYVC2NVWmAjZ8l+MhQNQcDBsfcx97/CcbSJR
	vb/vr811ZIOLFxdSrTmp7kazwOU91GizwRBoMKoAlOR/OPiPp2YrMdG30xCcUQkWrRnG
	jbjqgeGuBAReLbsNlFdBrsJpNxPR4sCuSgujQ03XeHvFbXjTr3QnY/kHyKW++DWgqAMP
	6AA6ifMgN7cHr1+IHtN1DTAUn7WytvfnpFTMJLI3sQQK2OC7MwEV2WSA74CyXqavRlTZ
	l5YN8k4I3cED8kc3U4qVDsA8E4Oev4yu9Tl3tKUgF/oFV+PyhLTUSS+OD0w69otE/w3j
	hiqw==
X-Gm-Message-State: AN3rC/7wGaPiVE5xG4mXbBS9Vqn2v31KgpnXjz4q9+ZAx0WvC21JJxcC
	qgeD5+4mtgGsSG70s/R/qOvF5siMkw==
X-Received: by 10.223.138.137 with SMTP id y9mr2327563wry.26.1492960325720;
	Sun, 23 Apr 2017 08:12:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Sun, 23 Apr 2017 08:11:35 -0700 (PDT)
In-Reply-To: <CAOsmwBS1n4eayjhZZZZ4-RpotTSryiDOEA-xRJK59aR-ypbxEw@mail.gmail.com>
References: <CAOsmwBS1n4eayjhZZZZ4-RpotTSryiDOEA-xRJK59aR-ypbxEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 23 Apr 2017 08:11:35 -0700
Message-ID: <CAMKF1sp4_2eLn=xx3=C5VRquVhZe4hz_dovxsbJp0PDtVFtYiw@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with mesa and nvidia
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
X-List-Received-Date: Sun, 23 Apr 2017 15:12:09 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 23, 2017 at 7:35 AM, Alvaro Garcia <maxpowel@gmail.com> wrote:
> mesa-driver-i915

if you are building for x86 based machines and including
conf/machine/include/x86-base.inc in your machine config then you are
getting it. You need to define XSERVER variable that fits your
machine.
you can start by just removing stuff from the preset value for it

this is current value

XSERVER ?= "${XSERVER_X86_BASE} \
            ${XSERVER_X86_EXT} \
            ${XSERVER_X86_I915} \
            ${XSERVER_X86_I965} \
            ${XSERVER_X86_FBDEV} \
            ${XSERVER_X86_VESA} \
            ${XSERVER_X86_MODESETTING} \
           "

remove whatever you dont need by overriding it in your machine conf file.

