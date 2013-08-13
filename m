Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38833E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 03:40:24 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id m1so6460933ves.41
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 03:40:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=W0laKSBBl5e6ZOxDLu340X4muNQVFY8bTWmQqKopq+w=;
	b=EzjwTzzQUqgawJhViEKKiz24iwZ/9Ek2dEV7IwCOIGFIZrZUJ7TV8YaGDi6DeTHuG7
	YSjz1c0DPWa7Pvlbrzv4ZsjudtAH3P2w55lT7w814G/3czmNMwCRZh6a4vE6e6db9I+c
	B2zy1KMRtaGRESGafVVPA4MmijpLlBTfh5V6aZtJIcMojn2MFPA9C9Rbe1Q3w88F6dvT
	sakTfJ5ncfL3SHICB4xEdYnsvi+xDuJHwS3tK4Iz0E/xWUyz8aqVbQWpTwcFlOxau52H
	lN9dCGiM148ZOoNgoL4v2EqwtsQwAxytxqunUNpb1X1VKJJ8Buc0dOl4fI5ApaojxALT
	PfYQ==
X-Gm-Message-State: ALoCoQkrDU1zzK4zb0n43icmmzh+GEOALfp/weuQlEjpKDpAkllTR6zlucdT0bP0VYMc1OAzKKhT
X-Received: by 10.58.236.42 with SMTP id ur10mr130196vec.48.1376390423864;
	Tue, 13 Aug 2013 03:40:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 13 Aug 2013 03:40:03 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Aug 2013 11:40:03 +0100
Message-ID: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 10:40:26 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

For a while I've been wondering about the possible performance
improvement from using a tmpfs as $WORKDIR, so each package is
unpacked, compiled, installed, and packaged in a tmpfs and then the
final packages moved to the deploy/sstate/sysroot in persistent
storage.  In theory with lots of RAM and a relatively long file system
commit duration this should be what effectively happens, but there is
a lot of I/O still happening during builds (and occasionally pausing
the build whilst buffers empty here) which I was trying to mitigate,
despite 12G of my 16G RAM being used as the page cache.

Last night I finally got around to testing this.  Unless you've an
ungodly amount of RAM the use of rm_work is mandatory (a 6G tmpfs
wasn't sufficient as a kernel build almost fills that, 8G was
sufficient for me) so I did the HDD times with and without rm_work for
fair comparisons.  Each build was only done once but the machine was
otherwise idle so error margins should be respectable.  The benchmark
was core-image-sato for atom-pc from scratch (with cached downloads).

Work in HDD without rm_work: ~68 minutes
Work in HDD with rm_work: ~71 minutes
Work in tmpfs with rm_work: ~64 minutes

Everyone loves graphs, so here's one I knocked up:  http://bit.ly/146B0Xo

Conclusion: even with the overhead of rm_work there's a performance
advantage to using a tmpfs for the workdir, but the build isn't
massively I/O bound on commodity hardware (i7 with WD Caviar Green
disks).  It's definitely a quick and easy test (assuming enough RAM)
to see how I/O bound your own builds are.

Ross

