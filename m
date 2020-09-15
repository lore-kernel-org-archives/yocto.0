Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web12.7252.1600203983990580195
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 14:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X7GN7LvP;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id db4so2473791qvb.4
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 14:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YeKYEj9ZPQUFdGCrJUdN0I/7IRyozSeaQcpVPhReXTY=;
        b=X7GN7LvPLsLemYksVaDzpi7WVImD5Ce7eH9TW6jGOeFsT8UyWtH6i/RDmb/XBVTJDA
         kNfx7QlqEVG1UjIa1iFJBVFg809BxBUi022gfPjbK//XL8MzGXSM8G55jOzwhWFUOHJK
         kLuA+QNKEUdB50ZMxYqHXr0OgIEIdTq8RujoRU7/L3Ebi05V/a9JMgZwVbZr5GWx7N1D
         E1V7Qnu2CB1N6fTQL9JUIwFt6tCf0wjAH7n9vfy6m/L+debEQUMsjbdSoGAfQjNnfKXy
         vDKMSDZK6izs9OMwuXPpf7zXmJcuOVsGwtA1r9U26dv9u0U4L2sc1AXS0UHiv4Aan/cV
         RmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YeKYEj9ZPQUFdGCrJUdN0I/7IRyozSeaQcpVPhReXTY=;
        b=VtL0D+6Rc4KqBTKcGmyn+1ZpAff4us7NcoPqTbc4LkM+NqWM1y/r42cH9gr/CwJ8bx
         pPu2lH90f6XR8OaARhPJ4bRGTls2ILBJWF6DnCD80GDdc1ZWLW3M39AISnKbm5CssCYX
         KGFvqr7pi1Bk+uo55I8hxasw3DujZ9Z+NS0nw0XbMgN6x26pgzyid6O0DSiXImFPcvrD
         x3NJg9VhEgceZvBlwCkKJtHWCHUQ0elp8fHzM5/l9omObH1CaGxEbJMpV9zSqDYZ2RzE
         ttDGmipHd0RoPCkLNYtuO0raL30/l2ZXGrFNd3W9oZmQTtSoVj7NebtFggza+qG9Qitr
         adLQ==
X-Gm-Message-State: AOAM533QqvfbKKjZJOc+Pz4D6DXXMoPkL0SemsOzUxgCPxhWpLYl1ter
	ysluFCMaN75qQy3N/rWAFFJ2n7XfXnRGpPyfTvc=
X-Google-Smtp-Source: ABdhPJyg9CFkOIQ773gCuGeHrYXXTWPl1a2bgp39zsJ2lPvakEWyBwouxRRU7n48wug/FM0bykc5N1SJEY/wwpDFbdI=
X-Received: by 2002:a05:6214:7a1:: with SMTP id v1mr20445577qvz.19.1600203982944;
 Tue, 15 Sep 2020 14:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16350D3B74FFA3D6.7867@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16350D3B74FFA3D6.7867@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 15 Sep 2020 14:05:56 -0700
Message-ID: <CAMKF1sohUwxX+-7953QE29_HOFTfvuL6o7_d9TMvjBnSN3QW1A@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 15, 2020 at 12:56 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I am building meta-clang (sumo based 6.0.1), with cmake (3.8.2), all und=
er a standard SDK =E2=80=9Crocko based=E2=80=9D (2.4.1)=E2=80=A6
>
>
>
> Are the following routines accessible/supported under meta-clang ?
>
>
>
> libgbe.so: undefined reference to `clang::DiagnosticIDs::~DiagnosticIDs(=
)'
>
> libgbe.so: undefined reference to `clang::TextDiagnosticPrinter::TextDia=
gnosticPrinter(llvm::raw_ostream&, clang::DiagnosticOptions*, bool)'
>
> libgbe.so: undefined reference to `clang::DiagnosticsEngine::~Diagnostic=
sEngine()'
>
> libgbe.so: undefined reference to `clang::CompilerInvocation::CreateFrom=
Args(clang::CompilerInvocation&, char const* const*, char const* const*, cl=
ang::DiagnosticsEngine&)'
>
> libgbe.so: undefined reference to `clang::CompilerInvocationBase::~Compi=
lerInvocationBase()'
>
> libgbe.so: undefined reference to `clang::PCHContainerOperations::PCHCon=
tainerOperations()'
>
> libgbe.so: undefined reference to `clang::CompilerInstance::createDiagno=
stics(clang::DiagnosticConsumer*, bool)'
>
> libgbe.so: undefined reference to `clang::DiagnosticsEngine::Diagnostics=
Engine(llvm::IntrusiveRefCntPtr<clang::DiagnosticIDs>, clang::DiagnosticOpt=
ions*, clang::DiagnosticConsumer*, bool)'
>
> libgbe.so: undefined reference to `clang::CodeGenOptions::CodeGenOptions=
()'
>
> libgbe.so: undefined reference to `clang::CompilerInstance::~CompilerIns=
tance()'
>
> libgbe.so: undefined reference to `clang::CompilerInstance::CompilerInst=
ance(std::shared_ptr<clang::PCHContainerOperations>, clang::MemoryBufferCac=
he*)'
>
> libgbe.so: undefined reference to `clang::EmitLLVMOnlyAction::EmitLLVMOn=
lyAction(llvm::LLVMContext*)'
>
> libgbe.so: undefined reference to `clang::CompilerInstance::ExecuteActio=
n(clang::FrontendAction&)'
>
> libgbe.so: undefined reference to `clang::CompilerInvocationBase::Compil=
erInvocationBase()'
>
> libgbe.so: undefined reference to `clang::CompilerInstance::setInvocatio=
n(std::shared_ptr<clang::CompilerInvocation>)'
>
> libgbe.so: undefined reference to `clang::CodeGenAction::takeModule()'
>
> libgbe.so: undefined reference to `clang::DiagnosticIDs::DiagnosticIDs()=
'
>

are you linking this library with libclang ? secondly, also check that
its not emitting bunch of libraries which needs to then individually
linked

>
>
> thanks,
>
> Steve
>
>=20
