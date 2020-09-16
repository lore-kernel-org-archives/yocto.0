Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web12.2224.1600273967540594081
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 09:32:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ai3sFWI9;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id g3so6575828qtq.10
        for <yocto@lists.yoctoproject.org>; Wed, 16 Sep 2020 09:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Gd5ujzFq5g5Picf0mlMQSYlKAdsTophLLUMJItYCdMU=;
        b=Ai3sFWI9LhTS6N+jItYBoyx6fInzuvewlVHgOhrn8Li9BAbN2WeL1c3z+ExT42jkPr
         /2ZlaDqxBTN3SdRyAywngNc/ZI482rJLVho/ZoEY0TQzMdGeWZViEAHHTv8ilbNYX1oH
         DJMzcxhJos21hdEmaZXeO0U//Z1BNd2P5FxVCekzFhAfc2xCMt6qRZaU6cV3yCTGd9oM
         MZLNBaNYkUEepYpBLgXNXXNA2StRqwM80fLSVNnB252DLilMEsNwwuqu7efsyvy84XUl
         X9V+GVoGoq28ojJOBYhVxbtZKDKigHhZysUA0wKkKmYu16l9hZ/GufA/udcr8Tt3rx8d
         tlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Gd5ujzFq5g5Picf0mlMQSYlKAdsTophLLUMJItYCdMU=;
        b=QpFo5yNiambf8Xty8++T93bs48t1q9+wNU2dQAeO/b2tiFzrPkTkmTFT6rvLp3F8hF
         qJRZQrASwUpNn0VduX4hHCLN+AO4LWGjJqIKVa5+VdZY0pI0Q5qXYAXKhfGuQqPsv9P6
         iO4XTDgIN+KI1fD5G0E7uPr8j99dhoXYv+irqQt/0jFCy36ol3gBas6qGXXe7jwZixCN
         yYY10hi7Gj3vG4q0vbLeDzZ8+XP/hSFXpYELbr6g1fSDpFq0bQcnkHw1qdwzrx8BMPcq
         /ZY0jP/TaXnhIdCEzRPD8pKrTI0jcJs/YSm5YZRNcDqB7TvKL643O4nbB2U4GaLyAmZB
         6COA==
X-Gm-Message-State: AOAM530Zp8BCh2CQumFK8oG5rci3wgfmnY/MK1DsacossJ4HfzcMGM2A
	uQriuP1uKXIKk34pe4c/NEgFkGP64o3laMaXv9c=
X-Google-Smtp-Source: ABdhPJyFObzatHfTRm9y8f+AF8Ky3yyLklA43jhpI8NqEcYgLD0OSIa3+fehEVWmMe7BnbP89otCvSxU89MnZkoUz1A=
X-Received: by 2002:ac8:544f:: with SMTP id d15mr19261868qtq.378.1600273966632;
 Wed, 16 Sep 2020 09:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sohUwxX+-7953QE29_HOFTfvuL6o7_d9TMvjBnSN3QW1A@mail.gmail.com>
 <5f61f1b4.1c69fb81.6463d.72cfSMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <5f61f1b4.1c69fb81.6463d.72cfSMTPIN_ADDED_MISSING@mx.google.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 16 Sep 2020 09:32:20 -0700
Message-ID: <CAMKF1sq8OxLu_Pyfbfi5Ww-i2-QttiCWEZ-SU+agW5D46vstGA@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

that means your link step is not linking libclang properly into your
app, perhaps change the order so -lclang appears last

On Wed, Sep 16, 2020 at 4:06 AM Monsees, Steven C (US)
<steven.monsees@baesystems.com> wrote:
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
> >=20
