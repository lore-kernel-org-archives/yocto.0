Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web09.7776.1630425549596757585
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 08:59:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqICsLzk;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id j13so22226073edv.13
        for <yocto@lists.yoctoproject.org>; Tue, 31 Aug 2021 08:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CeUFSLfQfVWFEy2YaBsuHJETT+H5fu2acJ/UQvhGdNM=;
        b=UqICsLzk8uALMURv9gOBm4xEqnb1/laIIBiW8iB7knFb3RKKkfgu3BOcogeHZSTpDv
         BZno2y2kRSxMgwfTNNhRn7ty7HVyXs1WXH2nrE9oRuaKBr2lCPNX+suovfRJ9XLN0Bi8
         8saA84cNXIxYP3NN9w1MLe4pWg0FCKuhnXFMoN5WfIKY8e08myEv757NEWpOIlkOUnv/
         DX0W5uPm50NXS36vbtQ3lU+z+XeXJyxhwM0oYULHI5d/c9r3gliZG8y3SfaANpP0g8Ww
         ntRinmKkEt1RlmK0TZUIIr7lhI3JZOMZfRGK2xcceCkDGrBoWSEZKmzi4jlRfXbMO6bZ
         wAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CeUFSLfQfVWFEy2YaBsuHJETT+H5fu2acJ/UQvhGdNM=;
        b=tu8/cDECAoZ06fK2gokHYS1EqxMOXr6Ks+wZNAhadgLtINcOD3sjIA3GiVb3i0Bqol
         NFYvjx9MLWI+Mz6hirDZ7BY4m29jQeWQdm8q6ijgTgZA0WOslqE6X1Hx7Rk8s/dUBbu5
         FHlvReTna/6d8cGYGz84Ne8NCb/344VCRCbwVNxa8oMHF2U1N0KK7PBob1L7fOVXNNP2
         xAl2dXnbXTCfU8EghJe86LjEBctr17sKwQpRDYkqQXvy17nI4LGwQyrnWzaMavZl6yyC
         2yY/wQVk+D1tyVXDZrWiJ5wYYRyNGvLLrkFf061sspLrf8/D9lh7TXBeGhJ7ndnDNlSy
         JC3w==
X-Gm-Message-State: AOAM533RtT1W2r3/tTxZhrPIt1fUR2ee/sqXk8l8WscBZOL15OSn9qoX
	LGCenW7ueb4i6d0KW88SdKL3uhac38BOt2vHpdQ=
X-Google-Smtp-Source: ABdhPJyxWeif192B7PEhoq2l+m8WCwDBOzseKQ6dMJM85UF/TzlhaHy4jijg+F6cRhoT37NsryUhtZGUeHsFvrkp5HU=
X-Received: by 2002:a05:6402:1d95:: with SMTP id dk21mr29099403edb.347.1630425543503;
 Tue, 31 Aug 2021 08:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
In-Reply-To: <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 31 Aug 2021 11:58:52 -0400
Message-ID: <CADkTA4MCDkW7RHq=EPrN5Qr2O=nJwmRBDnQ+RP-b3dTH_9RcLw@mail.gmail.com>
Subject: Re: [yocto] Binary compliance validation
To: anbelski@linux.microsoft.com
Cc: yocto <yocto@lists.yoctoproject.org>, Karissa Sanchez <kasanchez519@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 31, 2021 at 11:48 AM Anatol Belski
<anbelski@linux.microsoft.com> wrote:
>
> Hi,
>
> I'm writing to present an ABI compliance check mechanism for Poky
> recently developed to help improve the product stability. It is still
> an early work which however has already proven itself useful and thus
> the time seems right to ask for the community view.
>
> Binary compliance is an important metric, when a distrubition intends
> to provide stability guarantees to consumers outside the monolithic
> image build. For example, projects utilizing the SDK might not be in
> sync with the image builds from even the same branch. Even in stable
> branches where bugfixes, security patches or even non breaching
> upgrades have to flow in as necessary, there's is currently no
> verifiable mechainsm to ensure the binary compatibility long term.
>
> The currently implemented validation is based on libabigail and as such
> is focused on the ABI compliance. Libabigail is a tool developed by Red
> Hat and is in use for Fedora and RHEL RPM builds. Some companies are
> known to utilize libabigail to support the kernel maintanance (Linux
> kernel for Android). The meta layer contains a bbclass extending the
> buildhistory functionality with the ABI serialization and comparison.
> One buildhistory version taken as a baseline would serve the comparison
> with any follow up builds. The ABI changes detected are then reported.
>
> The handling routines in Poky are currently attached to the install
> task, which implies the baseline build needs to take place with the
> sstate disabled. The follow up buids can use sstate and in that case
> the postinstall routines will be invoked only if some change took place
> and thus do_install has been called.
>
> The implementation is made as a core Python module, which can be used
> in a Yocto layer or imported in any other script. The layer is
> available under:
> https://github.com/clio-project/meta-binaryaudit
>
> and the accompanying python module (which moves at some faster pace and
> is synchronized into the layer) and a command line tool:
> https://github.com/clio-project/python-binaryaudit
>
> The layer is yet an early work and the impluementation doesn't exhaust
> all the possible features of Poky and libabigail. However, it already
> proves itself helpful and is used for some real products to esure the
> ABI stability. Certainly the mechanisms and the integration can be
> improved.
>
> The future for this layer is open containing at least the topics below:
>
> - Binary size auditing.
> - Security auditing.
>
> As a shorter term serviceableness, the ABI compliance validation
> mechanism seems to be a useful tool in helping to keep promises on LTS,
> but would most likely also help maintaining non LTS branches. It would
> be great to receive any feedback, reviews and ideas in regard to meta-
> binaryaudit.

Out of curiosity, are you coordinating with the work sent in March by BMW ?

see the email with the subject: [yocto] Demo of abi checker hook with hashequiv

And the associated layers: https://github.com/bmwcarit/meta-abicompat
and https://github.com/bmwcarit/meta-abicompat-poky

Bruce

>
> Thanks!
>
> Anatol
>
>
> 
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
