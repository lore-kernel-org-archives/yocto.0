Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.87.1614882164613420053
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 10:22:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dRMYC/K2;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id t4so10697015qkp.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 10:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+g+jtD+mTaTpBab3q8lRgmJ3JTY/3AwCpnz37lfeDXU=;
        b=dRMYC/K2ONwIpuz0arEw3//4yKxxrB9r2n4vmSHBUmu6xPiYvNQ9fu2sDKAYypsF4S
         4lAE4bFgZCYBUAU+nq1/pJPWxL1vjO4sZXJ4gM4qD9NkTBLJAQk5HgvZj7SuXdPEieON
         1d47ls46FBy19pOt9HhSgeqLlraWod1pV6RkSFTEVrZZvVc4Vn+kvqDeuojnxhsTr8LX
         1TIxZoivAEy833vLaLGWumWzny+ecjRIEFHocELBIuKtXqNvr4VRFVqckJBQxNbh8GOS
         dL0zujtDtaGK4xw6HdzwfoMuQKIKZSDEn/QDJnyVtdDIOt1j1YT2wgKQpO6DF2nDYcc3
         /EDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+g+jtD+mTaTpBab3q8lRgmJ3JTY/3AwCpnz37lfeDXU=;
        b=AErLSbycj0H/PwplVBbOiyFRgDRfoXxEDHdvintNhOWxk2uF0MUOHI/IsiQ0DVnGtx
         5uYiq27tfWSAVKToWWHQ0U9ymdXSyKLWG/kUyyruE8lL+kfAZ2VdeZJw44yedSFg5Omh
         zSEY6BsXghkTtReVNUfacVkeO7TGiAB7+PZUc1DlTojYsuQR7Tc3tJ5bIGhh09laUiX8
         x1iaPq75OrDDz0RlNzO22R4CaH54yHZy0iNrwFsAV/vC6LJEfQs3azdxoCEWIGnGvB/8
         zpAbirWnU5usS53GPTzaUfyrlscGKHnV9RHW2ByTI9sdipj0TpBI7/hqOh39r12jNqmT
         mZcw==
X-Gm-Message-State: AOAM531yhSD6AWESvKCUApoeqSUayCcldltX1yTuXJKudYtL96q2Lp3e
	B747uBaA3trHu2E42a31LuheESfh9rdZJ3N0PDYzDcuaTnQ=
X-Google-Smtp-Source: ABdhPJwY8oPqoxo6Tux6IV4tMzC0+Us/lrH3psQRQclPtvsQD1fAn0CVlCvlX/UdP4shXEj0OydlxGAD0wVH2BdM16M=
X-Received: by 2002:a05:620a:124f:: with SMTP id a15mr5196679qkl.125.1614882163541;
 Thu, 04 Mar 2021 10:22:43 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.166925E38A880F18.17096@lists.yoctoproject.org> <MADEUP.1669345C44CCE75A.10374@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1669345C44CCE75A.10374@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 4 Mar 2021 10:22:17 -0800
Message-ID: <CAMKF1sp=s1_Kxq9XwQ_VGutbXT5kVwdSD+ED0cYPeK=mA8OJvA@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b64de305bcba0d1b"

--000000000000b64de305bcba0d1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

right, the change seems to be happening in task checksums and that happens
if some of bitbake variables change when SDK is built built and when it is
being installed ( when it will run parse again ) perhaps the workspace
under the hood is still accessible and you can use bitbake-diffsigs to
narrow it down the variable that is changing

On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject=
.org>
wrote:

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
>=20
>
>

--000000000000b64de305bcba0d1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">right, the change seems to be happening in task checksums and =
that happens if some of bitbake variables change when=C2=A0SDK is built bui=
lt and when it is being installed ( when it will run parse again ) perhaps =
the workspace under the hood is still accessible and you can use bitbake-di=
ffsigs to narrow it down the variable that is changing</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 4, =
2021 at 9:38 AM Monsees, Steven C (US) via <a href=3D"http://lists.yoctopro=
ject.org">lists.yoctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto=
:baesystems.com@lists.yoctoproject.org">baesystems.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-3844774918329209826WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I am seeing si=
milar issues on line =C2=A0for my eSDK install issue, but no resolutions=E2=
=
=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Can someone ad=
vise on best course of action to debug this ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">11:10 smonsees=
@yix490016 /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/t=
mp/deploy/sdk&gt; ./<a href=3D"http://limws-glibc-x86_64-aiox_orange-corei7=
-64-toolchain-ext-3.0.4.sh" target=3D"_blank">limws-glibc-x86_64-aiox_orang=
e-corei7-64-toolchain-ext-3.0.4.sh</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">LIMWS (BAE LIM=
WS base distro) Extensible SDK installer version 3.0.4<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Enter target d=
irectory for SDK (default: ~/limws_sdk): /disk0/scratch/smonsees/testSDK<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">You are about =
to install the SDK to &quot;/disk0/scratch/smonsees/testSDK&quot;. Proceed =
[Y/n]? Y<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Extracting SDK=
...........................................................................=
...done<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Setting it up.=
..<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Extracting bui=
ldtools...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Preparing buil=
d system...<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Parsing recipe=
s: 100% |##################################################################=
########################| Time: 0:01:36<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Initialising t=
asks: 100% |###############################################################=
########################| Time: 0:00:04<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Checking sstat=
e mirror object availability: 100% |#######################################=
########################| Time: 0:00:02<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">WARNING: The e=
fitools:do_compile sig is computed to be 5851605e22907038837428950427053e22=
ea655641a08b5dafa39d6d6e1c5e15, but the sig is locked to b81a26e3591c71acd3=
d22212bfdb70a15a0df49af72e7634e6a39851f16e18b5
 in SIGGEN_LOCKEDSIGS_t-corei7-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The monkeysphe=
re:do_install sig is computed to be 13a65b26dfff91f2432a8064d98003559eafffa=
214d81c3c6ea112c2dfba0391, but the sig is locked to 2058fc9032b0e7f5c1ea358=
de4fa8d25ccec7204b73ebc636e79222d8cc00469 in
 SIGGEN_LOCKEDSIGS_t-corei7-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The signature:=
do_compile sig is computed to be ac0c5c19cdbe7484046657ccb7b768c02fbbabb431=
66befa93b71a85d5fcf55b, but the sig is locked to cf5c3f72489f447b1199aafe4b=
4148988ff91cecd970422352f2238afb127683 in SIGGEN_LOCKEDSIGS_t-corei7-64<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi-n=
ative:do_clean_grub sig is computed to be 4e16b100c32e9428126eb108645080385=
27cec795c5e4391208d96a55735c90a, but the sig is locked to a2bd26be0297624af=
53d6f8cf657d79740fb229db821c446d564c5ee9dc80ea3
 in SIGGEN_LOCKEDSIGS_t-x86-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi-n=
ative:do_compile sig is computed to be 630cc346f7ececf98c54f9134e8fee546e85=
c92f1e3c6ac3c258a1cdf24d4565, but the sig is locked to 802bba0874ce26169a9e=
16dcdb440795e8fa904977b036d637d6c4086ce72de8
 in SIGGEN_LOCKEDSIGS_t-x86-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi:d=
o_clean_grub sig is computed to be faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c=
47691cd0aaa80de91187af3c, but the sig is locked to 0075bbd34297bfbc62685ff5=
477feec11d0dd2bcda6787a151cfb7927a7f39c2 in
 SIGGEN_LOCKEDSIGS_t-corei7-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The grub-efi:d=
o_compile sig is computed to be 30c09f3e8db4059b7e1ff23823f208be94d0e622904=
fc43eda497027be095a71, but the sig is locked to a9e8ddd9ecac11e67c66d9fccba=
be23b6eb4a19c5996baef8ff960dfcdc898ed in SIGGEN_LOCKEDSIGS_t-corei7-64<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">ERROR: Task qu=
ilt-native.do_fetch attempted to execute unexpectedly<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-support/db/db_5.3.28.bb:do_=
populate_sysroot, unihash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285=
061b6e1c9c3a9c0, taskhash dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285=
061b6e1c9c3a9c0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-extended/sed/sed_4.2.2.bb:d=
o_package_write_ipk, unihash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff2=
8a76e1851f8f8f8fe3, taskhash a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff2=
8a76e1851f8f8f8fe3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-support/libatomic-ops/libat=
omic-ops_7.6.10.bb:do_package_qa, unihash 2b17b70b3e1568840e3b39488b9e6470c=
89d5ffd502f02b2c129331d7609add8, taskhash 2b17b70b3e1568840e3b39488b9e6470c=
89d5ffd502f02b2c129331d7609add8<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Task /disk0/sc=
ratch/smonsees/testSDK/layers/poky/meta/recipes-connectivity/openssh/openss=
h_8.0p1.bb:do_package_qa, unihash 87a24567344a646de9ab6fba50b398e41711ff4d1=
bca749ebe02d84359c2a155, taskhash 87a24567344a646de9ab6fba50b398e41711ff4d1=
bca749ebe02d84359c2a155<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">.<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">.<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://www.mail-archive.com/search?l=3Dyocto@yoctoproject.org&amp;q=3Dsubject=
:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&amp;o=3Dnewes=
t&amp;f=3D1" target=3D"_blank">https://www.mail-archive.com/search?l=3Dyoct=
o@yoctoproject.org&amp;q=3Dsubject:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+insta=
ll+script+failure%22&amp;o=3Dnewest&amp;f=3D1</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html" target=
=3D"_blank">https://www.yoctoproject.org/pipermail/yocto/2017-August/03735=
9.html</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><a href=3D"htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344" target=3D"_blank">h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12344</a><u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border=
-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopr=
oject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Thursday, March 4, 2021 8:13 AM<br>
<b>To:</b> Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@bae=
systems.com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;; <a hr=
ef=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yo=
ctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] #yocto #sdk<u></u><u></u></p>
</div>
</div>
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
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">I=
s there a list of certain classes that might interfere with the ability of =
the eSDK to lock down the configuratiuon ?<u></u><u></u></span></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)"><=
u></u>=C2=A0<u></u></span></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">T=
hanks,<u></u><u></u></span></pre>
<pre><span style=3D"font-family:Calibri,sans-serif;color:rgb(31,73,125)">S=
teve<u></u><u></u></span></pre>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<=
u></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border=
-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctopro=
ject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopr=
oject.org</a>&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Tuesday, March 2, 2021 3:26 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] #yocto #sdk<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
<p class=3D"MsoNormal">I still appear to be having an issue with the SXT S=
DK install=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Building for zeus/x86_64 Intel based platform=E2=80=
=
=A6<u></u><u></u></p>
<p class=3D"MsoNormal">I build my kernel image clean, fully functional=E2=
=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">Standard SDK builds clean and appears functional=E2=
=
=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Ext SDK builds clean, but on install I am still see=
ing Error below=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u><span>(1)=
<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0
</span></span><u></u>What is it comparing=C2=A0 between unhash/task hash ?=
, more sig issues ?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u><span>(2)=
<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0
</span></span><u></u>What is meant by =E2=80=9CThis is usually due to miss=
ing setscene tasks=E2=80=9D ?<u></u><u></u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u>=C2=A0<u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u><span>(3)=
<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0
</span></span><u></u>In the local.conf under the SDK they set : <u></u><u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u>=C2=A0<u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph">SSTATE_MIRRORS +=
=
=3D &quot; <a>file://universal/(.*)</a>
<a>file://universal-4.9/\1</a> <a>
file://universal-4.9/(.*)</a> <a>file://universal-4.8/\1</a>&quot;<u></u><=
u></u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u>=C2=A0<u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph">Under sdk-extra.=
conf I set :<u></u><u></u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u>=C2=A0<u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph">SSTATE_MIRRORS +=
=
=3D <a>
file://.* file:///ede/tms/yocto/zeus/sstate_cache/PATH</a><u></u><u></u></=
p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph"><u></u>=C2=A0<u>=
</u></p>
<p class=3D"gmail-m_-3844774918329209826MsoListParagraph">My SSTATE_MIRRIO=
R is based off the clean builds I mentioned above, is this the correct proc=
edure ?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to figure out how best to debug this is=
sue, it is occurring on the post install, and everything pretty much appear=
s in place.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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
db08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601, taskhash c=
db08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601<u></u><u></=
u></p>
<p class=3D"MsoNormal">Task /disk0/scratch/smonsees/testSDK/layers/poky/me=
ta/recipes-devtools/python/python3_3.7.8.bb:do_packagedata, unihash 925a72c=
be872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f, taskhash 925a72c=
be872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal">.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This is usually due to missing setscene tasks. Thos=
e missing in this build were:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">&lt;&lt;appears to list every recipe under ./testSD=
K/layers directory here&gt;&gt;<u></u><u></u></p>
</div>
</div>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000b64de305bcba0d1b--
