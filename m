Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E10E0070E
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:24:46 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id up1so3997993pbc.37
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Satt7BpyYGNW4MBQCZ/mm/YncqRa3RPinPMbG03YbRA=;
	b=aQcInMVsq3aQVkz0lahWVDJumjpcJ28TfPgkDcm6vLV9sAD1wm6zgbSdiTGkqaGavS
	6muQhTyMjg7vEVTA8ie0PALH2MTNJzkhF/a4QK6TdTGmahTZpCim1cWxMmOJrmRBCpv0
	3RBrz1n+B/Q//Qr6CpwtOl/jaRk9vFpuQLeutSJ9MRTfpPBDgvvM5O6fD08OIFCLtKlw
	2U0+2XxG6xFGyNYAX8mmuwDg+0xzlr3WrvWSoA4/EyEwtP69CKvuTKNy95oI4J/P8BPf
	Im3QpKQ0GtMFPEnYd4TkMXhWJ1yqvNS9F2dXKYbL9gbg2w4YP2iWI6uKJEOgJrUhO55U
	269w==
X-Received: by 10.68.235.36 with SMTP id uj4mr29726627pbc.54.1363022686282;
	Mon, 11 Mar 2013 10:24:46 -0700 (PDT)
Received: from [172.23.7.5] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id ti8sm21227898pbc.12.2013.03.11.10.24.44
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Mar 2013 10:24:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+QkY1DUokStaTCxB_OD0oSa97VqKWXdQwym5bZ0=AuCRB+0ow@mail.gmail.com>
Date: Mon, 11 Mar 2013 10:24:43 -0700
Message-Id: <D51C1972-C97B-4728-8C89-BE50C37EEF02@gmail.com>
References: <CA+QkY1DUokStaTCxB_OD0oSa97VqKWXdQwym5bZ0=AuCRB+0ow@mail.gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Building Android within Yocto?
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
X-List-Received-Date: Mon, 11 Mar 2013 17:24:46 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Mar 11, 2013, at 9:41 AM, Jerrod Peach <peachj@lexmark.com> wrote:

> Has anyone tried building Android within Yocto?  It may sound kind of =
crazy (I'm not convinced it's not), but I find myself in a situation =
where it might be beneficial for me to build Android within Yocto. Does =
a recipe or layer exist for this purpose already?  If so, where may I =
find it?
>=20

There is no official layer that exists but there is some interest around =
it. Android would need
some extra plumbing since it uses its own C library and even autconf =
triplets are different=20

> Kind regards,
>=20
> Jerrod
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


