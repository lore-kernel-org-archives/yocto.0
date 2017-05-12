Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D3AE00852; Fri, 12 May 2017 13:01:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46541E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 13:01:38 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id e65so43207071ita.1
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 13:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HtQIEVESIJbyzpam4UVnEfIj39OQ/tTB1cvI2KVqqDE=;
	b=TW1EPA5XNCzyiTXQlqcXS5nEBDRlfSXxI3DM4UE1YY4fbBiCEVVbAUYLZvzHdkZGOp
	o2+J8M6tp86DFF8r+m+J5Tnw1LRCKTo4T6ks3Pr4VqQwOXiYZnkqXj2CrTo1kAY691La
	OO3pFUuaZD7QwBVCV+fzUY2awJU1fjHxSXi8MHJ6giWZYry634YHS63fwhGbL9Qogchk
	ZsFOxRKShho8yv4xjZFot7025oASunLWP8WDgYZs+bLPpGXX6p8eoqMDq8lmFy8cHf0X
	D6dUNbG1ey+eOlzSJYDAgq5Ib4lKfo40zAT5bAZ19YmiXhMDlJNaM0ebHlXC/lBq4VRf
	p0gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HtQIEVESIJbyzpam4UVnEfIj39OQ/tTB1cvI2KVqqDE=;
	b=kz44By2K2kOyMl3iE4aVOBy9GDBqp0P6qYPY82l7RfyFrV+FWz4oJHDPlGk1/Wbkca
	OH0Q3hx5biTci9kmJO1KdxV2IIY3+h6kd2omP0KC3VvTtYrgQ35Dv6MdbmFt9cxIy/oB
	yjURV62TWHbF2PUYig173ZiX1HgRCfSz++rlRXVPj6l5Q1rT+ow5AzKbH9BjLvQkYbUl
	pS6/Hzxdz6HDH66UrZKvcdhCsOuWxhAJFsoB5U4UXOnOSQorhw49xL8j1RmnsfApaV6X
	ZAx52OKFUb9cO2ebfye0w2cXvqbwYQf5ZcwqIZK+l3Oz5T750JvAXU+OV0TkdmeP24NA
	CxDA==
X-Gm-Message-State: AODbwcB07j37rnK5ptRqhb0utYA2s5l5K3a2GG8LSroDaS0vhLe3y/o5
	jmuXo6ZCNj+PHNB51bXVlIG1DdastyHG
X-Received: by 10.36.66.67 with SMTP id i64mr5307468itb.22.1494619297923; Fri,
	12 May 2017 13:01:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Fri, 12 May 2017 13:00:57 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAPyrkgxJUR0mcRHpemP9-h-sxMwLWasmuY-mq_uTdKL6Nx5FRg@mail.gmail.com>
References: <CAK18fxGut3dLRm+9O5kBc701aHfp_t+jVXDZN6gPVUSrqTMX2w@mail.gmail.com>
	<CAPyrkgxJUR0mcRHpemP9-h-sxMwLWasmuY-mq_uTdKL6Nx5FRg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 12 May 2017 21:00:57 +0100
Message-ID: <CAK18fxEWzsEfZKRuof6bSnPx2-ESqee3m6qUGyiD9qxVLxKkeg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
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
X-List-Received-Date: Fri, 12 May 2017 20:01:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 12, 2017 at 7:34 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Fri, May 12, 2017 at 7:05 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Hi all,
>>
>> I know I promised long ago but finally I took a Friday to invest into
>> github pull requests integrated with a jenkins server.
>>
>> The first PR on which I worked for this integration is
>> https://github.com/agherzan/meta-raspberrypi/pull/67 . This PR:
>> - migrates Readme to markdown file - any objections about this?
>> - adds badges for jenkins builds and gitter room
>> - add info about pull requests
>>
>> As well I pushed a PR from an external fork for testing -
>> https://github.com/agherzan/meta-raspberrypi/pull/68 . This adds a log
>> entry in gitignore which won't hurt anyway.
>>
>> Now, what I propose  is to start using pull requests as main way of
>> contributing and mailing list as an additional (optional) way of
>> advertising changes. We will keep it though for general discussions
>> but keep contributions and issues (bug tracking) in github.
>>
>> About the jenkins server. The current setup is the following: for each
>> PR, jenkins triggers rpi-basic-image for rpi, rpi2 and rpi3 using the
>> target branch as the one on which the dependencies will be checked out
>> (poky, meta-oe etc). If all three builds succeed then the PR is
>> approved. I plan to start to add weekly builds for master and last two
>> branches (morty and krogoth at this point) and additional boards. But
>> for now I think it's a good start.
>>
>> Thoughts?
>>
>
> This looks great, cheers for setting it up!
>
> I'm doing nightly builds of my setup but that's a bit non-standard
> (custom distro, musl libc, u-boot enabled, etc). For meta-raspberrypi
> itself I think you've got it right - test against the appropriate
> branch of poky without changing the default configuration too much.
>
> For the readme, I think we should split off
> "docs/optional-build-configuration.md", "docs/board-configuration.md"
> and maybe "docs/contributing.md" files to shorten the top-level file.
> Does that sound sensible?

We did touch this subject a little bit in private but in summary this
is a topic that I really want to address in the near future:
documentation. We start to have a pretty big readme and on the long
term that is not feasible.

--
Andrei Gherzan

