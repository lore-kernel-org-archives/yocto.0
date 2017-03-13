Return-Path: <figiel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45338E00A48; Mon, 13 Mar 2017 01:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (figiel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E3ABE009A5
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 01:25:59 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id q7so132032891uaf.2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 01:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lWzH3socSx7Qq9h3lp6+UUNLV9+dBXg00xNZaQ+flG0=;
	b=cGeN2HDYz5faqoBePOIxSbv3TtXclapu3nHYsTd260QLe4DswH3VcZFDqBautqPT+s
	EJe3W4P6WfBwyHqgC9xiXW/baommWnxC/Kn+mQxeW+HCNknXCNwsfXeJYkuGh/ABxPSR
	YDWERf9Uekw9s2/L273LOcEXigFKdIwWvBiwnJLfCbgYcloiM2YfYcl+DUfE6Jq9ToLB
	YQHAmBAm5Oeip/hEArsR8Bkf1vq4/0bwgyYPcH3sTrbLU9tgoOFIrL259bQJDfsmMHe8
	+pBYjB5y9O5+q/Mj/UQLti4vOCv2L06ndM3u88I8wmVNpz4uNEncytq9pPeO8ILi6kkO
	5Jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lWzH3socSx7Qq9h3lp6+UUNLV9+dBXg00xNZaQ+flG0=;
	b=MMdfyN/UxFNI01p9WsvhRtNgueT97DpWr0DIGhuUT2GVlb+giLlbgNjHw2KQZ4Wh3N
	twhwxg1TBruc1tyZ7nArlYgDuTIUmY+ZyRx9Fuh5qo0FBJ13Etm3LZXPvadVxM5ju/24
	w/YAehIgfvVpFvrD+y0K1mx0vuZPM3XLXz5gSo12uHT3suQTquN9+leLy5Oype7p63Vl
	BW5ZRGSunc8vpK+PhdLHD4gJxGk0cGS/V+Go4gmsAOzsQfo8nQoW+bVVjKXsCCKZWMf3
	4KL8DgtqHdBbCjtlYtppttWmc1TPuKbj9ZZqSp5wl1z6VBm1zp/V3NDHPF6QxIHeeQd9
	tXmg==
X-Gm-Message-State: AMke39lCXRDehFOAGQUhcnSD2jJU3B0cCL1WYm/7pZq3QKRhXa6xDrhnNZpB5z+gN46D+zHaoLrOFR3RMoTj2A==
X-Received: by 10.176.67.97 with SMTP id k88mr15357331uak.125.1489393558382;
	Mon, 13 Mar 2017 01:25:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.19.132 with HTTP; Mon, 13 Mar 2017 01:25:57 -0700 (PDT)
In-Reply-To: <2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
	<2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
From: Piotr Figiel <figiel@gmail.com>
Date: Mon, 13 Mar 2017 09:25:57 +0100
Message-ID: <CAL9TtUqKgNJsh-imQVysY8jEvw_=U=y9PreSJvXULj0=CzYksw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Otavio Salvador <otavio.salvador@ossystems.com.br>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Mon, 13 Mar 2017 08:26:00 -0000
Content-Type: text/plain; charset=UTF-8

Hi Alexander,
 first of all thanks for the efforts. Some comments to add to the mix:

2017-03-10 16:10 GMT+01:00 Alexander Kanavin
<alexander.kanavin@linux.intel.com>:

> The lockdown files would list the versions of the dependencies (if it is
> possible, which is not always true), so you can inspect those to see if
> something is vulnerable. In node.js or Go worlds the libraries are not
> reused between apps anyway, so it really doesn't matter if they're packaged
> as separate recipes or not (I didn't have time to check Rust, but as it's
> also using lockdown files, I believe the libraries are not reused either).

I don't know if you've heard of the lately popular idea of
"microservices" - but basically it comes down to having multiple
specialized node applications installed. In practice those
applications often share the dependencies, so it would totally make
sense to use the packages approach so that the dependencies don't need
to be installed in multiple copies. Perhaps maybe not with recipe per
npm package, but maybe with some more advanced bitbake magic or a
post-rootfs hook to run deduplication.

What works most of the time is using shrinkwrap to freeze the
dependencies to some local npm mirror, so the concept of lockdown
would make sense. Just a word of warning that it sometimes doesn't
work that well - some of the npm packages (in the dependencies chain)
may have hard-coded URI's to e.g. gitlab and shrinkwrap will keep
those references instead of npm mirror. Also npm itself doesn't really
check for consistency it only checks for versions, what can happen is
that the contents may change but the version string may not. In terms
of node yarn [1] seems to address some of the npm shortcomings but I'm
not aware of any progress in regards of yocto integration.

[1] https://yarnpkg.com/

Best regards, Piotr.

