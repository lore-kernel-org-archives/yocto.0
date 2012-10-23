Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CCECE00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:53:50 -0700 (PDT)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 23 Oct 2012 12:53:22 -0700
Received: by mail-ie0-f200.google.com with SMTP id 10so11835618ied.11
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:53:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=E4AYk1vNFcDXmwZ6K+/cuLyxDa+qRxQ11YfpbrVAzJo=;
	b=gTTZ/KIV8jVV8weuNmQK/kjjvIreZIpN1nEu1zqGpF89YiZWejTlCfNulFQGX2JJmC
	b/WzgGh9ehnrvhqVz1Ok7WBQLd05KFXFNOHaUWUxUSX4m9B9z50mt8QyNHyOzm3cqtTJ
	VF3aOgPB06akQwf8Scxl75eKpZZhUyrQdSpbVAuG3M5M6sm9/LzlH9KrJ1p8lt1gHhVf
	bu2UseYGuNcNbL8p5jLZ2vPYCEDzHgt973v79b+wKfe/6EuCNcFC/30majQGgIP03SIn
	rCBJO64SfuraFedbXmV2YTZWiXQy+xOCHC/vBhUmSkCuMr+U9dXeMB2RkVfPiq8nhSxa
	kEeA==
Received: by 10.182.228.69 with SMTP id sg5mr5788646obc.2.1351022025355;
	Tue, 23 Oct 2012 12:53:45 -0700 (PDT)
Received: by 10.182.228.69 with SMTP id sg5mr5788642obc.2.1351022025298; Tue,
	23 Oct 2012 12:53:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Tue, 23 Oct 2012 12:53:24 -0700 (PDT)
In-Reply-To: <37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
	<37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Oct 2012 20:53:24 +0100
Message-ID: <CAJTo0LYi3s9Dp33ORf4VvQFrFY4v0ib9vzRqFOWaKy5sMjex7Q@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Gm-Message-State: ALoCoQnnm4t8/9pAlnKQ8BpGfSJUER6jecqQlh7bXT6m+HIgdf8Kag8WxcPFHOv8NQFykZSYWEoF33eATnlbJgBUdo/hI7cD9jW51yq4XF2GnFx3ukt3CKjEgUvCLP60eY4KAwbx2p41hhGJFYxeRviOuIGIBVwHmQ==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
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
X-List-Received-Date: Tue, 23 Oct 2012 19:53:50 -0000
Content-Type: text/plain; charset=UTF-8

On 23 October 2012 19:35, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> the following entry works for the /etc/fstab for moving the /tmp file to RAM
> none    /tmp    tmpfs    defaults,noatime,nodiratime    0    0

tmpfs is in virtual memory, so potentially swap.  Have you benchmarked
a build with the build on SSD verses in tmpfs to see what the
improvement is?

An alternative (and less intrusive) is to increase the commit timeout
on the build partition, which means more data is buffered in RAM
before the disk is used.  I haven't benchmarked that either though. :)

Ross

