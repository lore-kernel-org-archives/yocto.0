Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web08.22893.1606502556521100680
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 10:42:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pElqYnXX;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id v8so3013503vso.2;
        Fri, 27 Nov 2020 10:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PsNRbBMBLdW6PEsYzrTxg6BbuTg/CB2m0BQYtg+sxaU=;
        b=pElqYnXXaCSkC3XQz6mNc9oz593I/r6QMfnMf8OdaCtaJG9A1vByjYzpcE6rg0+NmP
         wm80I0TLF0ZwCaw+27nyoNWByIYUyuwaXyVDVBWvJ+2KoA3UWlhES8OobfpotTd7AaeK
         hn9CJZVYYE2kAcFoiGjKwNtP6P6RvLegV24X/elLHGE2pZfPxKJ/lDIZ2+Th2DDkVcTl
         8UFGoleh7yyFjxJ1+VtuidtD4zwk1cUWrbTTjbATPOIRTLJhvVJKU/WM4Inrm10GWboB
         8hLJ8mL0BfDPAgUjjE8cwXmcOaFi52rntl3l58vLyM/TAfeEwbhQWHotgDfMknxoPG57
         4pKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PsNRbBMBLdW6PEsYzrTxg6BbuTg/CB2m0BQYtg+sxaU=;
        b=AXQ+USwspZB73LpTqvclyuvCSGjI8h49IXZWOX25t2N+YzRYkDFfBXcYo0RI2I3UmL
         MX/jd0q0N2c5iMYUlCClN8ajZl/QfUIXEUaHv9znz+mhnhGNh432wu3BboUInmDSA2Mr
         OAN9tTIrk2YiUjdb0K1q1ZIp9Vm7eXpKtuyHKiTD2bE+k075jy9+iHplNj5Dq+KqveyR
         GMietVfNc3ughqE7QRcbxjSiVLn6jiVd+6xBbEqH4db0YAi6s6uYdV2l3Frrm611yMqy
         BXWw7w5YwC9OiOI9DVR92IFgzybhc3OMhOlwMhmURu/vVfrOmRrXGY8bRsZV2jurgjM3
         4m0A==
X-Gm-Message-State: AOAM532DrRxu+UOC8zmLTqrNRIjlLQn9U3MhQt1AsJ6cBeKKFFxyOeSt
	SGFBlMj4yiavGdVotKM3GLPApLRyITvp+LTkoqIaBNsO0Cb0yA==
X-Google-Smtp-Source: ABdhPJxPU4ICyjdppscd8VTMZl+H26PzkNlczlC/UPfeTMOLR/3AtNuVPm0QLcdTHTxhSQYIW1jVv7+tSDHa4ODsmyo=
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr7488569vsb.4.1606502555320;
 Fri, 27 Nov 2020 10:42:35 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sat, 28 Nov 2020 00:12:24 +0530
Message-ID: <CAJw=dJ9O3o8VYMfJ4uOcLOw0etaCwquyrVqubiKzCKaDw9iTHA@mail.gmail.com>
Subject: patch apply for .bb file
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, yocto+help@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002403dc05b51b0684"

--0000000000002403dc05b51b0684
Content-Type: text/plain; charset="UTF-8"

Hi team ,
       We are tring to apply to patch to default .bb file. means in
gpsd_3.17.bb file we did some changes but after taking patch we are not
able to apply it .

    *  steps followd :-*
        1) git status
        2) git
diff yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
gpsd_3.17.bb >  0001_add_line_in_gpsd.patch
        3) git
checkout yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
gpsd_3.17.bb

           after these i applied gpsd patch
in /yocto_build/meta-intel-leafhill/recipes-kernel/linux/linux-intel/leafhill.scc
  file  but after appling getting following errors .

      * ERRORS :-*
      [INFO]: Context reduced git-am of
.kernel-meta//patches//patches/0001_add_line_in_gpsd.patch with "git am"
did not work, trying "apply".
| error: yocto_build/meta-openembedded/meta-oe/recipes-navigation/gpsd/
gpsd_3.17.bb: does not exist in index
| [ERROR]: Application of
.kernel-meta//patches//patches/0001_add_line_in_gpsd.patch failed.
|          Patch needs to be refreshed. Sample resolution script:
|              .git/rebase-apply/resolve_rejects
| ERROR: Could not apply patches for intel-corei7-64.
| ERROR: Patch failures can be resolved in the linux source directory
/data/nikhil/inti_dmsv/yocto_build/build/tmp/work-shared/intel-corei7-64/kernel-source)

     * douts :-*
        1) Can we apply a patch to default code means (files in meta  or
files( .bb ) in meta-intel  folder, etc) ? because we are able to apply a
patch for kernel code (driver file ) , but for .bb file patch appling we
are facing issue .

        2) how to apply a patch to  default .bb file in meta layers ?  can
u please tell procedure .

     thanks in advance .

--0000000000002403dc05b51b0684
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0We are tring to a=
pply to patch to default .bb file. means in <a href=3D"http://gpsd_3.17.bb"=
>gpsd_3.17.bb</a> file we did some changes but after taking patch we are no=
t able to apply it .</div><div>=C2=A0</div><div>=C2=A0 =C2=A0 <b>=C2=A0 ste=
ps followd=C2=A0:-</b></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 1) git status<=
/div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 2) git diff=C2=A0yocto_build/meta-ope=
nembedded/meta-oe/recipes-navigation/gpsd/<a href=3D"http://gpsd_3.17.bb">g=
psd_3.17.bb</a> &gt;=C2=A0=C2=A00001_add_line_in_gpsd.patch</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 3) git checkout=C2=A0yocto_build/meta-openembedded=
/meta-oe/recipes-navigation/gpsd/<a href=3D"http://gpsd_3.17.bb">gpsd_3.17.=
bb</a></div><div>=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0after these i applied gpsd patch in=C2=A0/yocto_build/meta-in=
tel-leafhill/recipes-kernel/linux/linux-intel/leafhill.scc=C2=A0 =C2=A0 fil=
e=C2=A0 but after appling=C2=A0getting following errors .</div><div><br></d=
iv><div>=C2=A0 =C2=A0 =C2=A0 <b>=C2=A0ERRORS :-</b></div><div>=C2=A0 =C2=A0=
 =C2=A0 [INFO]: Context reduced git-am of .kernel-meta//patches//patches/00=
01_add_line_in_gpsd.patch with &quot;git am&quot; did not work, trying &quo=
t;apply&quot;.</div>| error: yocto_build/meta-openembedded/meta-oe/recipes-=
navigation/gpsd/<a href=3D"http://gpsd_3.17.bb">gpsd_3.17.bb</a>: does not =
exist in index<br>| [ERROR]: Application of .kernel-meta//patches//patches/=
0001_add_line_in_gpsd.patch failed.<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Patch needs to be refreshed. Sample resolution script:<br>| =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.git/rebase-apply/resolve_rejects<br>| ER=
ROR: Could not apply patches for intel-corei7-64.<br>| ERROR: Patch failure=
s can be resolved in the linux source directory /data/nikhil/inti_dmsv/yoct=
o_build/build/tmp/work-shared/intel-corei7-64/kernel-source)<br><div><br></=
div><div>=C2=A0 =C2=A0 =C2=A0<b> douts :-</b></div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1) Can we apply a patch to default code means (files in meta=C2=
=A0 or=C2=A0 files( .bb ) in meta-intel=C2=A0 folder, etc) ? because we are=
 able to apply a patch for kernel code (driver file ) , but for .bb file pa=
tch appling we are facing issue .</div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 2) how to apply a patch to=C2=A0 default .bb file in meta lay=
ers ?=C2=A0 can u please tell procedure .</div><div><br></div><div>=C2=A0 =
=C2=A0 =C2=A0thanks in advance .</div><div><b>=C2=A0 =C2=A0 =C2=A0=C2=A0</b=
></div></div>

--0000000000002403dc05b51b0684--
