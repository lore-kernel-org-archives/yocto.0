Return-Path: <waynli329@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C68FE00875; Mon, 18 Nov 2019 10:22:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B11FE007E1
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 10:22:54 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id r2so14733643iot.10
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 10:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aMcQj3cBFIeDuSqqXe8UW4WPoE/lapAQpYAlukEQ0VA=;
	b=MQJ4RujnCpniEJkcfj3Su/+G9pxDJ3jyddH3QOvwtG++u8YxVqumIP+ueE2AW1fYMe
	zP7CHq1JblAMnNUUwedITwS2YljnXXGATGSvUB63z1FhVeaPRkvarEJ16VpoJgiIi4AG
	7A3L7vXhnKypJ4R2qg0xifn47xj2VIgTv1R6Q0LJWwepmDba9Uyai6LQeLmjskHoQyVd
	woCwGlkG3kSjcqd3DUNqFa0B2naSuhZrAuGw/n4IQ5A5rX+8zGmHrFZmNAtO6XnWDAag
	uUrtPPejp4tvhYD46bstKnBq0oTCX4nwKYJkry9xcjE55XKcRBrb9iruEJuJXWIz2ml/
	QT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aMcQj3cBFIeDuSqqXe8UW4WPoE/lapAQpYAlukEQ0VA=;
	b=aBkyK+U6DkYIqOqTdHCTyImPz7nsa2AALjYJnTDNGYI91KH4nopY37yREVrF85d7xw
	vQzLkIsfYv7vywWEFIhVJmShOB4Ggj1Dwmi1lp9VzTV1JW8Fyuxplxo/k1Cmw4BjJ8Ir
	MYO1zNulaUWwfw+Ow25+EcXcs7zJ9wQf/1gPgCrv1WqREHPvWhltgg3NTAV1YH0OsbIe
	Aytsapl01SsxGqDJ3vRBYbmuPvNkeRJwiSV7c/9M2P9zc2Bx+/d81kgBr9eskwJw5Hkr
	T+g6duDCLEtvG7+42e3fzulU/9oVhE6yNeMg7DNxnbDJz1nYZIHJrnu+QyVW3t3bjkHQ
	9fog==
X-Gm-Message-State: APjAAAX1hR65pWPS1MTY0zxb/FZxSeR+lo7mAf0KY08eyH49NwXxCQl+
	GsCxFA++JjuwCmn3eOK8cpQhFcsGYFpR+juVdpVtsA==
X-Google-Smtp-Source: APXvYqxHEGOSlCctsWFfhW6rX3Gws2iFw5/RZlIT3uAWNl4it07bIgPYs4/7Hzb1gWTJs6R57rmqRdn8Us5P/Pqv5Ss=
X-Received: by 2002:a5d:8988:: with SMTP id m8mr13876820iol.143.1574101373579; 
	Mon, 18 Nov 2019 10:22:53 -0800 (PST)
MIME-Version: 1.0
From: Wayne Li <waynli329@gmail.com>
Date: Mon, 18 Nov 2019 12:22:42 -0600
Message-ID: <CAM2K0nrK_LycaTR4N87+3j_LyWtKcSq4fLC5Ramq_MpvGsr1Fg@mail.gmail.com>
To: bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: KVM kernel modules missing from Yocto kernel
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
X-List-Received-Date: Mon, 18 Nov 2019 18:22:55 -0000
Content-Type: multipart/alternative; boundary="0000000000003675000597a30943"

--0000000000003675000597a30943
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Developers,

I'm trying to incorporate KVM into a Yocto kernel me and my coworker build
for a T4240 RDB (which has a PowerPC CPU).  The problem is, no matter what
I do the KVM kernel module (I'm expecting a kvm.ko or any .ko file along
those lines) is not present in the image.

First I tried adding the content of the .config file generated when
configuring the kernel for KVM support into the kernel configuration file.
This resulted in KVM source directories appearing in the kernel but no KVM
related kernel modules are present.  I explain this in more detail in a
previous email conversation I had with the Yocto community (saved in a
Github gist for readability):

https://gist.github.com/WayneZhenLi/d5d7a5e8c30e6d4b7cd4541d0c24cab5

Since then I've tried a few things.  First, I added the following lines to
the local.conf file (found in build_t4240rdb-64b/conf folder):

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kvm-image-minimal"

But that didn't seem to work as there weren't any new .ko files in the
final image.  Next I tried adding the following lines to the same
local.conf file:

CORE_IMAGE_EXTRA_INSTALL += "kernel-modules"
CORE_IMAGE_EXTRA_INSTALL += "kvm-image-minimal"

This time I get an error saying "ERROR: kvm-image-minimal not found in the
base feeds (t4240rdb-64b ppc64e6500 powerpc64 noarch any all)".  Also if
just run a "ERROR: bitbake kvm-image-minimal" to see what's going on with
that particular recipe I get an error saying "kernel-module-kvm-intel" not
found in the base feeds (t4240rdb-64b ppc64e6500 powerpc64 noarch any all).

Would I have to write recipes for the packages listed in kvm-image-minimal
such as kernel-module-kvm-intel or kernel-module-kvm?  Note that I'm not
even building the image for intel; I'm building it for PowerPC.  Anyway, I
just feel like writing recipes for the KVM kernel modules isn't the correct
step.  Like maybe I just messed up my with my configuration somehow?  What
are your thoughts?

-Thanks!, Wayne Li

--0000000000003675000597a30943
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Yocto Developers,</div><div><br></div><div>I&#39=
;m trying to incorporate KVM into a Yocto kernel me and my coworker build f=
or a T4240 RDB (which has a PowerPC CPU).=C2=A0 The problem is, no matter w=
hat I do the KVM kernel module (I&#39;m expecting a kvm.ko or any .ko file =
along those lines) is not present in the image.</div><div><br></div><div>Fi=
rst I tried adding the content of the .config file generated when configuri=
ng the kernel for KVM support into the kernel configuration file.=C2=A0 Thi=
s resulted in KVM source directories appearing in the kernel but no KVM rel=
ated kernel modules are present.=C2=A0 I explain this in more detail in a p=
revious email conversation I had with the Yocto community (saved in a Githu=
b gist for readability):</div><div><br></div><div><a href=3D"https://gist.g=
ithub.com/WayneZhenLi/d5d7a5e8c30e6d4b7cd4541d0c24cab5" target=3D"_blank">h=
ttps://gist.github.com/WayneZhenLi/d5d7a5e8c30e6d4b7cd4541d0c24cab5</a></di=
v><div><br></div><div>Since then I&#39;ve tried a few things.=C2=A0 First, =
I added the following lines to the local.conf file (found in build_t4240rdb=
-64b/conf folder):</div><div><br></div><div>
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br>MACH=
INE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D &quot;kvm-image-minimal&quot;

</div><div><br></div><div>But that didn&#39;t seem to work as there weren&#=
39;t any new .ko files in the final image.=C2=A0 Next I tried adding the fo=
llowing lines to the same local.conf file:</div><div><br></div><div>
CORE_IMAGE_EXTRA_INSTALL +=3D &quot;kernel-modules&quot;<br>CORE_IMAGE_EXTR=
A_INSTALL +=3D &quot;kvm-image-minimal&quot;</div><div><br></div><div>This =
time I get an error saying &quot;ERROR: kvm-image-minimal not found in the =
base feeds (t4240rdb-64b ppc64e6500 powerpc64 noarch any all)&quot;.=C2=A0 =
Also if just run a &quot;ERROR: bitbake kvm-image-minimal&quot; to see what=
&#39;s going on with that particular recipe I get an error saying &quot;ker=
nel-module-kvm-intel&quot; not found in the base feeds=20
(t4240rdb-64b ppc64e6500 powerpc64 noarch any all).</div><div><br></div><di=
v>Would I have to write recipes for the packages listed in kvm-image-minima=
l such as kernel-module-kvm-intel or kernel-module-kvm?=C2=A0 Note that I&#=
39;m not even building the image for intel; I&#39;m building it for PowerPC=
.=C2=A0 Anyway, I just feel like writing recipes for the KVM kernel modules=
 isn&#39;t the correct step.=C2=A0 Like maybe I just messed up my with my c=
onfiguration somehow?=C2=A0 What are your thoughts?</div><div><br></div><di=
v>-Thanks!, Wayne Li<br></div><div><br></div></div>

--0000000000003675000597a30943--
