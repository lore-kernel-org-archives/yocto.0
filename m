Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B05E0E00C10; Mon, 17 Dec 2018 08:34:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D226E00B81
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 08:34:57 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id g76so19439704itg.2
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 08:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=RsCP7RQPyr1aGDXZXEpL1eiTJDHinnfw0vjbeT1kN3c=;
	b=avTPa9vQBC5ZLrxf5JTMPuedIUkq6CqXQerkB8WmrYTShk2xKBq9lPW32c0ufjzmTA
	0rDJKKLlJjFvS6LNc8B4avE+phI2fxsMOtleQOTz09LjasjdjKMhvzp4VTsuGpTdqS0f
	8SdteiwigIy+Y5EcybMcsOYcAj5KhU/DW2feCpWYus51ekuGBK9XTYlFmB5G36o3ktoo
	TpF8N4/IHtGfGHHe3vEhIU5zfjSBdBaUkHgbWmbf47TjS0cKsmoDJ6LOoRnk37WrMHlV
	OXBmc7/JxYLEbFzrnlX2cp2JKXbiZtl8AdzeYvv2FowE4g+4dqDn8tBhQjspgxpI4m9M
	yvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=RsCP7RQPyr1aGDXZXEpL1eiTJDHinnfw0vjbeT1kN3c=;
	b=sc8w7jqHxliILQsjDRj1Xxhgh60cc/OpsdQ0YsRwCtJNVKnNdAuKR2TcVpsGQgpvfi
	OMeLgHSVo/pww6t54ecOQ5ShjLodns8EYkMGSef7krnZebMB4PdZlBvNZIYmjICyQ8TB
	Y2dpfMQNgEIyZ9qGfV/gsKHCSTb/hNc1KvxP7kTbaIQdCyGiP4tI6X7SqQhwWPRzniKc
	4RHDth/rrFGyyWp28hqu2dAF3TGWQuMAAAaY2W5Ykk2zl0ijUUAJs6/kN7aM3gJB8Q29
	76xeo5iv0vGA909sTvYmV/qvCk/lTMIyTpbQJnCCMCL5swukWsPS7chHzJH7VJRrqrYa
	fNuA==
X-Gm-Message-State: AA+aEWZTY92bkk8DY4bMLQfIcfdGE5JcAtMMf8xQOkZviTj2lxqtWNyQ
	+t9XakVij6HV50gx+On75qGWoXJ3FBQZDlNNbera551MBb0=
X-Google-Smtp-Source: AFSGD/WZ4lBpcyx5SgnttfdT/pffnGv8tfbT+F33OiQQKJhmv7Q3pp8DLFxChmjXDiqU+GsCBovjKXl9vLov4kfhFLU=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr11892361ite.26.1545064495940; 
	Mon, 17 Dec 2018 08:34:55 -0800 (PST)
MIME-Version: 1.0
References: <2a3791ee-a3b0-2afa-4f06-c3c552636f31@actia-pcs.fr>
In-Reply-To: <2a3791ee-a3b0-2afa-4f06-c3c552636f31@actia-pcs.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Dec 2018 16:34:44 +0000
Message-ID: <CAJTo0LbcKbeGpxaP2Pj_dzBd3SvauZtHspvDPFS+DdQM-SFJiQ@mail.gmail.com>
To: =?UTF-8?B?US4gR291w6hz?= <qgoues@actia-pcs.fr>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: RDEPENDS error for itstool recipe
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
X-List-Received-Date: Mon, 17 Dec 2018 16:34:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As https://github.com/schnitzeltony/meta-qt5-extra/blob/master/recipes-supp=
ort/itstool/itstool_2.0.4.bb
shows, you need to fix the hashbang manually.

Always check the layer index before writing a recipe. :)

Ross
On Mon, 17 Dec 2018 at 16:30, Q. Gou=C3=A8s <qgoues@actia-pcs.fr> wrote:
>
> Hi,
>
> I am trying to create the recipe for the package itstool (available
> https://github.com/itstool/itstool) for Yocto.
>
> Here is my recipe file (itstool_git.bb):
>
> -------------------------------------------------------------------------=
---------------------------------------------
>
> SUMMARY =3D "Translate XML with PO files using W3C Internationalization
> Tag Set rules"
> HOMEPAGE =3D "https://github.com/itstool/itstool"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59c57b95fd7d0e9e238ebbc7ad47c5=
a5"
> DEPENDS =3D ""
>
> inherit autotools pkgconfig distro_features_check
>
> SRCREV =3D "bc5724ed98eb591d4b82dff1b4b47ed77ec47eda"
> SRC_URI =3D "git://github.com/itstool/itstool.git"
>
> S =3D "${WORKDIR}/git"
>
> RDEPENDS_${PN} =3D "python"
>
> -------------------------------------------------------------------------=
----------------------------------------------
>
> Unfortunately when i try to compile this package with "bitbake itstool",
> I get the following error:
>
> ERROR: itstool-git-r0 do_package_qa: QA Issue: /usr/bin/itstool
> contained in package itstool requires tmp/hosttools/python, but no
> providers found in RDEPENDS_itstool? [file-rdeps]
> ERROR: itstool-git-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: itstool-git-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> tmp/work/corei7-64-poky-linux/itstool/git-r0/temp/log.do_package_qa.13188
> ERROR: Task
> (custom-meta/recipes-devtools/itstool/itstool_git.bb:do_package_qa)
> failed with exit code '1'
>
> Do you know how I can solve my issue ?
>
> I am building this recipe for a processor intel core i7 x86 64-bit.
>
> Thanks in advance
>
> Quentin
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

