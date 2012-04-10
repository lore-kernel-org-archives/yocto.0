Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 354ECE00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 12:06:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 12:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140096037"
Received: from unknown (HELO [10.255.12.159]) ([10.255.12.159])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2012 12:06:12 -0700
Message-ID: <4F8484A4.30703@linux.intel.com>
Date: Tue, 10 Apr 2012 12:06:12 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
	<1334009754-3012-3-git-send-email-yang.shi@windriver.com>
In-Reply-To: <1334009754-3012-3-git-send-email-yang.shi@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 2/2] sato: Throw warning when building ISO image without unionfs enabled
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
X-List-Received-Date: Tue, 10 Apr 2012 19:06:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2012 03:15 PM, Yang Shi wrote:
> [YOCTO #1487]
>
> For the liveCD image, interactive bootup is needed, but psplash prevents from
> booting interactively. In such case ISO image is not usable, so throw warning
> info when building ISO image without unionfs enabled in kernel.
>
> Signed-off-by: Yang Shi<yang.shi@windriver.com>
> ---
>   meta/recipes-sato/images/core-image-sato.bb |   14 ++++++++++++++
>   1 files changed, 14 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
> index 11c3318..871b227 100644
> --- a/meta/recipes-sato/images/core-image-sato.bb
> +++ b/meta/recipes-sato/images/core-image-sato.bb
> @@ -9,3 +9,17 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
>   LICENSE = "MIT"
>
>   inherit core-image
> +
> +LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
> +
> +do_check_unionfs() {
> +        if [ "${NOISO}" = "1" ]; then
> +                return
> +        fi
> +
> +        if [ "${LIVE}" = "yes" ]&&  ! grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
I think you are missing a "]" at the end of this "if [" test.
> +                bbwarn "Building LIVE CD without UNION FS enabled in kernel"
> +        fi
> +}
> +
> +addtask check_unionfs before do_build after do_bootimg

This change is causing a new failure:

Traceback (most recent call last):
   File 
"/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/server/process.py", 
line 122, in ProcessServer.idle_commands(delay=0.1):
                  try:
     >                retval = function(self, data, False)
                      if retval is False:
   File 
"/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/cooker.py", 
line 1134, in buildTargetsIdle(server=<ProcessServer(ProcessServer-1, 
started)>, rq=<bb.runqueue.RunQueue instance at 0xb6891b8>, abort=False):
                  try:
     >                retval = rq.execute_runqueue()
                  except runqueue.TaskFailure as exc:
   File 
"/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/runqueue.py", 
line 948, in RunQueue.execute_runqueue():
                  self.rqexe = RunQueueExecuteDummy(self)
     >            if self.rqdata.prepare() == 0:
                      self.state = runQueueComplete
   File 
"/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/runqueue.py", 
line 719, in RunQueueData.prepare():
 
procdep.append(self.taskData.fn_index[self.runq_fnid[dep]] + "." + 
self.runq_task[dep])
     >                    self.runq_hash[task] = 
bb.parse.siggen.get_taskhash(self.taskData.fn_index[self.runq_fnid[task]], 
self.runq_task[task], procdep, self.dataCache)

   File 
"/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/siggen.py", 
line 153, in 
SignatureGeneratorOEBasicHash.get_taskhash(fn='/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/meta/recipes-sato/images/core-image-sato.bb', 
task='do_bootimg', deps=[], dataCache=<bb.cache.CacheData object at 
0x2ede190>):
              k = fn + "." + task
     >        data = dataCache.basetaskhash[k]
              self.runtaskdeps[k] = []
KeyError: 
'/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/meta/recipes-sato/images/core-image-sato.bb.do_bootimg'


