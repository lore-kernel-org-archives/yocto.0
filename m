Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F5BCE01473
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 17:09:34 -0800 (PST)
Received: from mail-vb0-f72.google.com ([209.85.212.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 15 Jan 2013 17:09:23 -0800
Received: by mail-vb0-f72.google.com with SMTP id ft2so573816vbb.11
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 17:09:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=docTrKiokxc60ACGWCWY3F4FlbiIYr2RMloDcZPgRaI=;
	b=Odn538ehbZODxAMuxMQjo4UI34kux5EEAHoxNnujB987jdnc8KFIelRDQihHV0oYi2
	D8J7SUCi6TtHjjPQn3ZTPahPGd7jBjEs/MuUki8dCW2i4r7/T0PJe01mBibRNg2mlcMx
	zqxXesYGoWmdiOHwINvbuNuZGB76Wnr4GQ5MBCeGbemd/p1ud94BeYhIjp50lhkgRsKN
	MojBy3mcr0M8OlyN4av2wa+0CwOEQJVM+0snFGc3Qp6QvEXjIMany3ma+iZvDj1Cnb5q
	ksaQ8UZaf3sglhlNkGmglxsf1N7ewlCjQxK3eWrisX8zfhg3NghCL7UFpKZ4MKa74b4k
	0GdQ==
X-Received: by 10.229.69.32 with SMTP id x32mr19038233qci.129.1358298562269;
	Tue, 15 Jan 2013 17:09:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.69.32 with SMTP id x32mr19038227qci.129.1358298562117;
	Tue, 15 Jan 2013 17:09:22 -0800 (PST)
Received: by 10.49.128.234 with HTTP; Tue, 15 Jan 2013 17:09:21 -0800 (PST)
Date: Tue, 15 Jan 2013 17:09:21 -0800
Message-ID: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlh1wqAKwwufKbf/0mJo4oa8MlZYHqsdj/y0wYpMLj51/MV5Z/6vUYyr5M0PVQ3xPVnkWkodYQhbnS6DLvSZAOTUlEJEyTy6rjiigesStaXUOELNWy33c+TIPcNyYa8iLc1p24EGh9UJKspI+RA2OG20uH0LA==
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: Weekly build availability.
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
X-List-Received-Date: Wed, 16 Jan 2013 01:09:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130115-2

Known issues:

- The eclipse plugin needs to be built alone and moved manually. I'm
doing this right now. This is due to moving the eclipse builder to a
slightly overloaded machine. I'll be moving it back once I have idle
time on the infrastructure.
- p1022ds failed due to a libxml2_2.8.0 failure. it is also throwing
warnings about missing patches.
- nightly-fsl-arm core-image-x11 failed. Multiple providers for
virtual/libgl and compile issues for beecrypt and avahi
- nightly-ppc failed on oprofile


-b

