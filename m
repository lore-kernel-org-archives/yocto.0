Return-Path: <sunil.mukundan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CA9E00901; Tue, 23 Oct 2018 21:26:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sunil.mukundan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59CC0E008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 21:26:46 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id d14-v6so4288484qto.4
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 21:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NzUkrPbrXep+ZXbfvtOa0ZP/cJDM5NJ6Fev6EwBCAKA=;
	b=ZJNrPePC4ItJgW1/O59IoG3Dt1UqJTF+n+je5ghZjqZC1AbMyJGPtixW5+o/MBfD8N
	D6Bp09vb3NpGwNfu78+lxq3ly9b2+G0iOjszm3BPkxZoiXgOmqholpvKXMK5iyT6viA7
	S/zqCDmU6le42xSlzvLtLi6f1VO/e+YRrKdGWmeV3Iviw13RCKCSgVpx6GcTli+FqlpK
	XRHJAmP0iua+Mnv93CzzPvnpI/GFMLBDIXYpepthr3DaU+1BcEcihioQg7es4cZCyuCr
	7HpYtbo6hblJWyurMPrFx4WqbSjNorfOjtcBPuhsdALaJksJzFvvFAT8EuiBrEz4NoI/
	NtkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NzUkrPbrXep+ZXbfvtOa0ZP/cJDM5NJ6Fev6EwBCAKA=;
	b=QfvSkHkoD3eVoJg6XVb/VQIFAxa/ZI4wBcsXVmqIl2Uf4sUZ3OG+heJnE4MiOFOVPz
	7eePh+9e8MWgDlx6yOUvPK1a6pC+ovztB6AvwM9Z9KTGD7rMaVwEDhpsQt8oq6NyJUvq
	mbKskXO2Xa3Jfsdsc2z3urK/Y4TEoo9tYf2ez8iwYQMyOg9GP0+E63M//19H0rqVU3zZ
	0OPUCldvLOEZfyBbQWT2xcjrHEau3V5aRTXMuFVUNdhkIfNDW+7vSHe9rn2fB9+oRqUR
	5dklK10dwywySpDsL0ZEkAXvMFT1FpGyMTd23ZCiDjFTBrJCHGSEQngdew3cyXFA6kOS
	/hcw==
X-Gm-Message-State: AGRZ1gJX9OxreixMZrD534ucMRyWfiBz1z0IibkWuKd3HdwGU/TUedN6
	Kz+uWpgGgmpuctlFmv6v8MzG7BebyKgm3k99NWE=
X-Google-Smtp-Source: AJdET5dPjQSMiRpPcjv5g9NfDlGa+0O4WcaH1z8b/fItciKJ2m1e+Yh5/6xkeiHYAfbun1YkLtjlK2fASaP7cfCe8M0=
X-Received: by 2002:a0c:92c3:: with SMTP id c3mr974626qvc.12.1540355205472;
	Tue, 23 Oct 2018 21:26:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKPYHZ5J=dnpZeBEkped2r+3xo3UzdwF-HRf8PbsAPM_qqRdxw@mail.gmail.com>
In-Reply-To: <CAKPYHZ5J=dnpZeBEkped2r+3xo3UzdwF-HRf8PbsAPM_qqRdxw@mail.gmail.com>
From: Sunil Mukundan <sunil.mukundan@gmail.com>
Date: Wed, 24 Oct 2018 09:56:34 +0530
Message-ID: <CAD0Q=Odf4_G=JiGej_YiV0pzxFvJPQBEB7Lz14T6cpGa-mJCbw@mail.gmail.com>
To: dhanush.ks@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: ARM Cross Compiler SDK Toolchain
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
X-List-Received-Date: Wed, 24 Oct 2018 04:26:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I usually build using bitbake -c populate_ext_sdk core-image-minimal

This builds the SDK in tmp/deploy/sdk in the form of a shell script
(which is actually a tar file with a script wrapper as a preamble).
running the script installs the sdk (interactively). Hope this helps.

Thanks
Sunil Mukundan
On Tue, Oct 23, 2018 at 7:28 PM Dhanush K.S <dhanush.ks@gmail.com> wrote:
>
> Hi Yocto,
>
> I am running Yocto 2.5 (Poky Sumo) on the host system CentOS 7.1 to build=
 images for the target system ARM cortexa8 with a Target_FPU configured to =
hard.
>
> I would like to use a Cross Compiler SDK Toolchain in order to build the =
images, as the current toolchain fails with a few recipes during compilatio=
n due to missing include files.
>
> I tried building the toolchain using "bitbake meta-toolchain", but unfort=
unately that failed as well at do_generate_content_debug. But also, as far =
as I understand this command builds the SDK with compilers for the host sys=
tem and not for the target system.
>
> I would like to use a pre-built SDK, if one is available for ARM cortex A=
8 architecture. I have looked all around and haven't found one.
>
> Could some Yocto Experts point me in the right direction? How can go abou=
t finding a Cross Compiler Toolchain in order to overcome the compilation e=
rrors.
>
> Thanks in advance for your help.
> Regards,
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

