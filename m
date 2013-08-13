Return-Path: <raj.khem@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D86BEE002F9
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:37:11 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id tb18so10571268obb.2
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ZBAFdzdjOa4x1q44bM0njnGRLhjWQjaL8d9x8hrF1Xw=;
	b=CvSPefkJsXEib6AJeUrPpzQvCeRhBLUNbmEF07ZapisPxvFTHB0NWqIjGJgPqMR4m9
	n5ziN7hllyWFOH0vNmbpWex3NR+jNc+z1U8Urr8IDsACrvjlPfAiFG8h/pPwws53dXpV
	bqONA1lSan3IekVFDe+M18TEdJvQOljT7vXxbTQkp/k5dgr6UrYBtT1LJIjsjJV8W4js
	UcccD2tDs4dmoRfQINIh9MGaBuzLymyzh9Dh3Ii9Bc6ck+W8cQkdzWkGVq8585xSsZZ7
	Twfz4LDWOwvCrZDoe8UKI5fttGe2yacu077cW+f15jVD7sccfOG5nSYz9X+cFTwsMwlg
	g/mg==
X-Received: by 10.60.95.99 with SMTP id dj3mr940677oeb.94.1376411831246;
	Tue, 13 Aug 2013 09:37:11 -0700 (PDT)
Received: from [172.23.7.190] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	pt4sm39895496obb.14.2013.08.13.09.37.09 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Aug 2013 09:37:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
Date: Tue, 13 Aug 2013 09:37:11 -0700
Message-Id: <D9E64E73-EE3C-45F2-BC68-766D4CD45BDC@gmail.com>
References: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 16:37:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross

On Aug 13, 2013, at 3:40 AM, "Burton, Ross" <ross.burton@intel.com> =
wrote:

> Hi,
>=20
> For a while I've been wondering about the possible performance
> improvement from using a tmpfs as $WORKDIR, so each package is
> unpacked, compiled, installed, and packaged in a tmpfs and then the
> final packages moved to the deploy/sstate/sysroot in persistent
> storage.  In theory with lots of RAM and a relatively long file system
> commit duration this should be what effectively happens, but there is
> a lot of I/O still happening during builds (and occasionally pausing
> the build whilst buffers empty here) which I was trying to mitigate,
> despite 12G of my 16G RAM being used as the page cache.
>=20
> Last night I finally got around to testing this.  Unless you've an
> ungodly amount of RAM the use of rm_work is mandatory (a 6G tmpfs
> wasn't sufficient as a kernel build almost fills that, 8G was
> sufficient for me) so I did the HDD times with and without rm_work for
> fair comparisons.  Each build was only done once but the machine was
> otherwise idle so error margins should be respectable.  The benchmark
> was core-image-sato for atom-pc from scratch (with cached downloads).
>=20
> Work in HDD without rm_work: ~68 minutes
> Work in HDD with rm_work: ~71 minutes
> Work in tmpfs with rm_work: ~64 minutes

This seems reasonable especially for folks who don't want to keep =
intermediate objects around
in build tree. I also have a setup where I build in tmpfs. I think it =
would be a nice step
to write a wiki document explaining steps that are needed to configure =
your system to use tmpfs so anyone can
try it out and with a bit of added explanation on how much ram is =
minimally needed and so on.
and we can then keep improving this document.

>=20
> Everyone loves graphs, so here's one I knocked up:  =
http://bit.ly/146B0Xo
>=20
> Conclusion: even with the overhead of rm_work there's a performance
> advantage to using a tmpfs for the workdir, but the build isn't
> massively I/O bound on commodity hardware (i7 with WD Caviar Green
> disks).  It's definitely a quick and easy test (assuming enough RAM)
> to see how I/O bound your own builds are.
>=20
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


