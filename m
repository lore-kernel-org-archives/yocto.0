Return-Path: <sivasubramanian.patchaiperumal@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4E33E00D0F; Thu, 24 Jan 2019 04:52:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E19E00CEE
	for <yocto@lists.yoctoproject.org>;
	Thu, 24 Jan 2019 04:52:36 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id u18so4197640lff.10
	for <yocto@lists.yoctoproject.org>;
	Thu, 24 Jan 2019 04:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Blz3iGC9yIIuL3MA+VzjAxK3+TDA4y6CQzN5kREZ2YI=;
	b=BscnczLRJ7EnX9sOtAqav4uBI4ZC1VqPnokdjs317PB9afdsO8plNH6dpyjVOUkevq
	A0zK1uaM7yMtvd22/fiwgRONkXCSTLjXWQxjua9xoNNoq+TsaAWIwq6GYIQ/810nGReH
	o/v6nsuKQfbQzNf6wmJy3VGPfurqKe85pqp4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Blz3iGC9yIIuL3MA+VzjAxK3+TDA4y6CQzN5kREZ2YI=;
	b=rSZ33Dh2aYmBRoTK0D/5tbAHKsi8mp7WjHWvOL0eTpWETQRLWj+/sb+E033f5uekgU
	pcNLiotPQ6U2x1a21lCEM6Z9H2Kv1/0hxBc4qRGI6WTlx5awIgAQN4uNxSo/bIqq4I9c
	zPKcq/R4BCUrETp5xlRBx4SeJF8x+YCYRL1YSRTF5lW/Hjac6JnCzdU84S0t9w02gWnC
	bcPyMWPk/ZXBYJXrWG07FZ4hJmbIJubH6TKrIig2EkTDXt2X+dzNHVFoxKG51KExkNcZ
	r5ed0l+6wA+7vhJ+3aJ61cm4Yn9S5eyLnwAHLMD3YnMiVPvP3Wvbd5THnmGZrjQBxxwl
	qr0w==
X-Gm-Message-State: AJcUuke+glL8lEczwG+o8zj5AalO6HUpEW3dj5KYaU0xwfFbHpeXkjPn
	zGQa3f9ZWLYKeAlfXn3w5fcrYQDEfm2IgIZOBP54Dg==
X-Google-Smtp-Source: ALg8bN4jhIbK5dfjkYpO10WYdRoGFZABSdr9QbUNAJH9ZkLTIF0VCrOyJSU0zlhhqaS1CvRPjfZ2I0iXOUkyGztU0ck=
X-Received: by 2002:a19:c203:: with SMTP id l3mr4756241lfc.113.1548334355448; 
	Thu, 24 Jan 2019 04:52:35 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWdRDWvWQ259q5BNW-yjq+aPzgyavusFNjqvbPq=msyZbA@mail.gmail.com>
In-Reply-To: <CAFsTbWdRDWvWQ259q5BNW-yjq+aPzgyavusFNjqvbPq=msyZbA@mail.gmail.com>
From: Sivasubramanian Patchaiperumal
	<sivasubramanian.patchaiperumal@linaro.org>
Date: Thu, 24 Jan 2019 18:22:24 +0530
Message-ID: <CAHcVMqxaX6qHGvoBaZA8x2R9GNFrM97g96UoPSULmjED+Q1P1g@mail.gmail.com>
To: srinivasan <srinivasan.rns@gmail.com>
X-Mailman-Approved-At: Fri, 25 Jan 2019 02:58:16 -0800
Cc: yocto@lists.yoctoproject.org,
	meta-freescale Mailing List <meta-freescale@yoctoproject.org>
Subject: Re: [meta-freescale] Error in populating sdk using custom distro
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
X-List-Received-Date: Thu, 24 Jan 2019 12:52:37 -0000
Content-Type: multipart/alternative; boundary="000000000000401c12058033afda"

--000000000000401c12058033afda
Content-Type: text/plain; charset="UTF-8"

Hi Srinivasan,
This is patching failure, qtwayland recipe is trying to apply
"0001-tst_client.cpp-Fix-no-opengl-build.patch". Kindly see if either
source code or patch has changed/updated without the other.

On Thu, 24 Jan 2019 at 17:49, srinivasan <srinivasan.rns@gmail.com> wrote:

> Dear Yocto Experts,
>
> I am seeing the below error, while building the sdk for my custom
> distro, with some the freescale layers (meta-freescale,
> meta-freescale-3rdparty.meta-freescale-distro, meta-fsl-bsp-release)
> integrated into my custom distro, could anyone please help me with the
> pointers that why am i seeing the below issue?
>
> bitbake -c populate_sdk custom-debug-distro
>
>
> Logs:
> =====
>
> ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Command
> Error: 'quilt --quiltrc
>
> /home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-linux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/quiltrc
> push' exited with 0  Output:
> Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch
> patching file tests/auto/client/client/tst_client.cpp
> Hunk #1 succeeded at 107 (offset -7 lines).
> Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).
> Hunk #3 FAILED at 172.
> Hunk #4 succeeded at 560 (offset 125 lines).
> Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).
> 1 out of 5 hunks FAILED -- rejects in file
> tests/auto/client/client/tst_client.cpp
> Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply
> (enforce with -f)
> ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Function
> failed: patch_do_patch
> ERROR: Logfile of failure stored in:
>
> /home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-linux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82399
> ERROR: Task
> (/home/user/custombuild_test12/customos/sources/meta-qt5/recipes-qt/qt5/qtwayland_git.bb:
> do_patch)
> failed with exit code '1'
> ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:
> Command Error: 'quilt --quiltrc
>
> /home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwayland-native/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/quiltrc
> push' exited with 0  Output:
> Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch
> patching file tests/auto/client/client/tst_client.cpp
> Hunk #1 succeeded at 107 (offset -7 lines).
> Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).
> Hunk #3 FAILED at 172.
> Hunk #4 succeeded at 560 (offset 125 lines).
> Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).
> 1 out of 5 hunks FAILED -- rejects in file
> tests/auto/client/client/tst_client.cpp
> Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply
> (enforce with -f)
> ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:
> Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
>
> /home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwayland-native/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82410
> ERROR: Task
> (virtual:native:/home/user/custombuild_test12/customos/sources/meta-qt5/recipes-qt/qt5/qtwayland_git.bb:
> do_patch)
> failed with exit code '1'
>
> Thanks in advance
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>


-- 
Regards,
Sivasubramanian

--000000000000401c12058033afda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Srinivasan,</div><div>This is patching failure, qt=
wayland recipe is trying to apply &quot;0001-tst_client.cpp-Fix-no-opengl-b=
uild.patch&quot;. Kindly see if either source code or patch has changed/upd=
ated without the other. <br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 24 Jan 2019 at 17:49, srinivasan &lt;=
<a href=3D"mailto:srinivasan.rns@gmail.com">srinivasan.rns@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Yo=
cto Experts,<br>
<br>
I am seeing the below error, while building the sdk for my custom<br>
distro, with some the freescale layers (meta-freescale,<br>
meta-freescale-3rdparty.meta-freescale-distro, meta-fsl-bsp-release)<br>
integrated into my custom distro, could anyone please help me with the<br>
pointers that why am i seeing the below issue?<br>
<br>
bitbake -c populate_sdk custom-debug-distro<br>
<br>
<br>
Logs:<br>
=3D=3D=3D=3D=3D<br>
<br>
ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Command<br>
Error: &#39;quilt --quiltrc<br>
/home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-li=
nux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/qui=
ltrc<br>
push&#39; exited with 0=C2=A0 Output:<br>
Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch<br>
patching file tests/auto/client/client/tst_client.cpp<br>
Hunk #1 succeeded at 107 (offset -7 lines).<br>
Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).<br>
Hunk #3 FAILED at 172.<br>
Hunk #4 succeeded at 560 (offset 125 lines).<br>
Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).<br>
1 out of 5 hunks FAILED -- rejects in file<br>
tests/auto/client/client/tst_client.cpp<br>
Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply<br>
(enforce with -f)<br>
ERROR: qtwayland-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch: Function<br>
failed: patch_do_patch<br>
ERROR: Logfile of failure stored in:<br>
/home/user/custombuild_test12/customos/build/tmp/work/aarch64-mx8mm-poky-li=
nux/qtwayland/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82399<br>
ERROR: Task (/home/user/custombuild_test12/customos/sources/meta-qt5/recipe=
s-qt/qt5/qtwayland_git.bb:do_patch)<br>
failed with exit code &#39;1&#39;<br>
ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:<br>
Command Error: &#39;quilt --quiltrc<br>
/home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwaylan=
d-native/5.11.3+gitAUTOINC+dccec9b282-r0/recipe-sysroot-native/etc/quiltrc<=
br>
push&#39; exited with 0=C2=A0 Output:<br>
Applying patch 0001-tst_client.cpp-Fix-no-opengl-build.patch<br>
patching file tests/auto/client/client/tst_client.cpp<br>
Hunk #1 succeeded at 107 (offset -7 lines).<br>
Hunk #2 succeeded at 131 with fuzz 2 (offset -2 lines).<br>
Hunk #3 FAILED at 172.<br>
Hunk #4 succeeded at 560 (offset 125 lines).<br>
Hunk #5 succeeded at 586 with fuzz 2 (offset 136 lines).<br>
1 out of 5 hunks FAILED -- rejects in file<br>
tests/auto/client/client/tst_client.cpp<br>
Patch 0001-tst_client.cpp-Fix-no-opengl-build.patch does not apply<br>
(enforce with -f)<br>
ERROR: qtwayland-native-5.11.3+gitAUTOINC+dccec9b282-r0 do_patch:<br>
Function failed: patch_do_patch<br>
ERROR: Logfile of failure stored in:<br>
/home/user/custombuild_test12/customos/build/tmp/work/x86_64-linux/qtwaylan=
d-native/5.11.3+gitAUTOINC+dccec9b282-r0/temp/log.do_patch.82410<br>
ERROR: Task (virtual:native:/home/user/custombuild_test12/customos/sources/=
meta-qt5/recipes-qt/qt5/qtwayland_git.bb:do_patch)<br>
failed with exit code &#39;1&#39;<br>
<br>
Thanks in advance<br>
-- <br>
_______________________________________________<br>
meta-freescale mailing list<br>
<a href=3D"mailto:meta-freescale@yoctoproject.org" target=3D"_blank">meta-f=
reescale@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-f=
reescale</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>Regards,<br></div>Sivasubramanian<br>=
</div></div></div>

--000000000000401c12058033afda--
