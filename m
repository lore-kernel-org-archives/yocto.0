Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web11.929.1620171986149867805
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 16:46:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k6Ljb5Jc;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id j11so4554703qtn.12
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 16:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dgO51r0id7qFRlECYBwVANYxPlO/GaHGB3sL8snXm8k=;
        b=k6Ljb5Jc5lvkgENEyR3DUHW324CDqDmF8plLRSqt9kv6HIjlQjSefy9GHduI42Iwz4
         Phps8UiMWQfdAfedGOFOEqtCXC5jNECO+wCaBhGlNvliLyF/sYsqL4lRwFP+Jj+PBiMG
         MyecpnSwSS11KD70e0qovY4k9VpYQUwoDqzEsyCNVont0qzErIGoRkYqHHtDq+HMVDrf
         R3Y5saZs6iUugDuY13sDP+Jybm2uR9aGmePfUwQX0ABtYO3VTWlJkQREtTNCZTvFvWbp
         IBYVn0+5X9KlXe6IL65gpSMtfE7EDdHkiI4EKIsTqWRRu8z96gKiJq6plPSB8kwCRGBI
         OKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dgO51r0id7qFRlECYBwVANYxPlO/GaHGB3sL8snXm8k=;
        b=O/z+L0T+f7fxphxxKyuKWjgD7oumDkd1P1mLlIIl+VE4jiK8z5lDAcZCjxqOUn7Iht
         yHkAMoMW9iZ010LhpZ0TINBf4MZ6mRoQRWj+sTzSanpImsonO7MjhQbG8BYNPN5QNQdk
         HGaPEx9tK7LCHURNlb6+vvt5ub87iDSxN/heRpsrGm1eifEKgwrMvc6ou1TShysuWKyw
         a5gJLGVBA5vHW7bGv0m8+3vQxCsfgSyEUXQ4ZVxJKvll/f4IsB/6TgF9Uz0rYbQDh2p/
         chuikFEOEkrKvTtQ/bHWBcoH3flXEpXNzBZygoWZcL352N90QKFeiqZl01OSzihtWmeV
         umwQ==
X-Gm-Message-State: AOAM531lM6a5dtERzmDx7qDmq7RuppwYUB64g/EOjAmwXuhO++nvoJEq
	n7csoQdXTuaSLj+CwFIF1Mncvn9365CUxFM/pnHCy4uHtlfX7Q==
X-Google-Smtp-Source: ABdhPJwz3yxKLv2rJxnjNVcAN22LAb8nbLwrENJX0vksbZI/jrctmZhAsTB3ZFy+GzEYLsQfZWkEBRYyntSJfcjJOYk=
X-Received: by 2002:a05:622a:2c9:: with SMTP id a9mr24929303qtx.82.1620171985144;
 Tue, 04 May 2021 16:46:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sq9PXQs1UVGawYYyFVM4u0yWWENhMZ8mO5AWbv43TYouw@mail.gmail.com>
 <MADEUP.167BFD1D2E76D988.30203@lists.yoctoproject.org>
In-Reply-To: <MADEUP.167BFD1D2E76D988.30203@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 4 May 2021 16:45:58 -0700
Message-ID: <CAMKF1srLU5nicXKZOT1tD0RUQ82fQ-iCnhpp7pEMppxpr=0RdA@mail.gmail.com>
Subject: Re: [yocto] #yocto cmake configurations
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a6502305c189af84"

--000000000000a6502305c189af84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

the cmd seems to pass --sysroot correctly so can you search in SDK sysroot
if you have libclang.a libdrm_intel.a and libdrm.a ?

On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

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
>
>
>
>
>=20
>
>

--000000000000a6502305c189af84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">the cmd seems to pass --sysroot correctly so can you search in=
 SDK sysroot if you have libclang.a=C2=A0<span style=3D"color:rgb(31,73,125=
);font-family:Arial,Helvetica,sans-serif">libdrm_intel.a and libdrm.a ?</sp=
an></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, May 4, 2021 at 3:20 PM Monsees, Steven C (US) via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;steven.m=
onsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org">baesystem=
s.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_1893930838350136715WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)">Yes, LLVM &amp; Clang=E2=80=A6<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibr=
i,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cal=
ibri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 5:17 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations<u></u><u></u></spa=
n></p>
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
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert=
</span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"549" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
d red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none=
;padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-right:0in;margin-b=
ottom:4pt;margin-left:0in;text-align:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sen=
t from an account outside of the BAE Systems network.</span></strong><u></u=
><u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.=C2=A0 For further information on how to spot phishing, ac=
cess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the =
Outlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;"=
>I see its using=C2=A0</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;Courier New&quot;;color:black">-rdynamic -static</span><span style=3D"f=
ont-family:&quot;Courier New&quot;"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;C=
ourier New&quot;;color:black">so next question is that do you have .a files=
 in your sdk ?</span><span style=3D"font-family:&quot;Courier New&quot;"><u=
></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 12:57 PM Monsees, Steven C (=
US) via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesyste=
ms.com@lists.yoctoproject.org" target=3D"_blank">baesystems.com@lists.yocto=
project.org</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:=
4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)">Attached=E2=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibr=
i,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cal=
ibri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, May 4, 2021 2:36 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto cmake configurations</span><u></u><u></=
u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" styl=
e=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97%;border:1pt solid red;p=
adding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;color:red">External Email Alert=
</span></u></strong><u></u><u></u></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"540" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
d red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none=
;padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center;background:white">
<strong><span style=3D"font-size:10pt;color:black">This email has been sen=
t from an account outside of the BAE Systems network.</span></strong><u></u=
><u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.=C2=A0 For further information on how to spot phishing, ac=
cess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the =
Outlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;"=
>can you post full linker cmd which is failing ?</span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, May 4, 2021 at 11:24 AM Monsees, Steven C (=
US) via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yo=
ctoproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</a>=
&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0=
in 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My standard ze=
us SDK appears to have an issue linking in my applications dynamic libs=E2=
=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm_intel</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -ldrm</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">/disk0/scratch=
/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/x86_64-pokysdk-linux/usr/libexec=
/x86_64-poky-linux/gcc/x86_64-poky-linux/9.2.0/real-ld: cannot
 find -lclang</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">collect2: erro=
r: ld returned 1 exit status</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The libraries =
are under: /disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-=
64-poky-linux/usr/lib/</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">My CMake build=
 app does not appear to have an issue finding the files:</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_INTEL_LIBR=
ARIES:STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/cor=
ei7-64-poky-linux/usr/lib/libdrm_intel.so</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">DRM_LIBRARIES:=
STRING=3D/disk0/scratch/smonsees/sbcbSTD_SDK/limws/3.0.4/sysroots/corei7-64=
-poky-linux/usr/lib/libdrm.so</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It appears to =
be an issue specifically with the ld=E2=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">LDFLAGS=3D</sp=
an>
<span style=3D"color:rgb(31,73,125)">&quot; --sysroot=3D$ENV{OECORE_TARGET=
_SYSROOT} -L$ENV{OECORE_TARGET_SYSROOT}/usr/lib -L$ENV{OECORE_TARGET_SYSROO=
T}/usr/lib/x86_64-poky-linux/9.2.0 -lpthread -pthread -O2 -pipe -Wl,-O1 -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">It does not ap=
pear to be making use of =E2=80=93L=E2=80=99s=E2=80=A6</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there somet=
hing I might look at/configure (i.e. add paths to search paths) ?</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is there a sim=
ple test to validate tool ?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thanks,</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Steve</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@li=
sts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org=
" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Sunday, May 2, 2021 1:28 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto cmake configurations<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"97%" styl=
e=3D"width:97%;margin-left:5.4pt;border-collapse:collapse">
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
<td width=3D"532" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
d red;border-bottom:1pt solid red;border-left:1pt solid red;border-top:none=
;padding:0in 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center;background:white">
<strong><span style=3D"font-size:10pt;font-family:Calibri,sans-serif;color=
:black">This email has been sent from an account outside of the BAE Systems=
 network.</span></strong><u></u><u></u></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4pt;text-al=
ign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, espec=
ially if you are requested to click on a link, decrypt/open an attachment, =
or enable macros.=C2=A0 For further information on how to spot phishing, ac=
cess =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report
 phishing by clicking the button =E2=80=9CReport Phishing=E2=80=9D on the =
Outlook toolbar.</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am using zeus, standard SDK, cmake=E2=80=A6<u></u=
><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Can I pre-configure the SDK to setup cmake package =
search paths ?, say for find_package, etc. (i.e. detecting external librari=
es/programs)=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The majority of my env is configuring properly, but=
 I am finding cmake is setup for a standard linux env with regards to these=
 types of searches, and<u></u><u></u></p>
<p class=3D"MsoNormal">I wanted the cmake built in to look at my SDK paths=
 (first by default) when doing such things as detecting python interpreter,=
 libraries, etc.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am working on third party package unaware of my S=
DK setup.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></=
p>
</blockquote>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000a6502305c189af84--
