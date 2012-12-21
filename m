Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6519EE01423
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 08:48:57 -0800 (PST)
Received: from mail-qa0-f69.google.com ([209.85.216.69])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 21 Dec 2012 08:48:03 -0800
Received: by mail-qa0-f69.google.com with SMTP id o19so8388829qap.0
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 08:48:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=Lv4sXnL6Psr+di2jPs6sERlAnc++7AvwLLc6vs/+PNw=;
	b=B1ph8Wy7BHBgs+11a9g2ffhnsj5Ef3Af/AWfeiKqigYQCAUvPhw9FxdeSrrtgSFgW1
	5F216y5LyWUv8k6rl+VXIi1M1+TI08vx3tPlYt2y6naqrZgJZGV1cN+IBHifoMEgpKax
	awhISexhrFxFpPRpNVfbMqHTNMS/sxb/01IYXU7XvR+bNK0FDH8H4S3pk07mToh20tsB
	SMCqKshUd4GYQ8fssxqE76QasTFI+5/b2n/H6zlSAFoiACUofWBP8b79IUvlKIcEkopW
	yDsqiePgCeyWUU4wuhAWCy4X+PFl+YMqWV3t3SC6kcL5cI3JjsSYR9Yz486Yz2sp0loz
	jl7A==
X-Received: by 10.58.214.231 with SMTP id od7mr21492011vec.44.1356108535952;
	Fri, 21 Dec 2012 08:48:55 -0800 (PST)
Received: by 10.58.214.231 with SMTP id od7mr21491997vec.44.1356108535810;
	Fri, 21 Dec 2012 08:48:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.178.244 with HTTP; Fri, 21 Dec 2012 08:48:35 -0800 (PST)
In-Reply-To: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
References: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Dec 2012 16:48:35 +0000
Message-ID: <CAJTo0Lbziser-tgEanMBiv5Trm7wE8rb-TaF3t=w_y2UgZc2Pw@mail.gmail.com>
To: GOPIKRISHNAN S <gopikrishnans@pec.edu>
X-Gm-Message-State: ALoCoQmcHcAP5IrJD0DqJnn9MbO5QQi3KrCa9qzjgfBJw4LYaZzR03GD/Hujj4RuMHGZ8a7JpdqPfBfIEjVahu4xpsHA8oOhoB3R/XHREmD6hxldMpvvDeWLCJ1qKInHgpycvqqO2lIkEAx6h6CIzV3m4hzIz7WYyQ==
Cc: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: hiawatha-8.6 using Yocto
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
X-List-Received-Date: Fri, 21 Dec 2012 16:48:57 -0000
Content-Type: text/plain; charset=UTF-8

On 21 December 2012 16:11, GOPIKRISHNAN S <gopikrishnans@pec.edu> wrote:
> I was trying to install hiawatha on my freescale p2041rdb. But it is using
> cmake to configure and install.
> How to write recipe for this with cmake. I have writted recipe for packages
> with autotools, and make file.
> Any Idea???

Basically, instead of "inherit autotools", use "inherit cmake".

In oe-core have a look at libmusicbrainz or libproxy for examples.

Ross

