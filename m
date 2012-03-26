Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A26E0132F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:20:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2QLKKTB016664
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 14:20:20 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 26 Mar 2012 14:20:21 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Mar 2012 14:19:16 -0700
Message-ID: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Cc: dvhart@linux.intel.com
Subject: [PATCH 0/2] Fix init-live.sh to use unionfs for live CD and remove questioned ISO image
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
X-List-Received-Date: Mon, 26 Mar 2012 21:20:26 -0000
Content-Type: text/plain


Use unionfs to mount rootfs and make root file system can be writen when using liveCD to boot up.
Set UNION_FS variable depending on kenrel config, so that it can work with kernel which doesn't
have unionfs feature.

Without UNION FS enabled in kernel, minimal liveCD image can be bootup to ignore the failure of mouting
read-only filesystem. For the sato liveCD image, interactive bootup is needed, but psplash prevents from
booting interactively. In such case ISO image is not usable, so remove ISO image and the corresponding
link and throw error info to warn outside to enable unionfs in kenrel.

We tried a lot of different ways to achieve this:

1. Check if ISO image is built in initramfs-live-boot.bb or not, then prevent from generating ISO image.
But, we can't distinguish minimal image or sato image.

2. Check if x11 feature is included in initramfs-live-boot.bb or not, then prevent from generating ISO image.
But, x11 feature is contained in minimal image as well even though the package is not built.

3. Tried to append some check code in build_iso() in core-image-sato.bb, but poky can't support append code
in build_xxx functions like what we do for do_xxx funcitons.

So, we came up with current solution. Any new suggestion is appreciated.

One more thing is that if IMAGE_FSTYPE += "live" is not set in conf/local.conf with this fix, we will get below
error when building sato image:

ERROR: Running idle function
Traceback (most recent call last):
  File "/home/yshi/yocto/poky/bitbake/lib/bb/server/process.py", line
122, in ProcessServer.idle_commands(delay=0.1):
                 try:
    >                retval = function(self, data, False)
                     if retval is False:
  File "/home/yshi/yocto/poky/bitbake/lib/bb/cooker.py", line 1130, in
buildTargetsIdle(server=<ProcessServer(ProcessServer-1, started)>,
rq=<bb.runqueue.RunQueue instance at 0x74e4638>, abort=False):
                 try:
    >                retval = rq.execute_runqueue()
                 except runqueue.TaskFailure as exc:
  File "/home/yshi/yocto/poky/bitbake/lib/bb/runqueue.py", line 947,
in RunQueue.execute_runqueue():
                 self.rqexe = RunQueueExecuteDummy(self)
    >            if self.rqdata.prepare() == 0:
                     self.state = runQueueComplete
  File "/home/yshi/yocto/poky/bitbake/lib/bb/runqueue.py", line 719,
in RunQueueData.prepare():

procdep.append(self.taskData.fn_index[self.runq_fnid[dep]] + "." +
self.runq_task[dep])
    >                    self.runq_hash[task] =
bb.parse.siggen.get_taskhash(self.taskData.fn_index[self.runq_fnid[task]],
self.runq_task[task], procdep, self.dataCache)

  File "/home/yshi/yocto/poky/bitbake/lib/bb/siggen.py", line 153, in
SignatureGeneratorOEBasicHash.get_taskhash(fn='/home/yshi/yocto/poky/meta/recipes-sato/images/core-image-sato.bb',
task='do_bootimg', deps=[], dataCache=<bb.cache.CacheData object at
0x2148490>):
             k = fn + "." + task
    >        data = dataCache.basetaskhash[k]
             self.runtaskdeps[k] = []
KeyError: '/home/yshi/yocto/poky/meta/recipes-sato/images/core-image-sato.bb.do_bootimg'

NOTE: Preparing runqueue

Bruce pointed out there was a large discussion about this on hte list last week, so this should be a known issue in poky.

The following changes since commit f81b0593e74a31cb2d992df0583948ff57e3ed98:

  gdbm: Activate -enable-libgdbm-compat and add symlinks to headers in include/gdbm (2012-03-23 17:56:29 +0200)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib yshi/1487
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=yshi/1487

Yang Shi (2):
      initrdscripts: fix init-live.sh and use unionfs
      sato: Remove questioned ISO image

 meta/recipes-core/initrdscripts/files/init-live.sh |   21 +++++++++++++++++--
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    9 +++++++-
 meta/recipes-sato/images/core-image-sato.bb        |   16 +++++++++++++++
 3 files changed, 42 insertions(+), 4 deletions(-)

