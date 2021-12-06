Return-Path: <abeltran@linux.microsoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C577C433F5
	for <webhook@archiver.kernel.org>; Mon,  6 Dec 2021 23:54:52 +0000 (UTC)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web10.60223.1638834890755540850
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 15:54:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com
 header.s=default header.b=Bbq9Eca0;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182,
 mailfrom: abeltran@linux.microsoft.com)
Received: from [192.168.1.103] (unknown [186.69.115.196])
	by linux.microsoft.com (Postfix) with ESMTPSA id 87E8620E6F21
	for <yocto@lists.yoctoproject.org>; Mon,  6 Dec 2021 15:54:49 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 87E8620E6F21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1638834889;
	bh=pXTKgM60WAOkeKXuobPqLjSjU2YPTLDqIZ2OnyhZ3cQ=;
	h=To:From:Subject:Date:From;
	b=Bbq9Eca0XNHnLVgUNYvt0Z51vwSqazSLaH8O2rw658DJy9vbRzkNRg7oXLhimFxVZ
	 P5u5E7LB5B/QUGj2TqyFY7UCOSPkcv3l4rp4htlqGggGbrrN5+2luBZQozaA3ejPPI
	 NAPocC6FcsTAkXvTrMjPkQH7BdIlNDZFSA0GU1cI=
To: yocto@lists.yoctoproject.org
From: Andres Beltran <abeltran@linux.microsoft.com>
Subject: spdx: Extending SPDX SBOMs for SDKs
Message-ID: <5e48a03f-d635-0b49-29a0-ea9bb3bc8bb6@linux.microsoft.com>
Date: Mon, 6 Dec 2021 18:54:49 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------CC9314A10A8E80E03496A87B"
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Dec 2021 23:54:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55489

This is a multi-part message in MIME format.
--------------CC9314A10A8E80E03496A87B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,


I've been working on extending SPDX SBOMs for SDKs. In 
poky/meta/classes/create-spdx.bbclass I added:

/do_populate_sdk[recrdeptask] += "do_create_spdx do_create_runtime_spdx"/

I ran into a dependency loop when I try to build an SDK that contains 
nativesdk-clang (it works fine for other SDKs):

/ERROR: /

//

/Dependency loop #1 found:/

//

/Task 
mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang-crosssdk_git.bb:do_create_spdx 
(dependent Tasks ['glibc_2.31.bb:do_create_spdx', 
'binutils-crosssdk_2.34.bb:do_create_spdx', 
'clang_git.bb:do_create_spdx', 
'quilt-native_0.66.bb:do_populate_sysroot', 
'nativesdk-clang-glue.bb:do_create_spdx'])/

//

//

//

/Task 
mc:lnx-sdk:virtual:nativesdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang_git.bb:do_create_spdx 
(dependent Tasks ['clang_git.bb:do_packagedata', 
'cmake-native_3.16.5.bb:do_create_spdx', 
'swig_3.0.12.bb:do_create_spdx', 
'libedit_20191231-3.1.bb:do_create_spdx', 
'binutils-crosssdk_2.34.bb:do_create_spdx', 
'chrpath_0.16.bb:do_create_spdx', 'libffi_3.3.bb:do_create_spdx', 
'clang-crosssdk_git.bb:do_create_spdx', 'zlib_1.2.11.bb:do_create_spdx', 
'clang_git.bb:do_package', 'python3_3.8.2.bb:do_create_spdx', 
'libxml2_2.9.10.bb:do_create_spdx', 'python3_3.8.2.bb:do_create_spdx', 
'pkgconfig_git.bb:do_create_spdx', 'binutils_2.34.bb:do_create_spdx', 
'quilt-native_0.66.bb:do_populate_sysroot', 
'libedit_20191231-3.1.bb:do_create_spdx', 
'libxml2_2.9.10.bb:do_create_spdx', 'ninja_1.10.0.bb:do_create_spdx'])/

//

//

//

/Task 
mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/nativesdk-clang-glue.bb:do_create_spdx 
(dependent Tasks ['gcc-runtime_9.3.bb:do_create_spdx', 
'glibc_2.31.bb:do_create_spdx', 'nativesdk-clang-glue.bb:do_package', 
'gcc-crosssdk_9.3.bb:do_create_spdx', 'chrpath_0.16.bb:do_create_spdx', 
'quilt-native_0.66.bb:do_populate_sysroot', 
'nativesdk-clang-glue.bb:do_packagedata', 'clang_git.bb:do_create_spdx'])/

Any help on this would be appreciated.

Thanks,

Andres Beltran


--------------CC9314A10A8E80E03496A87B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>
    </p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Hello,</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><br>
    </p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">I've bee=
n
      working on
      extending SPDX SBOMs for SDKs. In
      poky/meta/classes/create-spdx.bbclass I
      added:</p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>do_po=
pulate_sdk[recrdeptask]
        +=3D "do_create_spdx do_create_runtime_spdx"</i></p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">I ran
      into a
      dependency loop when I try to build an SDK that contains
      nativesdk-clang (it
      works fine for other SDKs):</p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>ERROR=
:
      </i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Depen=
dency
        loop #1
        found:</i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Task
mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/cla=
ng-crosssdk_git.bb:do_create_spdx
        (dependent Tasks ['glibc_2.31.bb:do_create_spdx',
        'binutils-crosssdk_2.34.bb:do_create_spdx',
        'clang_git.bb:do_create_spdx',
        'quilt-native_0.66.bb:do_populate_sysroot',
        'nativesdk-clang-glue.bb:do_create_spdx'])</i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>=C2=A0=
</i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Task
mc:lnx-sdk:virtual:nativesdk:/__w/1/s/sources/poky/../meta-clang/recipes-=
devtools/clang/clang_git.bb:do_create_spdx
        (dependent Tasks ['clang_git.bb:do_packagedata',
        'cmake-native_3.16.5.bb:do_create_spdx',
        'swig_3.0.12.bb:do_create_spdx',
        'libedit_20191231-3.1.bb:do_create_spdx',
        'binutils-crosssdk_2.34.bb:do_create_spdx',
        'chrpath_0.16.bb:do_create_spdx',
        'libffi_3.3.bb:do_create_spdx',
        'clang-crosssdk_git.bb:do_create_spdx',
        'zlib_1.2.11.bb:do_create_spdx', 'clang_git.bb:do_package',
        'python3_3.8.2.bb:do_create_spdx',
        'libxml2_2.9.10.bb:do_create_spdx',
        'python3_3.8.2.bb:do_create_spdx',
        'pkgconfig_git.bb:do_create_spdx',
        'binutils_2.34.bb:do_create_spdx',
        'quilt-native_0.66.bb:do_populate_sysroot',
        'libedit_20191231-3.1.bb:do_create_spdx',
        'libxml2_2.9.10.bb:do_create_spdx',
        'ninja_1.10.0.bb:do_create_spdx'])</i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>=C2=A0=
</i></p>
    <i>
    </i>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Task
mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/nat=
ivesdk-clang-glue.bb:do_create_spdx
        (dependent Tasks ['gcc-runtime_9.3.bb:do_create_spdx',
        'glibc_2.31.bb:do_create_spdx',
        'nativesdk-clang-glue.bb:do_package',
        'gcc-crosssdk_9.3.bb:do_create_spdx',
        'chrpath_0.16.bb:do_create_spdx',
        'quilt-native_0.66.bb:do_populate_sysroot',
        'nativesdk-clang-glue.bb:do_packagedata',
        'clang_git.bb:do_create_spdx'])</i></p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Any help
      on this
      would be appreciated.</p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0</=
p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Thanks,<=
/p>
    <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Andres
      Beltran<br>
    </p>
  </body>
</html>

--------------CC9314A10A8E80E03496A87B--

