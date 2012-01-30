Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C652CE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:47:31 -0800 (PST)
Received: by qadz32 with SMTP id z32so2583022qad.14
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:47:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.224.177.68 as permitted sender) client-ip=10.224.177.68; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.224.177.68 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.224.177.68])
	by 10.224.177.68 with SMTP id bh4mr3356163qab.2.1327960051177 (num_hops
	= 1); Mon, 30 Jan 2012 13:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=C0qjlylkJQt6Kxb3d0p7oAWL2OcNEujfQRnEb0E50i0=;
	b=W9QgKi7txb0KmvStYFBKWAK8PQPVps2Qa86RqWkpS1wr/Upw7k4NwWrAEEZIh2Uxt0
	4fb8vMs0TQnuk1rgXhyprJJkf2v0S10uhm/IA/XW2pGKqWeQ6Z1lK7Q4NmG+iundnWzN
	Gy4Oa+ovkVAFBhsWSNXH3ll6bJZt5MMCyYbik=
Received: by 10.224.177.68 with SMTP id bh4mr2961698qab.2.1327960050989;
	Mon, 30 Jan 2012 13:47:30 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	s18sm37131907qaz.15.2012.01.30.13.47.28 (version=SSLv3 cipher=OTHER);
	Mon, 30 Jan 2012 13:47:28 -0800 (PST)
Message-ID: <4F270FF5.6040909@gmail.com>
Date: Mon, 30 Jan 2012 16:47:33 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: So what happened to Edison??
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
X-List-Received-Date: Mon, 30 Jan 2012 21:47:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

It seems that something happened today. I could not complete a build on 
edison branch for meta-cedartrail.  I copied it to meta-mycdv, but other 
than that same, old same old. I tried the  standard unchanged SRCREV and 
also tried the latest.

Error below:

ERROR: Function 'do_validate_branches' failed (see 
/build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787 
for further information)
ERROR: Logfile of failure stored in: 
/build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787
Log data follows:
| ERROR: Function 'do_validate_branches' failed (see 
/build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3/temp/log.do_validate_branches.26787 
for further information)
NOTE: package 
linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063ccbf-r3: 
task do_validate_branches: Failed
ERROR: Task 720 
(/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb, 
do_validate_branches) failed with exit code '1'


