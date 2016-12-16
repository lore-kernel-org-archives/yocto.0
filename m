Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14681E00DE7; Fri, 16 Dec 2016 04:21:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1B2AE00D17
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:21:52 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id w33so85000472qtc.3
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9Oflpx5KDjVo4TVp3d0pFto0ICq1CZMtHKICxayY1ms=;
	b=HD92vG/cHYJ7ukpAr9nyN+3jrOe1RcRak7OvZsGwahSOTT+d3uGzEwh8hi6KYgDTAS
	seYvSwjSUrZYI360xOyrlS9vzOUGNjanwA9EsL16lhMUxHZmnYaxleABkp5ryUzYFNAs
	4l0N74LaUJWarDdkUbibyqkLKU8gc2M4uaReMbxVWRG4HaB0dEHpaMGytXjM6pf5ei1F
	yh3e3Y2hk+M9hFMJm3vj6Vw9TZWEXADmd5xsUycmR2NfHhGTNbYxtAYQBeYEFY/mL2/V
	zL48OFt41B/MBo+xQ2CkJV5AgSmS/xlJbSs7BvHwssjDO+/Rsd5FKALDKQHthEPhi0lD
	Ld1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9Oflpx5KDjVo4TVp3d0pFto0ICq1CZMtHKICxayY1ms=;
	b=MnH3SQCF0gDlgRTMOLX0snx/l3jJDfpekQHL5E9e8ovI0qLi00hgvfqzxlLpTxRDUl
	35oTQpno3srj5zVScCiSI/XrAAyE4ESrtpvWvGFwUSxSl6XP8fYSK4Fy7cR0fUWe1xTa
	02SPaT2oJ5ZFDralnX3e0MY2wA+3iFZVSjENAVchSqZzcTRfrjECsgQYtRDxVlbjd0dY
	loOuqEyKAW1Uz5kJjejz+qN6Kik/KJDhgG3+JpO0pN8H7byFzyXewvJVLbql1C0XiqmX
	9/FiuAxKXddev5IVLCEI2fNOHhO3n6xOyyxkxjOd4wMI2gSb1XZmqEsQuGWyAeNQpwDY
	hzKA==
X-Gm-Message-State: AIkVDXJG8a7tvJ114JjFIzD2APLoUJTlk9gSKx+KGUw0ZJjNy2ac9ahw3t88KGj/QRjVMy0qd+azKLZijNP1a+qh
X-Received: by 10.200.57.54 with SMTP id s51mr2134958qtb.68.1481890911730;
	Fri, 16 Dec 2016 04:21:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 16 Dec 2016 04:21:31 -0800 (PST)
In-Reply-To: <CAF3SDA4zxDqiyofGbA35UGHgmNG6oBgKK==unMJFh_6RAwTPow@mail.gmail.com>
References: <CAF3SDA4zxDqiyofGbA35UGHgmNG6oBgKK==unMJFh_6RAwTPow@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Dec 2016 12:21:31 +0000
Message-ID: <CAJTo0LawRg59hoZrS03DGcgdRVgG1PmJe6C7gN9Y_CKM6cdtdg@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get headers installed at target side of SDK?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Dec 2016 12:21:57 -0000
Content-Type: multipart/alternative; boundary=001a113a01e863f0ce0543c59dac

--001a113a01e863f0ce0543c59dac
Content-Type: text/plain; charset=UTF-8

On 16 December 2016 at 02:54, Daniel. <danielhilst@gmail.com> wrote:

> Then I tried to append packagegroup-sdk-target adding foo-dev to it
> but still I can't get the headers at the SDK. I'm building the SDK by
> building meta-toolchain and installing by executing the script
> generated at tmp/deploy/sdk.
>

Build a SDK by using bitbake my-image-name -c populate_sdk.

This will build a SDK which contains the -dev packages for everything that
goes into your image.  If you want headers that are not in your image
usually then you can add them to TOOLCHAIN_TARGET_TASK in the image recipe:

TOOLCHAIN_TARGET_TASK_append = " libsomething.dev"

Ross

--001a113a01e863f0ce0543c59dac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 December 2016 at 02:54, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mail=
to:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":8qs" class=3D"a3=
s aXjCH m15905ba9f738af8f">Then I tried to append packagegroup-sdk-target a=
dding foo-dev to it<br>
but still I can&#39;t get the headers at the SDK. I&#39;m building the SDK =
by<br>
building meta-toolchain and installing by executing the script<br>
generated at tmp/deploy/sdk.<br></div></blockquote></div><br>Build a SDK by=
 using bitbake my-image-name -c populate_sdk.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">This will build a SDK which contain=
s the -dev packages for everything that goes into your image.=C2=A0 If you =
want headers that are not in your image usually then you can add them to TO=
OLCHAIN_TARGET_TASK in the image recipe:</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">TOOLCHAIN_TARGET_TASK_append =3D &quot; =
libsomething.dev&quot;</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113a01e863f0ce0543c59dac--
