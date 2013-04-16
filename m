Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB951E0140A
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:41:23 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ht10so449252vcb.13
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=XDOPk8qwDJhaSk+dnkPUOA0u9hLAeQxFliFwwQhd0zA=;
	b=DekZLJrLf6xKMbvPBahHi5Q1gvTe6CHNbbNxwqgsxw+5smATEhqxGKm5SPKvr446Sg
	aSdBqid6aGZ7oayRncIXVQHMJTAY/GsQ+F5VgYXPJ8eJjKM7ziRHPGtZgRTdXnEYF1jk
	AKROcwqDt8+xkLbxFoE95rwkpg+XvTLLU8udAY+wgBIqF7Nk+p3+SqkSybz0mTwuZQUd
	VFmzdEk9bPNg6yEqUIgROA8ddn0N054RLMZOIcmNaSCoDK3+CqGqB4rpC+JSslVmW6TA
	SP3fwPrUiyTKj9fLLhUcIGX3V+ndDvj2HJhwawt+PiLhANA6ysXeqdGgJeYz5INO4GTq
	B+Vg==
X-Received: by 10.52.108.10 with SMTP id hg10mr1473067vdb.34.1366123282829;
	Tue, 16 Apr 2013 07:41:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 07:41:01 -0700 (PDT)
In-Reply-To: <CANwz6nzYSqU=YT0V11Jo7dp0TX-NThe-yVXNCWNDEOXAy8-r2A@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
	<CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
	<CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
	<CANwz6nzYSqU=YT0V11Jo7dp0TX-NThe-yVXNCWNDEOXAy8-r2A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 15:41:01 +0100
Message-ID: <CAJTo0LYbbWMX6Gf9eOFO3HgCeio94rFLKfXSK7T8qiSs-WN5gw@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQnaxHG2P5CoUsYKKwaK0jmnlpzIoVpIMp3QS/lLoVqGLHYPnwYENT29vnZj6X3tp5DNXdtf
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 14:41:23 -0000
Content-Type: text/plain; charset=UTF-8

On 16 April 2013 15:35, Edward Vidal <vidal.develone@gmail.com> wrote:
> They all use EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk".in local.conf
> Something within the build is deciding which pkgs get installed between
> different builds.  I would expect several different RPMs but not hundreds as
> was the case.

Different BSPs can cause different packages to get pulled in, but
without seeing full package lists from each of the images nobody can
really comment on what is causing the differences.

Maybe the meta-ti kernels are building more options as modules in
their own packages?  Maybe you've found a bug in the locale package
selection? It's impossible to say without actually seeing the package
lists.

Ross

