Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EE8AE007CE; Mon,  9 Jan 2017 10:47:46 -0800 (PST)
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
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.181 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7BDE007AE
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 10:47:44 -0800 (PST)
Received: by mail-ua0-f181.google.com with SMTP id 35so35504925uak.1
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 10:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=mITssVb4FLll+vqyKuHKfSuHBimsJDLLPITVyd1TVxA=;
	b=rran3Sp+QWBQA8VlIfIa389ndAcWBys+Xvmnlq3cKuyXC4K6rvMMB140XW7az4IO8N
	N76VKIe4OfkBZqBNO0qr8Xgqadu+FR/ebddEAkoZNTkrlLj2nqvOE8PjiPUoFKY7Z9Nl
	AW7DLHPe7YyKE3gQjiPI347vHPM6tzytMG8nOvxbojV0c+yHEWCSmOm6c/2jqI3Iqnnt
	9mzD+v5gtBp/nuJUgLRk8YdtFL9RDe80NWngEIctRL8e8jpkJwGEv0GNvReVE0vjmPbq
	JCxTntaVRUQeb4a8uGn5KJUiFnqToyJUzZIVCQI355PbV4BSKsGkHnVW7wxfdbpxQx/h
	fpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=mITssVb4FLll+vqyKuHKfSuHBimsJDLLPITVyd1TVxA=;
	b=rYKtzH28x2GmTu2Jm2WuLQqLyfaXRL/WOsQGzG0Apak/5ikYZgOotze737YFCo1WrR
	MAOo3SYeYdpvEOfbmdii8U6vSWQDEtY+a1qFGvqm/EIpEqCRNSKHhNmw6f/KvYOEarTF
	nUU1OCJEctQB3JxcOuzPTUDVOXzqADEmjO4tRZRV0uRdMKflOTAIhSQGatPjdu+V+8Ai
	VnzWzBE7ALD1/B+DQoicgbaYroZ1WPodQpCupM3MpNFgiS1wYZYDeaw7yJZioQrukQFB
	m1y7ru1cTA7ulIDE2sU8Z1TZzXaeDJLJkkgWJ9ZQGvgPXhQrVBRl0NOVCE4717Drw77w
	JmPQ==
X-Gm-Message-State: AIkVDXJpvH3OYyo/Lxezryb0vAe8pww8kH7Axx54rDAVAkypXOToRHpP0PVMe8aYnNvWBFqyNeJyngTyXag2IQ==
X-Received: by 10.176.84.8 with SMTP id n8mr67330163uaa.29.1483987663902; Mon,
	09 Jan 2017 10:47:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Mon, 9 Jan 2017 10:47:13 -0800 (PST)
In-Reply-To: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Jan 2017 10:47:13 -0800
Message-ID: <CAMKF1sqAb+CStmPbEcTNb15kUBgj-HTdjCiY89CTwdVmjA-DPQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Failure Inheriting rpm_sign
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
X-List-Received-Date: Mon, 09 Jan 2017 18:47:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 6, 2017 at 3:52 AM, Chris Trobridge
<christrobridge@hotmail.com> wrote:
> I am getting "Exception: OSError: [Errno 7] Argument list too long" for s=
ign_rpm in the do_package_write_rpm tasks for the
> linux-yocto and glibc-locale recipes.
>
> This is building core-image-minimal (and also my own image) with morty (5=
aa481d) on Fedora 25.
>
> I have enabled the rpm signing with:
>
> INHERIT +=3D " sign_rpm"
> RPM_GPG_NAME =3D "{name}"
> RPM_GPG_PASSPHRASE =3D "{passphrase}"
> IMAGE_INSTALL_append =3D " signing-keys-rpm"
>
> The error message makes some sense in as much as these recipes produce a =
lot of packages (for example, glibc-locale produces 1791 packages) and the =
command line in the log is pretty big, although reading around I didn't fin=
d a consensus on what the max command line should be.
>
> The code to sign rpms is in meta/lib/oe/gpg_sign.py b/meta/lib/oe/gpg_sig=
n.py and it builds up one command line with all the packages.
>
> I changed the code (patch appended) to sign each rpm in a separate comman=
d and the build completed successfully.  The signing operations take a larg=
e amount of time so I think this might be a reasonable change but you may h=
ave other concerns.

This certainly is useful, perhaps the signing bits can be moved to individu=
al
recipe packaging tasks that way it may be parallelized a bit

>
> Regards,
> Chris
>
> diff --git a/meta/lib/oe/gpg_sign.py b/meta/lib/oe/gpg_sign.py
> index 38eb0cb..a386b1f 100644
> --- a/meta/lib/oe/gpg_sign.py
> +++ b/meta/lib/oe/gpg_sign.py
> @@ -29,17 +29,18 @@ class LocalSigner(object):
>      def sign_rpms(self, files, keyid, passphrase):
>          """Sign RPM files"""
>
> -        cmd =3D self.rpm_bin + " --addsign --define '_gpg_name %s'  " % =
keyid
> -        cmd +=3D "--define '_gpg_passphrase %s' " % passphrase
> -        if self.gpg_bin:
> -            cmd +=3D "--define '%%__gpg %s' " % self.gpg_bin
> -        if self.gpg_path:
> -            cmd +=3D "--define '_gpg_path %s' " % self.gpg_path
> -        cmd +=3D ' '.join(files)
> -
> -        status, output =3D oe.utils.getstatusoutput(cmd)
> -        if status:
> -            raise bb.build.FuncFailed("Failed to sign RPM packages: %s" =
% output)
> +        for file in files:
> +            cmd =3D self.rpm_bin + " --addsign --define '_gpg_name %s'  =
" % keyid
> +            cmd +=3D "--define '_gpg_passphrase %s' " % passphrase
> +            if self.gpg_bin:
> +                cmd +=3D "--define '%%__gpg %s' " % self.gpg_bin
> +            if self.gpg_path:
> +                cmd +=3D "--define '_gpg_path %s' " % self.gpg_path
> +            cmd +=3D file
> +
> +            status, output =3D oe.utils.getstatusoutput(cmd)
> +            if status:
> +                raise bb.build.FuncFailed("Failed to sign RPM packages: =
%s" % output)
>
>      def detach_sign(self, input_file, keyid, passphrase_file, passphrase=
=3DNone, armor=3DTrue):
>          """Create a detached signature of a file"""
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

