Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FA3BE00BC4; Mon,  3 Jul 2017 09:37:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9DAE00BB6
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 09:37:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2017 09:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,304,1496127600"; d="scan'208";a="122304162"
Received: from unknown (HELO [10.219.128.139]) ([10.219.128.139])
	by fmsmga006.fm.intel.com with ESMTP; 03 Jul 2017 09:37:03 -0700
To: Joshua Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
	<1496764011-3595-4-git-send-email-anibal.limon@linux.intel.com>
	<1499090600.3470.12.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <8a43df63-839f-055d-56d9-c5d424cbd6c2@linux.intel.com>
Date: Mon, 3 Jul 2017 11:37:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1499090600.3470.12.camel@linux.intel.com>
Cc: "Ylinen, Mikko" <mikko.ylinen@intel.com>,
	monserratx.sedeno.bustos@intel.com
Subject: Re: [yocto-autobuilder][PATCHv2 4/5] autobuilder/buildsteps: Add DAFTFlash buildstep
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
X-List-Received-Date: Mon, 03 Jul 2017 16:37:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 07/03/2017 09:03 AM, Joshua Lock wrote:
> On Tue, 2017-06-06 at 10:46 -0500, Aníbal Limón wrote:
>> This will execute daft flash cycle without reboot and prepare the dut
>> for sanity tests.
>>
>> [YOCTO #10604]
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>
> 
> Typo in the email address here.
> 
>> Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
>> ---
>>  config/autobuilder.conf.example                    |  1 +
>>  .../autobuilder/buildsteps/DaftFlash.py            | 42
>> ++++++++++++++++++++++
>>  lib/python2.7/site-packages/autobuilder/config.py  |  1 +
>>  3 files changed, 44 insertions(+)
>>  create mode 100644 lib/python2.7/site-
>> packages/autobuilder/buildsteps/DaftFlash.py
>>
>> diff --git a/config/autobuilder.conf.example
>> b/config/autobuilder.conf.example
>> index e5ec16b..2e992cf 100644
>> --- a/config/autobuilder.conf.example
>> +++ b/config/autobuilder.conf.example
>> @@ -98,3 +98,4 @@ PERFORMANCE_MAIL_SIG = "Multiline\nSig\nLine"
>>  
>>  [Daft]
>>  DAFT_WORKER_DEVICES_CFG = "/etc/daft/devices.cfg"
>> +DAFT_WORKER_WORKSPACE = "/home/ab/workspace"
>> diff --git a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/DaftFlash.py b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/DaftFlash.py
>> new file mode 100644
>> index 0000000..d5f6de8
>> --- /dev/null
>> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftFlash.py
>> @@ -0,0 +1,42 @@
>> +import os
>> +
>> +from autobuilder.config import DAFT_WORKER_WORKSPACE
>> +from buildbot.steps.shell import ShellCommand
>> +
>> +class DaftFlash(ShellCommand):
>> +    haltOnFailure = True
>> +
>> +    name = "DaftFlash"
>> +
>> +    def __init__(self, factory, argdict=None, **kwargs):
>> +        self.tests = None
>> +        self.factory = factory
>> +        for k, v in argdict.iteritems():
>> +            setattr(self, k, v)
>> +        self.description = "DUT Flashing"
>> +        self.timeout = 100000
>> +        kwargs['timeout']=self.timeout
>> +        ShellCommand.__init__(self, **kwargs)
>> +
>> +    def start(self):
>> +        workspace_dir = DAFT_WORKER_WORKSPACE
>> +
>> +        dut_name = self.getProperty('dut_name')
>> +        workdir = self.getProperty('workdir')
>> +        image = self.getProperty('BUILDIMAGES')
> 
> Remember to fix this when you rename the property.
> 
>> +        machine = self.getProperty('MACHINE')
>> +
>> +        image_path = os.path.join(workdir, 'build', 'build', 'tmp',
>> 'deploy',
>> +                'images', machine, '%s-%s.hddimg' % (image,
>> machine))
>> +        image_name = os.path.basename(image_path)
>> +
>> +        # XXX: DAFT needs to have the image in a shared workspace 
>> +        self.command = "cp %s %s; " % (image_path, workspace_dir)
>> +
>> +        self.command += "cd %s; " % (workspace_dir)
>> +
>> +        # XXX: DAFT needs to be executed by root user
> 
> Why's that? Is that an intrinsic requirement of DAFT or is it because
> DAFT wants to use certain devices that are typically owned by root? Can
> we instead make the requirement that the user running daft has
> permissions and groups correctly configured to access these devices?

I don't have too much insight about this security issue, i think there
is because the deployment resources files are on /root directory, so i
agree that this needs to be changed but i don't know how much effort
will require.

I'm adding Jair since he knows more about this situation, and Miko that
as far as i know he works on refkit QA.

Cheers,
Anibal


> 
>> +        daft_cmd = "daft --setout %s %s" % (dut_name, image_name)
>> +        self.command += "sudo su -l -c 'cd {} && {}';
>> ".format(workspace_dir, daft_cmd)
>> +
>> +        ShellCommand.start(self)
>> diff --git a/lib/python2.7/site-packages/autobuilder/config.py
>> b/lib/python2.7/site-packages/autobuilder/config.py
>> index 5bcf6c6..fcc08f0 100644
>> --- a/lib/python2.7/site-packages/autobuilder/config.py
>> +++ b/lib/python2.7/site-packages/autobuilder/config.py
>> @@ -24,3 +24,4 @@ IPK_PUBLISH_DIR = os.environ.get("IPK_PUBLISH_DIR")
>>  DEB_PUBLISH_DIR = os.environ.get("DEB_PUBLISH_DIR")
>>  PERFORMANCE_PUBLISH_DIR = os.environ.get("PERFORMANCE_PUBLISH_DIR")
>>  DAFT_WORKER_DEVICES_CFG = os.environ.get("DAFT_WORKER_DEVICES_CFG")
>> +DAFT_WORKER_WORKSPACE = os.environ.get("DAFT_WORKER_WORKSPACE")

