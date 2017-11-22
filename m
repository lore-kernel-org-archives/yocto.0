Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F858E00D04; Wed, 22 Nov 2017 07:42:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA8FE00CF7
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:42:18 -0800 (PST)
Received: by mail-pg0-f48.google.com with SMTP id z184so12716798pgd.13
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u/753SQtRAoOQLW+PO5UbFLDeEOTtItteGKRvvy6L0Y=;
	b=UuAk8aeKh/RVAb+8G2Grq0B41qku1YWE3TBAPuK099rpgVnVrhZzWWAgvKBFmiBf0v
	a4PW0welb3Vb1mT94S5hNOP7thR2oaFxOzh0fVTcxkRjwkKoaRHSeLHWxFfZRNV39V7+
	oRpLGTaAMJyRpkwWV1ANs/o2UgGve4juk5z+84LskrBDmJmG1XiaAiQfqm+sQR/rCE4X
	373HL6GCu1OUGQHQb0kVtXMFEa3fVosHQfekr/WaxC+D0LF7hiL74BW6dypgS9E+p78p
	5F2RH7GFjkTE7X5aFjP+1P2JKsNIPHn9N2TXLFQaKQcL1zfW9QrNOFU0kbXM+uaoBNDy
	ahfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u/753SQtRAoOQLW+PO5UbFLDeEOTtItteGKRvvy6L0Y=;
	b=d49Xi/KkX8qPDmEsXJMXZo4SA7V7wUmTzlUk2Pz5rmQLYvCzfoar9e3IhDBEd1KVA+
	i1S6pWS/CKj/LP9+JyYrT+cHQcHfx+za80wasBJ0QO1rkuZcaMnX6BqwD6qCErNzxHKH
	dU4nxddPz7s6WUjCM0xzDKcvxCmaNvZ+CLsFtSE+KC8E72Lit9OZzAkXKbD/XnnJGieB
	RoMcqyhPPb7s3Ff5aYjMWgpm+2L74clZy7dX5o94Bt2jzUqEPr8PDx/+LBi/1SPwVWzt
	WjwR5AdJBP8BDlDQ6AWMumO2270CiE8FAme1tvUMqyeDivFVzxonkUQ4WipPHiibqzgq
	9S4A==
X-Gm-Message-State: AJaThX5rWARKS6MVCHLkgAss14zrxanANZGBRPCSGM8EQjbZyEtD9pTY
	ze1xJCMBjuyA7bJXffN2td+d/mirkJUsHtCY93M=
X-Google-Smtp-Source: AGs4zMbNIkh4Qqx8ihYB3Ck4OZ7TEtk83ziMIOxQ9qHVx0wVVkd2CQHsjFEWTsu4K5Bsfyy0busJuPz45ajr7OO0G1M=
X-Received: by 10.101.74.129 with SMTP id b1mr21543825pgu.341.1511365338316;
	Wed, 22 Nov 2017 07:42:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Wed, 22 Nov 2017 07:41:47 -0800 (PST)
In-Reply-To: <7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Nov 2017 07:41:47 -0800
Message-ID: <CAMKF1sqd7H73Co_EBZ6EWDSK1H_76K305wO+ZAjB9EuM3fSMoQ@mail.gmail.com>
To: Hongxu Jia <hongxu.jia@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	+lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>, "Yang,
	Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Wed, 22 Nov 2017 15:42:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 21, 2017 at 12:55 AM, Hongxu Jia <hongxu.jia@windriver.com> wrote:
> Hi all,
>
> Wind River has maintained meta-installer for several years,
> and now we want to contribute it to yocto community.
>
> This layer provides an installation program based on
> OE platform. The installation program is anaconda from
> fedora, which is the installer of distribution Fedora,
> RedHat and Centos.
>
> The version of anaconda in meta-installer is 26.21.11
> which is based on Fedora 26.
>
> The meta-insatller requires:
> - systemd as init manager
> - python3
> - dnf2/rpm4
> - gobject-introspection which requires qemu-usermode
>   in MACHINE_FEATURES
>
> The meta-installer provides:
> - graphic install and text install.
>
> - package based (dnf/rpm) install and image (copy)
>   based install.
>
> - package based (dnf/rpm) install from local and
>   remote rpm sources such as CDs and DVDs, images
>   stored on a hard drive, NFS, HTTP, and FTP.
>
> - kickstart install which provides a fully unattended
>   installation that can be duplicated on scores of machines.
>
> - install over VNC on headless machines.
>
> - timezone setting.
>
> - root password setting.
>
> - user account creation.
>
> - a variety of advanced storage devices including
>   LVM, Btrfs, Ext4, and filesystem encryption.
>
> The repository of meta-installer is temporary on the github
> for review:
> https://github.com/jiahongxujia/meta-installer
>
> In above github, the logo picture is undefined, if yocto
> could accept this layer, I will update the picture with
> "Yocto project Compatible".
>
> The attachments are the snapshots of a package based
> installation.
>
> Hopefully it is helpful for yocto, and any feedback is
> appreciated.
>
> If yocto is interested in this layer and will accept it,
> I could send pull request or some one directly fetch
> from above github master branch.
>

This is a very good work. Thanks for contributing it. We should definitely
put it under meta-openembedded framework.

> //Hongxu
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

