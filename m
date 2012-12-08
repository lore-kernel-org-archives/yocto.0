Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45301E00559
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 09:49:55 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id k18so631539dae.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 09:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=3nSRquRnPOSHAfpzEkGbarnL9g7c43I4NYUjAigJm1g=;
	b=mzJp+tc2/9tFrieOE09TAMKGqgF/AjldH7PpD1GKNrubyJSBDOZnlGwkJIfEQBYWEt
	7mbPSt5Lx/THYGh3F1F1VM1f/ASQSPzw0AZhQNxtI9kGRCOVmDmRKfsiTEX7ZhKVZeVB
	NMDqtS1jSZsOwqgV7eFWrKOPkwh8rxvkTdTVh81xCUrp0AXaBPAmZiSygNEdhBxyUE8R
	vWCB8DblQOIiYMbEUWEQgTJb7A4xNYYI7n+UNW5+Vem0ffONJxgfMN1GJtkNFf7bN9FP
	Oed3pnh6QC7PG+QW4VOzRj+fc2a5zyItktYoI1e/a1nsa2t4r6s6qhXl3C0uimn8o9iP
	f2VQ==
Received: by 10.68.222.196 with SMTP id qo4mr24782765pbc.140.1354988994887;
	Sat, 08 Dec 2012 09:49:54 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id nf9sm8753549pbc.17.2012.12.08.09.49.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 08 Dec 2012 09:49:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <50C3647F.4050900@mlbassoc.com>
Date: Sat, 8 Dec 2012 21:49:50 +0400
Message-Id: <5AACF581-BEC6-4F1C-88D6-EF1B8FE74F32@gmail.com>
References: <31099774-8FED-4465-BFC3-67C718BC4AF6@gmail.com>
	<50C3647F.4050900@mlbassoc.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1499)
Subject: Re: How to check if systemd is correctly setup
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
X-List-Received-Date: Sat, 08 Dec 2012 17:49:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Gary,
                Thanks for the reply!

On Dec 8, 2012, at 8:02 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-12-08 07:19, Elvis Dowson wrote:
>> Hi,
>>       I haven't used systemd before, and I've just built a linux =
kernel image using the latest yocto poky/master.
>>=20
>> The boot process starts as normal, but it just displays "freeing =
memory (some value)" and I get no console prompt.
>>=20
>> Q1: Which config setting or recipe code, controls the inclusion of =
systemd in the root filesystem?
>>=20
>> Q2: How can I check to see if systemd is properly configured for my =
target (virtex-5-powerpc-405-ml507-softfloat)?
>=20
> First thing, make sure that your kernel has this in the config:
>  CONFIG_DEVTMPFS=3Dy
>  CONFIG_DEVTMPFS_MOUNT=3Dy
> The latest udev (rev 182) has to have this to work.

Yes, my defconfig has the above two configs set.

Which file control if systemd gets pulled into the core-image-minimal =
recipe?=20

Where are the systemd configuration files stored?

Best regards,

Elvis Dowson=

