Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF15FE00D86; Wed, 13 Nov 2019 08:57:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 995F4E004F6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 08:57:23 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id 29so1734791pgm.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 08:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:user-agent:mime-version:content-transfer-encoding;
	bh=6jQ0TnvBqDxcBRz0jka9m+snQLW2FFJOBoXsUaLzwwU=;
	b=NCdluIjUkD/AOeKinyJJJRAtlWkhvP6eo6Y7oAY9AvGhBD1RoWjga9fJfRaFuWw9Ko
	j+y8EDK6keJWR8mwz55CHr7pnbloezevIgwjqOdDzRRMH2dzrMcsBIUWiZt618c/CejZ
	NPmG02QQfQEP8+hJ8S6ZvnO03up30tKMTzSTPaa2yrkLIKNm+AHruURIXedC/Oyx84rY
	Lr6H63v+gbYIvReefgaslgzAYf1Ofts6Kmw8Qj/Up+UL2lGRA3voERlJDGzARiFTyhVy
	t5xSrFu+pYmo2kmsmHeoUGE8ggxpk52UzMETmTfvPjL3aMUocelEzvo2Wd2xwVb8JuOI
	JTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=6jQ0TnvBqDxcBRz0jka9m+snQLW2FFJOBoXsUaLzwwU=;
	b=DggneobtuuyM+3GkL6NcRjrISpFoxyt2sORZZ8NGNffNYp6rK7HUusnDpB+2eO5wpP
	QEY3kuqmmk8+oammKB7FQzIYsnrlqAHDtuWarXVBah0SFUXT25UNl3JQhzZ4GEwVAxsH
	e878soxFSD7cSNxCMGImUV582PSEINQ5DyP1sBV5+0Th0CmuBJF89YQ3Lkc4SAJw5jX3
	UJxivWM0CjBBSsRBsJoBCfxCNbUmGdC+1jA6tJ0iQZgQzmx95gn8sTSJMC8yj3U38WQc
	GwlC+YML+OaLVDDsPnPoeLjcdgCnbuAEnjmll5upQ6lJDuThCQIecjNNWz56P08lT3zO
	PKKg==
X-Gm-Message-State: APjAAAVB4++oStdW3VzF7fqrjN38TKgrBKjp53sqhlrWRWM6q72RsAqA
	AOw1DGfGXZiiJJW000YCygRujoDj/u8=
X-Google-Smtp-Source: APXvYqxWCiBJvojFHAWWEtgcfs5g6WOT8Ms/Hlch5olVNIKr+N7PjuO+WhqiDN7rn2UMVP9QTiDEcA==
X-Received: by 2002:a63:ff65:: with SMTP id s37mr4737037pgk.331.1573664242765; 
	Wed, 13 Nov 2019 08:57:22 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::30e8])
	by smtp.gmail.com with ESMTPSA id
	v15sm3246126pfe.44.2019.11.13.08.57.21
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 08:57:22 -0800 (PST)
Message-ID: <83ee3505594a6b5cb00eb643ece131c85aedeea0.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Adrian Bunk <bunk@stusta.de>, Wayne Li <waynli329@gmail.com>
Date: Wed, 13 Nov 2019 08:57:16 -0800
In-Reply-To: <20191113083317.GA7340@localhost>
References: <CAM2K0nqA0QGCcaN8z=qvtVu-U_aHswjqKTbZJ0YoCXE6OsvzQw@mail.gmail.com>
	<20191113083317.GA7340@localhost>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: No Package Provides /bin/awk
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
X-List-Received-Date: Wed, 13 Nov 2019 16:57:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-11-13 at 10:33 +0200, Adrian Bunk wrote:
> On Tue, Nov 12, 2019 at 04:08:48PM -0600, Wayne Li wrote:
> > Dear Yocto Developers,
> > 
> > I'm trying to to build a Yocto kernel for a T4240 RDB.  When I run
> > "bitbake
> > fsl-image-full" to build the entire linux image, I get an error
> > that says
> > "Can't install kernel-devsrc-1.0-r0@t4240rdb_64b: no package
> > provides
> > /bin/awk".  Here's the entire error print that I see:
> > 
> > https://gist.github.com/WayneZhenLi/e35f65081092cf1f24df29ec369c701c
> > 
> > Anyway I'm confused about this error because /bin/awk does
> > exist.  Like if
> > I run "/bin/awk" in the console I see help info come up describing
> > how to
> > use a program called "gawk".  Why can't bitbake find /bin/awk
> > then?  Or am
> > I misunderstanding what this error is trying to say?  I mean I'm
> > assuming
> > it's just not able to find /bin/awk but maybe the error means
> > something
> > else?  Or maybe /bin/awk is actually relative to some path?  Let me
> > know
> > your thoughts.
> 
> /bin/awk is missing on your target image that will run on the T4240
> RDB.
> 
> The smallest implementation is to enable CONFIG_AWK in your busybox
> config.
> 

import something like below patch into your kernel will help too

https://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=8af11c1cdd8fa08217e702b57cf96e9030db52b2

> > -Thanks!, Wayne Li
> 
> cu
> Adrian
> 
> -- 
> 
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
> 


