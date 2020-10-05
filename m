Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.151.1601919702578743579
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 10:41:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e4cIc9dI;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id q5so12931221qkc.2
        for <yocto@lists.yoctoproject.org>; Mon, 05 Oct 2020 10:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GI0QAA0x13ykSpKbfMdpnWxf14thlECJZriJOWh2ixk=;
        b=e4cIc9dI90qwaM/QZQy2y3XgQNCPLU+4SUB+byRP5LDKDwieP0GUuTqfjpthDryHTO
         Fya+fkkwTmH1vqio02q05oIxWWEfEHrhu2n7zoF2P4Z5maruwDaTq2ilxjS2LXFLEctV
         Bn4W0qM/2aDCBQZu0i61PQnj5ydggxM93AJqfISHGvTzu+TTUaaZJNxyt/NcEnzQvE/M
         lf8v/mUXMVlSEVl0HfIx1n89IGSQ6HAVeXovT34omrA8pogH+EfErO+Ize8n9QmDp3QT
         yUmmIDI+xCQjY2nC8ZJX7nmNpGOmNLJsrDla5hqPbeufpsmL69qF+ue5PVWNAB8HXmeS
         6RHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GI0QAA0x13ykSpKbfMdpnWxf14thlECJZriJOWh2ixk=;
        b=Q+535qKq/9EQHutblV+GV1mbzxV7OjNysNKaNnMETixOzg14pc1Y66SQJDeR1eH6Zm
         STybreI1SC3x41VxC8Yn6w2kDTW8nwev+wVQnqW7za7UMxRHw52fDhmq0pZZpa2hgwSU
         zJykTrIRtEfPH1+V5rJEeL/jDnqcvlBzHC++xVovZQtnRhacAjS5HB4ZsVgfZAsGXi7o
         Cbzy1nF5n69YqznbhVZNpQD6I86pHwn/6Dv5VXmu7FQXHe84aVBPEMxDsVPdXmXqExYr
         2h1g8faVGMzqATHhHWcaDRZGa6z9iw4sOH5qayZjLTGAqYv7pbY0zEPYW9VWYeUbKJxi
         2spg==
X-Gm-Message-State: AOAM532x9rsgE31K19kBFozoI5RXOTvakZcDOOew3Pp3aXp81tyx+S7o
	HijxleOijLDP/x8/yU+aWIb+DOwjtYl4G9uhAX0=
X-Google-Smtp-Source: ABdhPJz3mb8PJwH1TqSIjPE65bAlaEFkq7yq4JHXpckTYXgJnvdzZAsXd+jE9BucbPyGzAr2/yLK3215NWJvzkF1aKQ=
X-Received: by 2002:a37:c408:: with SMTP id d8mr1090951qki.71.1601919701488;
 Mon, 05 Oct 2020 10:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
 <CAMKF1sp5vcZKJmO474gRvwNaUbtGiSFW-nAYGR5c=ROTbJsCYQ@mail.gmail.com> <AM6PR07MB618112CCAFD0E5531F60E232D20C0@AM6PR07MB6181.eurprd07.prod.outlook.com>
In-Reply-To: <AM6PR07MB618112CCAFD0E5531F60E232D20C0@AM6PR07MB6181.eurprd07.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 5 Oct 2020 10:41:15 -0700
Message-ID: <CAMKF1sqR9Qica3H36RTV539tqVpRavGOYbfT7uQaW8-oRYhHag@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk How to add *-dev packages to sdk installer and not to target rootfs
To: Henrik Haugaard Jensen <hhj@trackman.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps extensible SDK is a better fit for you when you are building
custom rootfs with SDK.

On Sun, Oct 4, 2020 at 11:18 PM Henrik Haugaard Jensen <hhj@trackman.com> =
wrote:
>
> The target rootfs is the image which "-c populate_sdk" is build from. I =
have actually modified the populate_sdk recipe to include the rootfs in the=
 sdk together with the sysroots for target and host. In this way the applic=
ations can be added to the rootfs to generate the complete fw for the devic=
e - we do not update applications with individual packages but as a complet=
e image. Our rootfs is dd'ed to the partition and is read only for maximum =
reliability.
> It would be nice if *-dev packages could be specified to included in the=
 sdk sysroots only since we do not need them in the taget rootfs.
>
> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Friday, 2 October 2020 19.28
> To: Henrik Haugaard Jensen <hhj@trackman.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #sdk How to add *-dev packages to sdk instal=
ler and not to target rootfs
>
> On Thu, Oct 1, 2020 at 11:58 PM <hhj@trackman.com> wrote:
> >
> > We use the "standard" SDK to provide a basic linux filesystem includin=
g libraries  to be used for application development (based on cmake) in the=
 SDK. So we need the *-dev packages for the libraries to be available in th=
e target "sysroot" in the SDK but not in the target rootfs. How can this be=
 configured?
>
> standard SDK can only build applications and it has -dev packages includ=
ed in it per your image ( if you built SDK with -cpopulate_sdk) where does =
target rootfs come from ?
>
> > BR's
> > Henrik
> >=20
> >
