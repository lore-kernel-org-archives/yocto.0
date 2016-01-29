Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7957DE00AF4; Fri, 29 Jan 2016 06:47:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AB9FE00ADD
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 06:47:33 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id t15so38088809igr.0
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 06:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0f9+kNDs2f6HszHBPrc1W6YsdxzkivgUcXIwAiWCNro=;
	b=cJ8mUy5m4i5ouvgkGypS7G9DBwwCCQCia2BXqNAnrjD5v9NYKIj456pfqLZxDf0B2q
	+Goq0PwUfAuA3QFC1olXhM+FsC5a/2n96UIUAEy+ZfHIW4zi1zKmI/UhLXkPlq8BvxUz
	858h+x/+tjokH8DJpG40WWWwpJ6zQofQwFX8jq3D5p77jVI7jcMyyvVZr9bXMpzZ4W0+
	NA0EjlxnXxIeV3tD6fOBAhZ38tTVnycezD0AYpe6NE5VA/5fzZjrwg8cWGz5/Sh3nl17
	aWLQJ6rp4JIoX2QTipnU5g5uzDx+xcKZd+NhUC78LFEteMz1COI+UkQCDsJ5b9IeCcOy
	TdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0f9+kNDs2f6HszHBPrc1W6YsdxzkivgUcXIwAiWCNro=;
	b=W29W7UExu7ftW1uFykisPmT9QrRvkTkIEwJFz3NyzN3EGMvIqCBQ1kiRLlDKUs0eof
	NmiNgfnnNRBwMYHpDmu4Rt5Mu6EbKpjf9FQc2dk0BglvXBBp9cF7W+qNINdCd390jnL2
	NE/KPgS/JMhZP/t0Cn/sK4y4Xm+qJ2NyiizlOvTix9qx92IgEDnrCqh4sHj/9sar2smv
	CWpqrHBlnsP8USLPldQP/rzy+d1X+8U67KINZqBspxIyaPihiTmhelZWdQUxkxllTZcy
	aRtHs1Evu+RDpsx/eAe/Q2qthBt+wgv4CI/FBPfJ0F17zhjiQwVd/7wCHH9BDqpjsSAl
	HzMA==
X-Gm-Message-State: AG10YOT+y//oBhB5CdG626+3NPIy9fUdzsmmqEZWAVK0iKuewz6MRlW/MHxmpypPcK/S/I0MwMYHWcPmW+76eA==
X-Received: by 10.50.33.81 with SMTP id p17mr9249863igi.75.1454078852580; Fri,
	29 Jan 2016 06:47:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Fri, 29 Jan 2016 06:47:03 -0800 (PST)
In-Reply-To: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
References: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Jan 2016 06:47:03 -0800
Message-ID: <CAMKF1srMiOeJ162afcqJxLuqNL6KwsidFV8kb-j3d=y+TcKNFw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: About style used on .bb* files
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
X-List-Received-Date: Fri, 29 Jan 2016 14:47:35 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 29, 2016 at 5:50 AM, Daniel. <danielhilst@gmail.com> wrote:
> Hi everybody
>
> I'm here to ask if is there any "standard style" that should be used on
> recipe files. I found my self using 8 columns tabs but I really don't know
> if is there any style that should be used. If not would be good to create
> one :). What you guys think about?

there is http://www.openembedded.org/wiki/Styleguide
you can always propose improvements.
OE-core and meta-openembedded differ a bit on this which is sad.

>
> Regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

