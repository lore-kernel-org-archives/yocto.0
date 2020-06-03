Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.1303.1591206377735414247
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 10:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D3jWyCQ6;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id y1so2758053qtv.12
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 10:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YsytBR4MCNvTW7uGmnC0Z///cy6zuDE4DHVXicbABM0=;
        b=D3jWyCQ6zPBjge0Gp0J9BOUu9gOrnUqBHeEKAOqv+ZUytvZh/GXHTEcuI6ezTGS9VS
         BgOEWWXpPdYoaWGgyQ+om5w7H/wRSp5GRXfnsMJV/I0hreV74fdE1NqXRXd+aK+Bph5n
         ooeLmOUSwIuK8uit3yWjWi6d0iiUeUdM9unf826eirZe/qWpZGRPLUAHW2J/7MNnYRvw
         y5KmqYi06j9PJrfyZRXKe22dyO2cSjdeQ2pAsopESIuWlEHvrp55MDPvtWBj4TrSnxi2
         u/wjnsBDwgNZF6Pl4gjDBeD8oNms/lGKYzvMp8U6s8cL98JvNmjnyZsElB9vZsmqKMpF
         fDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YsytBR4MCNvTW7uGmnC0Z///cy6zuDE4DHVXicbABM0=;
        b=lSDcR0P0dfP/v0iNyWJ6V83VLS3vbC4nEMzorDcvCmlQNUBG1pmun7rYSttIHKgRwp
         7aIY9gGTBSO4VGEq+4hX1Fq+yM3ib2UU1NY1QKGuWr9sMDC4vkIKXLOUKyEHPXeaAat7
         PrvrogtNIzYC2sfkpmFYm1RGXazWmquju5N8gJfhKezYX55ei7hMS1D5EI+9dQBSSrE9
         VZUfbREG6CuGBbeZDzHgbj5R5B9umBVWVVI7RZtra9M0Q4DD8+zMRRTMUoMgSPEU13Jl
         O5l7ZfLIyTDjhwI/qYs9cEIx+kwA4Eyclh9w8R9XxF6KgCKxCCLYbOymkwW/6MHU3mP1
         CBrA==
X-Gm-Message-State: AOAM530S1vUPxikVdHy9ZF751mdIV74vKynWoO0HtPOmn0fcdEzCnD6X
	kQgc+hw5iPmNDuKoOuPApit3Mnun9lIJidt2d5o=
X-Google-Smtp-Source: ABdhPJw2dZEzk/J8zGVMi5rnXewZHkTYk2k1RL2kwFOLSEMJJr0KiQSswqGBNQGAldQ+8Ds6VSRW+16/X3LuJSY+8T0=
X-Received: by 2002:ac8:5148:: with SMTP id h8mr464262qtn.316.1591206376618;
 Wed, 03 Jun 2020 10:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <1614746D82793AEE.8494@lists.yoctoproject.org> <1614866B049B125B.10126@lists.yoctoproject.org>
 <MN2PR20MB254289B326D91A3401BECCB8BB8B0@MN2PR20MB2542.namprd20.prod.outlook.com>
 <CAMKF1sqf_jVLznvOb83LkqnR0DEHKz5q0iU5rDWE6=BNmxi+uQ@mail.gmail.com> <DM6PR20MB254012C2D0907779B8D83202BB880@DM6PR20MB2540.namprd20.prod.outlook.com>
In-Reply-To: <DM6PR20MB254012C2D0907779B8D83202BB880@DM6PR20MB2540.namprd20.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 3 Jun 2020 10:45:50 -0700
Message-ID: <CAMKF1sopMPr71axFPL63xMDpFGjUyDbcc-HjEHXwcKeCPDc2Hw@mail.gmail.com>
Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause for SIGSEGV
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 3, 2020 at 9:41 AM Bryan Evenson <bevenson@melinkcorp.com> wrot=
e:
>
> Khem,
>
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Tuesday, June 2, 2020 2:20 PM
> > To: Bryan Evenson <bevenson@melinkcorp.com>
> > Cc: yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause f=
or
> > SIGSEGV
> >
> > On Tue, Jun 2, 2020 at 6:52 AM Bryan Evenson <bevenson@melinkcorp.com>
> > wrote:
> > >
> > > All,
> > >
> > >
> > > > -----Original Message-----
> > > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> =
On
> > > > Behalf Of Bryan Evenson via lists.yoctoproject.org
> > > > Sent: Monday, June 1, 2020 4:46 PM
> > > > To: Bryan Evenson <bevenson@melinkcorp.com>;
> > > > yocto@lists.yoctoproject.org
> > > > Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cau=
se
> > > > for SIGSEGV
> > > >
> > > > All,
> > > >
> > > > > -----Original Message-----
> > > > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org=
>
> > > > > On Behalf Of Bryan Evenson via lists.yoctoproject.org
> > > > > Sent: Monday, June 1, 2020 11:16 AM
> > > > > To: yocto@lists.yoctoproject.org
> > > > > Subject: [yocto] Eclipse GDB setup issues; can't determine cause
> > > > > for
> > > > SIGSEGV
> > > > >
> > > > > All,
> > > > >
> > > > > I have a AT91SAM9G25 system that has been idle for a couple year=
s
> > > > (running
> > > > > morty, yocto version 2.2.1) and I am working on updating to the
> > > > > latest
> > > > Yocto
> > > > > production branch.  Before I get there, I'm trying to confirm th=
e
> > > > > old setup and I'm having problems with remote debugging.  I know
> > > > > there have been changes since yocto version 2.7 for debugging
> > > > > support, so I want to make sure I can get the old setup to work
> > > > > first prior to changing everything.  I'm looking for assistance =
in tracking
> > down my debug issues.
> > > > >
> > > > > My stable production image is based off of core-image-minimal,
> > > > > with a few additional packages for our proprietary applications
> > > > > (proprietary
> > > > applications
> > > > > are written in C).  I also have a development image, based off o=
f
> > > > > our production image, with the following additions:
> > > > >
> > > > > IMAGE_FEATURES +=3D "package-management dev-pkgs eclipse-debug
> > > > allow-
> > > > > empty-password empty-root-password"
> > > > >
> > > > > IMAGE_INSTALL +=3D " \
> > > > >     #same additional packages as production image  \
> > > > >     #"-dbg" version of proprietary applications \
> > > > >     gdbserver \
> > > > > "
> > > > > # Strip python from the image to reduce the image size
> > > > > PACKAGE_EXCLUDE =3D "python"
> > > > >
> > > > > I have the Eclipse Yocto plugin installed and it is setup to use
> > > > > the SDK that I have built based on the development image.  I've
> > > > > confirmed that I can start
> > > > a
> > > > > debug session on one of our proprietary applications.  I can set
> > > > > breakpoints and run the debugger.  However, the debugger always
> > > > > stops at the first call to uuid_compare with a  SIGSEGV.  The la=
st
> > > > > line in the call stack states "<symbol is not available>
> > > > > 0x00000000".  From my understanding, the stack pointer is gettin=
g
> > > > > set to NULL when uuid_compare is getting called.  If I stop the
> > > > > debugger and just run the application on the hardware, the
> > > > > application runs without errors.  I have confirmed with syslog
> > > > > messages that I do not have the same NULL stack pointer issue wh=
en
> > > > > I run the application outside
> > > > of
> > > > > the debugger.
> > > > >
> > > > > Any suggestions on where to start looking?  I don't see any
> > > > > obvious
> > > > possible
> > > > > causes and I don't know where to start looking for the problem.
> > > > >
> > > >
> > > > On a whim, I changed in my code:
> > > >     if(uuid_compare(uuid1, uuid2) =3D=3D 0)
> > > >
> > > > To:
> > > >     If(memcmp(uuid1, uuid2, 16) =3D=3D 0)
> > > >
> > > > After this change the problematic line of code worked just fine.
> > > > The debugger worked fine until I got to the next spot in my code
> > > > that called uuid_compare.  At the next call to uuid_compare I got
> > > > the same SIGSEGV error I had before.  Something is clearly a probl=
em
> > with calling uuid_compare.
> > > > However, I'm using several other functions from the uuid library
> > > > (uuid_is_null, uuid_parse, uuid_unparse for a few) and none of the=
m
> > > > are causing problems.  I don't think it's a problem with the input
> > > > parameters because I'm passing the same UUIDs to memcomp as I did =
to
> > uuid_compare.
> > > > Has anyone ever seen only one function from a library cause proble=
ms
> > > > like this?
> > >
> > > I don't know if this is related, but I noticed that the debugger can=
not step
> > into any library functions.  For example, I tried stepping into strncp=
y, and the
> > debugger stepped over the function call.  I switched to assembly instr=
uction
> > stepping mode, then when I stepped into strncpy I received the message
> > "No source available for strncpy@plt".  I continued single stepping an=
d was
> > able to step through all the assembly code for strncpy.  I then instru=
ction
> > single stepped into uuid_compare, and I was able to single step withou=
t issue
> > until I got to the following instruction:
> > >     bx r12
> > > When this instruction is called, r12 is 0.  I'm a little confused wh=
y this library
> > function call is failing in this manner (when all the input parameters=
 to
> > uuid_compare are valid), and I'm not sure why I can't source step thro=
ugh
> > any library functions.  If anyone has any suggestions on either issue,=
 please
> > let me know.
> >
> > It seems you are using thumb1 ISA, and usually, there is some sort of =
veneer
> > code to switch from arm mode to thumb mode which might employ this kin=
d
> > of indirect jumps perhaps in e2fsprogs recipe, you can add
> > INHIBIT_PACKAGE_STRIP =3D "1" temporarily and load the image, perhaps =
that
> > can give you better debugging experience, but it seems there is a code=
-gen
> > bug as it seems.
> >
>
> Thanks for the suggestions.  I tried these suggestions and it didn't hel=
p. I replaced all the uuid_compare calls in my code and I was able to do so=
me debugging.  But then I started having other odd problems with SIGABRT an=
d SIGSEGV errors at points that normally work.
>
> I then merged in some code from another developer which is using an olde=
r SDK.  I wasn't able to build any more and determined the makefiles and co=
nfigure needed updated (autotools based program).  A simple autoreconf didn=
't fix it; I had to invoke aclocal, autoconf, automake and then autoreconf.=
  After all these changes, I can now debug my application without it crashi=
ng.  The uuid_compare calls are working just fine and I've been able to run=
 the debugger and set breakpoints in many parts of my code.  I don't fully =
understand why it was the issue, but it appears I needed to do a more in-de=
pth autotools reconfiguration for debugging to work with my copy of the SDK=
.
>

what code did you merge and was it into layers? or your app.
autoreconf helping would
mean that its some pre-generated header etc. I am not sure what was
causing it and not sure
what fixed it

> Thanks,
> Bryan
>
> > >
> > > Thanks,
> > > Bryan
> > >
> > > >
> > > > > Thanks,
> > > > > Bryan
> > >
> > >=20
