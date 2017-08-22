Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970C9E00D6F; Tue, 22 Aug 2017 07:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC7AFE00D6A
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 07:14:29 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id x187so24694235ite.1
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 07:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pkVZJingBja2v3PsI4TlSyaghJjG9esBqlGRrl2Fy48=;
	b=PPO1DmrN/l6cDmTcZvWPrfiJnne21JwlJHO+jB9Ovf4bZGwCKERb0A2qhCmhTjDl5x
	7bQw4Nn43HAeKB20dnFEpo7PqAIj61rj35mO2L4I1SPdZKm/UGjZQ1VLfwAegFKOUmAM
	uxX/8edUgkLyDzAPreyRjmJaHztjQVUcfCbMZ+LcCy4/JakGUFj33YvooBeqxcm6QJsO
	chHyPiFSJuNJAmjzKXuaPxCIA3lzCmVu1IcTzc+g3oclDMb2Ih8fMfsUAYhUAoz3AID9
	NlsN2ViqcSb5/0WEc55z2jFKOT6c/DEa3B/4gxh2vGHtl+6L8l4LEAyHhGTGpLOKUuB9
	R2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pkVZJingBja2v3PsI4TlSyaghJjG9esBqlGRrl2Fy48=;
	b=gfu4rI2xoNLsBE3IkjhZvRY9aiZpjNDF5w8C1N9jh+4q0eb0ZsZ1ZyhYVRjOC5Ds5S
	npm1Os4HLWbsmf3bSg7IlgQ2lTyAegnI7oI9HCLx5nga7Q9u5rchAlNEcdLm3ZFdu62B
	2KKckI9lRuZfVMl9Cj7QroaI6k40wbJOFj821Freit3C1DqCIP2PjgBfSZuKZk3rEVJu
	OB0vUDhSw6Gv8bPSN6vO1xFsv9uUX6LXEAasNVW6B/jGcW8fpcFwTfDycrvrYa0OVPFd
	hUBqOLP73vKIoxxwevCWOAr7xHYiyI+oCiC6fngV9VB4m0jRxRBdKj/YJ1SSg5V+CNKy
	En0Q==
X-Gm-Message-State: AHYfb5hEP0RsrqQCJmHUZEmEpM4C0SZA+NZ/RLhbyThlaxmLtfMFNCeb
	meIIQcqGnICgI14yMy4QvrDpvtstZ9eX
X-Received: by 10.36.165.5 with SMTP id k5mr218209itf.64.1503411268927; Tue,
	22 Aug 2017 07:14:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Tue, 22 Aug 2017 07:13:58 -0700 (PDT)
In-Reply-To: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
References: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 22 Aug 2017 17:13:58 +0300
Message-ID: <CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
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
X-List-Received-Date: Tue, 22 Aug 2017 14:14:30 -0000
Content-Type: multipart/alternative; boundary="f403045fc38aa2f2ee05575836b6"

--f403045fc38aa2f2ee05575836b6
Content-Type: text/plain; charset="UTF-8"

On 22 August 2017 at 16:43, <colin.helliwell@ln-systems.com> wrote:
>
> I have a custom recipe (for the AWS SDK), which is failing at the
package_qa
> stage.
> The recipe is a very basic cmake styley, and on its own seems to begin
with:
> 'bitbake -f -c package aws-sdk'  completes without errors.
>
> But for 'bitbake -c package_qa aws-sdk) I get:
>
> ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package contains
> non-symlink .so: aws-sdk-dev path
>
'/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
> dk-dev/usr/lib/libaws-cpp-sdk-core.so'
> -dev package contains non-symlink .so: aws-sdk-dev path
>
'/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
> dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]
>
> I'd appreciate help with resolving this. Thanks.>
>

It looks like aws-sdk installs .so files that are actual libraries (and not
symlinks to the versioned libraries as would be the usual case). The best
solution would be to get aws to install versioned libraries but if that's
not an option, you probably want to package the .so files in the actual
library package, not the -dev package (which is the default since usually
.so are symlinks for development and the actually versioned ).

You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former
doesn't grab the so files, and the latter does)

HTH,
  Jussi

--f403045fc38aa2f2ee05575836b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 22 August 2017 at 16:43, &lt;<a href=3D"mailto:colin.he=
lliwell@ln-systems.com">colin.helliwell@ln-systems.com</a>&gt; wrote:<br>&g=
t;<br>&gt; I have a custom recipe (for the AWS SDK), which is failing at th=
e package_qa<br>&gt; stage.<br>&gt; The recipe is a very basic cmake styley=
, and on its own seems to begin with:<br>&gt; &#39;bitbake -f -c package aw=
s-sdk&#39; =C2=A0completes without errors.<br>&gt;<br>&gt; But for &#39;bit=
bake -c package_qa aws-sdk) I get:<br>&gt;<br>&gt; ERROR: aws-sdk-1.1.31-r0=
 do_package_qa: QA Issue: -dev package contains<br>&gt; non-symlink .so: aw=
s-sdk-dev path<br>&gt; &#39;/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.=
1.31-r0/packages-split/aws-s<br>&gt; dk-dev/usr/lib/libaws-cpp-sdk-core.so&=
#39;<br>&gt; -dev package contains non-symlink .so: aws-sdk-dev path<br>&gt=
; &#39;/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-spli=
t/aws-s<br>&gt; dk-dev/usr/lib/libaws-cpp-sdk-s3.so&#39; [dev-elf]<br>&gt;<=
br>&gt; I&#39;d appreciate help with resolving this. Thanks.&gt;<br>&gt;<br=
><br><div>It looks like aws-sdk installs .so files that are actual librarie=
s (and not symlinks to the versioned libraries as would be the usual case).=
 The best solution would be to get aws to install versioned libraries but i=
f that&#39;s not an option, you probably want to package the .so files in t=
he actual library package, not the -dev package (which is the default since=
 usually .so are symlinks for development and the actually versioned ).<br>=
<br>You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former=
 doesn&#39;t grab the so files, and the latter does)<br><br>HTH,<br>=C2=A0 =
Jussi</div></div>

--f403045fc38aa2f2ee05575836b6--
