Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CDEE00D16; Wed,  2 Oct 2019 15:02:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923E7E0096F
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 15:02:21 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id p10so293092qkg.8
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2019 15:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MEm+RhYbIpEUF5WyN9VRVBw90VOoD18UMLuMCyBQZR8=;
	b=t2d2Rg5K1E6lz17myh5BZ9B3K4Pj/8ntYFlXyy/rnkhX5TRjK5ugOmMsQqLKqStR7m
	3kPZt6ZOm2p6d9ARfDws/oAUjtHsHorONIJrEaiohKof36pSU/BbGffTI20RGewCwivm
	7vZ4CZRxP3EHQKfPleKxHjAj3k1foJMleENmYGZQKXGm/Wt2XBp2AbXwc5OP3UjtR6Y3
	oQCPl5EMs6xOyzmSDVz9I0pLy6zq1cTKxJIRgnaYgtmU3i6Lpi6zRZBycro529Q6uqaf
	04BSDRXDtDBYQ+IGoijArLGyktXnQFYlOa5RItrLqyf1lYbtz00MNjJ6auRHTe9ChDdv
	NZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MEm+RhYbIpEUF5WyN9VRVBw90VOoD18UMLuMCyBQZR8=;
	b=V+OaiNlWPYdlaQ4OFfmbYW1dMpdZ699izRRnZquKKGEZRrW3VXNvlOZ58bMbmXRXyI
	hnGFjBw6dWbAcxYR/JflgFJyd8979wkWDSYXATAaYyUEEruceGAHBOT/WEPe0q72QFZ/
	sSska3C/YpZ90KeMxXioNN/P1kVBLG3FC+ZLZ7jbSWXstz3db44oEd1Q9X4MsQHDsiNj
	50c59G4BPRE5CKMz7Lfo7rW8OQsyGSojtpdEdj1qTC37LJs4LjMGtY/aMt7Kwby+xKpm
	Vkx3hgm9eoHGZMvdjgV+ZtKKG8vnWdNMWn8fxUOYcQlqllG4WOIJCVOmEWkJMySlbg/3
	KZjQ==
X-Gm-Message-State: APjAAAUaZZf8XwwYdEuKqlg0RP8K3m3VUZz1Hlc4unG7UvsL+xYRgC0F
	gHh4B3swRBr+3NORGKuuJHXCdKHZGLUMy9HMGvQrwggpNU4=
X-Google-Smtp-Source: APXvYqzHpwpU9JuGAPYWR3AuPTaoxNl+C9lz8P/vfO0nViNNuXvBT2pKLVnkG8ZsTIWt+/O+6qGnEA+DcAgm+jJ3Sz4=
X-Received: by 2002:a05:620a:653:: with SMTP id
	a19mr1123706qka.337.1570053740520; 
	Wed, 02 Oct 2019 15:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <57431d78-2438-81da-7972-e93cc91c44c4@faresoftware.it>
In-Reply-To: <57431d78-2438-81da-7972-e93cc91c44c4@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Oct 2019 15:01:54 -0700
Message-ID: <CAMKF1soerAwz8qOC0P=aDW0usnbL_rUKAAYNiWKVm4t4x8QOSA@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: python3 pygame under Pyro
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
X-List-Received-Date: Wed, 02 Oct 2019 22:02:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 2, 2019 at 2:46 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I'm trying to build python3-pygame for and imx6dl board in Pyro.
>
> Pygame needs SDL, but I don't know how to tell to bitbake for compile
> sdl before pygame.
>
>
> I put libsdl-native into DEPENDS but doesn't work.
>
>
> bitbake try to run sdl-config but it cannot find the file.
>
>
> Any idea?
>

Does, DEPENDS += "libsdl2" help ?
>
> Best regards,
>
>    MZ
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

