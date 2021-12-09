Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7729C433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 19:22:13 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.16277.1639077732566589733
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 11:22:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=j76ezDT/;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1639077732; x=1796757732;
  h=from:to:subject:date:mime-version;
  bh=J/5WZAVy//Tzu3reIjKo69fC9Szq9x9QgzfZiwx9GCU=;
  b=j76ezDT/y7NLbApd4QprQU9SCDhYhzI/yqfs0DeS3Kgrk/uGoiJFasLG
   AcnpJwEeP7thG0g32fI77EuO+mG0JFKjLSke+4frCNgwftwR31v1XRBGP
   shaTsTDwVb1YXjkrUmC1S4mfO7ltSvGz5oGbh2GC/m4GCK1a4HnTqSP73
   s=;
IronPort-SDR: 
 /ZKA7cmjoQCov0Ib8AJ4ykrlYlgf2tg8unwftNPT4f7P85zGVJNnXY/BYszfVgZLPZ+qCugABD
 4bm+o2at8JVw==
IronPort-PHdr: =?us-ascii?q?A9a23=3Aw+6aEh0hEOMbXBJysmDOKwQyDhhOgF0UFjAc5?=
 =?us-ascii?q?pdvsb9SaKPrp82kYBaGo6U1xwaTBM3y0LFts6LuqafuWGgNs96qkUspV9hyb?=
 =?us-ascii?q?SIDktgchAc6AcSIWgXRJf/uaDEmTowZDAc2t360PlJIF8ngelbcvmO97SIIG?=
 =?us-ascii?q?hX4KAF5Ovn5FpTdgsipyuy+4Z7ebxlHiDagf79+MQi9oBnMuMURnYZsMLs6x?=
 =?us-ascii?q?AHTontPdeRWxGdoKkyWkh3h+Mq+/4Nt/jpJtf45+MFOTav1f6IjTbxFFzsmK?=
 =?us-ascii?q?Hw65NfqtRbYUwSC4GYXX3gMnRpJBwjF6wz6Xov0vyDnuOdxxDWWMMvrRr0yR?=
 =?us-ascii?q?D+s7bpkSAXwhSkHKTA37X3XhMJzgqJavB2uqAdyzJTIbIGXLvdyYr/Rcc0cS?=
 =?us-ascii?q?GFcXshRTStBAoakYocBCOQBOuBYr5LjqFQQthuyHRSnCv7zyjBWmH/5w6s62?=
 =?us-ascii?q?Pk/HArb2AAvEc8AvHHaoN7oM6oSSvy1w7fWzTrdafNawzL96I/OchA6v/6DQ?=
 =?us-ascii?q?6lwfNHKxkY1CQzFlVWRqZf5PzyL0+QNqHKX4PZnVeKqkmMqrRx6rTezyMk2k?=
 =?us-ascii?q?IbJmp4VxU7e9SV/2Is7K9O1RVJ6bNOmEZZcqTyWOpV1T84iR2xltyk3xqAIt?=
 =?us-ascii?q?5O7cyYG1ZAqyhzfZvGIcoWE/wzuWeKSLDp7mX9pZb2xihCv+kaj0u3xTtS43?=
 =?us-ascii?q?EpQoidLkNTArG0B2hjd58SdS/Zw/l+t1SuT2wzJ5exJLlo4mKXBJ5I8wrM9k?=
 =?us-ascii?q?IcYv17ZES/sgkr2ibebdkAj+ue19evqeq7mppqAN49sjQH+L7gultS/AesmN?=
 =?us-ascii?q?ggOWHCW+fqm273j+035Ra5Kg/kyn6TdrJzWON4XpqijDANPyYks8QiwDyym0?=
 =?us-ascii?q?dQDgXkIMldFeAmdg4f1PFHOJej0Dfa5g1uyjDdm3+3KMqH7DpjDLHXPiqrtc?=
 =?us-ascii?q?LJz5kJGyQc+zchT55dOBbEAJPLzVFXxtNvdDhIhKAy03/joCMtj2YMYQ26PB?=
 =?us-ascii?q?6iZMKXJsVCW+O0vOPKBa5QPtznjMPgk5+XujWMnll8YZqmlx4cYaHe9Hvh+O?=
 =?us-ascii?q?UWWfWLsgssdEWcNpgc/TOvqh0GeUT5UfHuyW6M85ionCIK9F4vCRoetj6Cd3?=
 =?us-ascii?q?Ce8Bp1WfGdGClKSHnj0a4WIQfAMaDidIpwprjtRH6mmQJMm/RWvrxPhjatgJ?=
 =?us-ascii?q?fbT4jcft5/oyJ5y/eKZ3UUj8jdoCOyZ0nqRVCdlmWgUQCcs26JyqlA7zU2Mh?=
 =?us-ascii?q?/tWmftdQJZ24PVSXwohcdbn0+FkBta6cUqBQ+zIAh7yWcmrHzw3CNc2xcQDb?=
 =?us-ascii?q?l1VEdyvlQHYwyevGPkekLndV898yb7Vw3Wkf5U18H3BzqR01zEb?=
IronPort-Data: =?us-ascii?q?A9a23=3AKqm2GaNfpKguQpnvrR2QlcFynXyQoLVcMsEvi?=
 =?us-ascii?q?/4bfWQNrUolgTxTzmYYCD2CPfaIZ2LwfY0ib4i2p0oEuZ7UxtRnHXM5pCpnJ?=
 =?us-ascii?q?55oRWopJjg7wn8dtEp+F+WbJK5cx5hYOomowPwcFCeG/073aum59hGQ6InRL?=
 =?us-ascii?q?lbCIL+cUsxObVI8IMsRoUoLd98R2uaEs/Dga+++kY+aT/nkBbOQ82Uc3lT4S?=
 =?us-ascii?q?k60gEgHUPza4Fv0t7GlDBxBlAe2e3I9VPrzKUwtRkYUTLW4HsbiLwrC5K+w/?=
 =?us-ascii?q?mXc5EZ8W4v81LDyNEcDT6XDJhSDj2EQUK+n6vRAjnVqlP1kcqNNMgEJ1l1ln?=
 =?us-ascii?q?PgooDlJnYesRBkkOOvJn+IGXhRDOyt3MLZX46PKJGP5usuWp6HDWye3n6w3U?=
 =?us-ascii?q?xFpZuX0/c4yWwmi78cwOTcGcherg+Ot3Kn9W+5nmsM7Ns7pMYgD/HZ6wlnk4?=
 =?us-ascii?q?VwOKXzYa/ySo4QHmm5h3YYQQJ7jiwMiQWIHRHz9j9dnYw5/5EoCodqV?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AycmqV6+ENWgFoKoU3iBuk+D+I+orL9Y04l?=
 =?us-ascii?q?Q7vn2ZKCY4TiX8rauTdZsguiMc5Ax+ZJhYo6HnBEDjexPhHO9OgLX5VI3KNG?=
 =?us-ascii?q?OKhILCFvAA0WKN+UyaJwTOssJbyKd8Y+xfJbTLfCJHZcuR2njdLz4tquP3lZ?=
 =?us-ascii?q?xBj43lvhVQpQ4BUdAG0+6hMHfjLqShfng/OaYE?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A1AwC/VrJh/0HBJQpagQkJgVCBIYI?=
 =?us-ascii?q?EgUILlU+cR4F8CwEBAQEBAQEBAQgBNQwEAQGIJiY0CQ4BAgQBAQESAQEGAQE?=
 =?us-ascii?q?BAQEGBAGBG4VpDII1IoQMARJeARUjCAE/JgEEG4Jqgg6BGLJGgTMaAmWDUgO?=
 =?us-ascii?q?BFYUPgTqBZoVEgn6GF0OECIUiZ4UMIgSSQgJ0BkQbAi58GBk9AymecaAwBwO?=
 =?us-ascii?q?DQJ8PLxWWIQORI5YrH6V+AgQCBAUCFoFhghRwUIJpCUgXApx/dAI2AgYLAQE?=
 =?us-ascii?q?DCY1egRCBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2A1AwC/VrJh/0HBJQpagQkJgVCBIYIEgUILlU+cR4F8C?=
 =?us-ascii?q?wEBAQEBAQEBAQgBNQwEAQGIJiY0CQ4BAgQBAQESAQEGAQEBAQEGBAGBG4VpD?=
 =?us-ascii?q?II1IoQMARJeARUjCAE/JgEEG4Jqgg6BGLJGgTMaAmWDUgOBFYUPgTqBZoVEg?=
 =?us-ascii?q?n6GF0OECIUiZ4UMIgSSQgJ0BkQbAi58GBk9AymecaAwBwODQJ8PLxWWIQORI?=
 =?us-ascii?q?5YrH6V+AgQCBAUCFoFhghRwUIJpCUgXApx/dAI2AgYLAQEDCY1egRCBEAEB?=
X-IronPort-AV: E=Sophos;i="5.88,193,1635206400";
   d="scan'208,217";a="434117873"
IronPort-SDR: 
 d7KDdhZYGGH90NUAmAuNDwG6ARc1CEP+xYZfmbrkA6g9lrmyMH9KSXdDuIUM7T1AB0pTsA6hCI
 jji5FchBa+9g==
X-IronPort-AV: E=Sophos;i="5.88,193,1635206400";
   d="scan'208,217";a="43943810"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: standard SDK build with clang compiler built into kernel image
Thread-Topic: standard SDK build with clang compiler built into kernel image
Thread-Index: AdftMM9oP8nTuSrNRXm/KTNsR87wqg==
Date: Thu, 9 Dec 2021 19:21:07 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_66fef1891a9e43f3a322ce2887b6ede5baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 19:22:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55539
Message-Id: <20211209192213.B7729C433EF@smtp.lore.kernel.org>

--_000_66fef1891a9e43f3a322ce2887b6ede5baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am building clang compiler support into my kernel, to support igc (intel =
graphics compiler)...

When I build the standard SDK it list a series of specific clang/llvm issue=
s but successfully completes the SDK setup/install.
The SDK looks to have everything in place, and basic functionality is worki=
ng...

I do not see these messages when I remove the clang component.

Can someone explain what is happening here ?, is it a known issue  ?, is th=
ere patch available ?

I am building a "zeus" 3.0.4 based kernel, for centos...

-bash-4.2$ cd sdk
-bash-4.2$ ls
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.host.manifest
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.sh
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.target.manifest
limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.testdata.json
-bash-4.2$  sudo ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4=
.sh
[sudo] password for smonsees:
LIMWS (BAE LIMWS base distro) SDK installer version 3.0.4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Enter target directory for SDK (default: /opt/limws/3.0.4): /disk0/scratch/=
smonsees/yocto/sdk_3.0.4
You are about to install the SDK to "/disk0/scratch/smonsees/yocto/sdk_3.0.=
4". Proceed [Y/n]? Y
Extracting SDK.............................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
....................................done
Setting it up...ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk=
_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-tidy, interp size =3D 72=
 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cxxdump, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-ar, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-symbolizer, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-9, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-as, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-extdef-mapping, interp size =3D 72 and 9=
5 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-reorder-fields, interp size =3D 72 and 9=
5 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-mca, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-apply-replacements, interp size =3D 72 a=
nd 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-dwarfdump, interp size =3D 72 and 95 is n=
eeded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-elfabi, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-instr, interp size =3D 72 and 95 is neede=
d.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/c-index-test, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-doc, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-tblgen, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-undname, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-mt, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-extract, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-jitlink, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/modularize, interp size =3D 72 and 95 is neede=
d.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-opt-report, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/bugpoint, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lld, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/dsymutil, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-dwp, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cat, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-dis, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-c-test, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-refactor, interp size =3D 72 and 95 is n=
eeded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/sanstats, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-size, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/yaml2obj, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-split, interp size =3D 72 and 95 is neede=
d.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-rename, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-vscode, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-readobj, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-tblgen, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-argdumper, interp size =3D 72 and 95 is n=
eeded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-check, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-xray, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clangd, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-scan-deps, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-rc, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-lto, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-mi, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-modextract, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-rtdyld, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-diff, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-change-namespace, interp size =3D 72 and=
 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cfi-verify, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-query, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-link, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-offload-bundler, interp size =3D 72 and =
95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-import-test, interp size =3D 72 and 95 i=
s needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-format, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-include-fixer, interp size =3D 72 and 95=
 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/diagtool, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/sancov, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-objcopy, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cxxmap, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-strings, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-lto2, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llc, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/opt, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-exegesis, interp size =3D 72 and 95 is ne=
eded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-spirv, interp size =3D 72 and 95 is neede=
d.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cvtres, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cov, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-lipo, interp size =3D 72 and 95 is needed=
.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/find-all-symbols, interp size =3D 72 and 95 is=
 needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/obj2yaml, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/verify-uselistorder, interp size =3D 72 and 95=
 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-objdump, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-mc, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lli, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-config, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-stress, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/lldb-server, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-cxxfilt, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-profdata, interp size =3D 72 and 95 is ne=
eded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-pdbutil, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-bcanalyzer, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/clang-tblgen, interp size =3D 72 and 95 is nee=
ded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/bin/llvm-nm, interp size =3D 72 and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/liblldbIntelFeatures.so.9, interp size =3D 72 =
and 95 is needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/libRemarks.so.9, interp size =3D 72 and 95 is =
needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/libclang.so.9, interp size =3D 72 and 95 is ne=
eded.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/liblldb.so.9.0.1, interp size =3D 72 and 95 is=
 needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/libclang-cpp.so.9, interp size =3D 72 and 95 i=
s needed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/LLVMgold.so, interp size =3D 72 and 95 is need=
ed.
ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/=
x86_64-pokysdk-linux/usr/lib/libLTO.so.9, interp size =3D 72 and 95 is need=
ed.
done
SDK has been successfully set up and is ready to be used.
Each time you wish to use the SDK in a new shell session, you need to sourc=
e the environment setup script e.g.
$ . /disk0/scratch/smonsees/yocto/sdk_3.0.4/environment-setup-corei7-64-pok=
y-linux
-bash-4.2$

Thanks,
Steve

--_000_66fef1891a9e43f3a322ce2887b6ede5baesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building clang compiler support into my kernel,=
 to support igc (intel graphics compiler)&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I build the standard SDK it list a series of sp=
ecific clang/llvm issues but successfully completes the SDK setup/install.<=
o:p></o:p></p>
<p class=3D"MsoNormal">The SDK looks to have everything in place, and basic=
 functionality is working&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I do not see these messages when I remove the clang =
component.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070C0">Can someone explain=
 what is happening here ?, is it a known issue&nbsp; ?, is there patch avai=
lable ?<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building a &#8220;zeus&#8221; 3.0.4 based kerne=
l, for centos&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-bash-4.2$ cd sdk<o:p></o:p></p>
<p class=3D"MsoNormal">-bash-4.2$ ls<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3=
.0.4.host.manifest<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3=
.0.4.sh<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3=
.0.4.target.manifest<o:p></o:p></p>
<p class=3D"MsoNormal">limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3=
.0.4.testdata.json<o:p></o:p></p>
<p class=3D"MsoNormal">-bash-4.2$&nbsp; sudo ./limws-glibc-x86_64-aiox_oran=
ge-corei7-64-toolchain-3.0.4.sh<o:p></o:p></p>
<p class=3D"MsoNormal">[sudo] password for smonsees: <o:p></o:p></p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) SDK installer version =
3.0.4<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">Enter target directory for SDK (default: /opt/limws/=
3.0.4): /disk0/scratch/smonsees/yocto/sdk_3.0.4<o:p></o:p></p>
<p class=3D"MsoNormal">You are about to install the SDK to &quot;/disk0/scr=
atch/smonsees/yocto/sdk_3.0.4&quot;. Proceed [Y/n]? Y<o:p></o:p></p>
<p class=3D"MsoNormal">Extracting SDK......................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................done<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Setting it up...ERROR: could not relocate /disk0/scr=
atch/smonsees/yocto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-t=
idy, interp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cxxdump, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-ar, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">ERROR: could not reloca=
te /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/us=
r/bin/llvm-symbolizer, interp size =3D 72 and 95 is needed.<o:p></o:p></spa=
n></b></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-9, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-as, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-extdef-mapping, i=
nterp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-reorder-fields, i=
nterp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-mca, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-apply-replacement=
s, interp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-dwarfdump, interp =
size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-elfabi, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-instr, interp size=
 =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/c-index-test, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-doc, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-tblgen, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-undname, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-mt, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb, interp size =3D 7=
2 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-extract, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-jitlink, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/modularize, interp size=
 =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-opt-report, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/bugpoint, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lld, interp size =3D 72=
 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/dsymutil, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-dwp, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cat, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-dis, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-c-test, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-refactor, interp =
size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/sanstats, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-size, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/yaml2obj, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-split, interp size=
 =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-rename, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-vscode, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-readobj, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-tblgen, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-argdumper, interp =
size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-check, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-xray, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clangd, interp size =3D=
 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-scan-deps, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-rc, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-lto, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-mi, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-modextract, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-rtdyld, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-diff, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-change-namespace,=
 interp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cfi-verify, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-query, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-link, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-offload-bundler, =
interp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-import-test, inte=
rp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-format, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-include-fixer, in=
terp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/diagtool, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/sancov, interp size =3D=
 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-objcopy, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cxxmap, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-strings, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-lto2, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llc, interp size =3D 72=
 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/opt, interp size =3D 72=
 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-exegesis, interp s=
ize =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-spirv, interp size=
 =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cvtres, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cov, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-lipo, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/find-all-symbols, inter=
p size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/obj2yaml, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/verify-uselistorder, in=
terp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-objdump, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-mc, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lli, interp size =3D 72=
 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-config, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-stress, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/lldb-server, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-cxxfilt, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-profdata, interp s=
ize =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-pdbutil, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-bcanalyzer, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-tblgen, interp si=
ze =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/llvm-nm, interp size =
=3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/liblldbIntelFeatures.so=
.9, interp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/libRemarks.so.9, interp=
 size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/libclang.so.9, interp s=
ize =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/liblldb.so.9.0.1, inter=
p size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/libclang-cpp.so.9, inte=
rp size =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/LLVMgold.so, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: could not relocate /disk0/scratch/smonsees/yo=
cto/sdk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/lib/libLTO.so.9, interp siz=
e =3D 72 and 95 is needed.<o:p></o:p></p>
<p class=3D"MsoNormal">done<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070C0">SDK has been succes=
sfully set up and is ready to be used.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal">Each time you wish to use the SDK in a new shell ses=
sion, you need to source the environment setup script e.g.<o:p></o:p></p>
<p class=3D"MsoNormal">$ . /disk0/scratch/smonsees/yocto/sdk_3.0.4/environm=
ent-setup-corei7-64-poky-linux<o:p></o:p></p>
<p class=3D"MsoNormal">-bash-4.2$<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_66fef1891a9e43f3a322ce2887b6ede5baesystemscom_--

