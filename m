Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4439FE0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 13:04:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3AK46BH012964
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Apr 2012 13:04:06 -0700 (PDT)
Received: from [147.11.152.89] (147.11.152.89) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Apr 2012 13:04:06 -0700
Message-ID: <4F849235.900@windriver.com>
Date: Tue, 10 Apr 2012 13:04:05 -0700
From: Yang Shi <yang.shi@windriver.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
	<1334009754-3012-3-git-send-email-yang.shi@windriver.com>
	<4F8484A4.30703@linux.intel.com>
In-Reply-To: <4F8484A4.30703@linux.intel.com>
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
X-List-Received-Date: Tue, 10 Apr 2012 20:04:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/10/2012 12:06 PM, Saul Wold wrote:
> On 04/09/2012 03:15 PM, Yang Shi wrote:
>> [YOCTO #1487]
>>
>> For the liveCD image, interactive bootup is needed, but psplash 
>> prevents from
>> booting interactively. In such case ISO image is not usable, so throw 
>> warning
>> info when building ISO image without unionfs enabled in kernel.
>>
>> Signed-off-by: Yang Shi<yang.shi@windriver.com>
>> ---
>>   meta/recipes-sato/images/core-image-sato.bb |   14 ++++++++++++++
>>   1 files changed, 14 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/recipes-sato/images/core-image-sato.bb 
>> b/meta/recipes-sato/images/core-image-sato.bb
>> index 11c3318..871b227 100644
>> --- a/meta/recipes-sato/images/core-image-sato.bb
>> +++ b/meta/recipes-sato/images/core-image-sato.bb
>> @@ -9,3 +9,17 @@ IMAGE_FEATURES += "apps-console-core 
>> ${SATO_IMAGE_FEATURES}"
>>   LICENSE = "MIT"
>>
>>   inherit core-image
>> +
>> +LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
>> +
>> +do_check_unionfs() {
>> +        if [ "${NOISO}" = "1" ]; then
>> +                return
>> +        fi
>> +
>> +        if [ "${LIVE}" = "yes" ]&&  ! grep -q "CONFIG_UNION_FS=y" 
>> ${STAGING_KERNEL_DIR}/.config; then
> I think you are missing a "]" at the end of this "if [" test.

It is 'if [ "${LIVE}" = "yes" ]'.

>> +                bbwarn "Building LIVE CD without UNION FS enabled in 
>> kernel"
>> +        fi
>> +}
>> +
>> +addtask check_unionfs before do_build after do_bootimg
>
> This change is causing a new failure:

Yes, I mentioned this in my mail, the workaround is to add IMAGE_FSTYPE 
+= "live" in conf/local.conf

Bruce pointed out this is a known problem in poky.

Thanks,
Yang

>
> Traceback (most recent call last):
>   File 
> "/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/server/process.py", 
> line 122, in ProcessServer.idle_commands(delay=0.1):
>                  try:
> >                retval = function(self, data, False)
>                      if retval is False:
>   File 
> "/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/cooker.py", 
> line 1134, in buildTargetsIdle(server=<ProcessServer(ProcessServer-1, 
> started)>, rq=<bb.runqueue.RunQueue instance at 0xb6891b8>, abort=False):
>                  try:
> >                retval = rq.execute_runqueue()
>                  except runqueue.TaskFailure as exc:
>   File 
> "/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/runqueue.py", 
> line 948, in RunQueue.execute_runqueue():
>                  self.rqexe = RunQueueExecuteDummy(self)
> >            if self.rqdata.prepare() == 0:
>                      self.state = runQueueComplete
>   File 
> "/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/runqueue.py", 
> line 719, in RunQueueData.prepare():
>
> procdep.append(self.taskData.fn_index[self.runq_fnid[dep]] + "." + 
> self.runq_task[dep])
> >                    self.runq_hash[task] = 
> bb.parse.siggen.get_taskhash(self.taskData.fn_index[self.runq_fnid[task]], 
> self.runq_task[task], procdep, self.dataCache)
>
>   File 
> "/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/bitbake/lib/bb/siggen.py", 
> line 153, in 
> SignatureGeneratorOEBasicHash.get_taskhash(fn='/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/meta/recipes-sato/images/core-image-sato.bb', 
> task='do_bootimg', deps=[], dataCache=<bb.cache.CacheData object at 
> 0x2ede190>):
>              k = fn + "." + task
> >        data = dataCache.basetaskhash[k]
>              self.runtaskdeps[k] = []
> KeyError: 
> '/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/meta/recipes-sato/images/core-image-sato.bb.do_bootimg'
>
>


