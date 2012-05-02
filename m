Return-Path: <autif.mlist@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 136A8E013B7
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 07:49:21 -0700 (PDT)
Received: by lbbgg13 with SMTP id gg13so642262lbb.35
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 07:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=0sTYY6lX8xZXFiSRBHVSYFIirc9zWE+BrusGK+VqJOw=;
	b=UjZg+9V8wna33Qv2dHiEUSa8QucTA/6W9ocicWBGBqwg3sMHLT3+StdmCV/k/bmrQH
	MTXhW0UJV+gpJ/j8X6EJXvs2PbknF6DmoYxLm9EchRyMzx6IZgHv3Mu27KprzYfAngMW
	vkls6utAEiT/0PY2o/yHRbFx56WQcEC9Zh75WmD/XI1o8iywFisRstIRrCWdIjEFTnax
	HFoHPLob+cJp6fy2TXKSMtjrf3QLiKZLQqcqQvmeCSC8MJemS3huocZphFmKtjt7EJd5
	sZqbB8jJ3T8k0BNTv+Eg3GRKIvlUASsHc0GuPhp+SzKse3AJW7sjeW+Aabf7t4CP7yBI
	HknQ==
MIME-Version: 1.0
Received: by 10.152.148.34 with SMTP id tp2mr9848725lab.47.1335970160783; Wed,
	02 May 2012 07:49:20 -0700 (PDT)
Received: by 10.112.99.200 with HTTP; Wed, 2 May 2012 07:49:20 -0700 (PDT)
In-Reply-To: <2DD299EF-A5EA-4972-8C5F-15393E7AE0C8@gmail.com>
References: <2DD299EF-A5EA-4972-8C5F-15393E7AE0C8@gmail.com>
Date: Wed, 2 May 2012 10:49:20 -0400
Message-ID: <CADzUK1JMfLdKCDWFbCvY1DGB+M-4i0jF9JG6bEtqmdx3W7YE=w@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Using meta repositories from OpenEmbedded and Yocto projects
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 May 2012 14:49:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> Hi,
> =A0 =A0 =A0 =A0Can I re-use the meta-openembedded git repositories from
> openembedded.org and steve sakoman's meta-sakoman repositories (contains
> support for the Gumstix Overo board), and check it out inside a checkout =
of
> the yocto poky git repository, to take advantage of the latest yocto and
> openembedded recipes and build it for the Gumstix Overo board?
>
> for example:
>
> poky
> meta-openembedded=A0 (from=A0git://git.openembedded.org/meta-openembedded=
)
> meta-openembedded-contrib=A0(from=A0git://git.openembedded.org/meta-opene=
mbedded-contrib)
> meta-sakoman.git=A0(from=A0git://www.sakoman.com/git/meta-sakoman)

Short answer - Yes :-)

At least the first one is used in meta-chromium

> I've used OpenEmbedded before, and this is my first time with Yocto, and =
I
> see a bunch of meta-* repositories, and was wondering if including them
> inside the main poky folder was the way to go, to add additional support
> from various sources.

Long answer - Don't forget to add these meta layers in conf/bblayers.conf

> Best regards,
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

