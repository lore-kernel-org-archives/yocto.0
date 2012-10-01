Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A1ABE012FE
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 10:26:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Oct 2012 10:26:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199288338"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 10:25:46 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id 5ED542C8001; Mon,  1 Oct 2012 10:25:47 -0700 (PDT)
Received: from 10.7.202.71 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Mon, 1 Oct 2012 10:25:47 -0700 (PDT)
Message-ID: <41548.10.7.202.71.1349112347.squirrel@linux.intel.com>
In-Reply-To: <1495016.8uVbdRUQqm@helios>
References: <cover.1348861287.git.kevin.strasser@linux.intel.com>
	<036e0a003642b5dd99a9bb3b89efe7fa19462cb5.1348861287.git.kevin.strasser@linux.intel.com>
	<1495016.8uVbdRUQqm@helios>
Date: Mon, 1 Oct 2012 10:25:47 -0700 (PDT)
From: kevin.strasser@linux.intel.com
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/1] nfs-utils: workaround for nfsd regression in the 3.4 kernel
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
X-List-Received-Date: Mon, 01 Oct 2012 17:26:07 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> Hi Kevin,
>
> On Friday 28 September 2012 12:44:06 Kevin Strasser wrote:
>> The version of nfsd used in 3.4 kernels tries to upcall the
>> new reboot-recovery daemon and gets stuck if it is not found.
>> This causes client mounts to fail and prints the following
>> error message during boot:
>>
>> "NFSD: starting 90-second grace period
>> NFSD: Unable to end grace period: -110"
>>
>> If the directory "/var/lib/nfs/v4recovery" exists, nfsd will
>> revert back to the old method.
>>
>> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
>> ---
>>  .../nfs-utils/nfs-utils_1.2.3.bbappend             |    8 ++++++++
>>  1 file changed, 8 insertions(+)
>>  create mode 100644
>> recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
>>
>> diff --git a/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
>> b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend new file mode
>> 100644
>> index 0000000..2c91a93
>> --- /dev/null
>> +++ b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
>> @@ -0,0 +1,8 @@
>> +PR = "r5"
>
> This needs to be:
>
> PRINC = "1"
>
> or, to ensure other layers can also increment the value:
>
> PRINC := "${@int(PRINC) + 1}"

OK, that makes sense. I've made the changes and pushed them again to:

  git://git.yoctoproject.org/poky-contrib strassek/baryon-nfsd-regression
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-nfsd-regression

While we are on the subject, do you think this is something that should be
added to poky?

-Kevin


