Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.10285.1620153382271460931
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 11:36:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oMaIa8j+;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id t7so2150287qtn.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 11:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0gPoaxPrKvcz7KgQojWygSxozQK92E/7kRxWgV+vXvw=;
        b=oMaIa8j+wSMgUJOwyG/olBjv8qa8Qrzr0kiU0noxl3uzSSgHhc7yMFrP/H/JfF86RW
         Kgkt8Um8WlH6AGY/s3sREVANSJG/+TrYoPXk43NGcif7CAldDO9gTkrL4SSH/Vy5Y6lH
         eTuODM6mjn0TIqoIUsqunPULdYoIx8Y8dcdMZcMT3ojkqKYGWlpixtkGP+OC2oL6fcd0
         pGd17c1VmTkNlq8PfUPXdKeKpiCDnONDZKQT/CK8gvQzearCXgWZuiXSEqqAYPNmTvIM
         jpurZhdyXVmIb8vaXVOAZkPdJZVS0VOgTnGr1gN0RpXdm90V1Ka4XKFSxeU0BTFrlJi9
         GPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0gPoaxPrKvcz7KgQojWygSxozQK92E/7kRxWgV+vXvw=;
        b=XqNciK0/o++ZCSE1ko+fNUJjcqepWLLmncBLor7HOQnlDrWCFfYmIwlMA8zitOPsZu
         k2tNtocRohSOS1paPMcWCv2bvQM1vqdbT9TcXXX7GWIUsHntRDghF4Hbxi2Cxm5a0CtF
         lRN9AhmVNfK2mr0LCpP14elDCxyHk9B15LCqT6LlBAr66Fzr9momrFnPBY7imkVrErqy
         FZXS5STwvoYKcfAQfpfEqdDslpvoYN1nz3HAo+CBVQT/qT59+d+1VtIdpgzIY3SP+ojU
         Vp3ZJBACYBTp0C+ce930TY5eaqltP+EVJhf74+zZaD/lmsVojUKaS0uM/0y8sonRrdUM
         QuwQ==
X-Gm-Message-State: AOAM531tbXD6o91S0vQ/eoZfmwpcifmd13EPjPqBy9nij0FjCCglFuNu
	W5+lLrxpeJKBI57RJ6zRjlGwdz4cknI4Fci2QEo=
X-Google-Smtp-Source: ABdhPJyZxyhaE8C5KAYF996aMFQZrihgbMr/fqSMaMCm/dWwoyFnMyttPTGUOrl6c0t2cMr0FJWJY/DMVo5wLY0de9w=
X-Received: by 2002:ac8:5ccb:: with SMTP id s11mr22925934qta.299.1620153381319;
 Tue, 04 May 2021 11:36:21 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.167B501B73BC3BE0.4851@lists.yoctoproject.org> <MADEUP.167BF03F6EB90907.3648@lists.yoctoproject.org>
In-Reply-To: <MADEUP.167BF03F6EB90907.3648@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 4 May 2021 11:35:55 -0700
Message-ID: <CAMKF1so2jpYNBenCT60FBFV4ofy=oJotbkDuC8Ocnt6kCG6x+A@mail.gmail.com>
Subject: Re: [yocto] #yocto cmake configurations
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c6788705c1855a8d"

--000000000000c6788705c1855a8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

can you post full linker cmd which is failing ?

On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

>
>
> My standard zeus SDK appears to have an issue linking in my applications
> dynamic libs=E2=80=A6
>
>
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-=
linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -ldrm_intel
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-=
linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -ldrm
>
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-=
linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld:
> cannot find -lclang
>
> collect2: error: ld returned 1 exit status
>
> The libraries are under:
> /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64-poky-=
linux/usr/lib/
>
>
>
> My CMake build app does not appear to have an issue finding the files:
>
>
>
>
> DRM_INTEL_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3=
.0.4/sysroots/corei7-64-poky-linux/usr/lib/libdrm_intel.so
>
>
> DRM_LIBRARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/s=
ysroots/corei7-64-poky-linux/usr/lib/libdrm.so
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
> -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d"
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
> click on a link, decrypt/open an attachment, or enable macros.  For furt=
her
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSp=
ace Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=
=80=9D on the Outlook
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
> Can I pre-configure the SDK to setup cmake package search paths ?, say f=
or
> find_package, etc. (i.e. detecting external libraries/programs)=E2=80=A6
>
>
>
> The majority of my env is configuring properly, but I am finding cmake i=
s
> setup for a standard linux env with regards to these types of searches, =
and
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
>=20
>
>

--000000000000c6788705c1855a8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">can you post full linker cmd which is failing ?</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, M=
ay 4, 2021 at 11:24 AM Monsees, Steven C (US) via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D=
"mailto:baesystems.com@lists.yoctoproject.org">baesystems.com@lists.yoctopr=
oject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8097237155896784554WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My standard ze=
us SDK appears to have an issue linking in my applications dynamic libs=E2=
=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot find -ldrm_i=
ntel<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot find -ldrm<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot find -lclang=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">collect2: erro=
r: ld returned 1 exit status<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The libraries =
are under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-=
64-poky-linux/usr/lib/<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My CMake build=
 app does not appear to have an issue finding the files:<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_INTEL_LIBR=
ARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/cor=
ei7-64-poky-linux/usr/lib/libdrm_intel.so<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_LIBRARIES:=
STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64=
-poky-linux/usr/lib/libdrm.so<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It appears to =
be an issue specifically with the ld=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">LDFLAGS=3D</sp=
an> <span style=3D"color:rgb(31,73,125)">
&quot; --sysroot=3D$ENV{OECORE_TARGET_SYSROOT} -L$ENV{OECORE_TARGET_SYSROO=
T}/usr/lib -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib/x86_64-poky-linux/9.2.0 -l=
pthread -pthread -O2 -pipe -Wl,-O1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-=
needed&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It does not ap=
pear to be making use of =E2=80=93L=E2=80=99s=E2=80=A6<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there somet=
hing I might look at/configure (i.e. add paths to search paths) ?<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there a sim=
ple test to validate tool ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thanks,<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Steve<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopr=
oject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<span style=3D"color:rg=
b(31,73,125)"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<table border=3D"1" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" styl=
e=3D"width:97%;margin-left:5.4pt;border-collapse:collapse;border:none">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;p=
adding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:Calibri,sans-serif;=
color:red">External Email Alert</span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"686" valign=3D"top" style=3D"width:1150.4pt;border-right:1pt =
solid red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:=
none;padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-right:0in;margin-b=
ottom:4pt;margin-left:0in;text-align:center;background:white">
<strong><span style=3D"font-size:10pt;font-family:Calibri,sans-serif;color=
:black">This email has been sent from an account outside of the BAE Systems=
 network.<u></u><u></u></span></strong></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.=C2=A0 For further information on how to spot phishing, ac=
cess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the =
Outlook toolbar.</span><span style=3D"font-size:9pt"><u></u><u></u></span><=
/p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;font-family:&quot;Tim=
es New Roman&quot;,serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am using zeus, standard SDK, cmake=E2=80=A6<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Can I pre-configure the SDK to setup cmake package =
search paths ?, say for find_package, etc. (i.e. detecting external librari=
es/programs)=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The majority of my env is configuring properly, but=
 I am finding cmake is setup for a standard linux env with regards to these=
 types of searches, and<u></u><u></u></p>
<p class=3D"MsoNormal">I wanted the cmake built in to look at my SDK paths=
 (first by default) when doing such things as detecting python interpreter,=
 libraries, etc.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am working on third party package unaware of my S=
DK setup.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
</div>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000c6788705c1855a8d--
