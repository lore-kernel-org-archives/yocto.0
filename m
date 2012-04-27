Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1288BE006C7
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 07:15:25 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so490687qcs.35
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 07:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=2wGz4U1uOH/V9to2qWOh3gzv1zzrfJ+DH5nY7CMxj3Q=;
	b=owhGo9qeyfZOQl3iMFZDD+ttjt0uFoYksy/3ifMBhk0uAOcYzIErGGw4hXasCrtKC+
	lb2idUKIq9ehaNA7AF6rjwH9+L6NV3j22zbD5p+lordwTfIyS9yqCoSvtFlZFtgyxPq8
	sFixDNcvTPMNyBHGtVe3XfJ2FlP4gWhk/MzBg1AlYZn5oWdFm6q2ZgcBKqMSIj9JxGT9
	lPWqDb+ciWKvJcxnNsRoo5Ba6xHGkmsPgGReWU2RdpJQKBnaQZIiY5Qu4+skuXzXm9h0
	Sn2ZRNzxcKBky4k97n1iMiP/0Ef1zJWUd1sAmYVef+qjN1PZi7h+vQgG9x92ViSgYmvy
	owGg==
Received: by 10.229.135.137 with SMTP id n9mr2800284qct.48.1335536125228;
	Fri, 27 Apr 2012 07:15:25 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	gw8sm10564721qab.7.2012.04.27.07.15.23 (version=SSLv3 cipher=OTHER);
	Fri, 27 Apr 2012 07:15:24 -0700 (PDT)
Message-ID: <4F9AA9FA.6020604@gmail.com>
Date: Fri, 27 Apr 2012 10:15:22 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120410 Thunderbird/11.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: rebuilds -- when to do what??
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
X-List-Received-Date: Fri, 27 Apr 2012 14:15:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Over the past 6 months, I've learned a lot about what I should do to 
work with Yocto successfully, However, the area of biggest confusion for 
me is what to do when I want to rebuild something.

I generally work from Master repository and when I see significant 
changes while doing git pull, I try to rebuild one of my projects.  I've 
tried a lot of the methods:

1.  just bitbake again.
2.  bitbake -c cleanall or -c cleansstate core-image-sato
3.  If I know a recipe has changed, I'll bitbake -c cleansstate "recipe 
name"

Most of the time something fails.  Researching what, is an impossibility 
to me and much quicker to just delete the build directory and redo it.

Is there a good "how to" rebuild?  Or is it the best use of time to just 
tell users to blow away the build dir. and restart, saving the old 
local.conf and bblayer.conf?

Jim A


