Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64280E00852; Fri, 12 May 2017 11:34:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 157F4E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 11:34:10 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id y201so54934158qka.0
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 11:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=K95ahBACkTJFj9d9XRK8n9u0Yl1NeJoz4oFfqFBgdHw=;
	b=sCppPwKGog4IzYy8BzirJ6NcTkHQIjMKewt0XouShCYNRh70Q3WBbQ7RLEwI+fmKqH
	PN6LI2K4YHv3PrPmCjN+mN2aTdcu9X317ltcI4dJWcmhm7V70rHDkZlRJ0VrUP06Is3p
	r37SqTmkgU6ocjyGlEVhRDzipjMRf6T5VSOC/M6+wG3Zd2abbPv4Keh+vHXnx7/E6Itq
	cReC+9yXhR7kIuRQahSjBNQ1PvF7foVzTeFy9H5OigKyrkYdmEwwS35M6zmbQGcJynTH
	NRnEmp6AhFBKwtt/seRwAonRbhU9WeyH6jqrRxOdgLNFfFdOPwy1Bqd0gHuMkWPLFYKE
	OOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=K95ahBACkTJFj9d9XRK8n9u0Yl1NeJoz4oFfqFBgdHw=;
	b=suw6erUCEqvQ3EjJmCw8mimwJySk7CM6rV8IoRsfeamy/xMQGFT3fkprxFX7Yvq/WK
	WHPZQaosrSgw+5c2cjJeOzq49gMlu/dWTYbW73KV0WvhwkxWOgGrlVfA0rg8DnLbgIYr
	28ks5+1JlBEiqca9kA0dvpyW5lfPEuCa6w7noEzIMAC5sOHMlxoihskHUMcH8+WiiNyJ
	GjEXGwXW3Q3f3rZICcPtW3EeAX99Aqg3DlJI6BllWUm6Jpi3yqvfZioKttNYahXjzF9u
	CEbHkSikMOSD1aD/CWW8q6zVL0rPe91dC1QfjUQ2Yc+SYpxP1ekXdaZBV1use/NhL3Yv
	q7dQ==
X-Gm-Message-State: AODbwcA5mAgzskhLanGXE89N78EMrvR7NtKF9N5TGFjNqWtrMdXc/HmG
	+lZVBjYXFq1/JOgj9wa7g+wAUwTMQg==
X-Received: by 10.55.51.146 with SMTP id z140mr5292107qkz.100.1494614049952;
	Fri, 12 May 2017 11:34:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Fri, 12 May 2017 11:34:09 -0700 (PDT)
In-Reply-To: <CAK18fxGut3dLRm+9O5kBc701aHfp_t+jVXDZN6gPVUSrqTMX2w@mail.gmail.com>
References: <CAK18fxGut3dLRm+9O5kBc701aHfp_t+jVXDZN6gPVUSrqTMX2w@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 12 May 2017 19:34:09 +0100
Message-ID: <CAPyrkgxJUR0mcRHpemP9-h-sxMwLWasmuY-mq_uTdKL6Nx5FRg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Pull requests and jenkins
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
X-List-Received-Date: Fri, 12 May 2017 18:34:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 12, 2017 at 7:05 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi all,
>
> I know I promised long ago but finally I took a Friday to invest into
> github pull requests integrated with a jenkins server.
>
> The first PR on which I worked for this integration is
> https://github.com/agherzan/meta-raspberrypi/pull/67 . This PR:
> - migrates Readme to markdown file - any objections about this?
> - adds badges for jenkins builds and gitter room
> - add info about pull requests
>
> As well I pushed a PR from an external fork for testing -
> https://github.com/agherzan/meta-raspberrypi/pull/68 . This adds a log
> entry in gitignore which won't hurt anyway.
>
> Now, what I propose  is to start using pull requests as main way of
> contributing and mailing list as an additional (optional) way of
> advertising changes. We will keep it though for general discussions
> but keep contributions and issues (bug tracking) in github.
>
> About the jenkins server. The current setup is the following: for each
> PR, jenkins triggers rpi-basic-image for rpi, rpi2 and rpi3 using the
> target branch as the one on which the dependencies will be checked out
> (poky, meta-oe etc). If all three builds succeed then the PR is
> approved. I plan to start to add weekly builds for master and last two
> branches (morty and krogoth at this point) and additional boards. But
> for now I think it's a good start.
>
> Thoughts?
>

This looks great, cheers for setting it up!

I'm doing nightly builds of my setup but that's a bit non-standard
(custom distro, musl libc, u-boot enabled, etc). For meta-raspberrypi
itself I think you've got it right - test against the appropriate
branch of poky without changing the default configuration too much.

For the readme, I think we should split off
"docs/optional-build-configuration.md", "docs/board-configuration.md"
and maybe "docs/contributing.md" files to shorten the top-level file.
Does that sound sensible?

Thanks,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

