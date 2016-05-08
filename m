Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C2E3E00D90; Sun,  8 May 2016 06:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47389E0083D
	for <yocto@yoctoproject.org>; Sun,  8 May 2016 06:50:32 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id f66so39498978vkh.2
	for <yocto@yoctoproject.org>; Sun, 08 May 2016 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=YzFXg+KUYv3ZO2z8cwnaXjMOqdMecudKG0rQB4yotwg=;
	b=T4sWl+0Lc75DFA47QrgarcRgx4WNFoPXF4KAZNzYwcraDL3bRPcJvL0TxEIVNLN1Ib
	W8l5TkuJwdOLLNEEimlz9O16bHrm2zx4fiOqUdJezlekhI+xTZlX4uknBhKCzhEN7k9c
	fmrLg0iCUvRy3Otkw4s4HB3myEzFFpy8H/UTm+D4UjvE5QzYvi0edqRGlrYbVnl4dfSw
	LLt5fOiA2HzZthxOW3iXKbiW2N1vvotSXd+2voyq5+/iy86BBwUbhLLV5RmMpTXtn+4/
	F7Cp9g4fyBA4G8WwchG8LCK4EB0+8ovYnG08/PSpFRXMIqtDPZzFUgILbs0djncyglYr
	oXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=YzFXg+KUYv3ZO2z8cwnaXjMOqdMecudKG0rQB4yotwg=;
	b=GUbQ4YCCqUHBk6oNDdPXrtWEle3G7fcx2Ef8vGNyYbaMMI2WLe1Zwab7VaNOPLtcjk
	o5yeZ+Sg9WQfMQesjX6ZgQTDa7Wf0wQU9xmZJ2o0SX9spPmfftzNXZ8hbWFhsmTxZSfn
	WzWgMMhjPkW/dmcTvTZV32UfKfhTFG1hrM7bNKnzN37KeJhqOH33tdy9kTHQRnf27bhC
	odzxg1cjlrhsHeCTXAjEYElSqhI0AogbqaWKVnVVIPMZM51UmIO8DgdFVld5lsVSY2F+
	Q7+t2GOptNLR4y1YyfFJbnm20K6V+T7gFlQQVvyao3Dmtv5CJhFkdT7IT0zNK8L9RSmK
	gRqg==
X-Gm-Message-State: AOPr4FWIVJECCrSnQTO+Bp4kKsj6tKzseq0FcwDT6tty2NrXZYRwXRvsbfTG0g+NmP3YS37Az3owXUTFVhn46w==
MIME-Version: 1.0
X-Received: by 10.31.228.133 with SMTP id b127mr3875334vkh.90.1462715431941;
	Sun, 08 May 2016 06:50:31 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sun, 8 May 2016 06:50:31 -0700 (PDT)
Date: Sun, 8 May 2016 09:50:31 -0400
Message-ID: <CABfz71et_oJJH1TM-HTHeW4UO2qJGtPH1nhDsyzcFqbqE6truQ@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: yocto@yoctoproject.org
Subject: Using multiple versions of package (PACKAGECONFIG) in the same bitbake
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
X-List-Received-Date: Sun, 08 May 2016 13:50:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c094fb8ba8b38053254f9be

--94eb2c094fb8ba8b38053254f9be
Content-Type: text/plain; charset=UTF-8

I have two rootfs. My main image, and the initramfs image for the kernel
(INITRAMFS_IAMGE and INITRAMFS_IMAGE_BUNDLE).

I need to provide different fstab files for each build.

I have added a .bbappend for the base-files recipe to use a customized
fstab.

In the bbappend file, I'd like to add PACKAGECONFIG support to the package
to customize it for each rootfs.

However, it seems that I can only PACKAGECONFIG for a recipe in the
local.conf. How do I add features to a package at a "image-recipe.bb" level?

Maybe I should create a separate recipe all together that overwrite fstab?
Then, I can include this "base-files-overrite-fstab" in the appropriate
image recipe?

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c094fb8ba8b38053254f9be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have two rootfs. My main image, and the initramfs i=
mage for the kernel (INITRAMFS_IAMGE and INITRAMFS_IMAGE_BUNDLE).</div><div=
><br></div><div>I need to provide different fstab files for each build.</di=
v><div><br></div><div>I have added a .bbappend for the base-files recipe to=
 use a customized fstab.</div><div><br></div><div>In the bbappend file, I&#=
39;d like to add PACKAGECONFIG support to the package to customize it for e=
ach rootfs.</div><div><br></div><div>However, it seems that I can only PACK=
AGECONFIG for a recipe in the local.conf. How do I add features to a packag=
e at a &quot;<a href=3D"http://image-recipe.bb">image-recipe.bb</a>&quot; l=
evel?</div><div><br></div><div>Maybe I should create a separate recipe all =
together that overwrite fstab? Then, I can include this &quot;base-files-ov=
errite-fstab&quot; in the appropriate image recipe?</div><br clear=3D"all">=
<div><div class=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,</div><div=
>Paul Knopf</div><div>Software Engineer</div><div>Med X Change, Inc</div><d=
iv><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxch=
ange.com</a></div></div></div></div>
</div>

--94eb2c094fb8ba8b38053254f9be--
