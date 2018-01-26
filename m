Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D226BE00E0A; Fri, 26 Jan 2018 05:11:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B08FCE00D6E
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 05:11:31 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id x27so1040512qtm.12
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 05:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=h0W3bPCsBTmjBwhwll+IdaaCKXSux6ZqBqkgy7biMMw=;
	b=J3US0lvMSuFEmGPblHio+4aPFzGqQ85lANK1KkfoMQeqCVlGULa29AS8zt4PvGPC3o
	IeSG88agLwzLDatp0kjNEWPH15h7pKXxzsy73fN0RiIpgKGF/lvcnW1NC3y1QqUjEtg2
	mzAViszLxtSTycgvazv/ZcGaqmg15nBKIDOauWAhYTBNchvc9xEM4DfV+VtWyMOTIbe/
	Std71HoMZvNeQnByj3IVXXNNNhJu0cEfAY6b+MFdsshQxvhWBe6IvLuueZi42BUN/TyE
	JFljjRiAp7UXS/V03IQwdbIghwBrh6ssK9QADWCzewApA/dx16Y8rV15PUF8dCpPAN/u
	ImOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=h0W3bPCsBTmjBwhwll+IdaaCKXSux6ZqBqkgy7biMMw=;
	b=NzMcABMVuMJ4BC3ZA1JDH1mQKMaFKcOSzCEhPP1D+ISOBgF6Ij/6+OftgAQ3LZPVE8
	nIKi7/xjTvgmz1aCmDl3euzifbs2NHHCeBljykvsXVqL2IoVVDLnXYY3wnm0JScoxwxJ
	AuF5zDkgajrgWOM+t4khoNuTPFtkFLhFi/XQMTbL6+CKLsl2Ww6OGknxt0uzJXUTHH1k
	8a5W81cIFXYnXjpcyXjyOkhWJ90Z3LBi/AuQPymt4AG86acCJTvkqEv6mMi+he4qCrYF
	SUI7YCsu0GvhKvLmKet4mbE9PZY9c+NHuZsoVNJEFDrh85DxTtLPj6XTMVZKUgisIrPe
	/HWQ==
X-Gm-Message-State: AKwxytdszkd35V7IOLgviRPR3h4cazt1ucz1B+0VRve1nqxO790RX0a+
	Pb5nTLtHEhjhMantQ1+2Mg5skfoB+W6FmP8VLj0=
X-Google-Smtp-Source: AH8x224g+sxdkXPesIeDFpluF2tHSeswqfZ2xQKPZddJF08iP852B1MdwClyoVlkJZUg5M4YukfaWp6yYCuN59aAwbg=
X-Received: by 10.55.214.22 with SMTP id t22mr19664285qki.19.1516972290603;
	Fri, 26 Jan 2018 05:11:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.177.26 with HTTP; Fri, 26 Jan 2018 05:11:30 -0800 (PST)
In-Reply-To: <CAKHP1ds6nvjVUMEvYk-_RDQ968N6X+EMWbgi2hveKJnaALk0iA@mail.gmail.com>
References: <CAKHP1ds6nvjVUMEvYk-_RDQ968N6X+EMWbgi2hveKJnaALk0iA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 26 Jan 2018 08:11:30 -0500
Message-ID: <CADkTA4P0GMw-zL9=mNMvc+qC=QX-_qwHtLX3dkgK8aAw9uJoew@mail.gmail.com>
To: kk <pinganddu90@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how the linux-raspberry skip the do_kernel_metadata?
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
X-List-Received-Date: Fri, 26 Jan 2018 13:11:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 26, 2018 at 4:06 AM, kk <pinganddu90@gmail.com> wrote:
> I see the linux-raspberrypi_4.9.bb recipe didn't use the yocto-kernel-cache,
> and add configure in linux-raspberrypi.inc, I am interested in how the
> linux-raspberry skip the do_kernel_metadata?

That task does more than just enable the kernel-cache data, but in theory you
could just delete the task yourself and see what breaks.

(i.e. make a bbappend to the kernel recipe and use something like
"deltask kernel_metadata" to remove the task).

What problem is that step causing in your build ? Maybe there's a better way
to fix things if it's a performance issue or some sort of other bug.

Bruce

>
> Thanks!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

