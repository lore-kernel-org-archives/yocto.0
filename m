Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54FB5E007B6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:30:54 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hu19so4246972vcb.14
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 07:30:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=DeISM/sf9q33HJ/DlQPRPaglGC3x/j9QSgy7LRvyOI0=;
	b=TBWOkDYhqnFaZFNLlEFF/ZX2iXLbrFednUEHZuYzW4n/HFOFRH48SdMUmDrYV3i81K
	ughNfs0h9ci8OFtyU5hIExe7JaXG3T+6BEeweAm6bWVsQ6ljEC62EAspTd9HRkIo233p
	o2XDI7bznOE6SqU6lxG2ta0rQ5KoSxWxXrMCIpbXQbZkGf8kQY1h9z9P2P0gLvvj4FZc
	55e/XMg4qWE4jkcIJ31+o6utm5LLDW/RpMRIEz6uU1e1dUIqghLg+mGUk7dd+bnNtztp
	hgg0xBRMr1oJfFlDP9bvGb9P2NLnTzJ4VF4IV/Lf4tIqh+93JEOnUDPNz39YTckM4+iY
	P68A==
X-Gm-Message-State: ALoCoQlCdAjSX93Aw5hTrQeEfZ867SG2JoUSCo+RI4NrixmCdGY+UleeM1D9eC77LOEjdPAk9LkS
MIME-Version: 1.0
X-Received: by 10.58.187.51 with SMTP id fp19mr1555478vec.47.1387294254107;
	Tue, 17 Dec 2013 07:30:54 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Tue, 17 Dec 2013 07:30:54 -0800 (PST)
Date: Tue, 17 Dec 2013 15:30:54 +0000
Message-ID: <CAPhnLPA6ySb6aJ7jUG4i-GcgBEXhAsv05GpeJ=xWP8K_6poU1g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.6_M1 now available
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
X-List-Received-Date: Tue, 17 Dec 2013 15:30:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The first milestone release of the upcoming Yocto Project's 1.6
release is now available for download at:

http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/poky-c51730aaa91066cfb51ad6ec2920fb4f9d9ea94c.tar.bz2

Main Feature List:

* oe-selftest prototype merged. It's a framework to run unit tests on oe.
* Toaster alpha release, which mainly includes support infrastructure
for Toaster in bitbake.
* distro_features change now will only trigger related parts to be
rebuilt instead of a full build.
* Build history tool improvement.
* 142 package updates and many bug fixes.

Known Issue List:

* Bug 5182 - [Beagleboard xM]X can not startup with 3.10 kernel
* Bug 5403 - crosstap doesn't work on qemuppc and qemumips
* Bug 5636 - No IP address for eth0 on qemu at the first boot


Release Name: poky-1.6_M1
Branch:  master
Tag:  1.6_M1
Hash:  c51730aaa91066cfb51ad6ec2920fb4f9d9ea94c
md5: 9a6bdc4b4549fce3d4c69a83a1e01525
Download Locations:
     http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/poky-c51730aaa91066cfb51ad6ec2920fb4f9d9ea94c.tar.bz2

Release Name: meta-intel-1.6_M1
Branch:  master
Tag:  1.6_M1
Hash:  a649e92498d234f2d0d52f3da5a85bdc87296c23
md5: fd52862f923d619b334be7a52d517f7a
Download Locations:
     http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/meta-intel-a649e92498d234f2d0d52f3da5a85bdc87296c23.tar.bz2

Release Name: eclipse-poky-juno-1.6_M1
Branch:  master
Tag:  1.6_M1
Hash:  e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
md5: 91a5add5ae10c5db9c24a82a490f7f76
Download Locations:
     http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/eclipse-poky-juno-e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9.tar.bz2

Release Name: eclipse-poky-kepler-1.6_M1
Branch:  master
Tag:  1.6_M1
Hash:  3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82
md5: d593b8e7d31cf196174a3d43ca75d6e1
Download Locations:
     http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/eclipse-poky-kepler-3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82.tar.bz2

Release Name: meta-qt3-1.6_M1
Branch:  master
Tag:  1.6_M1
Hash:  b73552fb998fd30a01dbee5a172e432a16078222
md5: ba41e080634589040713d688369a4576
Download Locations:
     http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M1.rc1/meta-qt3-b73552fb998fd30a01dbee5a172e432a16078222.tar.bz2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

