Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C368EE00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:11:17 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4194647vbj.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=miJzO02QLamCWNZvPkN0Gsdz0MxinO77IoAERiy55I4=;
	b=Xw8/KLx/wzOSywja/bqZvCqWXGIrJaYrhl0H4+Jf/Rz5ZSCpvFHUAJ/5k72XoWQhyy
	0RBkf3UO16Koa1ccnt1IB8SfVszq+G6CQIWU0b+FBmEGdC0ZqI4c9SQCSASCCWuVShz1
	YFsCimZPkbvaiKwYDKCILOxOZLFAN1xnoPm1zkH3Fc1XaQfFElQlkkq0mbuAYjzNWjFY
	n6lFoIEDucaJaP8YOXlAH4j0VX+MRRqd0ANK7VROZcH35x2X18QQROcGGIKs63jD8Te3
	DeEdSVefaZgcAPyo3676M2qMayT1UrdZzfvmJVnModJYVKyKXdvJguvKDIqErUARcGjy
	LoGA==
Received: by 10.220.149.148 with SMTP id t20mr5556949vcv.12.1342815076576;
	Fri, 20 Jul 2012 13:11:16 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id cr4sm3781840vdb.7.2012.07.20.13.11.15
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 13:11:15 -0700 (PDT)
Message-ID: <5009BB61.5010605@gmail.com>
Date: Fri, 20 Jul 2012 16:11:13 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: nothing building under denzil-7.0.1
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
X-List-Received-Date: Fri, 20 Jul 2012 20:11:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

There must be some basic thing I'm missing.  Nothing that I used to 
build under denzil 7.0 will now build under denzil 7.0.1 or tracking the 
denzil branch.  Are all the BSPs required to be updated to 7.0.1 before 
you can run?

I'd thought I'd check before I post a bunch of log files.

I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred 
directory and untarred the 7.0 Intel BSPs.

There must be a step I'm missing.  otherwise this would not have gotten 
thru testing before deployment.

Jim A


