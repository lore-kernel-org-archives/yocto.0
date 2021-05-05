Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web09.3276.1620248790800158658
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 14:06:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4mbMwKX;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id a22so2449819qkl.10
        for <yocto@lists.yoctoproject.org>; Wed, 05 May 2021 14:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g6o7F0H5QYPHS51d99SPTvASZV+rD7I4OAve5jg7TnY=;
        b=j4mbMwKXyg6CQFi5uxa2Obe2Hn6RR9nPNykNm1mTAvUnczOZgFVL2Axw4U+PE3FD4W
         2s8LZXOCMle35U9zHJfzdP0k+AaPZoyO1INc/JfwFYmUMzlhEB7GGd12QSmxujvQOwSl
         ae7Lpv2gT9DujAZrYCaarRcKYiaxWO3Huko0uQVR+CVJPC+yYZ7gEHyaLOMDVncRJeFw
         x3k6/Sj48qj7tii/CG1VOOuwYCKhUrNVs0TZcDNaeOwbyDslUKsb90v2xgkEsqJXLsG0
         xxf3WFYD6WQagSWT13V54yrECsGCQ5g3Il9+LCqzwGwNBaGnuPoOByLH8H6mUGhFdPx9
         fSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g6o7F0H5QYPHS51d99SPTvASZV+rD7I4OAve5jg7TnY=;
        b=nHjYxC+WZSVWc2UMzUoZPz+pEyTeTAiZp1wn63zSHtLI8lHQiQR9pcIe5/N7n6PGLW
         86NiotsU3PgykeY4g0hdd33bPlnwgvRgOoWA8qMOPFdJVybdErvcoyI+n2jJXZJ7PNet
         au4k/AShUoOEKMokS4xjuyEw+8tyt393sWppNTAgcqRWICa2UVfeoKD2bsjomWn3vorr
         xnRhrQsUgUo7WkAAq6z/xVfupjpUwT5zAEqhS72n4WzAz6PsLjFgdhifcssYhpSfcQzA
         DzDPDAWBwk5rSPGBIlJELYCBI057M2zh4nARWgmdbL4xkSN5Datv2h1y0tL2HidC0O7j
         l99Q==
X-Gm-Message-State: AOAM533JXWEYCEI7bdXznnAaXotsyf//IJAZfimOdWFACeTKUSK/l2g6
	3CnA+sUIjCIf/ED0GH24jDm1zYfyj9PijfEmgnI=
X-Google-Smtp-Source: ABdhPJwNc6KaeeUqpyR5oLN2LZRwOUhNYyjph3nx7Cl6on7mAaukpN2gMucoXVnibJYx1AHUFm1pHxMaA23oGdgFei4=
X-Received: by 2002:a37:270d:: with SMTP id n13mr749642qkn.146.1620248789619;
 Wed, 05 May 2021 14:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <2f1f75947ea04d10ada871fb84cf6dac@baesystems.com> <6092f7bc.1c69fb81.17f98.3a7cSMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <6092f7bc.1c69fb81.17f98.3a7cSMTPIN_ADDED_MISSING@mx.google.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 5 May 2021 14:06:03 -0700
Message-ID: <CAMKF1sriGPARn_D9t9cFqpYsc8Fe9KJO5X05Twug0Qv2URN0hw@mail.gmail.com>
Subject: Re: [yocto] #yocto cmake configurations
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008d985c05c19b91c4"

--0000000000008d985c05c19b91c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

usually one uses llvm-config to get the libs and order is important too
especially with static libs. Can you dump all .a files from clang and see
if its defined in some other .a which is either missing or present
after the faulting .a in linker cmd

On Wed, May 5, 2021 at 12:53 PM Monsees, Steven C (US) <
steven.monsees@baesystems.com> wrote:

>
>
> I made some modification in the cmake modules to adjust for the linker
> issue below, but now I appear to have uncovered an issue with the static
> libraries which meta-clang generated under the SDK=E2=80=A6 (see below)=
=E2=80=A6
>
>
>
> The link command is attached as =E2=80=9Ctmp.txt=E2=80=9D.
>
>
>
> There are a lot of these being generated, this is but a subset=E2=80=A6
>
> Note:
>
> (1) =E2=80=9Cworkspace_3=E2=80=9D is a reference to my build area where I=
 built the STD
> SDK, why would this be here the SDK should be independent of this are, no=
 ?
>
>                 (2) the code with the undefined reference does appear to
> be missing the proper header file reference
>
>
>
>
>
>
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `CodeGenModule':
>
> */disk0/scratch/smonsees/yocto/**workspace_3*
> */builds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/c=
lang/lib*/CodeGen/CodeGenModule.cpp:114:
> undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) cons=
t'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
116:
> undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) cons=
t'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
118:
> undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) cons=
t'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `bool clang::Decl::hasAttr<clang::IFuncAttr>() const':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:5=
43:
> undefined reference to `clang::Decl::getAttrs() const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `clang::CodeGen::CodeGenModule::checkAliases()':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
304:
> undefined reference to `clang::Decl::getDefiningAttr() const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `clang::SectionAttr* clang::Decl::getAttr<clang::SectionAttr>=
()
> const':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:5=
39:
> undefined reference to `clang::Decl::getAttrs() const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `bool clang::Decl::hasAttr<clang::CUDAGlobalAttr>() const':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/include/clang/AST/DeclBase.h:5=
43:
> undefined reference to `clang::Decl::getAttrs() const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `clang::CodeGen::CodeGenModule::Release()':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
520:
> undefined reference to
> `clang::ASTContext::getTypeSizeInChars(clang::QualType) const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `clang::CodeGen::CodeGenModule::emitMultiVersionFunctions()':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
2788:
> undefined reference to
> `clang::ASTContext::forEachMultiversionedFunctionVersion(clang::FunctionD=
ecl
> const*, llvm::function_ref<void (clang::FunctionDecl*)>) const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
2819:
> undefined reference to `clang::FunctionDecl::isTargetMultiVersion() const=
'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function
> `clang::CodeGen::CodeGenModule::getFunctionLinkage(clang::GlobalDecl)':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
1188:
> undefined reference to
> `clang::ASTContext::GetGVALinkageForFunction(clang::FunctionDecl const*)
> const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
1188:
> undefined reference to
> `clang::ASTContext::GetGVALinkageForFunction(clang::FunctionDecl const*)
> const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/lib/CodeGen/CodeGenModule.cpp:=
1188:
> undefined reference to
> `clang::ASTContext::GetGVALinkageForFunction(clang::FunctionDecl const*)
> const'
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o):
> in function `clang::Module::getTopLevelModuleName() const':
>
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/work-s=
hared/llvm-project-source-9.0.1-r0/git/clang/include/clang/Basic/Module.h:4=
68:
> undefined reference to `clang::Module::getTopLevelModule() const'
>
>
>
>
>
> *From:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Sent:* Wednesday, May 5, 2021 7:25 AM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>; Khem Raj <
> raj.khem@gmail.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* RE: [yocto] #yocto cmake configurations
>
>
>
>
>
> All the libraries are under the SDK here:
>
>
>
>
> -L/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky=
-linux/usr/lib
>
>
>
> I need the DRM libraries to be picked up correctly, libclang.so may not b=
e
> required since I have all the static variations available, (added to whil=
e
> testing linker) I have yet to make it through entire build due to linker
> issue=E2=80=A6
>
>
>
> Steve
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Wednesday, May 5, 2021 6:44 AM
> *To:* Khem Raj <raj.khem@gmail.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto cmake configurations
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
>
>
> Khem:
>
>
>
> I only have the following libraries present for these:
>
>
>
> libclang.so
>
> libclang.so.9
>
> libdrm_intel.so
>
> libdrm_intel.so.1
>
> libdrm_intel.so.1.0.0
>
> libdrm.so
>
> libdrm.so.2
>
> libdrm.so.2.4.0
>
>
>
> I do generate the static (*.a) files for both LLVM & Clang and they appea=
r
> to all be present (No libclang.a was generated).
>
>
>
> Steve
>
>
>
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Tuesday, May 4, 2021 7:46 PM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto cmake configurations
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
> the cmd seems to pass --sysroot correctly so can you search in SDK sysroo=
t
> if you have libclang.a libdrm_intel.a and libdrm.a ?
>
>
>
> On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
>
> Yes, LLVM & Clang=E2=80=A6
>
>
>
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Tuesday, May 4, 2021 5:17 PM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto cmake configurations
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
> I see its using -rdynamic -static
>
> so next question is that do you have .a files in your sdk ?
>
>
>
> On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Attached=E2=80=A6
>
>
>
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Tuesday, May 4, 2021 2:36 PM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto cmake configurations
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
> can you post full linker cmd which is failing ?
>
>
>
> On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> My standard zeus SDK appears to have an issue linking in my applications
> dynamic libs=E2=80=A6
>
>
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -ldrm_intel
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -ldrm
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -lclang
>
> collect2: error: ld returned 1 exit status
>
> The libraries are under:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-l=
inux/usr/lib/
>
>
>
> My CMake build app does not appear to have an issue finding the files:
>
>
>
>
> DRM_INTEL_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/corei7-64-poky-linux/usr/lib/libdrm_intel.so
>
>
> DRM_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sy=
sroots/corei7-64-poky-linux/usr/lib/libdrm.so
>
>
>
> It appears to be an issue specifically with the ld=E2=80=A6
>
>
>
> LDFLAGS=3D " --sysroot=3D$ENV{OECORE_TARGET_SYSROOT}
> -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib
> -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib/x86_64-poky-linux/9.2.0 -lpthread
> -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
"
>
>
>
> It does not appear to be making use of =E2=80=93L=E2=80=99s=E2=80=A6
>
>
>
> Is there something I might look at/configure (i.e. add paths to search
> paths) ?
>
> Is there a simple test to validate tool ?
>
>
>
> Thanks,
>
> Steve
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Sunday, May 2, 2021 1:28 PM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] #yocto cmake configurations
>
>
>
> *External Email Alert*
>
> *This email has been sent from an account outside of the BAE Systems
> network.*
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
>
>
>
> I am using zeus, standard SDK, cmake=E2=80=A6
>
>
>
> Can I pre-configure the SDK to setup cmake package search paths ?, say fo=
r
> find_package, etc. (i.e. detecting external libraries/programs)=E2=80=A6
>
>
>
> The majority of my env is configuring properly, but I am finding cmake is
> setup for a standard linux env with regards to these types of searches, a=
nd
>
> I wanted the cmake built in to look at my SDK paths (first by default)
> when doing such things as detecting python interpreter, libraries, etc.
>
>
>
> I am working on third party package unaware of my SDK setup.
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>
>
>
>

--0000000000008d985c05c19b91c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">usually one uses llvm-config to get the libs and order is impo=
rtant too especially with static libs. Can you dump all .a files from clang=
 and see if its defined in some other .a which is either missing or present=
 after=C2=A0the faulting .a in linker cmd</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 5, 2021 at 12:53=
 PM Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baesystems.=
com">steven.monsees@baesystems.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2423910955019278320WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I made some modification in the cmake module=
s to adjust for the linker issue below, but now I appear to have uncovered =
an issue with the static libraries which
 meta-clang generated under the SDK=E2=80=A6 (see below)=E2=80=A6<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">The link command is attached as =E2=80=9Ctmp=
.txt=E2=80=9D.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">There are a lot of these being generated, th=
is is but a subset=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Note:
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">(1) =E2=80=9Cwor=
kspace_3=E2=80=9D is a reference to my build area where I built the STD SDK=
, why would this be here the SDK should be independent of
 this are, no ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (2) the code with the unde=
fined reference does appear to be missing the proper header file reference<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `CodeGenModule&#39;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/</span></b>=
<b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:red">=
workspace_3</span></b><b><span style=3D"font-size:11pt;font-family:Calibri,=
sans-serif;color:rgb(31,73,125)">/builds2/sbcb-default/tmp/work-shared/llvm=
-project-source-9.0.1-r0/git/clang/lib</span></b><span style=3D"font-size:1=
1pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">/CodeGen/CodeGenMo=
dule.cpp:114:
</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:r=
ed">undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) co=
nst&#39;</span><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib/Co=
deGen/CodeGenModule.cpp:116:
 undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) const=
&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib/Co=
deGen/CodeGenModule.cpp:118:
 undefined reference to `clang::ASTContext::toCharUnitsFromBits(long) const=
&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `bool clang::Decl::hasAttr&lt;clang::IFuncAttr&gt;() const&#39=
;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/i=
nclude/clang/AST/DeclBase.h:543: undefined
 reference to `clang::Decl::getAttrs() const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::CodeGen::CodeGenModule::checkAliases()&#39;:<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/l=
ib/CodeGen/CodeGenModule.cpp:304: undefined
 reference to `clang::Decl::getDefiningAttr() const&#39;<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::SectionAttr* clang::Decl::getAttr&lt;clang::SectionAtt=
r&gt;() const&#39;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/i=
nclude/clang/AST/DeclBase.h:539: undefined
 reference to `clang::Decl::getAttrs() const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `bool clang::Decl::hasAttr&lt;clang::CUDAGlobalAttr&gt;() cons=
t&#39;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/i=
nclude/clang/AST/DeclBase.h:543: undefined
 reference to `clang::Decl::getAttrs() const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::CodeGen::CodeGenModule::Release()&#39;:<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/l=
ib/CodeGen/CodeGenModule.cpp:520: undefined
 reference to `clang::ASTContext::getTypeSizeInChars(clang::QualType) const=
&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::CodeGen::CodeGenModule::emitMultiVersionFunctions()&#3=
9;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/l=
ib/CodeGen/CodeGenModule.cpp:2788: undefined
 reference to `clang::ASTContext::forEachMultiversionedFunctionVersion(clan=
g::FunctionDecl const*, llvm::function_ref&lt;void (clang::FunctionDecl*)&g=
t;) const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib/Co=
deGen/CodeGenModule.cpp:2819:
 undefined reference to `clang::FunctionDecl::isTargetMultiVersion() const&=
#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::CodeGen::CodeGenModule::getFunctionLinkage(clang::Glob=
alDecl)&#39;:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/l=
ib/CodeGen/CodeGenModule.cpp:1188: undefined
 reference to `clang::ASTContext::GetGVALinkageForFunction(clang::FunctionD=
ecl const*) const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib/Co=
deGen/CodeGenModule.cpp:1188:
 undefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang:=
:FunctionDecl const*) const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/yocto/workspace_3/builds2=
/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/lib/Co=
deGen/CodeGenModule.cpp:1188:
 undefined reference to `clang::ASTContext::GetGVALinkageForFunction(clang:=
:FunctionDecl const*) const&#39;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.=
0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-=
poky-linux/9.2.0/real-ld: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libclangCodeGen.a(CodeGenModule.cpp.o)=
:
 in function `clang::Module::getTopLevelModuleName() const&#39;:<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">/disk0/scratch/smonsees/yocto/workspace_3/bu=
ilds2/sbcb-default/tmp/work-shared/llvm-project-source-9.0.1-r0/git/clang/i=
nclude/clang/Basic/Module.h:468: undefined
 reference to `clang::Module::getTopLevelModule() const&#39;<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsee=
s@baesystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, May 5, 2021 7:25 AM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;; Khem R=
aj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gma=
il.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> RE: [yocto] #yocto cmake configurations<u></u><u></u></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">All the libraries are under the SDK here:<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">-L/disk0/scratch/smonsees/sbcbSTD_SDK/limws/=
3.0.4/sysroots/corei7-64-poky-linux/usr/lib<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I need the DRM libraries to be picked up cor=
rectly, libclang.so may not be required since I have all the static variati=
ons available, (added to while testing
 linker) I have yet to make it through entire build due to linker issue=E2=
=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Steve<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif">
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoct=
oproject.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Wednesday, May 5, 2021 6:44 AM<br>
<b>To:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<u></u><u></u></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:1150.4pt;border-right:1pt s=
olid red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:n=
one;padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-right:0in;margin-bo=
ttom:4pt;margin-left:0in;text-align:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sent=
 from an account outside of the BAE Systems network.<u></u><u></u></span></=
strong></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><span style=3D"font-size:9pt"><u></u><u></u></span></=
p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Khem:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I only have the following libraries present =
for these:
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libclang.so=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libclang.so.9<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm_intel.so<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm_intel.so.1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm_intel.so.1.0.0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm.so
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm.so.2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">libdrm.so.2.4.0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I do generate the static (*.a) files for bot=
h LLVM &amp; Clang and they appear to all be present (No libclang.a was gen=
erated).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Steve<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 7:46 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:15in;border-right:1pt solid=
 red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none;=
padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-right:0in;margin-bo=
ttom:4pt;margin-left:0in;text-align:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sent=
 from an account outside of the BAE Systems network.</span></strong><u></u>=
<u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
the cmd seems to pass --sysroot correctly so can you search in SDK sysroot =
if you have libclang.a=C2=A0</span><span style=3D"font-family:Arial,sans-se=
rif;color:rgb(31,73,125)">libdrm_intel.a and libdrm.a ?</span><span style=
=3D"font-family:&quot;Courier New&quot;"><u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US=
) via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystem=
s.com@lists.yoctoproject.org" target=3D"_blank">baesystems.com@lists.yoctop=
roject.org</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Yes, LLVM &amp; Clang=E2=80=A6</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><u></u><u></u=
></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"677" valign=3D"top" style=3D"width:15in;border-right:1pt solid=
 red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none;=
padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sent=
 from an account outside of the BAE Systems network.</span></strong><u></u>=
<u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I see its using=C2=A0</span><span style=3D"font-size:10.5pt;font-family:&qu=
ot;Courier New&quot;;color:black">-rdynamic -static</span><u></u><u></u></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black">so next question is that do you have .a files =
in your sdk ?</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (U=
S) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Attached=E2=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baes=
ystems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><u></u><u></u=
></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert<=
/span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"668" valign=3D"top" style=3D"width:15in;border-right:1pt solid=
 red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none;=
padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sent=
 from an account outside of the BAE Systems network.</span></strong><u></u>=
<u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
can you post full linker cmd which is failing ?</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (U=
S) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoc=
toproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>&=
gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0i=
n 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My standard zeu=
s SDK appears to have an issue linking in my applications dynamic libs=E2=
=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch/=
smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/=
x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm_intel</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch/=
smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/=
x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch/=
smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec/=
x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -lclang</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">collect2: error=
: ld returned 1 exit status</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The libraries a=
re under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-6=
4-poky-linux/usr/lib/</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My CMake build =
app does not appear to have an issue finding the files:</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_INTEL_LIBRA=
RIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/core=
i7-64-poky-linux/usr/lib/libdrm_intel.so</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_LIBRARIES:S=
TRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-=
poky-linux/usr/lib/libdrm.so</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It appears to b=
e an issue specifically with the ld=E2=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">LDFLAGS=3D</spa=
n>
<span style=3D"color:rgb(31,73,125)">&quot; --sysroot=3D$ENV{OECORE_TARGET_=
SYSROOT} -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT=
}/usr/lib/x86_64-poky-linux/9.2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It does not app=
ear to be making use of =E2=80=93L=E2=80=99s=E2=80=A6</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there someth=
ing I might look at/configure (i.e. add paths to search paths) ?</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there a simp=
le test to validate tool ?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thanks,</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Steve</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoct=
oproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" style=
=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;pa=
dding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:Calibri,sans-serif;c=
olor:red">External Email Alert</span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"660" valign=3D"top" style=3D"width:15in;border-right:1pt solid=
 red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none;=
padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center;background:white">
<strong><span style=3D"font-size:10pt;font-family:Calibri,sans-serif;color:=
black">This email has been sent from an account outside of the BAE Systems =
network.</span></strong><u></u><u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-ali=
gn:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.=C2=A0 For further information on how to spot phishing, acc=
ess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the O=
utlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am using zeus, standard SDK, cmake=E2=80=A6<u></u>=
<u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Can I pre-configure the SDK to setup cmake package s=
earch paths ?, say for find_package, etc. (i.e. detecting external librarie=
s/programs)=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The majority of my env is configuring properly, but =
I am finding cmake is setup for a standard linux env with regards to these =
types of searches, and<u></u><u></u></p>
<p class=3D"MsoNormal">I wanted the cmake built in to look at my SDK paths =
(first by default) when doing such things as detecting python interpreter, =
libraries, etc.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am working on third party package unaware of my SD=
K setup.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">=C2=A0<u></u><u></u></p=
>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000008d985c05c19b91c4--
