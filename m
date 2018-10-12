Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C26CDE00A16; Fri, 12 Oct 2018 07:30:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F1DCE00A0A
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 07:30:34 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id v69-v6so10022703oif.1
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 07:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=mBGfWiORY53zLXEhM8fI+EfjK+WkOFBn0tZfpJSrebg=;
	b=v5h0k0HhFbCCrYaDgjc4j8DipDdMEvDkqEbvr1xJhhcE5k11WJd66fsg/YXv+t2m67
	+D5PqF4nHU/upvyqior1zq+vfuDoa7QiGaUJ7Y/1108c3slvkWHdGYOmc7jdNAQlFHGq
	NuPgny6e0xN/y6E0DoYJJUv2qbN1Ix4o7cmTziZZvjvaExrBIcNot9BdrtkPMq1/Qh/u
	V2wFNqdWkKEEL4i2bfVZgyvbXr0hRGWt4WhaV89iU6D9u4uiRehVwexSGan5QHzsiyfW
	IxGLnTzykdQgf12bTZwv68l1/Cag4c5dEOKYJkKLkMOaYFN4qMEVnLkAlqlGtuUj40A1
	3TNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=mBGfWiORY53zLXEhM8fI+EfjK+WkOFBn0tZfpJSrebg=;
	b=D94fx03D+xNLSxPVyv/HCtOodI+5lFazvr6tt/a5bdmS2pJWxR1zOS5lfTt/vcKJaq
	U92vjzYgcRUMmmP9vNjU5CtoJzN+8vPEhJV2uypzEtW4KLiMkgJjcjBVpb813DsuMGUj
	UxwkCZcrquZdLKvoxy5HlLpPObycHKC5uYk8ZwmLnlI/y26SzDanVfUbaM0NkZ+4GMnL
	GVi3oZ227nh6xKTr8mnF72C+MO+oIoRxX+cCQpUMp+TCm0HWfKCVKFpVQvD4Lxoeeuz2
	R/MLu6eQqLrNWoyvls+U7T+YbCkZsyzbOP2DXb4HEgX339P6LXzibFUSrTN70FkoVI48
	7hdw==
X-Gm-Message-State: ABuFfoih+fyEOUZqh6FiXcS6LkkvtuKEsG+CXUKYpI1ZxC2XnK/6/JD9
	i5U+61KOB6Mbb351kVRGnsds9nB6trLAhRYWiIVEgIAX
X-Google-Smtp-Source: ACcGV62XrEFfMus3Gq4BDx2S1Ki6oTi7faEIZf0PpnMAYEmUs+ft5YpQz5IapNGavOnSTr0UMXfCKyTlFdrQcCLzvZc=
X-Received: by 2002:aca:f0d6:: with SMTP id
	o205-v6mr3213752oih.138.1539354633283; 
	Fri, 12 Oct 2018 07:30:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
In-Reply-To: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Oct 2018 15:30:21 +0100
Message-ID: <CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Fri, 12 Oct 2018 14:30:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
> I have been struggling with a problem where I need to create a package in=
 a recipe and set already-stripped for that package. The package in questio=
n is not the the default one so I am trying to set it by using
>
> INSANE_SKIP_${PN} +=3D " \
> dev-so \
> already-stripped \
> "

You say no the default one, but PN is "the default" one, so that's
probably why that doesn't work.

Ross

