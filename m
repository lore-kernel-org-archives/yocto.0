Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1241E0142A
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 20:05:26 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3567603pbb.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 20:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=H2lmgIzEVTZn7mvwKCy2B4MCZndep2Ee8Yolp5cImLw=;
	b=YwIbe7yOpU4znYYzn3ytcHGiOqFsOtwVZI4fxK8fPxexyG/533lIGvmvSM5gfYmzcN
	hKeh6ySAu4k0KH+5lHdlQ98i6OYY4puAtuRy7RDOnBG7AP8X3dq8D693BqqOHIP96Rpv
	1OKNC1qrqf5ZZkU+wkCOqS4Ab6i1iGoiyNaw5+X4emqnSbIIL/nYag+JASzkAyFyftwO
	Fc40ILxVeiWiJDPgQwZYFBs9oHv4RJVpUjIzT4V+bw3xiB0w+R3e36+g/r35szeQizH3
	3xO0kLVspZouC9QK8JCVG4plD1rxl0YiANKhzhGYfIq3TwyrcEd0+im9GZmgTbKLDnPa
	DujQ==
Received: by 10.68.231.8 with SMTP id tc8mr4710775pbc.140.1340334326481;
	Thu, 21 Jun 2012 20:05:26 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id ka5sm37513938pbb.37.2012.06.21.20.05.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 20:05:25 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
Date: Fri, 22 Jun 2012 07:05:21 +0400
Message-Id: <A1C33720-9A94-4B6B-A211-65D25E3B2161@gmail.com>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
	<CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Fri, 22 Jun 2012 03:05:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Jun 21, 2012, at 8:09 PM, Khem Raj wrote:

> On Thu, Jun 21, 2012 at 8:25 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>> BBFILES ?=3D ""
>> BBLAYERS ?=3D " \
>>  /tool/yocto/poky/meta \
>>  /tool/yocto/poky/meta-yocto \
>>  /tool/yocto/meta-openembedded/meta-oe \
>>  /tool/yocto/meta-xilinx \
>>  "
>>=20
> what does
>=20
> bitbake -e <image> | grep -e "^BBPATH=3D"
>=20
> show

It shows the following:

=
BBPATH=3D"/tool/yocto/poky/meta-yocto::/tool/yocto/poky/meta:/tool/yocto/m=
eta-openembedded/meta-oe:/tool/yocto/meta-xilinx"

There is an extra colon : , how can I remove it?=20

Best regards,

Elvis Dowson


