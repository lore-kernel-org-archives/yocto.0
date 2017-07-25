Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31ECAE00B28; Tue, 25 Jul 2017 12:23:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F422BE0083A
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 12:23:14 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id t201so54321495wmt.1
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 12:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mywonI+zicYXAsUq6MIuMQ3kNY48DLVb7G25a+Hiygw=;
	b=PBR8JnfbE+ltQr++Qmw95FaVQqNji5mwcW+720NBIw0vogaCMRGLVqdo54/4ck7857
	KTdE597D+PmCsCa4pv/eHw6RRoaE4mp1nyOH7qaTot3JTJ2sRyEDPCNAQmvfEK22Fiy/
	7R+ofdiN7o/i5kUrhiE3NS/O7ynfwQAJghQFmInMPO++T/33DuFvpv3z6S5a6B3hGYLK
	8mAAJi2/4uh/siGB/2Vi8bBGQcBPqUs+5eK3PA6QXcUw0lGySj9uiUzPxrDoiO5qiNn6
	0A4lvj4P2EEg88dqPaduzuGu3n3dHIq88bzoG9FBDOP/QFm7efRJ6Rk+nDjuyb3+w4Lz
	fNHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mywonI+zicYXAsUq6MIuMQ3kNY48DLVb7G25a+Hiygw=;
	b=RZqUhhlzjYumtEk4LWb/DvgtALPj0qvaaqEubyi5NC6f59SOE6xjM+GHN9+7dOaUVe
	/6ISfgX0EMzjMvj+N6tQOO2bDiSeQN15oYR7gqFiq0YO848VqomEh4Erq0ugKR4a/tBb
	99FtVObss3DNNOpfJeUs9Vd6OGnOx5HNEZM/FlMloOLBwuoxq8r2wLI7+2o13uoNMSIv
	GN5At7FudrsAM+0OpDoBlY2wEs/3CkkKC47mWeHA3zkLE5Afm2OckqJR9vE9nxKjIgd1
	Z53P/O78uCR9dCCY0TuqbpcoGR6NrWL6VFRD5NlcFOm1+1CNYs2Q9zvmaf43B2BYKZY2
	Wb5A==
X-Gm-Message-State: AIVw1138hZus3huZW6kc2EfAy8J9RoGs3UOSG/6EAXMGTv/V64dwzupA
	cbFlfkmArWji0Wv91/vBbtZYogqt6g==
X-Received: by 10.80.147.197 with SMTP id o63mr17728455eda.194.1501010593715; 
	Tue, 25 Jul 2017 12:23:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Tue, 25 Jul 2017 12:22:43 -0700 (PDT)
In-Reply-To: <CAGbeqamDELV-W0i_Kh88nrR8+zb508QfGkxdxQnNmSEyovQp0g@mail.gmail.com>
References: <CAGbeqampN7-BHbkTTDK5EtKzWLQVu0Ziv3whu2BSt-+thj1s3A@mail.gmail.com>
	<CAGbeqamDELV-W0i_Kh88nrR8+zb508QfGkxdxQnNmSEyovQp0g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 25 Jul 2017 12:22:43 -0700
Message-ID: <CAMKF1srtsoN=MwaujmG0PQsu0ABU9fBu27By_h_mTtnSTBhckw@mail.gmail.com>
To: Maurizio Galasso <galasso.maurizio@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Poky meta browser issue on intel 32 image
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
X-List-Received-Date: Tue, 25 Jul 2017 19:23:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 21, 2017 at 7:11 AM, Maurizio Galasso
<galasso.maurizio@gmail.com> wrote:
>
> Hello,
>
>
>
> i'm trying to integrate meta browser recipe for have a chromium instance on
> a intel x86 32 bit machine.
>
> i'm configuring x86 machine and i've integrated the meta-browser proposed by
> open-embedded
>
> https://codeload.github.com/OSSystems/meta-browser/zip/master
> https://github.com/OSSystems/meta-browser.git
>
> to test the behavior we have downloaded the chromium sample 32 bits and even
> that one has created issue to launch on my machine ( the same sample has
> been launched easily on a ubuntu 32 bits)
> (http://opensource.spotify.com/cefbuilds/index.html)
>
> what we are seeing is that the same recipe created with real machine 32 bits
> is not working on the intel device.
> we have a segmentation fault.
> is it correct to integrate this recipe?
>
> to be precise my target was to have Chromium CEF but i would accept for now
> to make Chromium work on the machine.

some backtraces might help. We just punted CEF recipes, but you can
resurrect them
and make them work

>
> i'll really appreciate you support,
>
> regards,
>
> Mauriizo Galasso
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

