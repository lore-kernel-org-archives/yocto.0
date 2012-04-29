Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E96CE013D1
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 11:49:01 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2006985lag.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 11:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=BdjDJSiRqUNFBC7AiEAYJ/Whifi5THKC5GDriBJNrDk=;
	b=OPmfDE/XOf0ZNrBGkCLjObbiOYf89s+KhB4yOs+ZqLjH+ozUbMlyCpUjgfoP2UFNup
	icXWUmoAg+V21U7c9ta0NRbNOsz00pgbZRI7ZExuf0/C8kHbZtLblP+CA1ZJ219VcZTz
	NEKGMXMgF8eJC//b9/sYYVelaFwK/M4RIjFuQE3ILl7crc3GEBXT6Zt5Qo70OLVgdo2k
	+D1NB23SmYk6aSSbhiy0lrZ7khm+y5+phF8R60fI2z08O1fBDlYnUfkRfAJVkUWH2ySN
	D97W015Gl/E3Ansn3j36z0FkorxbZ/XgghAc3FDxKE7G1ahugXndhWwwwcl2Cv7HdZJs
	HDwQ==
Received: by 10.112.100.170 with SMTP id ez10mr9102739lbb.15.1335725340271;
	Sun, 29 Apr 2012 11:49:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Sun, 29 Apr 2012 11:48:29 -0700 (PDT)
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 29 Apr 2012 11:48:29 -0700
Message-ID: <CAMKF1srQQsDuVgGjpom2V0hC-EqWJE=3upfkcf-2GgGpQO8Y+w@mail.gmail.com>
To: Om Prakash PAL <omprakash.pal@stericsson.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Apr 2012 18:49:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 29, 2012 at 2:58 AM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
> Hi Bruce,
> for porting of our local kernel,we have created an BSP layer and to chang=
e the the kernel, =C2=A0we have created an linux-yocto_3.0.bbappend file in=
side meta<BSP>/recipes-kernel/linux/
> like this:-
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> COMPATIBLE_MACHINE_<BSP_name> =3D "BSP_name"
>
> # KMACHINE is the branch to build
> KMACHINE_<BSP_name> =3D "local_branch"
>
> SRCREV_machine_pn_linux-yocto_<BSP_name> ?=3D "XXXXXXXX" (here we have as=
sign top commit ID of our local kernel)

that should be SRCREV_machine_pn-linux-yocto_<BSP_name>

