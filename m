Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.2409.1591122015553119431
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 11:20:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AfUJg1OR;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id cv17so2220403qvb.13
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jun 2020 11:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qfLldP/RTFPsKLRMDH1Tw/Ao0t+kqHl26SSrOmcaT0s=;
        b=AfUJg1ORmXiEviaGsyuAgoTAW3hrEiaCRzmFUB14HpYMOFCDm64M8Lt3Br6i6z0ON8
         aiWAgn+8JR1HTHItpXAIyNfOwC/ZU9xrxnOlrTjmSQqXW15XBT5dQdmu2r3HQieoteFP
         FFWUBISKwxuiGx8NVTPFkpzPIDJkNTtSvwr/4lSiS2kLwB50H9e6xAbimpaceNRRDeC2
         EEkMJOlXQgd5b4LUkJCdOHuLyrS61u2vLHpQkjnv4WzAI+VNQ6q3R1ATeeruSc1RSxUo
         vztXW1VpU4D8zxE1ABacTCx3RJTyIwoim2G8lrzMqOVBqVQqsLhT8Q9w/Ml6m49CgdMj
         ZSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qfLldP/RTFPsKLRMDH1Tw/Ao0t+kqHl26SSrOmcaT0s=;
        b=O8wqiWioJqkqdTXgQgOanjDRp8VqlJOARvYQDiRNDyiDGnGpQKH9c2DsP74S7YWj9N
         9n60l8T+kfInEWTaP1aQpcFN+LmAMSdquW73IzunmFRtdwkaj8D91tKQpOGgLf2zR3Wt
         ve0VoECU2MeBmi6AZ8+KndsaiFdFNNBuMlaj/1UPXDwwy3gdyLxe+0D96YB+dr42c9Ig
         j6LQyp3MGrsod16YiiU6YMJor4L12MDqnkvGoF1ofu8U0rjHRuTPD2hKPiCU7nVgrh5E
         U0fchjGOUDxWHTjBApsVHJFIKS9ePIHgmqQIdZlzim/SLfwHNbtprrC98mOYbFeT3cEe
         ihzw==
X-Gm-Message-State: AOAM532GF33zu84AdX0Iyk2as8oM+CLHKfgLJ8hdhCAFShCjd1gbqWjl
	x2ivWd0z9q/6WR0WrP4uMFiZqw+fUH59iLeq1wE=
X-Google-Smtp-Source: ABdhPJwYDmB9e1sWYSP7jFOOMcgbX0fHcOSJQyC48UH/Iu/nqmmmxmjZrmkZz2lcCiz7cfeVtrCm17JC6B2xMz9u3Mc=
X-Received: by 2002:a0c:f888:: with SMTP id u8mr22297389qvn.130.1591122014397;
 Tue, 02 Jun 2020 11:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <1614746D82793AEE.8494@lists.yoctoproject.org> <1614866B049B125B.10126@lists.yoctoproject.org>
 <MN2PR20MB254289B326D91A3401BECCB8BB8B0@MN2PR20MB2542.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB254289B326D91A3401BECCB8BB8B0@MN2PR20MB2542.namprd20.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Jun 2020 11:19:48 -0700
Message-ID: <CAMKF1sqf_jVLznvOb83LkqnR0DEHKz5q0iU5rDWE6=BNmxi+uQ@mail.gmail.com>
Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause for SIGSEGV
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 2, 2020 at 6:52 AM Bryan Evenson <bevenson@melinkcorp.com> wrot=
e:
>
> All,
>
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Bryan Evenson via lists.yoctoproject.org
> > Sent: Monday, June 1, 2020 4:46 PM
> > To: Bryan Evenson <bevenson@melinkcorp.com>;
> > yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause f=
or
> > SIGSEGV
> >
> > All,
> >
> > > -----Original Message-----
> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > > Behalf Of Bryan Evenson via lists.yoctoproject.org
> > > Sent: Monday, June 1, 2020 11:16 AM
> > > To: yocto@lists.yoctoproject.org
> > > Subject: [yocto] Eclipse GDB setup issues; can't determine cause for
> > SIGSEGV
> > >
> > > All,
> > >
> > > I have a AT91SAM9G25 system that has been idle for a couple years
> > (running
> > > morty, yocto version 2.2.1) and I am working on updating to the late=
st
> > Yocto
> > > production branch.  Before I get there, I'm trying to confirm the ol=
d setup
> > > and I'm having problems with remote debugging.  I know there have be=
en
> > > changes since yocto version 2.7 for debugging support, so I want to =
make
> > > sure I can get the old setup to work first prior to changing everyth=
ing.  I'm
> > > looking for assistance in tracking down my debug issues.
> > >
> > > My stable production image is based off of core-image-minimal, with =
a few
> > > additional packages for our proprietary applications (proprietary
> > applications
> > > are written in C).  I also have a development image, based off of ou=
r
> > > production image, with the following additions:
> > >
> > > IMAGE_FEATURES +=3D "package-management dev-pkgs eclipse-debug
> > allow-
> > > empty-password empty-root-password"
> > >
> > > IMAGE_INSTALL +=3D " \
> > >     #same additional packages as production image  \
> > >     #"-dbg" version of proprietary applications \
> > >     gdbserver \
> > > "
> > > # Strip python from the image to reduce the image size
> > > PACKAGE_EXCLUDE =3D "python"
> > >
> > > I have the Eclipse Yocto plugin installed and it is setup to use the=
 SDK that I
> > > have built based on the development image.  I've confirmed that I ca=
n start
> > a
> > > debug session on one of our proprietary applications.  I can set bre=
akpoints
> > > and run the debugger.  However, the debugger always stops at the fir=
st call
> > > to uuid_compare with a  SIGSEGV.  The last line in the call stack st=
ates
> > > "<symbol is not available> 0x00000000".  From my understanding, the =
stack
> > > pointer is getting set to NULL when uuid_compare is getting called. =
 If I stop
> > > the debugger and just run the application on the hardware, the appli=
cation
> > > runs without errors.  I have confirmed with syslog messages that I d=
o not
> > > have the same NULL stack pointer issue when I run the application ou=
tside
> > of
> > > the debugger.
> > >
> > > Any suggestions on where to start looking?  I don't see any obvious
> > possible
> > > causes and I don't know where to start looking for the problem.
> > >
> >
> > On a whim, I changed in my code:
> >     if(uuid_compare(uuid1, uuid2) =3D=3D 0)
> >
> > To:
> >     If(memcmp(uuid1, uuid2, 16) =3D=3D 0)
> >
> > After this change the problematic line of code worked just fine.  The
> > debugger worked fine until I got to the next spot in my code that call=
ed
> > uuid_compare.  At the next call to uuid_compare I got the same SIGSEGV
> > error I had before.  Something is clearly a problem with calling uuid_=
compare.
> > However, I'm using several other functions from the uuid library
> > (uuid_is_null, uuid_parse, uuid_unparse for a few) and none of them ar=
e
> > causing problems.  I don't think it's a problem with the input paramet=
ers
> > because I'm passing the same UUIDs to memcomp as I did to uuid_compare=
.
> > Has anyone ever seen only one function from a library cause problems l=
ike
> > this?
>
> I don't know if this is related, but I noticed that the debugger cannot =
step into any library functions.  For example, I tried stepping into strncp=
y, and the debugger stepped over the function call.  I switched to assembly=
 instruction stepping mode, then when I stepped into strncpy I received the=
 message "No source available for strncpy@plt".  I continued single steppin=
g and was able to step through all the assembly code for strncpy.  I then i=
nstruction single stepped into uuid_compare, and I was able to single step =
without issue until I got to the following instruction:
>     bx r12
> When this instruction is called, r12 is 0.  I'm a little confused why th=
is library function call is failing in this manner (when all the input para=
meters to uuid_compare are valid), and I'm not sure why I can't source step=
 through any library functions.  If anyone has any suggestions on either is=
sue, please let me know.

It seems you are using thumb1 ISA, and usually, there is some sort of
veneer code to
switch from arm mode to thumb mode which might employ this kind of
indirect jumps
perhaps in e2fsprogs recipe, you can add INHIBIT_PACKAGE_STRIP =3D "1" tem=
porarily
and load the image, perhaps that can give you better debugging
experience, but it seems
there is a code-gen bug as it seems.

>
> Thanks,
> Bryan
>
> >
> > > Thanks,
> > > Bryan
>
>=20
