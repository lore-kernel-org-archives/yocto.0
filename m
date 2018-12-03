Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF6C1E00C1E; Mon,  3 Dec 2018 00:52:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A0CE00AD8
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 00:52:46 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id z5so11186899wrt.11
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 00:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=M121pp+ShhPq1vb1RVQerNvRM6PAOjQBMgZ8sYVKug4=;
	b=mRVuGHLcTofe2P1KBA6h8QX1EozKLEW8wIQjGExHCigv4mQiXIz4zwkyBOo7q+VLEJ
	HQekjar/hHrBSVdhuepNGYKPqGD79W5ywqVVt98oZpECvzfZyIldlHtxuTwPvep/O8Vj
	jcGKK3Es8gT1RRKJXzzCv0zkOb//NBSX7GR8igqScd507zDiF//HrNq52ctsguvddHMw
	rz1kRgjxpE1Dq2fMgWTrWWPGmZ717O+Hliuakne1vOoAv3K935/ijMTB1TEekVhdvmst
	9PKx4kGNvXgCN1Pfxhk0+opv5MRJoYlJFJ1+7oocZwdFaXgRxIQhu1MFqmKOfDWGmE7n
	Aydw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=M121pp+ShhPq1vb1RVQerNvRM6PAOjQBMgZ8sYVKug4=;
	b=efO0rqQOfFpj0UqI24mQkCDdgowm9o7/kCLA3dOz9Ja5Lww1r24xja6R2XiaqpO0vl
	rqSW17NMvipYUEdtXmaMuyw1IAJkAXIbO0oIxrjnTop3su7s9P8QH9Dg1Tvkp0FU0H1s
	IC4WnuFaOtVyyDRzfjVTGCUbzFv3lBYYIUGwR3xi0WpsLWY14j/FOS6cTGRCD8HvI/eC
	BJq9RSXSMtivAjJFL+c5DMU0DxFyyKeo9HFha/V4aCOAV/sBLMrOMFuUEX63vO/RXPV8
	/1te3X5JHdbtInogmCRU95kp8z4gunf5snSk+uaEj+nPblvDnebD1OicEiaozEHBCs7C
	gzsA==
X-Gm-Message-State: AA+aEWYyT0PBsKgL/Jh9WQ3fDbRgI3rX7isxYdEAeLpbl8JwaUtXLryo
	VQS9lmRcjn7mnOznXtYmvIN/h9rLSycF5r9ytW0=
X-Google-Smtp-Source: AFSGD/Xun9qFsvi+/QK5E8BTV8wvcyZen9d7JJ7Z5WCxrWmZsh5GfzFrMaoyk7N7BtHQ99QF4uc1tVcWRVtb7/xmo4A=
X-Received: by 2002:a5d:6b81:: with SMTP id n1mr14239952wrx.149.1543827165753; 
	Mon, 03 Dec 2018 00:52:45 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwS5Nbb-omyT6bSEcokF-gRd_-jiwZ9vpbeB5ZChdjS4A@mail.gmail.com>
In-Reply-To: <CAFLxGvwS5Nbb-omyT6bSEcokF-gRd_-jiwZ9vpbeB5ZChdjS4A@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 3 Dec 2018 09:52:33 +0100
Message-ID: <CAFLxGvx6=A2AyKiDu5VoYVOLGimy+hZnm=kB=3EyJAJwskpScw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 03 Dec 2018 08:52:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 28, 2018 at 9:26 PM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> Richard,
>
> On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > > But it seems that building and SDK is currently broken/disabled:
> > >
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e
> >
> > I see a bug was opened for this but its not valid and this shouldn't be
> > an issue. Keep in mind that an SDK contains all multilibs so "bitbake
> > X-image -c populate_sdk" would be equivalent to "bitbake libXX-X-image
> > -c populate_sdk" and be the same thing. One didn't work so we remove
> > that.
>
> My idea was having a 32bit only SDK. In my case I really don't need
> 64bit userspace.
> On the other hand, having both 32bit and 64bit libs in the SDK is not
> a big deal right now.
>
> So I did "bitbake my-image -c populate_sdk" but the resulting SDK
> seems to contain no
> 32bits libraries.
> TOOLCHAIN_TARGET_TASK contains "openssl", so I expected libssl.so present.
> I did a search for libssl.so and found these files in the SDK install directory:
>
> ./tmp/sysroots/mymachine/usr/lib64/libssl.so.1.0.2
> ./tmp/sysroots/mymachine/usr/lib/libssl.so.1.0.2
>
> Both files are 64bit shared libraries :-(
>
> What do I miss?

*kind ping*

-- 
Thanks,
//richard

