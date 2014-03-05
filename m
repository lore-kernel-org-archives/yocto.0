Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A85E5E0097B
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:50:45 -0800 (PST)
Received: by mail-qa0-f43.google.com with SMTP id j15so1152993qaq.16
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:50:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Gd3zWhJGBraqxjuVefjnmXeWdPfjRPtm9Q/T+nghpOk=;
	b=k0mMT7RlMNe5aDLxHRw84juk0ne6YyWrJdwBvpUKDXdcwf2U4yhFJWBxgQ6SuHcBsK
	ATGR13LlQ3vsvgs+rz2WBfaI2mHVY2ltjIEiZdnIlJiW/jRreWZbekur9pXdL7CehjF2
	FRpI0uvpa3I5bj0gJYUjeTtOnGrE6wPXbrJH2LVzYlwB9rMYd8lqBBovO9vtY9Yuiv72
	czNu76c/pbUCCu3b/W7dsrXp/kCo9fo8tTRZXBiinnz5OwES+ELGHafsn6b+0/lIFmt0
	aMO3NeVisIQpml+AoXku9OYbKZG5+cPbINHjsZkldOXjCIX/rFhCmTSQDgvJyUjrGPs/
	8MMg==
X-Gm-Message-State: ALoCoQlfdjEL0q7xkAvUdjBigbv9RajkO5xOhkCdt/hi7iE0xq0f0YxksqDDu3h0RjszyOJ5amkZ
X-Received: by 10.140.91.228 with SMTP id z91mr7356265qgd.32.1394034645144;
	Wed, 05 Mar 2014 07:50:45 -0800 (PST)
Received: from gmail.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id z18sm8891274qab.5.2014.03.05.07.50.43
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Mar 2014 07:50:44 -0800 (PST)
Date: Wed, 5 Mar 2014 17:50:24 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20140305155024.GA2222@gmail.com>
References: <1394033396-3514-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1394033396-3514-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-raspberrypi][PATCH1 1/1] omxplayer: Don't hardcode datadir
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
X-List-Received-Date: Wed, 05 Mar 2014 15:50:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 05, 2014 at 05:29:56PM +0200, Andrei Gherzan wrote:
> Change-Id: Ibe66106fdf1da38d43278f5e2853c722709b91db
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-multimedia/omxplayer/omxplayer_git.bb | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> index 526dc86..c83d6c3 100644
> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> @@ -57,13 +57,13 @@ do_compile() {
>
>  do_install() {
>      oe_runmake STRIP='echo skipping strip' dist
> -    mkdir -p ${D}/usr/share/fonts/truetype/freefont/
> -    install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
> +    mkdir -p ${D}${datadir}/fonts/truetype/freefont/
> +    install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
>  }
>
>  FILES_${PN} = "${bindir}/omxplayer* \
>                 ${libdir}/omxplayer/lib*${SOLIBS} \
> -               /usr/share/fonts"
> +               ${D}${datadir}/fonts"

Merged in master fixing the above typo (${D} shoudn't be there obviously).

>
>  FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
>
> --
> 1.8.5.3
>

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

