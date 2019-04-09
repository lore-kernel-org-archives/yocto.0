Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE5EE00C1E; Tue,  9 Apr 2019 11:23:15 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA0CE00AD5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 11:23:15 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id w5so20952022qtb.11
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 11:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=s/JOJjtBPkVkhb5jJdCnEzhwS/mVShOddF8fV1ccXlo=;
	b=s8n6M7oZU84SNCO3SP32Y9d6PBHeG+H+cgtf8qJ6etbOlMsykQVYGwERJ660LW7TmN
	0F7qQWfmlPE691JojlT4elaEiUJAPaf4iLx4KsEEQdq94LymGFZnofGzRzwg+R7ppmmv
	221t0LnGI557zA/Nf/ovEhKYyx6IbwDPhlMYpP/u7o0wPfFaVIO1Ul4AeJ6dDLyxoDHo
	sshbozAt2IflVUVtPV77vsX53U7F/0GP0V2IUet85blUi6O/j+si7LKyr5CWOGpvFzde
	ZcAqr16UFgS/6uYmrRA3sf2hSNqRC4U4db1nqzTCfkGhHXk+R/4p6P+MZVnNao7wVlLu
	KvKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=s/JOJjtBPkVkhb5jJdCnEzhwS/mVShOddF8fV1ccXlo=;
	b=bS3jXwPVuhnte8/ZFqecFAh+LS+WLE8V3G5dAonepLWC0Ggb/L1QjsOGjTEfMIY1Od
	0RqcKyeUEWBkN3vRiGg4/z8ZlaKp/LH05/KuG7+DEOjgmRftVLDHjKlEU0M78AakWQBQ
	KzevknN3NqFtSpdUosVCTilSON3QHNn96FsmHwMqAuvdXQEibNHACC+xMJDAyqxukl2H
	XHt13Ppi1cau9Gvp/KuGBMHCSWn/hQ54CHulb0p6V3ozMCIOO8HqiVH1q9IH2S56sXmv
	2JLM/buNC4HPz1UF+0sZIcE73D43Rzno9+wK1JTc/ynGB2rNbDbfKVJnKvKyH03woytH
	yZ+A==
X-Gm-Message-State: APjAAAW446zl+CPuFKBCua1wDenTTe/iEHWuB5xsQHzwwY/r3AZL0wB7
	CvU57YPHwz4BgQFcSOsEeh689lBLPCcIcpzvqKc=
X-Google-Smtp-Source: APXvYqyFp/ASr2Tr7c3/E+nW+Xcfkr9XfzZ1jfu74dyLU50oCbykuyrk25SaZqjfs15QpNNJngEUopWgewHX3BRGWGg=
X-Received: by 2002:a0c:8027:: with SMTP id 36mr30397770qva.87.1554834194244; 
	Tue, 09 Apr 2019 11:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <DB7PR09MB234844C4AC1070ECD87699FEF82D0@DB7PR09MB2348.eurprd09.prod.outlook.com>
In-Reply-To: <DB7PR09MB234844C4AC1070ECD87699FEF82D0@DB7PR09MB2348.eurprd09.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 9 Apr 2019 11:22:47 -0700
Message-ID: <CAMKF1sohvNR6GfLPmArfSvjnuLv-P7wvoEnnnXm8ygovmrS-Gw@mail.gmail.com>
To: Clement CHERBEIX <Clement.CHERBEIX@viveris.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: problem with ruby
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
X-List-Received-Date: Tue, 09 Apr 2019 18:23:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

probably it has to be added to linker flags explicitly.

On Tue, Apr 9, 2019 at 12:00 AM Clement CHERBEIX
<Clement.CHERBEIX@viveris.fr> wrote:
>
> It's done but I keep the same problem, I've add zlib in the PACKAGECONFIG=
 too without any result...
>
>
>
> ________________________________
> De : Khem Raj <raj.khem@gmail.com>
> Envoy=C3=A9 : lundi 8 avril 2019 20:04
> =C3=80 : Clement CHERBEIX
> Cc : Yocto Project
> Objet : Re: [yocto] problem with ruby
>
> On Mon, Apr 8, 2019 at 9:44 AM Cl=C3=A9ment Cherbeix
> <clement.cherbeix@viveris.fr> wrote:
> >
> > Hello all,
> >
> > I=E2=80=99m trying to add the MIB mechanics in my yocto project, for th=
at I use dadi (ruby depenedent) but I get an error when bitbake try to comp=
ile :
> >
> > DEBUG: Executing shell function do_compile
> >
> > ERROR:  Loading command: build (LoadError)
> >
> >                 cannot load such file -- zlib
> >
> > ERROR:  While executing gem ... (NoMethodError)
> >
> >     undefined method `invoke_with_build_args' for nil:NilClass
> >
> > WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native=
/2.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D"en_US.UTF-8" LC_AL=
L=3D"en_US.UTF-8" gem build $gem'
> >
> >
> >
> > I have tried to build the gem in an environment outside of Yocto and it=
 was correct but when I try to do it in Yocto, I get my error.
> > Did someone have an idea on what to do ?
> > what is the recommended way of building ruby via gem in yocto ?
> >
> >
>
> It seems that it is using ruby-native but does not have zlib-native
> and it cant find this library. Can you add zlib to DEPENDS in ruby
> recipe and see if that helps.
>
> >
> > Here is my build environment :
> >
> > BB_VERSION           =3D "1.40.0"
> >
> > BUILD_SYS            =3D "x86_64-linux"
> >
> > NATIVELSBSTRING      =3D "universal"
> >
> > TARGET_SYS           =3D "x86_64-poky-linux"
> >
> > DISTRO               =3D "poky"
> >
> > DISTRO_VERSION       =3D "2.6.1"
> >
> > TUNE_FEATURES        =3D "m64 corei7"
> >
> >
> >
> > Thanks in advance !
> >
> >
> >
> > Cl=C3=A9ment C.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

