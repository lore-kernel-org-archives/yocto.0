Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.40347.1617521020821407567
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Apr 2021 00:23:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uuCX5Ti2;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id s2so6490670qtx.10
        for <yocto@lists.yoctoproject.org>; Sun, 04 Apr 2021 00:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8M46Qn7ePwRZphz0Z/9Y+jjsYK969FEtBPi0vFcQsz8=;
        b=uuCX5Ti2t6SWf00FfcAEad0z3bqXBKKPFlopWzdXyeB/q6HW5C/6my5Cx4qgP9Q8In
         FwhvhF2m4YQhoJtXKmAbHTfCRRdNewwl+I/AhmXLGKiM/qXE25hJjvC9mgpAZnG0jf3g
         Bzsuclpukez3Uz4y/5bRtBldZj85ee8ixXNfQg4UY2F5O813f0Tfpc8PeVeA9gsVUYfY
         1HbGScSNA2ZRS4Ck2W4SJKcH2lsnAuL1pKvGnnnRftfdxzQCefr/45xsWlpbBEncGwpK
         h+Nmq1SG54ssi2dolFx+TA4uE0UydnnUEuh5Sv3nHARjkcK5TwcgXdtaJ+C1MGSln4wk
         x8jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8M46Qn7ePwRZphz0Z/9Y+jjsYK969FEtBPi0vFcQsz8=;
        b=E/nJoY2pndMLhcXqarotxvWvAwJLZikiQ4RUfuprcxZ7/SNZob4hdBseJgdEzr+6WV
         AuWlWgFuRz+PhtZg+CozDP5NKkgNd+M+5WCiVveIwjE6h9YqiO+AtilwFEpGZVdGcE/T
         kRCvJMdLRWW92XjYO7P++YrOa4Mk2Jd0Lm2cS7uy5rYiE5Vq++3IEFv7ZO5w8zr07zLn
         IDCJMqfJGd5ZSStwtOxGbdIVONC83NC3QAOkYW35KS7Psbp21ZdaBVwJVUNMc0M9n7j+
         sL07XwYs8yyKgGAlakWRLLjIdddbpDcqG4Z1cRwSoh85eQ9RAx4/Eefkohh0om3wSade
         0MAQ==
X-Gm-Message-State: AOAM530VI8WFEu++jVw0ljI9tp9l3FTRy1tajhx7Agfafpm8DD0X4Giu
	/50mKjSJCQPa+qjr3yTE8YsYXvM5HoXJm0h+/og=
X-Google-Smtp-Source: ABdhPJyrXOzhbqTqkzC2k0/qg8Pr6LIbx/cLdD7XQbc3z5trpv1MWFr1AlRzmdTDoFtrzckLKI6G+KhSqfkvifaR6Ss=
X-Received: by 2002:ac8:4b6d:: with SMTP id g13mr17720634qts.369.1617521019931;
 Sun, 04 Apr 2021 00:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <8S52.1616688989583067700.ubBM@lists.yoctoproject.org>
In-Reply-To: <8S52.1616688989583067700.ubBM@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 4 Apr 2021 00:23:13 -0700
Message-ID: <CAMKF1so-kbZLH1D2J8LfrSZy6=yhmJF4CbQnqckMOY+Q1r2_cA@mail.gmail.com>
Subject: Re: [yocto] Issue generating working sdk containing Clang (meta-clang) and package_deb for compiling eBPF #sdk #dunfell #yocto #kernel #linux
To: msg board <msgboardpana@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

Can you try this patch ( if you are using master ) and see if that helps

diff --git a/recipes-devtools/clang/clang_git.bb
b/recipes-devtools/clang/clang_git.bb
index b8986be..b0c81f1 100644
--- a/recipes-devtools/clang/clang_git.bb
+++ b/recipes-devtools/clang/clang_git.bb
@@ -15,7 +15,6 @@ BUILD_CXX_class-nativesdk =3D "clang++"
BUILD_AR_class-nativesdk =3D "llvm-ar"
BUILD_RANLIB_class-nativesdk =3D "llvm-ranlib"
BUILD_NM_class-nativesdk =3D "llvm-nm"
-LDFLAGS_append_class-nativesdk =3D " -fuse-ld=3Dlld"

inherit cmake cmake-native pkgconfig python3native


On Sat, Apr 3, 2021 at 3:34 PM msg board <msgboardpana@gmail.com> wrote:
>
> Hello,
>
> I need Clang compiler apart from currently available default gcc compile=
r as I am trying to compile eBPF which will run on my custom yocto which is=
 based on core-image-minimal. Therefore I added Clang compiler to my yocto =
sdk build using the meta-clang layer available at https://github.com/kraj/m=
eta-clang . My yocto is based on dunfell and uses package_deb inside local.=
conf. SDK compilation succeeded with command "bitbake <mycustomdistro> -c p=
opulate_sdk " but while installation on host there errors similar to the on=
es mentioned in this issue .  Therefore, I removed the LDFLAGS_append_class=
-nativesdk =3D " -fuse-ld=3Dgold" line from clang_git.bb and compiled. This=
 gave me errors related to this issue . Therefore, I added package_ipk and =
also kept package_deb . The compilation was successful but there was one wa=
rning as below :
>
> -------------------------
>
> <CUSTOMDISTRO> do_populate_sdk: Unable to install packages. Command <Pat=
h>/opkg --volatile-cache -f <Path>/opkg.conf -t <Path>/sysroots/core2-64-po=
ky-linux --force-postinstall --prefer-arch-to-version install <Long list of=
 space seperate package names> returned 1
>
> Collected errors: Solver encountered 1 problem(s) ....
>
>
>
>
>
>
>
> -------------------------
>
> The installation of on host was successful
>
> When I tried to use the sdk to compile eBPF, I got errors mentioning tha=
t the sysroot does not contain /usr/include/gelf.h . After looking I saw th=
at elfutils-dev tools were not installed. elfutils-dev would have installed=
 gelf.h. in /usr/include of sysroot.
>
> Without the addition of Clang I was able to generate working sdk with ju=
st package_deb in local.conf.
>
>
>=20
>
