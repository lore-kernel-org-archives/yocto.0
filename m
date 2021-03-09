Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.12321.1615309010768244542
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 08:56:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qn27RJ7j;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id n79so13709249qke.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 08:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7gVwsxuuvkFezJ7oOrp9CEeU4fEDGBJwFMSIJ0B40E4=;
        b=Qn27RJ7jg/ex65RmR8z4bmU5aCzDv9ENA/2zB57LNB9Ft6p07nkGrZWzEiXOOQCHLk
         eSsjHT2OTtjUmhcfNaUy2RQrp5FCPJNlNHh7hUBC/+QmSOtevyIUxEq07rKNZD27YRu2
         YWliLSroXVJzr09UJjIKiJHlEch/pfONpuf2My31OV4llsu6DGKVerxpyUaRzhhf15KG
         Pw/osSgMHUVEhxP6W0mGcOUY5uXvBsnlCZmqf/9JQEfuWvl+DWDAsxAcTavbZzl5MG5w
         2c/pSIcT8ak3XtAV4nDvomn6xqCKrhLfog001dFJNcO3NIY6vCLj29Tn0K9mWZzEGmGp
         zwwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7gVwsxuuvkFezJ7oOrp9CEeU4fEDGBJwFMSIJ0B40E4=;
        b=rl44MlqbMRLY+Xa98DdMT6ps5aKcjyvyCw6FPQrILcsxtySDFMJ2jDmIGkG0nKhguH
         +027Qlx2uCG9RLPCuVSZfhUttHtTVaV/jOXAK8MgIcq/QlpxuPNLtnahPiel6/YkTWYH
         UefT0tHRq66H0uNPL/0R4NIEbH7uiAQApTroSoTozytnMuqFvbAQJ5Scm/t+G93NV87V
         9tEOyu71pwdwRXLZRxGwm3J38g2grsl2rTix0TomP2usLOYm9V199H7ld/97POHYH5wZ
         05X/tDPbetR2aBb933nE1khrDa93xqXdO6QIwp4WViJRuA6YbXJ3q5SNxnQIPPhyQlqk
         Xqgg==
X-Gm-Message-State: AOAM532/IX1FClnS9Ag3o56wGTKp6F8Ga6XrhkjqnzrkpqPyAZktCvic
	FKihdgt+lpuzv0ecS/GQBLq3RnuxhLJXHwcEuf99iNJSS6jqNQ==
X-Google-Smtp-Source: ABdhPJx9j3aZC/QPtd9wl4VZ/bUmmKErWVh3u6o63onYyTNyIOgBIHCcuikd9tqyH8Dx8bnRu/Q40PvBDFLjAYmvot8=
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr26757531qki.25.1615309009626;
 Tue, 09 Mar 2021 08:56:49 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sp=s1_Kxq9XwQ_VGutbXT5kVwdSD+ED0cYPeK=mA8OJvA@mail.gmail.com>
 <60476cbb.1c69fb81.52948.d974SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <60476cbb.1c69fb81.52948.d974SMTPIN_ADDED_MISSING@mx.google.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 9 Mar 2021 08:56:23 -0800
Message-ID: <CAMKF1soNzS3dcesyn+F6NnSy5nqYz2FZreTApf34-dqCAU6Lkw@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8a9f905bd1d6f70"

--000000000000b8a9f905bd1d6f70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

it excludes the variables from checksums see
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#che=
cksums

On Tue, Mar 9, 2021 at 4:40 AM Monsees, Steven C (US) <
steven.monsees@baesystems.com> wrote:

>
>
> What is the difference between using =E2=80=9CSIGGEN_UNLOCKED_RECIPES +=
=3D=E2=80=9D and
> =E2=80=9CBB_HASHBASE_WHITELIST_append =3D=E2=80=9D ?
>
>
>
>
>
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Thursday, March 4, 2021 1:22 PM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto #sdk
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
> right, the change seems to be happening in task checksums and that happe=
ns
> if some of bitbake variables change when SDK is built built and when it =
is
> being installed ( when it will run parse again ) perhaps the workspace
> under the hood is still accessible and you can use bitbake-diffsigs to
> narrow it down the variable that is changing
>
>
>
> On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I am seeing similar issues on line  for my eSDK install issue, but no
> resolutions=E2=80=A6
>
>
>
> Can someone advise on best course of action to debug this ?
>
>
>
> 11:10 smonsees@yix490016
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deplo=
y/sdk>
> ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
>
> LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Enter target directory for SDK (default: ~/limws_sdk):
> /disk0/scratch/smonsees/testSDK
>
> You are about to install the SDK to "/disk0/scratch/smonsees/testSDK".
> Proceed [Y/n]? Y
>
> Extracting
> SDK.....................................................................=
.........done
>
> Setting it up...
>
> Extracting buildtools...
>
> Preparing build system...
>
> Parsing recipes: 100%
> |#######################################################################=
###################|
> Time: 0:01:36
>
> Initialising tasks: 100%
> |#######################################################################=
################|
> Time: 0:00:04
>
> Checking sstate mirror object availability: 100%
> |###############################################################| Time:
> 0:00:02
>
> WARNING: The efitools:do_compile sig is computed to be
> 5851605e22907038837428950427053e22ea655641a08b5dafa39d6d6e1c5e15, but th=
e
> sig is locked to
> b81a26e3591c71acd3d22212bfdb70a15a0df49af72e7634e6a39851f16e18b5 in
> SIGGEN_LOCKEDSIGS_t-corei7-64
>
> The monkeysphere:do_install sig is computed to be
> 13a65b26dfff91f2432a8064d98003559eafffa214d81c3c6ea112c2dfba0391, but th=
e
> sig is locked to
> 2058fc9032b0e7f5c1ea358de4fa8d25ccec7204b73ebc636e79222d8cc00469 in
> SIGGEN_LOCKEDSIGS_t-corei7-64
>
> The signature:do_compile sig is computed to be
> ac0c5c19cdbe7484046657ccb7b768c02fbbabb43166befa93b71a85d5fcf55b, but th=
e
> sig is locked to
> cf5c3f72489f447b1199aafe4b4148988ff91cecd970422352f2238afb127683 in
> SIGGEN_LOCKEDSIGS_t-corei7-64
>
> The grub-efi-native:do_clean_grub sig is computed to be
> 4e16b100c32e9428126eb10864508038527cec795c5e4391208d96a55735c90a, but th=
e
> sig is locked to
> a2bd26be0297624af53d6f8cf657d79740fb229db821c446d564c5ee9dc80ea3 in
> SIGGEN_LOCKEDSIGS_t-x86-64
>
> The grub-efi-native:do_compile sig is computed to be
> 630cc346f7ececf98c54f9134e8fee546e85c92f1e3c6ac3c258a1cdf24d4565, but th=
e
> sig is locked to
> 802bba0874ce26169a9e16dcdb440795e8fa904977b036d637d6c4086ce72de8 in
> SIGGEN_LOCKEDSIGS_t-x86-64
>
> The grub-efi:do_clean_grub sig is computed to be
> faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c47691cd0aaa80de91187af3c, but th=
e
> sig is locked to
> 0075bbd34297bfbc62685ff5477feec11d0dd2bcda6787a151cfb7927a7f39c2 in
> SIGGEN_LOCKEDSIGS_t-corei7-64
>
> The grub-efi:do_compile sig is computed to be
> 30c09f3e8db4059b7e1ff23823f208be94d0e622904fc43eda497027be095a71, but th=
e
> sig is locked to
> a9e8ddd9ecac11e67c66d9fccbabe23b6eb4a19c5996baef8ff960dfcdc898ed in
> SIGGEN_LOCKEDSIGS_t-corei7-64
>
> ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/db/db_5=
.3.28.bb:do_populate_sysroot,
> unihash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0=
,
> taskhash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c=
0
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-extended/sed/se=
d_4.2.2.bb:do_package_write_ipk,
> unihash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3=
,
> taskhash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe=
3
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/libatom=
ic-ops/libatomic-ops_7.6.10.bb:do_package_qa,
> unihash 2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8=
,
> taskhash 2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add=
8
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-connectivity/op=
enssh/openssh_8.0p1.bb:do_package_qa,
> unihash 87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155=
,
> taskhash 87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a15=
5
>
> .
>
> .
>
>
>
>
>
>
> https://www.mail-archive.com/search?l=3Dyocto@yoctoproject.org&q=3Dsubje=
ct:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&o=3Dnewest&=
f=3D1
>
>
>
> https://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html
>
>
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344
>
>
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Thursday, March 4, 2021 8:13 AM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>;
> yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto #sdk
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
>
>
> Is there a list of certain classes that might interfere with the ability=
 of the eSDK to lock down the configuratiuon ?
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
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Tuesday, March 2, 2021 3:26 PM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] #yocto #sdk
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
> I still appear to be having an issue with the SXT SDK install=E2=80=A6
>
>
>
> Building for zeus/x86_64 Intel based platform=E2=80=A6
>
> I build my kernel image clean, fully functional=E2=80=A6
>
> Standard SDK builds clean and appears functional=E2=80=A6
>
>
>
> Ext SDK builds clean, but on install I am still seeing Error below=E2=80=
=
=A6
>
>
>
> (1)    What is it comparing  between unhash/task hash ?, more sig issues=
 ?
>
>
>
> (2)    What is meant by =E2=80=9CThis is usually due to missing setscene=
 tasks=E2=80=9D ?
>
>
>
> (3)    In the local.conf under the SDK they set :
>
>
>
> SSTATE_MIRRORS +=3D " file://universal/(.*) file://universal-4.9/\1
> file://universal-4.9/(.*) file://universal-4.8/\1"
>
>
>
> Under sdk-extra.conf I set :
>
>
>
> SSTATE_MIRRORS +=3D file://.* file:///ede/tms/yocto/zeus/sstate_cache/PA=
TH
>
>
>
> My SSTATE_MIRRIOR is based off the clean builds I mentioned above, is th=
is
> the correct procedure ?
>
>
>
> I am trying to figure out how best to debug this issue, it is occurring =
on
> the post install, and everything pretty much appears in place.
>
>
>
> Steve
>
>
>
> 14:43 smonsees@yix490038
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deplo=
y/sdk>./
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
>
> LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Enter target directory for SDK (default: ~/limws_sdk):
> /disk0/scratch/smonsees/testSDK
>
> You are about to install the SDK to "/disk0/scratch/smonsees/testSDK".
> Proceed [Y/n]? Y
>
> Extracting
> SDK.....................................................................=
.........done
>
> Setting it up...
>
> Extracting buildtools...
>
> Preparing build system...
>
> Parsing recipes: 100%
> |#######################################################################=
####################|
> Time: 0:01:32
>
> Initialising tasks: 100%
> |#######################################################################=
#################|
> Time: 0:00:04
>
> Checking sstate mirror object availability: 100%
> |################################################################| Time:
> 0:00:03
>
> ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/liburcu=
/liburcu_0.11.1.bb:do_populate_sysroot,
> unihash cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601=
,
> taskhash cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c60=
1
>
> Task
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-devtools/python=
/python3_3.7.8.bb:do_packagedata,
> unihash 925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f=
,
> taskhash 925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4=
f
>
> .
>
> .
>
> .
>
>
>
> This is usually due to missing setscene tasks. Those missing in this bui=
ld
> were:
>
>
>
> <<appears to list every recipe under ./testSDK/layers directory here>>
>
>
>=20
>
>

--000000000000b8a9f905bd1d6f70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">it excludes the variables from checksums see</div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace"><a href=3D"ht=
tps://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#checks=
ums">https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html=
#checksums</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Mar 9, 2021 at 4:40 AM Monsees, Steven C (U=
S) &lt;<a href=3D"mailto:steven.monsees@baesystems.com">steven.monsees@baes=
ystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-6413346327481762853WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)">What is the difference between using =E2=80=
=
=9CSIGGEN_UNLOCKED_RECIPES +=3D=E2=80=9D and =E2=80=9CBB_HASHBASE_WHITELIS=
T_append =3D=E2=80=9D ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibr=
i,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cal=
ibri,sans-serif"> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=
=3D"_blank">raj.khem@gmail.com</a>&gt;
<br>
<b>Sent:</b> Thursday, March 4, 2021 1:22 PM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto #sdk<u></u><u></u></span></p>
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
<td width=3D"686" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
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
>right, the change seems to be happening in task checksums and that happens=
 if some of bitbake variables change when=C2=A0SDK is built built and when =
it is being installed ( when it will run parse again
 ) perhaps the workspace under the hood is still accessible and you can us=
e bitbake-diffsigs to narrow it down the variable that is changing<u></u><u=
></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (U=
S) via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesyste=
ms.com@lists.yoctoproject.org" target=3D"_blank">baesystems.com@lists.yocto=
project.org</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:=
4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I am seeing si=
milar issues on line =C2=A0for my eSDK install issue, but no resolutions=E2=
=
=80=A6</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Can someone ad=
vise on best course of action to debug this ?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">11:10 smonsees=
@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/deploy/sdk&gt; ./<a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7=
-64-toolchain-ext-3.0.4.sh" target=3D"_blank">limws-glibc-x86_64-aiox_orang=
e-corei7-64-toolchain-ext-3.0.4.sh</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">LIMWS (BAE LIM=
WS base distro) Extensible SDK installer version 3.0.4</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Enter target d=
irectory for SDK (default: ~/limws_sdk): /disk0/scratch/smonsees/testSDK</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">You are about =
to install the SDK to &quot;/disk0/scratch/smonsees/testSDK&quot;. Proceed =
[Y/n]? Y</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Extracting SDK=
...........................................................................=
...done</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Setting it up.=
..</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Extracting bui=
ldtools...</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Preparing buil=
d system...</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Parsing recipe=
s: 100% |##################################################################=
########################| Time: 0:01:36</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Initialising t=
asks: 100% |###############################################################=
########################| Time: 0:00:04</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Checking sstat=
e mirror object availability: 100% |#######################################=
########################| Time: 0:00:02</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">WARNING: The e=
fitools:do_compile sig is computed to be 5851605e22907038837428950427053e22=
ea655641a08b5dafa39d6d6e1c5e15, but the sig is locked to b81a26e3591c71acd3=
d22212bfdb70a15a0df49af72e7634e6a39851f16e18b5
 in SIGGEN_LOCKEDSIGS_t-corei7-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The monkeysphe=
re:do_install sig is computed to be 13a65b26dfff91f2432a8064d98003559eafffa=
214d81c3c6ea112c2dfba0391, but the sig is locked to 2058fc9032b0e7f5c1ea358=
de4fa8d25ccec7204b73ebc636e79222d8cc00469
 in SIGGEN_LOCKEDSIGS_t-corei7-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The signature:=
do_compile sig is computed to be ac0c5c19cdbe7484046657ccb7b768c02fbbabb431=
66befa93b71a85d5fcf55b, but the sig is locked to cf5c3f72489f447b1199aafe4b=
4148988ff91cecd970422352f2238afb127683
 in SIGGEN_LOCKEDSIGS_t-corei7-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi-n=
ative:do_clean_grub sig is computed to be 4e16b100c32e9428126eb108645080385=
27cec795c5e4391208d96a55735c90a, but the sig is locked to a2bd26be0297624af=
53d6f8cf657d79740fb229db821c446d564c5ee9dc80ea3
 in SIGGEN_LOCKEDSIGS_t-x86-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi-n=
ative:do_compile sig is computed to be 630cc346f7ececf98c54f9134e8fee546e85=
c92f1e3c6ac3c258a1cdf24d4565, but the sig is locked to 802bba0874ce26169a9e=
16dcdb440795e8fa904977b036d637d6c4086ce72de8
 in SIGGEN_LOCKEDSIGS_t-x86-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi:d=
o_clean_grub sig is computed to be faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c=
47691cd0aaa80de91187af3c, but the sig is locked to 0075bbd34297bfbc62685ff5=
477feec11d0dd2bcda6787a151cfb7927a7f39c2
 in SIGGEN_LOCKEDSIGS_t-corei7-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi:d=
o_compile sig is computed to be 30c09f3e8db4059b7e1ff23823f208be94d0e622904=
fc43eda497027be095a71, but the sig is locked to a9e8ddd9ecac11e67c66d9fccba=
be23b6eb4a19c5996baef8ff960dfcdc898ed
 in SIGGEN_LOCKEDSIGS_t-corei7-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">ERROR: Task qu=
ilt-native.do_fetch attempted to execute unexpectedly</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-support/db/db_5.3.28.bb:do_=
populate_sysroot, unihash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285=
061b6e1c9c3a9c0,
 taskhash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-extended/sed/sed_4.2.2.bb:d=
o_package_write_ipk, unihash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff2=
8a76e1851f8f8f8fe3,
 taskhash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-support/libatomic-ops/libat=
omic-ops_7.6.10.bb:do_package_qa, unihash 2b17b70b3e1568840e3b39488b9e6470c=
89d5ffd502f02b2c129331d7609add8,
 taskhash 2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-connectivity/openssh/openss=
h_8.0p1.bb:do_package_qa, unihash 87a24567344a646de9ab6fba50b398e41711ff4d1=
bca749ebe02d84359c2a155,
 taskhash 87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">.</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">.</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://www.mail-archive.com/search?l=3Dyocto@yoctoproject.org&amp;q=3Dsubject=
:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&amp;o=3Dnewes=
t&amp;f=3D1" target=3D"_blank">https://www.mail-archive.com/search?l=3Dyoct=
o@yoctoproject.org&amp;q=3Dsubject:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+insta=
ll+script+failure%22&amp;o=3Dnewest&amp;f=3D1</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html" target=
=3D"_blank">https://www.yoctoproject.org/pipermail/yocto/2017-August/03735=
9.html</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344" target=3D"_blank">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344</a></span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border=
-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@li=
sts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org=
" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Thursday, March 4, 2021 8:13 AM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;;
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@li=
sts.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto #sdk<u></u><u></u></p>
</div>
</div>
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
<td width=3D"677" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
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
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">I=
s there a list of certain classes that might interfere with the ability of =
the eSDK to lock down the configuratiuon ?</span><u></u><u></u></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">=
=C2=A0</span><u></u><u></u></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">T=
hanks,</span><u></u><u></u></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">S=
teve</span><u></u><u></u></pre>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><=
u></u><u></u></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border=
-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@li=
sts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org=
" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">
lists.yoctoproject.org</a><br>
<b>Sent:</b> Tuesday, March 2, 2021 3:26 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto #sdk<u></u><u></u></p>
</div>
</div>
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
<td width=3D"677" valign=3D"top" style=3D"width:15in;border-right:1pt soli=
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
<p class=3D"MsoNormal">I still appear to be having an issue with the SXT S=
DK install=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Building for zeus/x86_64 Intel based platform=E2=80=
=
=A6<u></u><u></u></p>
<p class=3D"MsoNormal">I build my kernel image clean, fully functional=E2=
=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">Standard SDK builds clean and appears functional=E2=
=
=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Ext SDK builds clean, but on install I am still see=
ing Error below=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">(1)<span style=3D"font-size:7pt">=C2=A0=C2=A0=C2=A0
</span>What is it comparing=C2=A0 between unhash/task hash ?, more sig iss=
ues ?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">(2)<span style=3D"font-size:7pt">=C2=A0=C2=A0=C2=A0
</span>What is meant by =E2=80=9CThis is usually due to missing setscene t=
asks=E2=80=9D ?<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">(3)<span style=3D"font-size:7pt">=C2=A0=C2=A0=C2=A0
</span>In the local.conf under the SDK they set : <u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">SSTATE_MIRRORS +=3D &quot; <a>
file://universal/(.*)</a> <a>file://universal-4.9/\1</a>
<a>file://universal-4.9/(.*)</a> <a>
file://universal-4.8/\1</a>&quot;<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">Under sdk-extra.conf I set :<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">SSTATE_MIRRORS +=3D <a>
file://.*</a> <a>file:///ede/tms/yocto/zeus/sstate_cache/PATH</a><u></u><u=
></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-6413346327481762853gmail-m-3844774918329209826msolist=
paragraph">My SSTATE_MIRRIOR is based off the clean builds I mentioned abov=
e, is this the correct procedure ?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to figure out how best to debug this is=
sue, it is occurring on the post install, and everything pretty much appear=
s in place.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">14:43 smonsees@yix490038 /disk0/scratch/smonsees/yo=
cto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk&gt;./<a href=3D"http://=
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh" target=3D"=
_blank">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh</a>=
<u></u><u></u></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) Extensible SDK instal=
ler version 3.0.4<u></u><u></u></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<u></u><u></u></p>
<p class=3D"MsoNormal">Enter target directory for SDK (default: ~/limws_sd=
k): /disk0/scratch/smonsees/testSDK<u></u><u></u></p>
<p class=3D"MsoNormal">You are about to install the SDK to &quot;/disk0/sc=
ratch/smonsees/testSDK&quot;. Proceed [Y/n]? Y<u></u><u></u></p>
<p class=3D"MsoNormal">Extracting SDK.....................................=
.........................................done<u></u><u></u></p>
<p class=3D"MsoNormal">Setting it up...<u></u><u></u></p>
<p class=3D"MsoNormal">Extracting buildtools...<u></u><u></u></p>
<p class=3D"MsoNormal">Preparing build system...<u></u><u></u></p>
<p class=3D"MsoNormal">Parsing recipes: 100% |############################=
###############################################################| Time: 0:01=
:32<u></u><u></u></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |#########################=
###############################################################| Time: 0:00=
:04<u></u><u></u></p>
<p class=3D"MsoNormal">Checking sstate mirror object availability: 100% |#=
###############################################################| Time: 0:00=
:03<u></u><u></u></p>
<p class=3D"MsoNormal">ERROR: Task quilt-native.do_fetch attempted to exec=
ute unexpectedly<u></u><u></u></p>
<p class=3D"MsoNormal">Task /disk0/scratch/smonsees/testSDK/layers/poky/me=
ta/recipes-support/liburcu/liburcu_0.11.1.bb:do_populate_sysroot, unihash c=
db08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601,
 taskhash cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601=
<u></u><u></u></p>
<p class=3D"MsoNormal">Task /disk0/scratch/smonsees/testSDK/layers/poky/me=
ta/recipes-devtools/python/python3_3.7.8.bb:do_packagedata, unihash 925a72c=
be872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f,
 taskhash 925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f=
<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">This is usually due to missing setscene tasks. Thos=
e missing in this build were:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">&lt;&lt;appears to list every recipe under ./testSD=
K/layers directory here&gt;&gt;<u></u><u></u></p>
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

</blockquote></div>

--000000000000b8a9f905bd1d6f70--
