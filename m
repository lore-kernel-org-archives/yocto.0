Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A420E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 17:07:33 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaac13 with SMTP id c13so16725309eaa.35
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 17:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sgSsgqKPuOqoHQLDlCloP+/7bplE8BESHfHiULnDmFo=;
	b=RiO61BRUM8bUTmim5qwYtSrywRSOXZwpJfEeoIacYXN7kz3EhffHAUd2iHryKMotJp
	xYLQAoDmPC15+5LWLaK0InEjuTjlPg0bmddR0qH5YNlLG5gZaT0SHUsCH/V5lDr2EdWG
	6plPYBCxR22RxIKpnY2hlkg+gy+ln1anU3qZ8=
MIME-Version: 1.0
Received: by 10.204.133.213 with SMTP id g21mr8640772bkt.126.1325120851905;
	Wed, 28 Dec 2011 17:07:31 -0800 (PST)
Received: by 10.205.121.142 with HTTP; Wed, 28 Dec 2011 17:07:31 -0800 (PST)
In-Reply-To: <cover.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
Date: Thu, 29 Dec 2011 02:07:31 +0100
Message-ID: <CAMvUbCx59KWAN0qeS5Ga9mAb9cMPVvxeKxJS6f6OYC2+mbu0Xw@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH V3 0/3] New distribution definition for poky-tiny
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
X-List-Received-Date: Thu, 29 Dec 2011 01:07:33 -0000
Content-Type: multipart/alternative; boundary=0015175cbb0aa98cb504b530bd4b

--0015175cbb0aa98cb504b530bd4b
Content-Type: text/plain; charset=ISO-8859-1

Hello Darren,


On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com>wrote:

> V3:
>    o Rebase on master
>    o Dependent on oe-core series "Fixes for tiny distros and
> linux-yocto-tiny"
>
> RFC V2:
>    o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa
>    o Drop poky-common abstraction as suggested by Richard Purdie in
>      favor of POKY_DEFAULT_EXTRA_R* variables.
>
> Poky-tiny defines a new distro policy for building tiny Linux images.
>  Rather
>
>
Such images are useful for small Linux firmwares, both often also require a
read-only fs img.

Does this current image require write access at first boot?

Regards,

Leon.

--0015175cbb0aa98cb504b530bd4b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Darren,<br><br><br><div class=3D"gmail_quote">On Thu, Dec 29, 2011 at=
 12:45 AM, Darren Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux=
.intel.com">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
V3:<br>
 =A0 =A0o Rebase on master<br>
 =A0 =A0o Dependent on oe-core series &quot;Fixes for tiny distros and linu=
x-yocto-tiny&quot;<br>
<br>
RFC V2:<br>
 =A0 =A0o Use VIRTUAL-RUNTIME_keymaps as suggested by Martin Jansa<br>
 =A0 =A0o Drop poky-common abstraction as suggested by Richard Purdie in<br=
>
 =A0 =A0 =A0favor of POKY_DEFAULT_EXTRA_R* variables.<br>
<br>
Poky-tiny defines a new distro policy for building tiny Linux images. =A0Ra=
ther<br><br></blockquote></div><br>Such images are useful for small Linux f=
irmwares, both often also require a read-only fs img.<br><br>Does this curr=
ent image require write access at first boot?<br>
<br>Regards,<br><br>Leon.<br>

--0015175cbb0aa98cb504b530bd4b--
