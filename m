Return-Path: <ebutera@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8A96E00D30; Mon, 27 May 2019 08:44:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79DEBE00D30
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 08:44:13 -0700 (PDT)
Received: by mail-pf1-f175.google.com with SMTP id r22so6898525pfh.9
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 08:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xNv1tf1jDzEjce0dEjOBqym5G/8aiPt+dmeFvL8lXTc=;
	b=Hodpkl7aafOLzGkEkJLi9JCH3bASrdLpJ7ZzFVMN2HPeVaw9S3xms5x/S8URSvEYA+
	m/fblQIcXPhpq+hAUcCHGLC0GCSgwbx6hlFSRFYJ+bwKgFmt3kl1E0SSjP7bnQHgvnFt
	FoMJ/wFcTqtHEJuOD7yoKuxXL6eGts53y6qJdvriAK2VnKLhnJgX/1DCLTAmXOr1ASxW
	9E3BcmTZb90UusJp+2le///UiHKf22xQJsQBc9vnPfVxPD4csh/BT3jUR2x/Y+0ar6L6
	UNjnYTE9iXbMtAZBRM0lZHHTnSAfI2LKXdLPUX620C2rUt3ujhLb3ucs7u8sg2s34G+S
	9g7w==
X-Gm-Message-State: APjAAAXIv6IhfT0LBsV8OQXoSS0LCNHBA3uIcLC57HBzsJf6KdD2EErF
	sbFmMv8leG64DgmH43/LFHGDLLAZRuiDxGKvRso=
X-Google-Smtp-Source: APXvYqzg63VdlKSllZsHoqOYBEvL6RhbWZSd7m1SNuPGtp9AjrikOlmOqqoE0Y8uTTG798pLfMYYF4mDucyU7Zngw4M=
X-Received: by 2002:a62:b40a:: with SMTP id
	h10mr130156618pfn.216.1558971853050; 
	Mon, 27 May 2019 08:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
In-Reply-To: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
From: Enrico <ebutera@users.sourceforge.net>
Date: Mon, 27 May 2019 17:44:01 +0200
Message-ID: <CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
X-Mailman-Approved-At: Fri, 31 May 2019 09:25:16 -0700
Cc: yocto <yocto@yoctoproject.org>, Sergey Lapin <slapin@ossfans.org>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Mon, 27 May 2019 15:44:14 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

i try to keep it maintained, but now i just have a lime2 for testing
on real hardware, and i don't have the resources to do test builds for
all the supported boards.
Your help would be welcome, i can't check right now if i have the
rights to add you as co-maintainer, anyway i will add you.

Thanks for the help!

Enrico

On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hello,
>
> I'm just curious if meta-sunxi is still maintained? I was contributed
> to layer back while and when look now thud branch is un-compilable
> (dri2proto not replaced) and warrior branch not created yet. There is
> 14 issues + 6 pending pull requests. Added maintainers also in CC. I
> think it would be good to have sunxi properly maintained as boards
> with sunxi processors are popular. I can give a hand as co-maintainer
> if necessary. Thanks a lot.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com

