Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B6DE00724
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 15:03:49 -0800 (PST)
Received: by mail-ea0-f169.google.com with SMTP id d13so647086eaa.14
	for <yocto@yoctoproject.org>; Sat, 26 Jan 2013 15:03:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent:x-gm-message-state;
	bh=rMRQOo+3bXDv/WqC7qo1S3W2S+xyleZ+2t8CQnQSJtk=;
	b=cUSWnDVQuGX/3HOyBe1G1I3a8uoCTKVsEPTdx3k83kNAs9Y27Vh9SBYP2ijVn2/310
	3IznZ6h8BuMn5dsKPx+u9mCMou7j7Il34X3Vi8Ga2iI9KwvxI4UMA90R9rT81OpbH2UT
	CBTK/s+R1SCGufw7lmeh5Ty4qWJHrfnOBlPT2/i8IgxV4gocCoZMfHLcwMKhhrBXG8XC
	ebBOmxQ+APC+kf54Q7KyaqQgSexzgOkKhgKrscXMoo5s2XNiA0uxoKdIzrEovZFbcKN6
	yOFfPxep6q4L+dDDTacIBHMar3bO7qEs0mFpFdS4sW0a0F7fsK0IhOeLFH0+j/Aw0Ppl
	LkiQ==
X-Received: by 10.14.215.194 with SMTP id e42mr34550329eep.32.1359241428462;
	Sat, 26 Jan 2013 15:03:48 -0800 (PST)
Received: from gmail.com (5-13-203-15.residential.rdsnet.ro. [5.13.203.15])
	by mx.google.com with ESMTPS id d3sm8593148eeo.13.2013.01.26.15.03.46
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 26 Jan 2013 15:03:47 -0800 (PST)
Date: Sun, 27 Jan 2013 01:03:49 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20130126230349.GB30017@gmail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
	<1359064662-17052-2-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1359064662-17052-2-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmyzC4ksQy66ArPEUy7NQUifwFthW+cPLM/93tTIFWxWuYMHTBQQqcNDX1dVgYhVIfq/ogR
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] layer.conf: fix parse
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
X-List-Received-Date: Sat, 26 Jan 2013 23:03:50 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Jan 24, 2013 at 10:57:41PM +0100, Andreas Müller wrote:
> after meta-systemd commit [1] the following error was thrown during parsing:
>
> ERROR: Unable to parse /home/Superandy/data/oe-core/sources/meta-raspberrypi/conf/layer.conf:
> Failure expanding variable BBFILES, expression was
> ...
> /home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/recipes-*/*/*.bb
> /home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/oe-core/recipes-*/*/*.bbappend
> /home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-oe/recipes-*/*/*.bbappend
> ${@base_contains('BBFILE_COLLECTIONS', 'systemd-layer','', '/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/invalid.bb', d)}
> ${@base_contains('BBFILE_COLLECTIONS', 'gnome-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-gnome/recipes-*/*/*.bbappend', '', d)}
> ${@base_contains('BBFILE_COLLECTIONS', 'efl-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-efl/recipes-*/*/*.bbappend', '', d)}
> ${@base_contains('BBFILE_COLLECTIONS', 'multimedia-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-multimedia/recipes-*/*/*.bbappend', '', d)}
> ${@base_contains('BBFILE_COLLECTIONS', 'networking','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-networking/recipes-*/*/*.bbappend', '', d)}
> ${@base_contains('BBFILE_COLLECTIONS', 'xfce-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-xfce/recipes-*/*/*.bbappend', '', d)}
> ...
> which triggered exception NameError: name 'base_contains' is not defined
>
> [1] http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f684c41dbd6333583e
>
> Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
> ---
>  conf/layer.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 32e1827..e8b87b2 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -2,7 +2,7 @@
>  BBPATH .= ":${LAYERDIR}"
>
>  # We have a recipes directory containing .bb and .bbappend files, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes*/*/*.bb \
> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
>              ${LAYERDIR}/recipes*/*/*.bbappend"
>
>  BBFILE_COLLECTIONS += "raspberrypi"
> --
> 1.7.4.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged with a little commit message tweak.

Thank you,

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12


