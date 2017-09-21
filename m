Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81B81E00CEF; Thu, 21 Sep 2017 14:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF742E00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:29:24 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id b195so5310045wmb.5
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=grJ3uxj+1kjSu0Nb1+B3538H8Z7sKNXZlgFOdYYlnc8=;
	b=jImard0cT9PtdlRKaK4hLaSwggEwKL8UrkMkgFupI1dEc9qd8/SmIsTaS6l/SL7xou
	PkA+8wKaHWBS2wMBHjzD6PQCANP0VBnWORwopo7elGnsfVZBHxIG1j4muWubXrMQqv4t
	nRJtRv0IpESlMhnJaff1I46V5dEZmRalcD+hQXSTznaU/8qpd6THnPEuEWXqjxYMHi9f
	Lv76Bc+PN1DE9+K3Lwp48t48ejFEbgbYsOy3QY3l2Ad4pZSSWIhT7Jbas3qnljlJ0+12
	bS0UjoISmrFhPh4acUlwjoxodMdBA4t9lPnRugPInh+6MJKdOF4MZf/6Clzb/PoUtXmr
	mVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=grJ3uxj+1kjSu0Nb1+B3538H8Z7sKNXZlgFOdYYlnc8=;
	b=Y3aCNX61DhtWA66LT9iyurfkDeLArMR4NTseK2/dtc/nNOL5PfkIUcdFCuygqFp/Y1
	0E/6que36BVwClN6DgQ/unkCLR9GzHSjSCA6o6GN9lfeXejpgaziFGEfl8tFzrJiKbA1
	cORXbE+jWBnPIwIBX924+cSeLmFzVjfdEE/jlCKwVMov18ZLJf5D9sgM2lr/oZrsROzt
	ouK+OG5XO4M9eM3X7btmnz70yy1xMKuIBT2NxTGL5JwghjN6V8R72BMjDHTSXUvhyujC
	cJtP5apivsMpAuxr5hjTMx9EKCoGd3j9RS+uAxJIYa/KPNhs0FSDCz839Y7U0C+2wWxV
	67gw==
X-Gm-Message-State: AHPjjUhcT9oQx6lf5+8ex3PH0DcEqwfAcwi18Ph78tN3iJ/Iyizh8m6f
	QDoYvWlJ9OhUjX5eMZfFR0t7BlmN/3dgftcUg6zOjg==
X-Google-Smtp-Source: AOwi7QBOCffked3K39kD5q04p51WNb2gwyIn2VmDEbib0VTCspKkz+MJy5VLM2/GEVVDBtY3Fns/XzJ/B/xqVAc85io=
X-Received: by 10.28.103.195 with SMTP id b186mr2053562wmc.101.1506029363549; 
	Thu, 21 Sep 2017 14:29:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.141.198 with HTTP; Thu, 21 Sep 2017 14:29:22 -0700 (PDT)
In-Reply-To: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
References: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 21 Sep 2017 14:29:22 -0700
Message-ID: <CAJ86T=VXVR7hgEgNE+MtxizoYeKgM=wjRGS6ODgquLCyR1gm3A@mail.gmail.com>
To: Svein Seldal <sveinse@seldal.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Path to current bb-file or layer
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
X-List-Received-Date: Thu, 21 Sep 2017 21:29:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 21, 2017 at 1:00 PM, Svein Seldal <sveinse@seldal.com> wrote:
>
> To determine a image version, I'd like to read a VERSION file which is
> located in the root of the layer. (Per our development procedure.) I'd like
> to read it from a bbclass file. However I seem to be unable to find any
> methods or variables to find a useful path to either the current bb-file or
> the root of the layer.
>
> The only way I have found is to parse through BBLAYERS and guess at what my
> own layer is of those, and then use the found to access the file. But this
> feels very wacky.
>
> Is there a reason why bitbake doesn't have a variable path reference to the
> current file?

Doesn't FILE give you exactly that?

  http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitbake-user-manual.html#var-FILE

You can derive from it using python, e.g.

  MYFILE := "${@os.path.abspath(os.path.dirname(d.getVar('FILE')) +
'/../../myfile.txt')}"

If you want to construct paths relative to the top level meta layers
then COREBASE might be useful too.

>
> Best regards,
> Svein
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

