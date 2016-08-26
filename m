Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2366DE00AF2; Thu, 25 Aug 2016 23:24:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C99F6E00ACE
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 23:23:54 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id f93so49774112lfi.2
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 23:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=s1teAuE//CusznSsOautE094AYqUUJDly94pfZgTDI4=;
	b=gFtxxnBBs8WiY+JoDRYNYzS2UKyWHGkJy3g8x1KQUw0biRuPvbigd32tjji7AsP86u
	KiiHzl6Lh2CEZ708vXAOgALFo2F9aA2U8vgFpHmTiMZlZ83FiJK0ppvOVTpeXo0Agowk
	TrH5MZ6fNGMo3xajGEcl0dqnjpUxc/LCbalzJqMuzghQ3rPiRcDgU8y/sOAsSCE9ASFa
	KhKnI7FMdSbQ3KcXtXqbQlwdxRPgAuRSlZYPcdSNe6H/ReQ53U94gULGRYuEqrfTi+Ad
	C3Xf+l4bCckMItT5Fj/Yxv3tI1I3m9NJ7wP+OYrWzNSW1j+qfJL8H1R5/m79/UANfgx0
	H6SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=s1teAuE//CusznSsOautE094AYqUUJDly94pfZgTDI4=;
	b=XN+8gKA0hXTUggS3t/VRjX9yGGaZU/bb2yVRIYXyFftZnC4alW+fRwdOsvX6ss1CwG
	9WUHVcJsqbeZC6VOjXzlBDsRT2CkJ9KYHwxD8H6SixfQa1TDXiw9SZNHuto+k1IE46rI
	ZS6mLvrmS+aAbMOuoA8vN8Zay5RZ6eIB9EQ4Q3UhDxhiUs0reeDZSvjHn5iSfbNxOo//
	m87MFMoWqRXxLZDfwjn5fUesvBNTvoicdy7hdg6Qo14HTLctzCH2H9vPw22aEz4XgNIP
	eqDG/K1Inu3cAb9F2KVNG5jILPE+s5IZzDC0k0qVaajOaonxyo2g57F7vOQ+YLT7Thyl
	mtkg==
X-Gm-Message-State: AE9vXwMGlpWG95n/fNtHXo77JVcgej6o+gqgfeLaTK21/Lz3HC8GUWp89JYUT1DLiAI/AA==
X-Received: by 10.25.24.30 with SMTP id o30mr398724lfi.58.1472192632468;
	Thu, 25 Aug 2016 23:23:52 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130])
	by smtp.gmail.com with ESMTPSA id d15sm3592762lfg.0.2016.08.25.23.23.51
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 25 Aug 2016 23:23:51 -0700 (PDT)
Date: Fri, 26 Aug 2016 08:23:49 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20160826062349.ctfykucbnwzy3ngd@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOsp8o8NNynmKHsuP3D341riayK51YpqjGhW5EkpuTgLJdTjxA@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.6.2-neo (2016-08-08)
Subject: Re: Git/yocto newbie question re: submodules and multiple layers
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
X-List-Received-Date: Fri, 26 Aug 2016 06:24:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Michael Habibi <mikehabibi@gmail.com> [160825 23:26]:

> The difficulty I have is thus:

> my_git_repo/ <--- what my platform developers will 'git clone'
> my_git_repo/yocto_git/... <-- yocto framework
> my_git_repo/yocto_git/meta-openembedded <-- another git repo nested
> inside yocto repo

> my_git_repo/yocto_git/meta-intel <-- another example layer.

> I would like for developers to be able to 'git clone' a single repo,
> but pull down all the necessary layers from various git repos.
> Basically it will comprise all repos, including yocto, OE layers,
> intel layers, etc.

> I believe the only way I can nest submodules inside pre-existing repos
> is for me to create a local clone of yocto git and add the submodules
> to that clone. That means the master git repo (my_git_repo in example
> above) will point to *our* clone of yocto git and not yocto project's
> git repo. In our local clone of yocto git, I will add a submodule for
> each layer I want to add.

> Does that make sense? Is this the right approach or is there a smarter way?

I'm using submodules, but I put them like:

my_git_repo/ <--- what my platform developers will 'git clone'
my_git_repo/yocto_git/... <-- yocto framework
my_git_repo/meta-openembedded 

Well, I'm using bitbake and openembedded-core repos directly instead of
yocto, but that doesn't really matter.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

