Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 170594C80053
	for <yocto@yoctoproject.org>; Tue,  8 Feb 2011 07:46:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so6219501iwn.35
	for <yocto@yoctoproject.org>; Tue, 08 Feb 2011 05:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:from:date:message-id:subject:to
	:content-type; bh=86jwbPUd/xl677ZnkHT5hDszGWWx2D8iYUlNCJAyxaI=;
	b=EHSCB/jTEmCWfVJTFIYapVEcbBDXsxR/+IcEzKi3eb6K2tEzy6JVskY/qEKCOzIVvh
	lHwm0kknhnhrfi/qpmYavvfMnp5xbu/slp2Vjrikjh+Dye+yQm6Czjjr6rc9zBHdqOJt
	IPwDFC9hflTv/8lOI4EILTb5efGEpkwsVhxzI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type;
	b=VVwT2BhA1PnEBylXDoOSm/i1QlT7IhsrUyS8ACUiuXeiCIxlTVTGj8XTocx4OFWHPf
	DPigsV8krXNzdhcOOqgfpeXqdCsHgMTa5hHHfCxraXb9kfmoNZ1pSi3bIkGTLcgeasNh
	+wjlJ2U6U97uPmOYnVxyBCBgo+qsSOfZAJhvc=
Received: by 10.42.173.131 with SMTP id r3mr5527760icz.431.1297172804644; Tue,
	08 Feb 2011 05:46:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Tue, 8 Feb 2011 05:46:23 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 8 Feb 2011 11:46:23 -0200
Message-ID: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding machine for linux-yocto-stable
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
X-List-Received-Date: Tue, 08 Feb 2011 13:46:45 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8cda3bb064049bc594bd

--90e6ba6e8cda3bb064049bc594bd
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm trying to get devkit8000 kernel compiled with linux-yocto-stable recipe.
I've added devkit8000 on COMPATIBLE_MACHINE and on KMACHINE_dekvkit800.

But I don't know what pokylinux branch to use to make the kernel build
works.

I believe that I have to config these variables:

LINUX_KERNEL_TYPE
SRCREV_machine_pn-linux-yocto-stable_devkit8000


Any suggestions?

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--90e6ba6e8cda3bb064049bc594bd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Folks,<div><br></div><div>I&#39;m trying to get devkit8000 kernel compiled =
with linux-yocto-stable recipe.</div><div>I&#39;ve added devkit8000 on=A0CO=
MPATIBLE_MACHINE and on=A0KMACHINE_dekvkit800.</div><div><br></div><div>But=
 I don&#39;t know what pokylinux branch to use to make the kernel build wor=
ks.</div>

<div><br></div><div>I believe that I have to config these variables:</div><=
blockquote class=3D"webkit-indent-blockquote" style=3D"margin: 0 0 0 40px; =
border: none; padding: 0px;"><div><meta http-equiv=3D"content-type" content=
=3D"text/html; charset=3Dutf-8">LINUX_KERNEL_TYPE</div>

<div>SRCREV_machine_pn-linux-yocto-stable_devkit8000</div><div><br></div></=
blockquote><div><br></div>Any suggestions?<br><div><br></div><div><div>Rega=
rds,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock =
&#39;n roll*/<br>


</div>

--90e6ba6e8cda3bb064049bc594bd--
