Return-Path: <abeltran@linux.microsoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 472B5C433EF
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 01:44:31 +0000 (UTC)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web08.1808.1639603996916959251
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Dec 2021 13:33:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com
 header.s=default header.b=SSA7xPnU;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182,
 mailfrom: abeltran@linux.microsoft.com)
Received: from [192.168.1.103] (unknown [186.69.115.196])
	by linux.microsoft.com (Postfix) with ESMTPSA id 6709920B7179;
	Wed, 15 Dec 2021 13:33:15 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 6709920B7179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1639603996;
	bh=1TvRAzQ59YMwCwGccVerfgyxZqA/J//JaZZ6Ttn3amA=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=SSA7xPnUSvWtPqExEgL2s38y302p0pj+D17r3a1nvgDC5NxoN24M81b9QA++lvKiX
	 zx/Fp0eAuTqCXZ8GGBMh1Emxwj8wa/BKsTzbIUfW9TLpHOKVbIalA+5qwk7A+iYs9B
	 0rULY9CNnWn5KvpvBPCmr9F6ldDFHehiZKTTacWE=
Content-Type: multipart/alternative;
 boundary="------------vhx2kjcepBwspXM8jhji950S"
Message-ID: <6a61f35f-6684-a5ce-a697-acd2f3743a6d@linux.microsoft.com>
Date: Wed, 15 Dec 2021 16:33:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [yocto] spdx: Extending SPDX SBOMs for SDKs
Content-Language: en-US
From: Andres Beltran <abeltran@linux.microsoft.com>
To: yocto@lists.yoctoproject.org, JPEWhacker@gmail.com,
 saul.wold@windriver.com
References: <16BE4FA6969E32DE.28785@lists.yoctoproject.org>
In-Reply-To: <16BE4FA6969E32DE.28785@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 01:44:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55597

This is a multi-part message in MIME format.
--------------vhx2kjcepBwspXM8jhji950S
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

+ Joshua, Saul

On 12/6/2021 6:54 PM, Andres Beltran wrote:
>
> Hello,
>
>
> I've been working on extending SPDX SBOMs for SDKs. In 
> poky/meta/classes/create-spdx.bbclass I added:
>
> /do_populate_sdk[recrdeptask] += "do_create_spdx do_create_runtime_spdx"/
>
> I ran into a dependency loop when I try to build an SDK that contains 
> nativesdk-clang (it works fine for other SDKs):
>
> /ERROR: /
>
> //
>
> /Dependency loop #1 found:/
>
> //
>
> /Task 
> mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang-crosssdk_git.bb:do_create_spdx 
> (dependent Tasks ['glibc_2.31.bb:do_create_spdx', 
> 'binutils-crosssdk_2.34.bb:do_create_spdx', 
> 'clang_git.bb:do_create_spdx', 
> 'quilt-native_0.66.bb:do_populate_sysroot', 
> 'nativesdk-clang-glue.bb:do_create_spdx'])/
>
> //
>
> //
>
> //
>
> /Task 
> mc:lnx-sdk:virtual:nativesdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/clang_git.bb:do_create_spdx 
> (dependent Tasks ['clang_git.bb:do_packagedata', 
> 'cmake-native_3.16.5.bb:do_create_spdx', 
> 'swig_3.0.12.bb:do_create_spdx', 
> 'libedit_20191231-3.1.bb:do_create_spdx', 
> 'binutils-crosssdk_2.34.bb:do_create_spdx', 
> 'chrpath_0.16.bb:do_create_spdx', 'libffi_3.3.bb:do_create_spdx', 
> 'clang-crosssdk_git.bb:do_create_spdx', 
> 'zlib_1.2.11.bb:do_create_spdx', 'clang_git.bb:do_package', 
> 'python3_3.8.2.bb:do_create_spdx', 'libxml2_2.9.10.bb:do_create_spdx', 
> 'python3_3.8.2.bb:do_create_spdx', 'pkgconfig_git.bb:do_create_spdx', 
> 'binutils_2.34.bb:do_create_spdx', 
> 'quilt-native_0.66.bb:do_populate_sysroot', 
> 'libedit_20191231-3.1.bb:do_create_spdx', 
> 'libxml2_2.9.10.bb:do_create_spdx', 'ninja_1.10.0.bb:do_create_spdx'])/
>
> //
>
> //
>
> //
>
> /Task 
> mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/nativesdk-clang-glue.bb:do_create_spdx 
> (dependent Tasks ['gcc-runtime_9.3.bb:do_create_spdx', 
> 'glibc_2.31.bb:do_create_spdx', 'nativesdk-clang-glue.bb:do_package', 
> 'gcc-crosssdk_9.3.bb:do_create_spdx', 
> 'chrpath_0.16.bb:do_create_spdx', 
> 'quilt-native_0.66.bb:do_populate_sysroot', 
> 'nativesdk-clang-glue.bb:do_packagedata', 'clang_git.bb:do_create_spdx'])/
>
> Any help on this would be appreciated.
>
> Thanks,
>
> Andres Beltran
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55489):https://lists.yoctoproject.org/g/yocto/message/55489
> Mute This Topic:https://lists.yoctoproject.org/mt/87554396/6294599
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [abeltran@linux.microsoft.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------vhx2kjcepBwspXM8jhji950S
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>+ Joshua, Saul<br>
    </p>
    <div class=3D"moz-cite-prefix">On 12/6/2021 6:54 PM, Andres Beltran
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:16BE4FA6969E32DE.28785@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p> </p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Hello,=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><br>
      </p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">I've
        been working on extending SPDX SBOMs for SDKs. In
        poky/meta/classes/create-spdx.bbclass I added:</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>do_=
populate_sdk[recrdeptask]
          +=3D "do_create_spdx do_create_runtime_spdx"</i></p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">I ran
        into a dependency loop when I try to build an SDK that contains
        nativesdk-clang (it works fine for other SDKs):</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>ERR=
OR:
        </i></p>
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Dep=
endency
          loop #1 found:</i></p>
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Tas=
k
mc:lnx-sdk:/__w/1/s/sources/poky/../meta-clang/recipes-devtools/clang/cla=
ng-crosssdk_git.bb:do_create_spdx
          (dependent Tasks ['glibc_2.31.bb:do_create_spdx',
          'binutils-crosssdk_2.34.bb:do_create_spdx',
          'clang_git.bb:do_create_spdx',
          'quilt-native_0.66.bb:do_populate_sysroot',
          'nativesdk-clang-glue.bb:do_create_spdx'])</i></p>
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>=C2=
=A0</i></p>
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Tas=
k
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
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>=C2=
=A0</i></p>
      <i> </i>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt"><i>Tas=
k
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
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Any
        help on this would be appreciated.</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">=C2=A0=
</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Thanks=
,</p>
      <p style=3D"margin:0in;font-family:Calibri;font-size:11.0pt">Andres
        Beltran<br>
      </p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#55489): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/55489">https://lists.yoctopr=
oject.org/g/yocto/message/55489</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/87554396/6294599">https://lists.yoctoproject.org/mt/=
87554396/6294599</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:abeltran@linux=
.microsoft.com">abeltran@linux.microsoft.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
  </body>
</html>
--------------vhx2kjcepBwspXM8jhji950S--


