Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1809BE013A6
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 06:31:55 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1040531pbb.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 06:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=zpZTxXimIO2uj1Bm0PKNbetAiDDqJdtSafUDVltYpAg=;
	b=e9XEYQiVKKRpeYgsQ86WMOEu0ja3IcZNwoVrWOaOWw463pqgODW+Gl6RW9j34Hkf2P
	qmzpJCE0tEa5JZzkYhcBndswXuQlw3okqu5DAVvQAVFfpNhGAgDt6k4xRUHtL8qnpi9F
	KQkAzRZicYYrI/CL44+JIfJ+7zeUCScVcdyq9YmStw0AfdQELeOWaGKTklVBfrzTTKLg
	jlbpQdGboPaiM67yQPxav9+OttUEECl2lexfrRlLhZfhWgkroXxRYXQpjFWFQ/azrZ/u
	AoIukorjFUerdaz5IQNHDXexnOx8UxFJv01ovP1L1iakloQCXUahwGHgk06BmCbfAT6r
	wMLg==
Received: by 10.68.222.106 with SMTP id ql10mr3071928pbc.151.1344519114924;
	Thu, 09 Aug 2012 06:31:54 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id oj8sm1156993pbb.54.2012.08.09.06.31.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 06:31:53 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sogsUv1ahoYdTBFoM8oVq0u410Wi8Ghv5WRT+uN4FgK+Q@mail.gmail.com>
Date: Thu, 9 Aug 2012 17:31:47 +0400
Message-Id: <AE1E9C2D-94D8-4AF6-B652-8AC3800BBACB@gmail.com>
References: <735CD356-A6DB-4939-9C39-EDB0A15D7343@gmail.com>
	<CAMKF1sogsUv1ahoYdTBFoM8oVq0u410Wi8Ghv5WRT+uN4FgK+Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky/bernard: gcc-4.5.1 configure: error: cannot compute suffix of object files: cannot compile
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
X-List-Received-Date: Thu, 09 Aug 2012 13:31:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Aug 9, 2012, at 1:23 AM, Khem Raj wrote:

> Elvis
>=20
> I think gcc 4.6 is retired in toolchain-layer in meta-openembedded
> repo. I think first thing
> I would suggest is use that layer and use gcc 4.6 this might work
> better. I think 4.6 should still
> work with master or we can kind of fix it if need be.
>=20
> Then if you are still unlucky then use 4.5.1

Ok, just reconfigured all my layers to use the latest poky and =
meta-openembedded updates, and set the preferred versions for gcc to =
4.6, and will give it a try.

I just have one question though.=20

The current kernel that I'm using is linux-3.3.0 from the xilinx repo. =
The poky master branch build is using linux-libc-headers_3.4.3.bb.

Should I ensure that the version of the kernel and the =
linux-libc-headers match, by creating a linux-libc-headers_3.3.0.bb =
recipe and setting the preferred_versions accordingly? Would this =
mismatch cause issues?

Elvis Dowson=

