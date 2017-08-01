Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F8E2E00C5F; Tue,  1 Aug 2017 02:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F4AE00F0D
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 02:15:23 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id 125so5575689pgi.3
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 02:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=6qAPlQVlFf7JrE8/LdB8aGjBFEWaoLlH/kx0f46YytU=;
	b=YBBR/5fijWjRdPpxbGC+juMzpkkryUS6mzZ1cl35rmvKVZU+Hd8a8kUmwKKHoevw2w
	47kV5bdHpqT0Zg/E+UnleXrT09u0TDX0f5PzD8MMBgpotpyg9dnCwRrZEQLSKNkLf8pl
	zyKvZKQNDlIGQpkcBZ3mh5mQMzkbgevY9a+r+CPGSGBSrBUYPdNl0u+QX/4ptSW6mEXQ
	3gB4lfcxrE6dgxtL8RWNQvwDNE+QU+qcvo6abtfRU9ntpcEC1+FchndkfJzsxA3Z8QJQ
	26SY/2UJqPjssAIzVMgizuOgdVBOVyNgwW7fGu6paZHgo2uYzlL+ywGAA3Qkhf/44/mW
	W76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=6qAPlQVlFf7JrE8/LdB8aGjBFEWaoLlH/kx0f46YytU=;
	b=RuwX2qpxUXL4fncdIuXfaJx7w6tjwg6Jx7CtzcOKqmqv1emum3SNU6N0dZ3YAMS3b6
	EY2WgUVLFWNRgj4xZl14WhGFqdMUx3EC+guDkCLGG5EnHmKo1x4ugn3mb+gpILxKX9vy
	LREOU0rmp80GDKhRQQnZEVlt5WZgCNT0Kk4jjrarnh23wm8l+D7ISkpc7XBd7QtYu4aK
	DCZFJPgxv3lx5NxeOgBF5LAH3elgVFt8NedE3wvNbpwoWP3589tVtbHXOut5sDus2jmM
	b0HTRcj5s0hw3LL/JXyYJNJQe+Vx+5EJE7N7lPH7aLZNf1QzdCYLGqoW2K48ugIUeQ3Q
	aOVQ==
X-Gm-Message-State: AIVw110BZk2Rqb4si+jQXLmh5aggPnvP95wgWe7uIIH70YSzWpGg0XBc
	7VMjbSzmfQg4oV5A
X-Received: by 10.84.224.206 with SMTP id k14mr20142967pln.429.1501578923760; 
	Tue, 01 Aug 2017 02:15:23 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F1FB.dip0.t-ipconnect.de. [93.232.241.251])
	by smtp.gmail.com with ESMTPSA id
	e198sm12987561pfh.36.2017.08.01.02.15.19
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 01 Aug 2017 02:15:22 -0700 (PDT)
Message-ID: <1501578916.18875.39.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>, akuster@mvista.com, 
	yocto@yoctoproject.org
Date: Tue, 01 Aug 2017 11:15:16 +0200
In-Reply-To: <1501513583-13585-1-git-send-email-akuster808@gmail.com>
References: <1501513583-13585-1-git-send-email-akuster808@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Subject: Re: [meta-security][PATCH] layer: remove TPM layer depends and other dynamic ones.
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
X-List-Received-Date: Tue, 01 Aug 2017 09:15:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-07-31 at 08:06 -0700, Armin Kuster wrote:
> include meta-python for AppArmor changes
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  conf/layer.conf | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 0e524a1..0b066fd 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,8 +9,4 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "6"
>  
> -LAYERDEPENDS_security = "core openembedded-layer perl-layer"
> -LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES",
> "x11", "gnome-layer xfce-layer", "", d)}"
> -LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES",
> "tpm", "tpm-layer", "",d)}"
> -LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES",
> "tpm2", "tpm-layer", "",d)}"
> -LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES",
> "vtpm", "tpm-layer meta-filesystems", "",d)}"
> +LAYERDEPENDS_security = "core openembedded-layer perl-layer meta-
> python"

How does this affect recipes which depend on some of things in those
layers?

I suspect that using meta-security without those other layers now
results in a broken world build due to missing dependencies.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



