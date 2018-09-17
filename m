Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C0DE006F1; Mon, 17 Sep 2018 06:56:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7E2BE00460
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 06:56:46 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id 7-v6so7719675pgf.2
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 06:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=he7vNlErl9E/CaayvImZRTZHyKHR8HvHC3oNdu/ING0=;
	b=eHR1mfMvNgDOxWch0W/2I/UqbIsS/KrQRlrUbjynPHb/pykh3K2Ztlp1FMb9cZf99J
	Sz1OrW2URDZIIVI/JHOG+OadDUD0q1czLUDSrx2q4WpY7Rb+JO5+x6VMozA6V/Di7hUt
	vlAnxsqZ6aNFM9VVelbhlfThvy/IvgkQDtOiH1ft2umpHsm6iiTFNA5YMdAkJkxQJW0e
	KUKRt6NdtTiWMOF4uklu6ZN0YyvhY3Cw9AAEqH167Rl1ylD4NbdKhmhVJVrMLA0mvgl8
	tkBmHEqQq9o+OKyiYeXr+cHtl9uq4HNdFy1ypRpFTFXTMQ5R80HOr63vwkYciBPQ8j6F
	JfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=he7vNlErl9E/CaayvImZRTZHyKHR8HvHC3oNdu/ING0=;
	b=M/VT9xvjt8GalaH2CGXL3mGzTOO8VEK5MvQ0P0SNqTEBZNuM29/udgS/M6BCOH7p9A
	am0q+4TX4gsboCi31ojJl4FvJ9ikF4Be0HxpIAhLAwfTrwyVCg4JJQ+SKmV7nLHZGO4W
	cqx1tffRVwspf3ZTnlws4sAiw5dcGR+KyHzl0DQLRN1P06R9AIgkRMWbsswAtxb2Sdtb
	YgWZMEyAewT2aCVyNmMSKY13Z25xegVPRqVoG1/2jkoBXCA7pBKZM0kh0jH+Bu7Ul4+2
	WL8ZXhlrLKh6/a2eN+vUnvKX47/ykotFjJTVUyp2QPmKmdKZnxjK1uuriFlicrrvKeYA
	mM4A==
X-Gm-Message-State: APzg51BYXOd/1WXhZwRq+/Ec1SNEYHGrTnUm1xyOzSSADzAbb5MNgmOt
	JC6O8F65DW9ymYNQm1uGLd6bDYzJ1FMIHYru73yRSw==
X-Google-Smtp-Source: ANB0Vda7lzJp827jKLynL07LH2KVKxmHlWLQaKyAkrP02j3ED6djyW7QtJMlh4KOl9XJr0ftjBLx9d0bTfrngWO04DU=
X-Received: by 2002:a63:740f:: with SMTP id
	p15-v6mr24008781pgc.395.1537192606367; 
	Mon, 17 Sep 2018 06:56:46 -0700 (PDT)
MIME-Version: 1.0
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
In-Reply-To: <CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Mon, 17 Sep 2018 15:56:33 +0200
Message-ID: <CAAQYJAuVft1aCqJSZ-e_iXxydOtJ6tzaZVQv_vWZuZ5pmZ+w0A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Mon, 17 Sep 2018 13:56:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 17, 2018 at 10:28 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> wrote:
> > I'm pretty sure I have narrowed down the root cause to the restriction
> > of virtual memory and that liblzma base its memory calculations on
> > physical RAM.


Hello,

well, not only.
You can set the memory footprint for compression/decompression.

In OE for legacy kernels we use in our BSP:
# sane defaults for devices with only 32Mb RAM (see man xz)
XZ_COMPRESSION_LEVEL = "-2e"

Default is -3, the -2 uses right half the RAM for compressing,.
Pls check man xz.

Cheers
Andrea


> >
> > To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
> > function lzopen_internal.
> >
> >          uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&mt_options);
> >         rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
> >
> >
> > The value of memory_usage is the same regardless of which 'ulimit -v'
> > value I set. On the host with 256GB of physical RAM and 32GB of virtual
> > memory, memory_usage is ~5.1GB. On another host with 16GB of physical
> > RAM I get memory_usage of ~660MB.
> >
> > I guess you have not seen this kind of failure if you not have
> > restricted virutal memory on your host. If you want to try to reproduce
> > this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
> > glibc-locale -c package_write_rpm -f'.
>
> Wouldn't a solution be to change lzma to look at free memory, not
> total physical memory?
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

