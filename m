Return-Path: <augiekim@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81067E00DD6; Tue, 28 Jun 2016 10:28:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (augiekim[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB74E00CAA
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 10:28:48 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id s66so32861241oif.1
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 10:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oAigAArBD/x7xIt6Atsnwiquj9Kn947pXm76rD0j+v0=;
	b=upB7FFbBl0+gj2Ptf7AGTM6AsHZFK1E4j2qiUry7fmK/buXPC9Eas5h9uaByz+mcz0
	QRCL6sxXqmU5g2lFOaR+dOzWaWDes7MrOLb8aXi/x+u+a85Yao33GKTbOXPTDPGbxSyx
	LQGIPDdUJ13xapKeBUOj6K0UWHjpvwGSDRuwwGeMPjBp576wFkYQ1mWhTWM6QXv+DIj4
	nsZgTyqyZXrWfJ3YSjmA7fUBfyTOsX7m19asnp56yZ5ojG+mrE5T3gFSwou0WMhNaT7T
	ZUTOVUw7uIDYvfVFGRz6WMf2LrOPiCWPPs2pXty6jqqlRcgYJaKmuOkbFn26YOoGFH8r
	Re5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oAigAArBD/x7xIt6Atsnwiquj9Kn947pXm76rD0j+v0=;
	b=XUl2zoXz/jAcXEK2PmWBCoiAKjTmYYkqpMc2nefdeUH8fG726tsMUfgbefCVjuhu4S
	0VM87njmC5F1HCmLuQ5L5uwwLpyQ9g14IhcyM9tpL8lkeHXTZSwYVrnnfb06sdmksKRM
	DMd+XI7C5RH9VzjSQKQEP5aFvkR/vXhCmOUt6tOGuVPJh6WyD6CBcPHqQO4eEYQ3KVvE
	Vkg1YEiL/+/LZP7X1ZqvF85XdlG0ohLUd4/EzcXZMo+9+NFQt1llxtRGEp23mMFYFMxx
	zIJBslEDGf+ziFnKHfCqNEV8fcYiNMM+QXS3RkT8K3a1jAhX9SHh4MinMqt4PItmiDto
	3iwQ==
X-Gm-Message-State: ALyK8tI4vyu9bJiP/473jVvrQ4xqvnASR8jkefl7a+WUCI/X5XRZQPVTHGAUt7g/FCy7ZZVRBYDGaS7JvJFTKg==
X-Received: by 10.202.219.213 with SMTP id s204mr2818102oig.151.1467134928002; 
	Tue, 28 Jun 2016 10:28:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.77.229 with HTTP; Tue, 28 Jun 2016 10:28:47 -0700 (PDT)
In-Reply-To: <CAJTo0LYY=uGMHx6UEqnTGCi9Ja8NKuiCu=8msz_weL5gfy5eqg@mail.gmail.com>
References: <CACv_uOSvZc9gLG5c4g2V04F0gEwG6qfuLLoqQEX2TUT_1buGhw@mail.gmail.com>
	<CAJTo0LYY=uGMHx6UEqnTGCi9Ja8NKuiCu=8msz_weL5gfy5eqg@mail.gmail.com>
From: Austin Kim <augiekim@gmail.com>
Date: Tue, 28 Jun 2016 10:28:47 -0700
Message-ID: <CACv_uOT_XiGbBbfCTJy5sK_RJitzcEF2r9oDspVzB7+8K87LxQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate debug symbols but not copied to the image?
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
X-List-Received-Date: Tue, 28 Jun 2016 17:28:50 -0000
Content-Type: multipart/alternative; boundary=001a113d35d638a56c053659f8e6

--001a113d35d638a56c053659f8e6
Content-Type: text/plain; charset=UTF-8

Thank you for the help.

Now, it generate the debug image but there are two questions.

1. I have problem with Eclipse ADT plugin. I don't know how to set
debug-file-directory into my .dbginit. My project is created via eclipse
Yocto ADT plugin and it overwrites .dbginit whenever Eclipse starts
debugger.I'm pretty new to Yocto, Eclipse and Linux world. Could you give
me any idea how I can set debug-file-directory? I cannot update .dbginit
since the file is overwritten whenever debug starts.

2. When I build the image, it generates tar.gz compressed image and I have
to manually extract the image in some directory whenever build the image
and debug it. Is there any way to deploy the debug symbols under existing
sysroot during the build phase?

These are what I did -

IMAGE_GEN_DEBUGFS = "1"
PACKAGE_DEBUG_SPLIT_STYLE = "debug-file-directory"
IMAGE_FSTYPES_DEBUGFS = "tar.gz"


Thanks!


*- Austin*

On Tue, Jun 28, 2016 at 8:42 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 28 June 2016 at 16:38, Austin Kim <augiekim@gmail.com> wrote:
>
>> I'm wondering how to copy only stripped binary and leave debug symbols on
>> the host build machine. I'm running on the OS on a very tight HDD space so
>> I cannot put debug symbols into the image. So I tried
>>
>>
>> PACKAGE_DEBUG_SPLIT_STYLE = 'debug-without-src'
>>
>> EXTRA_IMAGE_FEATURES = "dbg-pkgs"
>>
>> But the output image is still bigger than the original image. Is there
>> anyway to keep the original size and keep debug symbols and source code in
>> the host so DBG may reference them during debugging?
>>
>
> Adding dbg-pkgs to IMAGE_FEATURES says that you want full debugging on the
> target.  Simply don't set that and you'll get stripped binaries on the
> target but full debugging is available on the host for remote gdb (see
> IMAGE_GEN_DEBUGFS).
>
> Ross
>

--001a113d35d638a56c053659f8e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the help.</div><div><br></div><div>Now,=
 it generate the debug image but there are two questions.<br></div><div><br=
></div><div>1. I have problem with Eclipse ADT plugin. I don&#39;t know how=
 to set debug-file-directory into my .dbginit. My project is created via ec=
lipse Yocto ADT plugin and it overwrites .dbginit whenever Eclipse starts d=
ebugger.I&#39;m pretty new to Yocto, Eclipse and Linux world. Could you giv=
e me any idea how I can set debug-file-directory? I cannot update .dbginit =
since the file is overwritten whenever debug starts.</div><div><br></div><d=
iv>2. When I build the image, it generates tar.gz compressed image and I ha=
ve to manually extract the image in some directory whenever build the image=
 and debug it. Is there any way to deploy the debug symbols under existing =
sysroot during the build phase?=C2=A0</div><div><br></div><div>These are wh=
at I did -=C2=A0</div><div><br></div><div><div>IMAGE_GEN_DEBUGFS =3D &quot;=
1&quot;</div><div>PACKAGE_DEBUG_SPLIT_STYLE =3D &quot;debug-file-directory&=
quot;</div><div>IMAGE_FSTYPES_DEBUGFS =3D &quot;tar.gz&quot;</div></div><di=
v><br></div><div><br></div><div>Thanks!</div><div><br></div></div><div clas=
s=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature" dat=
a-smartmail=3D"gmail_signature"><b>- Austin</b></div></div>
<br><div class=3D"gmail_quote">On Tue, Jun 28, 2016 at 8:42 AM, Burton, Ros=
s <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"=
_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br=
><div class=3D"gmail_quote">On 28 June 2016 at 16:38, Austin Kim <span dir=
=3D"ltr">&lt;<a href=3D"mailto:augiekim@gmail.com" target=3D"_blank">augiek=
im@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I=
&#39;m wondering how to copy only stripped binary and leave debug symbols o=
n the host build machine. I&#39;m running on the OS on a very tight HDD spa=
ce so I cannot put debug symbols into the image. So I tried=C2=A0</div><div=
><br></div><div><br></div><div>PACKAGE_DEBUG_SPLIT_STYLE =3D &#39;debug-wit=
hout-src&#39;<br></div><div><br></div><div>EXTRA_IMAGE_FEATURES =3D &quot;d=
bg-pkgs&quot;<br></div><div><br></div><div>But the output image is still bi=
gger than the original image. Is there anyway to keep the original size and=
 keep debug symbols and source code in the host so DBG may reference them d=
uring debugging?</div><span><font color=3D"#888888"><div></div></font></spa=
n></blockquote></div><br></span>Adding dbg-pkgs to IMAGE_FEATURES says that=
 you want full debugging on the target.=C2=A0 Simply don&#39;t set that and=
 you&#39;ll get stripped binaries on the target but full debugging is avail=
able on the host for remote gdb (see IMAGE_GEN_DEBUGFS).</div><span class=
=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a113d35d638a56c053659f8e6--
