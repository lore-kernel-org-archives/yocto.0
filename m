Return-Path: <philipp.seb@googlemail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69765E002A7
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:01:24 -0800 (PST)
Received: by mail-ob0-f179.google.com with SMTP id wo20so5053368obc.24
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 07:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3pR3ikbnORuxgj9JaFrS/if904h8Vj6ha+mWuVM30YM=;
	b=AsG5OERnNrwm0+ZNPA9TtLkgP9vzhsLO6sf0kDwz/8yXkE+GEXznMh15WrSbHqkgqC
	TRbVZwvIyOiPOSvSUuf64mOgX8smOeVcDl6O8V1S23LVLkrh6ONudU9Oa+w8+okwIbEN
	oymKg2zaD6BjrmbOTaLJK6DsQ0Dh86UaRetV+ezprtFf87ZGFleAWBuuuWUhr1gs/vqf
	sjGGYb+6JK/N/Ck/zI3vOCfqBzsyGvHpWC+uALls9rdjow5BbpmjBnZOb77lvKDs0XLA
	64AvYYjTxsOGrVkjeUUXr+y4TZar1L7qrD9YnN73Mgdw54Q7wOiYGUlcrCHs3NTB5X32
	W/5w==
MIME-Version: 1.0
X-Received: by 10.60.179.10 with SMTP id dc10mr449213oec.85.1391180484118;
	Fri, 31 Jan 2014 07:01:24 -0800 (PST)
Received: by 10.76.157.226 with HTTP; Fri, 31 Jan 2014 07:01:24 -0800 (PST)
Date: Fri, 31 Jan 2014 16:01:24 +0100
Message-ID: <CAGNjcsOZo2X=KMUzgPoDhUKhpQVh02JHVTZx0Tn+OeA=j0LUmQ@mail.gmail.com>
From: Philipp Sebastian <philipp.seb@googlemail.com>
To: Yocto Mailinglist <yocto@yoctoproject.org>
Subject: Some issues with the Sunxi-Mali Package
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
X-List-Received-Date: Fri, 31 Jan 2014 15:01:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello to everyone !

My Name is Philipp from Germany
im new to the yocto Mailinglist an also to the Project this is my
First Linux experience and im very curious about it :-)
Maybe someone can help me with my issues ...
Ive started my First build last saturday just trying to build a very
tiny Linux distribution for the cubieboard (with A10 chipset) it all
Runs very smooth thanks to the Hob Interface

To this Point all runs perfect now i want to add the Sato graphical
interface and run in some issues with the Mali Package witch produces
an error.

Here the Message is:
"Function failed:Fetcher failture:Fetch command failed with exit code
1, output:"
"fatal:Could not switch to
`/home/philipp/poky-dora-10.0.0/build/downloads/git2/github.com.linux-sunxi.sunxi-mali.git.tmp/lib`
: No such file or directory
Unable to fetch in submodule path lib/mali

its right the path does not exist but did i miss something to install ?
The task was do_unpack
and im not sure there was a allmost similar folder but the path is
different to the one on the log
here it is

/home/philipp/poky-dora-10.0.0/build/downloads/git2/github.com.linux-sunxi.sunxi-mali.git

so its without the tmp and the lib
ive looked at the bbllayer.conf for the mali package but i have no
idea how to fix this
for my opinion its a path problem...

I hope someone can help me

regards
Philipp

