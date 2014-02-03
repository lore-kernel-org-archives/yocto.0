Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFAC9E00572
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 07:40:44 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id uq10so5903796igb.0
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 07:40:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=mq7cwNGNeyEJngJNsgPacJjn2cm0oug7wzEc02S1L+A=;
	b=kj3dqXYcr4F9lcdIq8AqjO7OEEgDi7+xNHPvHtmHCh3qXPFB9Sud+WnAhgXVSZALuX
	DQ8mcqD9GuopvHmg9D53VN3kBMDQkFHRwNQR66lqtXUalgterRF3nDPASAOaIjEp0R3s
	vwAmKr+PwHa6CObmhu20Ja2HtKGVR3eSVzmmSvHFExRHFnrY6XEnA4TWEFXS9SUk/b/C
	eFWFXW9vvVfGu8kCZBX1236S3z1sa6xKHhZ3uidUEt5jwP7n65e9pFbeHKNIaOwZNa+D
	o3JqSLEcPeLyFoNBQf2trzR+UYRv2VYtNuBbqrdqVuWSgG0+e2uYWCfRqXQvZX6riULc
	pgsQ==
X-Gm-Message-State: ALoCoQkWGRLlb5ckU+JKp74FBfwRjV1cDxxRteU2YKtjSakjksgK23ifXotSohLdnbDOBKNbEv6K
X-Received: by 10.50.225.135 with SMTP id rk7mr12236984igc.49.1391442044510;
	Mon, 03 Feb 2014 07:40:44 -0800 (PST)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158])
	by mx.google.com with ESMTPSA id u1sm31688366ige.1.2014.02.03.07.40.43
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Feb 2014 07:40:43 -0800 (PST)
Message-ID: <52EFB87A.4070303@linaro.org>
Date: Mon, 03 Feb 2014 10:40:42 -0500
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Richard.Leitner@skidata.com
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>	<5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>	<F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
	<CAALGJZb_jfkTvfN9XT5Q=+jUB8j3b=d5HkigN9+cHWWSwi3C8g@mail.gmail.com>
In-Reply-To: <CAALGJZb_jfkTvfN9XT5Q=+jUB8j3b=d5HkigN9+cHWWSwi3C8g@mail.gmail.com>
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 15:40:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/03/14 10:20, Christian Ege wrote:
>> But now I've got another question:
>> Is there any possibility to submit something like a feature request for this?
>> And is there a (realistic) chance that this feature gets implemented?
>> If so, where should this request go? To the bitbake-devel list?
> I am not sure If I got your point. If you intend to handle different
> versions of layers you are using you may can use the setup-scripts
> from Angstrom
> They do use an "layer manager"

Some projects which use git face this "how to manage sets of git
repositories" issue[1]. Unless a project's sources are all contained in
one monster git repository, there will always be some sort of need for
management. The understanding is that not every single commit point in
every repository will work with every other commit point in all the
other repositories making up a project. There will be "way-points" where
things work and/or are tested, and all other combinations are to be used
at one's own risk ;-)

As pointed out above, angstrom has its own system. Other projects (e.g.
gumstix[2] and fsl[3]) make use of "repo". Another option is "git
submodules".

Whether a mechanism like this would be, could be, or should be added to
OE? That's a tough one. Personally I would lean towards "yes". I think
it would make OE much easier to use (especially for newcomers) if the
combinations of layers and which commits to use from those layers were
specified as part of a, say, DISTRO's metadata. On the other hand others
would object simply because this is a not-uncommon git issue that is
already solved by existing, external tools.

Best regards,
    Trevor


[1] http://stackoverflow.com/questions/816619/managing-many-git-repositories
[2]
https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md
[3] https://github.com/Freescale/fsl-community-bsp-platform

