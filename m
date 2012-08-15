Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0BAE0144B
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 13:30:23 -0700 (PDT)
Received: by yenm12 with SMTP id m12so2829924yen.35
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 13:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=E8694MYar/BwaZAyDzDL9vZ28M7/HKEvzzargWEOfLY=;
	b=A4HRhk9lJM6hEu7iGwmRvfAewdW3uM2FAPSB758OgNphgFwKyV/Ktdlvjp50UmFtQW
	CKMbXJrTNAZ6U/v06tfHkVHQ8zGVnujzIZWAtz02WA/PpYUE0rYZcnIsBH88HyuZtvDt
	L5EIe+YOfQST4lwgJggfBKAW2jKxrWOYb4JYmNgKGVdwbk1PJmqLj7pyDRLWCwEd/4wl
	2LhOOohPlx8+qFI7ECuP8FZw7z1F3FBk3dlzfHhrHipE62gZhGTx0oiwYgYkXv+U04Yk
	FGnVAm40buu9wNmmPEyL7mlDZRAoCkIUggbebLPc/BpTKJMYVIf9oD+GDWv74y/Hj5s4
	QhPg==
Received: by 10.66.76.231 with SMTP id n7mr27217833paw.68.1345062622411;
	Wed, 15 Aug 2012 13:30:22 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id kt8sm1067420pbc.1.2012.08.15.13.30.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Aug 2012 13:30:21 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 16 Aug 2012 00:30:15 +0400
Message-Id: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Wed, 15 Aug 2012 20:30:24 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D1FF4E5C-DDA1-4E15-AE55-0E7D24FB143F"

--Apple-Mail=_D1FF4E5C-DDA1-4E15-AE55-0E7D24FB143F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I followed these steps to setup and configure icecc and yocto, for =
performing a distributed build between two Ubuntu 12.04 64-bit machines, =
with one machine configured as the scheduler and daemon, and the other =
with only the icecc daemon.

I run a bitbake core-image-minimal, but get no tasks running on the =
second machine. Processor and CPU utilization is nearly zero, and both =
machines iceccd.log and icecc_scheduler.log are zero bytes.

Nothing happens when I run the yocto build, and no compilation tasks get =
distributed to the second machine in the build cluster. I am able to =
ping them both, however.

Step 01.00: Install required packages for performing a distributed =
build.

Step 01.01: Install icecc on all the machines.

$ sudo apt-get install icecc

On the scheduler machine, type the following commands:

$ sudo gedit /etc/default/icecc

# Defaults for icecc initscript
# sourced by /etc/init.d/icecc
START_ICECC=3D"true"
START_ICECC_SCHEDULER=3D"true"

Configure the build network name:

$ sudo /etc/init.d/icecc stop

$ sudo gedit /etc/init.d/icecc.conf

#
# Identification for the network the scheduler and daemon run on.
# You can have several distinct icecc networks in the same LAN
# for whatever reason.
#
# ICECC_NETNAME=3D""
ICECC_NETNAME=3D"YoctoBuildNetwork"

#
# If the daemon can't find the scheduler by broadcast (e.g. because
# of a firewall) you can specify it.
#
# ICECC_SCHEDULER_HOST=3D""
ICECC_SCHEDULER_HOST=3D"eos"


Start the scheduler with:

$ sudo /etc/init.d/icecc start

Make sure the service starts at boot time:

$ sudo update-rc.d icecc defaults

Step 02.00: Configure yocto for distributed compilation.

Step 02.01: Modify local.conf

#
# Parallelism Options
#
# These two options control how much parallelism BitBake should use. The =
first=20
# option determines how many tasks bitbake should run in parallel:
#
BB_NUMBER_THREADS =3D "8"
#=20
# The second option controls how many processes make should run in =
parallel when
# running compile tasks:
#
PARALLEL_MAKE =3D "-j 14"

# Setup yocto to use icecc for distributed compilation.
INHERIT +=3D "icecc"
ICECC_PATH =3D "/usr/bin/icecc"
ICECC_ENV_EXEC =3D =
"/tool/yocto/poky/build/tmp/work/x86_64-linux/icecc-create-env-native-0.1-=
r2/icecc-create-env"
ICECC_USER_CLASS_BL =3D " native"

Copy the icecc-create-env script to the build output staging folder, by =
running the  icecc-create-env-native.bb recipe.

$ cd /tool/yocto/poky;source oe-init-build-env build
$ bitbake icecc-create-env-native

The icecc-create-env script will automatically be copied to the build =
output staging folder.

Step 02.02: Start a bit bake build.

$ bitbake core-image-minimal


Best regards,

Elvis Dowson=

--Apple-Mail=_D1FF4E5C-DDA1-4E15-AE55-0E7D24FB143F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I followed these steps to setup and =
configure icecc and yocto, for performing a distributed build between =
two Ubuntu 12.04 64-bit machines, with one machine configured as the =
scheduler and daemon, and the other with only the icecc =
daemon.</div><div><br></div><div>I run a bitbake core-image-minimal, but =
get no tasks running on the second machine. Processor and CPU =
utilization is nearly zero, and both machines iceccd.log and =
icecc_scheduler.log are zero bytes.</div><div><br></div><div>Nothing =
happens when I run the yocto build, and no compilation tasks get =
distributed to the second machine in the build cluster. I am able to =
ping them both, however.</div><div><br></div><div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; "><b>Step 01.00: Install required packages for performing a =
distributed build.</b></div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; ">Step 01.01: Install icecc on all the machines.</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">$ sudo apt-get install =
icecc</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; ">On the scheduler machine, type the following =
commands:</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ =
sudo gedit /etc/default/icecc</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; "># =
Defaults for icecc initscript</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># sourced by =
/etc/init.d/icecc</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">START_ICECC=3D"true"</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; =
">START_ICECC_SCHEDULER=3D"true"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; ">Configure the build network name:</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
min-height: 14px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">$ sudo /etc/init.d/icecc =
stop</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ =
sudo gedit /etc/init.d/icecc.conf</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">#</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "># Identification for the network the scheduler and =
daemon run on.</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "># You can have several distinct icecc networks in =
the same LAN</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "># for whatever reason.</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">#</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "># ICECC_NETNAME=3D""</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; =
">ICECC_NETNAME=3D"YoctoBuildNetwork"</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; min-height: 14px; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">#</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># If the daemon can't find the =
scheduler by broadcast (e.g. because</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># of a firewall) you can specify =
it.</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">#</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># ICECC_SCHEDULER_HOST=3D""</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">ICECC_SCHEDULER_HOST=3D"eos"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; ">Start the scheduler =
with:</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ =
sudo /etc/init.d/icecc start</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; ">Make sure the service starts at boot =
time:</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; ">$ =
sudo update-rc.d icecc defaults</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; "><b>Step 02.00: Configure yocto for =
distributed compilation.</b></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; ">Step 02.01: Modify local.conf</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">#</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; "># Parallelism =
Options</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">#</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># These two options control how much =
parallelism BitBake should use. The first&nbsp;</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; "># =
option determines how many tasks bitbake should run in =
parallel:</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">#</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">BB_NUMBER_THREADS =3D "8"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">#&nbsp;</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; "># The second option controls how many processes =
make should run in parallel when</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># running compile tasks:</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">#</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">PARALLEL_MAKE =3D "-j 14"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
min-height: 14px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; "># Setup yocto to use icecc for =
distributed compilation.</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">INHERIT +=3D "icecc"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">ICECC_PATH =3D "/usr/bin/icecc"</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">ICECC_ENV_EXEC =3D =
"/tool/yocto/poky/build/tmp/work/x86_64-linux/icecc-create-env-native-0.1-=
r2/icecc-create-env"</div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">ICECC_USER_CLASS_BL =3D " native"</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; ">Copy the icecc-create-env =
script to the build output staging folder, by running the&nbsp; =
icecc-create-env-native.bb recipe.</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; min-height: 15px; =
"><br></div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">$ cd /tool/yocto/poky;source oe-init-build-env =
build</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">$ bitbake icecc-create-env-native</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 12px/normal 'Lucida Grande'; ">The icecc-create-env script =
will automatically be copied to the build output staging =
folder.</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; ">Step 02.02: Start a bit bake build.</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 12px/normal 'Lucida =
Grande'; min-height: 15px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">$ bitbake =
core-image-minimal</div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
12px/normal 'Lucida Grande'; min-height: 15px; =
"><br></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_D1FF4E5C-DDA1-4E15-AE55-0E7D24FB143F--
