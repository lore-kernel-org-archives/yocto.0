Return-Path: <jatedev@gmail.com>
Received: from mail-qg0-f66.google.com (mail-qg0-f66.google.com
	[209.85.192.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D208E00BF0
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 13:52:41 -0700 (PDT)
Received: by mail-qg0-f66.google.com with SMTP id a108so908984qge.5
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 13:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wyPI0vSIvWKlkFJ5VHU3D+Lw/m1/f33MRfy/n2NQz2g=;
	b=tM+7F8jE//PJqDBOAgJxUyKlIyHi1pkD6XgPKzmb+80lDZh6GhiNIhcYvkS1nlVXmI
	AMzmZCCbIItNd0S88kmtZ9zuubek94oH4KfFjeGSHk0qOo63600wpLHYQMEV/eED8mhk
	imAZ0k2q22JpOXsw5wUfyyZAsqKebSsTbCngEegOGv17FRC0Gaq4cvwCc1nM5FiBb74R
	4Q5of3kNTfYAVe0DnQfSATraCYz7AeMrIW0Y31fgThOUiQypc7A1UMAor5iG7KwTHITx
	OdSEzKD4h8LdsM8dexw98wqvMyueH7c/augvOy2YxMm0v6VbtBXt7qkOA8KQcxYjc5Ub
	ECtQ==
MIME-Version: 1.0
X-Received: by 10.140.101.180 with SMTP id u49mr15158145qge.27.1397076761107; 
	Wed, 09 Apr 2014 13:52:41 -0700 (PDT)
Received: by 10.140.101.138 with HTTP; Wed, 9 Apr 2014 13:52:41 -0700 (PDT)
Date: Wed, 9 Apr 2014 16:52:41 -0400
Message-ID: <CAPphmgb4T+ZWE_rsVu6iS=XGCESVBqjSeysQHi5BVpkENnQrbQ@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: do_populate_sysroot_setscene needs pseudo-native
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
X-List-Received-Date: Wed, 09 Apr 2014 20:52:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am getting the following warning:

WARNING: Setscene task 45
(/home/jate/workspace/poky/meta/recipes-connectivity/avahi/avahi-ui_0.6.31.bb,
do_populate_sysroot_setscene) failed with exit code '1' - real task
will be run instead

The task log.do_populate_sysroot_setscene has the following WARNING:

NOTE: Performing useradd with [--root
/home/jate/workspace/poky/qemux86/tmp/sysroots/qemux86 --system --home
/var/run/avahi-daemon                               --no-create-home
--shell /bin/false                               --user-group avahi]
and 10 times of retry
/home/jate/workspace/poky/qemux86/tmp/work/i586-poky-linux/avahi-ui/0.6.31-r7.0/temp/run.useradd_sysroot_sstate.17299:
line 284: /home/jate/workspace/poky/qemux86/tmp/sysroots/i686-linux/usr/bin/pseudo:
No such file or directory
WARNING: useradd command did not succeed. Retrying...

If I bitbake pseudo-native manually first, I can eliminate the
warning. I tried adding pseudo-native to the useradd.bbclass, but that
doesn't cause a rebuild.

Any thoughts on how to do this?


- Jate

