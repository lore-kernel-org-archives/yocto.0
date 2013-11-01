Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80DB9E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 18:01:55 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m17so3887773oag.7
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 18:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=bENuU8XumYBJBG/gkl3Pb7pPd63NrwiBQQ4nz9w6P+g=;
	b=cTVkrPn6Bbe7prZQSfh2LaVlOTN4rqm+V5qtjXliBdRg8cxfoxOYnd0gO93mZT+uXg
	v90IVmbz153pbPdyJ0frCcLDgnilO3pp7EgDY9J0yy6dHbRk18YYFLuQyXjLZYfYrm/J
	KuKnp8td0VlRs+FRMs7LCuSuTcA//F58w19VGZ+je8phGOdmLU2hXdL/lIeXsArGoWW3
	dcjuQfOh/QRZGME90E33kwu4Z2U9kRwZW+kcPqh+Py9hBT53bs/rfRu5Tpx92eLO/BLl
	vgls3np791DfcUDu7L9f83D8iLuz1niacfeRLupl3dbYhvEw5iMfYD9Jc9pw7wQElEek
	6prQ==
X-Gm-Message-State: ALoCoQnY2v9xyMAO8pM/viDOJkZxK0VcurMvXFU8AyRPljydcwtmQ4hVyPg4aKElMzmbd1YBEThD
X-Received: by 10.60.230.197 with SMTP id ta5mr425982oec.16.1383267715285;
	Thu, 31 Oct 2013 18:01:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Thu, 31 Oct 2013 18:01:35 -0700 (PDT)
In-Reply-To: <CEE454E0AA856348B2B4179B5CF987140C6E4044CE@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <CEE454E0AA856348B2B4179B5CF987140C6E4044CE@BLRINMSMBX01.bglrodc.lntinfotech.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 31 Oct 2013 18:01:35 -0700
Message-ID: <CAP71Wjyh00GGjBZKBB_Czqe2OrSmd-=HZ9EVF3E_ap7zwhZsbA@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build stripped rootfs
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
X-List-Received-Date: Fri, 01 Nov 2013 01:01:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 31, 2013 at 3:32 AM, Amit Kumar <Amit.Kumar@lntinfotech.com> wr=
ote:
>            I have quarry =96 How to build the stripped rootfs? Is the yoc=
to
> build rootfs image has all the stripped packages or do we need to do
> something else for that?
>
> Please help me out how to create the stripped rootfs image. I am using th=
e
> poky-9.0.1 .

all executable files in any binary packages are stripped before being
packaged (and thus installed in the image), the unstripped version is
added in the -dbg package, unless if you set INHIBIT_PACKAGE_STRIP to
true in any configuration file.

