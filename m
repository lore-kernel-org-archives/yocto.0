Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30BDACEDD9A
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 14:13:01 +0000 (UTC)
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: "Tim Orling" <ticotimo@gmail.com>, yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bhubaneswar, Odisha, IN (106.222.202.225)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 07:12:55 -0700
References: <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
In-Reply-To: <CANx9H-AxeCQZiXuwiLj5CXCN107dT_69zHUC0hJAUnHQ_rz9BA@mail.gmail.com>
Message-ID: <13199.1728483175795897777@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="82G9EjrsX4OPSt4MmWAk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 14:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63988

--82G9EjrsX4OPSt4MmWAk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim & Khem Raj ,

I was able to get the openssl-3.2.0 using openssl-3.0.8( fips.so=C2=A0 ) fo=
llowing openssl documentation.
So at-least we know that functionality wise this is doable.

The challenge now is in bringing this to Yocto , fow which can team please =
suggest me :

a) After enabling fips in yocto recipe , i can now see that the fips.so and=
 fipsmodules are created in build.
But they are not installed .
- If i try to manually add logic in do_install of openssl_3.2.2.bb recipe ,=
 it created problem.
- That is because the same do_install is being used by :
openssl
openssl + classnative
openssl + classnativesdk.
Any suggestion here or any template or any pointer how can add install step=
s only for openssl

b) The logs of fips after configure step.
project/tmp/work/cortexa8hf-neon-mvdistro-linux-gnueabi/openssl/3.2.2/build=
/providers$ ls -al fips.so fipsmodule.cnf
-rw-r--r-- 1 ashishm ashishm =C2=A0 =C2=A0 221 Oct =C2=A09 14:01 fipsmodule=
.cnf
-rwxr-xr-x 1 ashishm ashishm 4526092 Oct =C2=A09 14:01 fips.so

c) Please note that the compilation went fine after enabling fips .

But since the do_install routine is used by openssl / openssl+classnative /=
 openssl+classnativesdk , any thing i do in do_install effects all three

Thanks ,
Ashish

--82G9EjrsX4OPSt4MmWAk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Tim &amp; Khem Raj ,</div>
<div>&nbsp;</div>
<div>I was able to get the openssl-3.2.0 using openssl-3.0.8( fips.so&nbsp;=
 ) following openssl documentation.</div>
<div>So at-least we know that functionality wise this is doable.</div>
<div>&nbsp;</div>
<div>The challenge now is in bringing this to Yocto , fow which can team pl=
ease suggest me :</div>
<div>&nbsp;</div>
<div>a) After enabling fips in yocto recipe , i can now see that the fips.s=
o and fipsmodules are created in build.</div>
<div>&nbsp;&nbsp;&nbsp; But they are not installed .</div>
<div>&nbsp;&nbsp;&nbsp; - If i try to manually add logic in do_install of o=
penssl_3.2.2.bb recipe , it created problem.</div>
<div>&nbsp;&nbsp;&nbsp; - That is because the same do_install is being used=
 by :</div>
<div>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openssl</div>
<div>&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; openssl + classnative</d=
iv>
<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; openssl +=
 classnativesdk.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; Any suggestion here or any template or any po=
inter how can add install steps only for openssl</div>
<div>&nbsp;</div>
<div>b) The logs of fips after configure step.</div>
<div>project/tmp/work/cortexa8hf-neon-mvdistro-linux-gnueabi/openssl/3.2.2/=
build/providers$ ls -al fips.so fipsmodule.cnf&nbsp;<br />-rw-r--r-- 1 ashi=
shm ashishm &nbsp; &nbsp; 221 Oct &nbsp;9 14:01 fipsmodule.cnf<br />-rwxr-x=
r-x 1 ashishm ashishm 4526092 Oct &nbsp;9 14:01 fips.so</div>
<div>&nbsp;</div>
<div>c) Please note that the compilation went fine after enabling fips .</d=
iv>
<div>&nbsp;&nbsp;</div>
<div>But since the do_install routine is used by openssl / openssl+classnat=
ive / openssl+classnativesdk , any thing i do in do_install effects all thr=
ee</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks ,</div>
<div>Ashish</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>
<div>&nbsp;</div>

--82G9EjrsX4OPSt4MmWAk--

