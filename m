Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B4C7E011EF
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2011 09:00:27 -0700 (PDT)
Received: from mail-gw0-f52.google.com ([74.125.83.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Aug 2011 09:00:36 -0700
Received: by gwj15 with SMTP id 15so1765578gwj.25
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2011 09:00:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.180.33 with SMTP id i21mr7880345yhm.151.1312992035575;
	Wed, 10 Aug 2011 09:00:35 -0700 (PDT)
Received: by 10.236.95.145 with HTTP; Wed, 10 Aug 2011 09:00:35 -0700 (PDT)
Date: Wed, 10 Aug 2011 09:00:35 -0700
Message-ID: <CAPhnLPB+QdQteoYtxvYX9oZ4kUW09+6tosnDV7YXLOPn1jxpjQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: Current known build issues with M3.
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
X-List-Received-Date: Wed, 10 Aug 2011 16:00:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

We currently have a mostly buildable M3. A few issues. With us going
into M4 stability fairly soon, this puts us in a good place build
wise.

emenlow:
"ERROR: Multiple .bb files are due to be built which each provide mesa-dri"
When building LSB after non-LSB builds with a new tmp, but an old
sstate, emenlow throws an error. Images are generated, however. Only
this BSP does this.

nightly arm:
" Failure to read QMAKESPEC conf file
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/x86_64-linux/usr/share/qmake/linux-gnueabi-oe-g++/qmake.conf.
Error processing project file:
/srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/armv5te-poky-linux-gnueabi/qt-x11-free-3.3.7-r0/qt-x11-free-3.3.7/src/qt.pro"
fails at qt-x11-free-3.3.7-r0 fails at do_configure.
See:
http://autobuilder.yoctoproject.org:8010/builders/nightly-external/builds/68/steps/shell_32/logs/stdio

nightly routerstationpro/mips lsb:
Fails do_rootfs
| Processing task-core-standalone-sdk-target...
| error: Failed dependencies:
| 	fstests is needed by task-core-tools-testapps-1.0-r10.routerstationpro
| 	fstests = 0.0+svnr426-r1 is needed by fstests-dev-0.0+svnr426-r1.mips
See:
http://autobuilder.yoctoproject.org:8010/builders/nightly-external/builds/68/steps/shell_42/logs/stdio

eclipse plugin won't build on ab.
This is a known issue. Fix in place this afternoon.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

