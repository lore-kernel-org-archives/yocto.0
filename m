Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.2089.1600273807548558248
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 09:30:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O4IytoUJ;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id cy2so3870463qvb.0
        for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2020 09:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GQNaWYHukekNxql1NVMGMPCPRYwil2Z5mxq3a/5g9mk=;
        b=O4IytoUJSm7Q40XkiGVbKmHpMtF1ql1zKUIv/KQ/luv5leaMCWbm0kHwVMx/TBQWqQ
         +Gux2s3HOQhCakfCEtuZFbl0anXg8ltRQgoiZXGerVT8/kFj40lY1qWKMtan87iQnC+8
         G3f+rqbTSPosHQF2U3RHOlfN5HtVRjLo449RSHXREtNLJIoHC5LMHq+gCobsFAdhsjDK
         SI8cZhgMomNalziQjE90YkUosQvF3I3EtbxQ+RXP5J/mMUKwKlqZ9aHkJnA/tlsV4AmJ
         JtBwe+/aqMBtxE7e2FcWnHfV42w1+ftLIh2Etz3X+pTmy0BC5eB//shLhNncme4dsbZB
         285g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GQNaWYHukekNxql1NVMGMPCPRYwil2Z5mxq3a/5g9mk=;
        b=NsDJdFscWnbTie528i4EmPT/yzYuDpKsAk+w0X4K0en5mBhWMDxhkOFyR2XEht8FTm
         pjJ3M13HJUbHGIVRvLSriGoyT8oE6WKfptEZua/Zh9jzTrn0pevVW97PoQIr/cSRt2G8
         A71iBE56mIJ5MMB0wTtDXtApcIvhwNphKTrgP49xqj0tpJuUIoUPGasw2CRZm3B0gpZx
         4+uGGeNB1LXprIVy6ipdiQABtqY2xmCvYdIBQGIhSxhOvKf2554/LBRkaIFHK9gMJMcp
         dowuhCuDzgM1gLJo0aO2gIxEonkvTrmzbZvAbmhxIpizhY0M6RFYFTKCuAklOv7WslwW
         0yLQ==
X-Gm-Message-State: AOAM531DelGqJNVkYGn3XuX0laWTVTQDKyVwq4KSg0TFvKtV84PySiAT
	VvJlQ2lfJjzBG9uS6wzhu+VtnIfDW+7Xeqs7Bkk=
X-Google-Smtp-Source: ABdhPJyq0MWlYocPY8+GxZLvA73V0Y+Kr5FlEJqvNjSuBZI6N9wfhtKZW/kTcw1oKbPi6bojIdwUhqcXULZArSdA734=
X-Received: by 2002:a0c:e892:: with SMTP id b18mr24347518qvo.5.1600273806403;
 Wed, 16 Sep 2020 09:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.1635489BF915C597.13893@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1635489BF915C597.13893@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 16 Sep 2020 09:29:40 -0700
Message-ID: <CAMKF1srDRo0fsqdFCSJs1+kyA+4+2=F0HRAMZ8U0ANEHDfq4zg@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you inspect the clang libs for these symbols?

On Wed, Sep 16, 2020 at 7:04 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
> I can see that libclang is being included...so, not sure why when linkin=
g an executable these references are missing...
>
> -----Original Message-----
> From: Monsees, Steven C (US)
> Sent: Wednesday, September 16, 2020 7:06 AM
> To: 'Khem Raj' <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: RE: [yocto] #yocto #sdk - meta-clang undefined references
>
>
>
> It should be linking in libclang , I will validate...
>
> Note performing 'nm' on libclang appear to show the majority present...
>
> Question: if I needed to include a library, what/how would I modify a re=
cipe under Yocto to be sure to include/link in the library ?
>
> Thanks,
> Steve
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Tuesday, September 15, 2020 5:06 PM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> On Tue, Sep 15, 2020 at 12:56 PM Monsees, Steven C (US) via lists.yoctop=
roject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > I am building meta-clang (sumo based 6.0.1), with cmake (3.8.2), all
> > under a standard SDK =E2=80=9Crocko based=E2=80=9D (2.4.1)=E2=80=A6
> >
> >
> >
> > Are the following routines accessible/supported under meta-clang ?
> >
> >
> >
> > libgbe.so: undefined reference to `clang::DiagnosticIDs::~DiagnosticID=
s()'
> >
> > libgbe.so: undefined reference to `clang::TextDiagnosticPrinter::TextD=
iagnosticPrinter(llvm::raw_ostream&, clang::DiagnosticOptions*, bool)'
> >
> > libgbe.so: undefined reference to `clang::DiagnosticsEngine::~Diagnost=
icsEngine()'
> >
> > libgbe.so: undefined reference to `clang::CompilerInvocation::CreateFr=
omArgs(clang::CompilerInvocation&, char const* const*, char const* const*, =
clang::DiagnosticsEngine&)'
> >
> > libgbe.so: undefined reference to `clang::CompilerInvocationBase::~Com=
pilerInvocationBase()'
> >
> > libgbe.so: undefined reference to `clang::PCHContainerOperations::PCHC=
ontainerOperations()'
> >
> > libgbe.so: undefined reference to `clang::CompilerInstance::createDiag=
nostics(clang::DiagnosticConsumer*, bool)'
> >
> > libgbe.so: undefined reference to `clang::DiagnosticsEngine::Diagnosti=
csEngine(llvm::IntrusiveRefCntPtr<clang::DiagnosticIDs>, clang::DiagnosticO=
ptions*, clang::DiagnosticConsumer*, bool)'
> >
> > libgbe.so: undefined reference to `clang::CodeGenOptions::CodeGenOptio=
ns()'
> >
> > libgbe.so: undefined reference to `clang::CompilerInstance::~CompilerI=
nstance()'
> >
> > libgbe.so: undefined reference to `clang::CompilerInstance::CompilerIn=
stance(std::shared_ptr<clang::PCHContainerOperations>, clang::MemoryBufferC=
ache*)'
> >
> > libgbe.so: undefined reference to `clang::EmitLLVMOnlyAction::EmitLLVM=
OnlyAction(llvm::LLVMContext*)'
> >
> > libgbe.so: undefined reference to `clang::CompilerInstance::ExecuteAct=
ion(clang::FrontendAction&)'
> >
> > libgbe.so: undefined reference to `clang::CompilerInvocationBase::Comp=
ilerInvocationBase()'
> >
> > libgbe.so: undefined reference to `clang::CompilerInstance::setInvocat=
ion(std::shared_ptr<clang::CompilerInvocation>)'
> >
> > libgbe.so: undefined reference to `clang::CodeGenAction::takeModule()'
> >
> > libgbe.so: undefined reference to `clang::DiagnosticIDs::DiagnosticIDs=
()'
> >
>
> are you linking this library with libclang ? secondly, also check that i=
ts not emitting bunch of libraries which needs to then individually linked
>
> >
> >
> > thanks,
> >
> > Steve
> >
> >
>
>=20
>
