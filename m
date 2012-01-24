Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893ECE004D2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 17:17:47 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2012 17:17:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="101934929"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2012 17:17:47 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Jan 2012 17:17:46 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.3]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.31]) with mapi id
	14.01.0355.002; Mon, 23 Jan 2012 17:17:46 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: Linux RT build fail
Thread-Index: AczUfleoloDM1F4tQ++5IDV6JnACtQAQ5MkAAU1c1KAAEVgoAAAByVaw
Date: Tue, 24 Jan 2012 01:17:45 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2040C48@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE2030A3D@ORSMSX105.amr.corp.intel.com>
	<4F147006.1070401@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE2040AE0@ORSMSX105.amr.corp.intel.com>
	<4F1DA194.9030807@windriver.com>
In-Reply-To: <4F1DA194.9030807@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: Linux RT build fail
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
X-List-Received-Date: Tue, 24 Jan 2012 01:17:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am building from master branch.

Below is the error I see.

ERROR: Function failed: do_patch (see /usr/local/src/juan/poky/build-rt/tmp=
/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+73dafd44ea875df65412=
9b32b2877f342d5573e4_1+f1cc220f4ddf434bf254707c83a45794a63f117f-r1/temp/log=
.do_patch.25589 for further information)
ERROR: Logfile of failure stored in: /usr/local/src/juan/poky/build-rt/tmp/=
work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+73dafd44ea875df654129=
b32b2877f342d5573e4_1+f1cc220f4ddf434bf254707c83a45794a63f117f-r1/temp/log.=
do_patch.25589
Log data follows:
| ERROR: Function failed: do_patch (see /usr/local/src/juan/poky/build-rt/t=
mp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+73dafd44ea875df654=
129b32b2877f342d5573e4_1+f1cc220f4ddf434bf254707c83a45794a63f117f-r1/temp/l=
og.do_patch.25589 for further information)
| checkpoint is already restored, nothing to do
|=20
| ERROR: patch /usr/local/src/juan/poky/build-rt/tmp/work/cedartrail-poky-l=
inux/linux-yocto-rt-3.0.14+git1+73dafd44ea875df654129b32b2877f342d5573e4_1+=
f1cc220f4ddf434bf254707c83a45794a63f117f-r1/linux/meta/cfg/kernel-cache/fea=
tures/rt/rt-apply-patch-3.0.10-rt27.patch.patch is not available
|=20
| ERROR. Could not find an excutable target for yocto/standard/preempt-rt/b=
ase
| ERROR. Could not locate meta series for preempt-rt-standard
| ERROR. Could not modify yocto/standard/
NOTE: package linux-yocto-rt-3.0.14+git1+73dafd44ea875df654129b32b2877f342d=
5573e4_1+f1cc220f4ddf434bf254707c83a45794a63f117f-r1: task do_patch: Failed
ERROR: Task 714 (/usr/local/src/juan/poky/meta/recipes-kernel/linux/linux-y=
octo-rt_3.0.bb, do_patch) failed with exit code '1'

Thanks
Kishore.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Monday, January 23, 2012 10:06 AM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org; Hart, Darren
Subject: Re: Linux RT build fail

On 12-01-23 12:51 PM, Bodke, Kishore K wrote:
> Hi Bruce,
>
> Could you please let me know if the fix is available for this?

The 3.0 pull request was held up behind 3.2 work. But I just pushed
out a meta branch update that contained:

commit f1ef128bff854ce2614e655283ecca92d22f0b88
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Mon Jan 16 13:45:11 2012 -0500

     meta/rt: fix reference to non-existent patch

     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 8c4d748... 4b9e9ed... M=20
meta/cfg/kernel-cache/features/rt/rt.scc

Which is the error you are seeing. The change is destined
for master. If you are on another branch, it needs to be cherry
picked into your local meta branch.

Cheers,

Bruce

>
> Thanks
> Kishore.
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Monday, January 16, 2012 10:44 AM
> To: Bodke, Kishore K
> Cc: yocto@yoctoproject.org; Hart, Darren
> Subject: Re: Linux RT build fail
>
> On 12-01-16 01:40 PM, Bodke, Kishore K wrote:
>> Hi,
>>
>> I get build failure for the rt.
>>
>> ERROR: Function 'do_patch' failed (see
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-=
yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f2=
2d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> ERROR: Logfile of failure stored in:
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-=
yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f2=
2d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>>
>> Log data follows:
>>
>> | ERROR: Function 'do_patch' failed (see
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-=
yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f2=
2d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> | Deleted branch meta-temp (was 620917d).
>>
>> |
>>
>> | ERROR: patch
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-=
yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f2=
2d10952618a2ad146e6149d240cd2-r1/linux/meta/cfg/kernel-cache/features/rt/rt=
-apply-patch-3.0.10-rt27.patch.patch
>> is not available
>
> This is the problem. But I could have sworn that I fixed this, and
> send a merge request. When I just checked now, it still looks broken.
>
> That being said, we should have seen this before now. Are any -rt
> kernels being build regularly on master ?
>
> It is partially due to meta-kernel-dev picking up new kernel tools that
> do strict checking on patches by default (hence my question about
> anyone else building this on master).
>
> I'm pushing a fix out now to the meta branch and will send it along
> with my next consolidated pull request.
>
> Cheers,
>
> Bruce
>
>>
>> |
>>
>> | ERROR. Could not find an excutable target for
>> yocto/standard/preempt-rt/base
>>
>> | ERROR. Could not locate meta series for preempt-rt-standard
>>
>> | ERROR. Could not modify yocto/standard/preempt-rt/base
>>
>> NOTE: package
>> linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bc=
f4107c7f22d10952618a2ad146e6149d240cd2-r1:
>> task do_patch: Failed
>>
>> NOTE: package bzip2-1.0.6-r4: task do_compile: Succeeded
>>
>> ERROR: Task 3
>> (/usr/local/src/jan13/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.=
bb,
>> do_patch) failed with exit code '1'
>>
>> Is this anything to do with meta-kernel-dev I am using or something else=
?
>>
>> Thanks
>>
>> Kishore.
>>
>


