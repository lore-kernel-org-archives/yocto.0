Return-Path: <sergey.nikulov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB27FE00D75; Tue,  1 Oct 2019 11:42:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sergey.nikulov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
	[209.85.167.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46935E00D68
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 11:42:15 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 72so10699722lfh.6
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 11:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4EAG6VpM/au1YIg0odfNE525bNspdPjevmiYXHMOAMI=;
	b=QPPVr54F5hIICoTEBxkxSlRHGAPDAiWGCL9/MyU6fr/4re4ruTUivcfV2GXSvbtvqS
	xzcKU9muX9nXgGwz9PzjUSUjKT9atYiRvEOCqdYoxjCAtYQbJi9eCKjbcbzCxcDLFIXo
	riId5FI2PZuIOsdTmjg6uhB1TBIT+8CnME765ObQDLFd6TVPzbdfKtFUTtnGWPVvZqeG
	bBAGX/xD7NgxGCrjewFq2N4zIqSyc9/FbY1L2ybU3ed0nTWzD2sHFCXTZCu0vc8X98hf
	5ces2lM0cA+/oNG7bsBp85FQxoZnC7QyON8jZKfzw+1jA/es2E2PSLdfHWVrH1HJEJHP
	j5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4EAG6VpM/au1YIg0odfNE525bNspdPjevmiYXHMOAMI=;
	b=ZZAd2VSko0jrVKVx1jh9YRKvuG6bVRjcj6Livl9uvoG+6Eu2ffbWTpoYdM7DFzm3Jx
	ptdEC6QfxglPsC+30f+/V3W1c2jpgEh/MaoA4XZpmIQ65gD6pWzjMFtkn/Zz/zJgnREV
	zys7c9ufgOye4RHqK5K8NB4UxZH3rOdQBQC94w9uz2xDRvwhZYPlTFUMCnjNGjrgZXYq
	Sk2yvk/bUR1JLiGIWZQA97kycaAShkEaRiz4C/ofv7Ux56yEeSJRoggn20XseIQIUhQW
	ktU2fZz3euJbSE/36huBWIaHgLezOA6wTFJqq0gqNkKewXUhSbBNM84hDbNyjgH5KaK/
	m32Q==
X-Gm-Message-State: APjAAAUd+KuFULMrMVan3Mm3mzuK0OqjavgqRYQMF/IFdpSwQksZ6Xnt
	/efZL7tntF9AhYe69KxO/TcgY1wTRTURYNHzzvb96AB+
X-Google-Smtp-Source: APXvYqyyjxy+vYI8qfRiMs18RKd4vvs+n+qIeKsfziBR1Z4oRHI4YfIJbSYXeABtaC3Qj6+RCRwcDYX8sW/XLX92C0E=
X-Received: by 2002:ac2:4c8f:: with SMTP id d15mr16946246lfl.74.1569955333998; 
	Tue, 01 Oct 2019 11:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <7c6a6a6d-1d7b-db68-88c0-42675cdca855@faresoftware.it>
In-Reply-To: <7c6a6a6d-1d7b-db68-88c0-42675cdca855@faresoftware.it>
From: Sergei Nikulov <sergey.nikulov@gmail.com>
Date: Tue, 1 Oct 2019 21:42:11 +0300
Message-ID: <CAE7Ac0CvBTCsNQmL6-amboBNzf1QaxSSgAcwDFJm7eFKvHKZ0g@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@yoctoproject.org
Subject: Re: QtCreator, CMake, fsl-imx-x11 toolchain
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
X-List-Received-Date: Tue, 01 Oct 2019 18:42:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 1 =D0=BE=D0=BA=D1=82. 2019 =D0=B3. =D0=B2 16:19, Mauro Zilian=
i <mauro@faresoftware.it>:
>
> Hi all.
>
> Maybe this is a post I have already sent.
>
> I'm working with
>
> imx6dlsabresd,  yocto krogoth/jetro, QtCreator, fsl-imx-x11-glibc-meta-to=
olchan-qt4
>
>
> I configured qtcreator with a kit for this tool chain using gcc g++ and f=
rom the meta-toolchain package.
>
>
> If I try to run cmake to generate the project cmake fails because it cann=
ot found /lib/ld-linux-armhf.so.3.
>
> This file i in /opt/fsl-imx-x11/4.1.15-2.0.1/sysroots/cortexa9fh-neon-pok=
y-linux/lib
>
>
> Cmake anche make try to find it in /lib
>
>
> Why?
>
>
> MZ
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Not sure your question related to yocto project.

Try to read this
https://gitlab.kitware.com/cmake/community/wikis/doc/cmake/CrossCompiling
and this https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html
first.

HTH.
--=20
Best Regards,
Sergey Nikulov

