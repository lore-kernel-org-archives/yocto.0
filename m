Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EF4E00306
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 09:51:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jan 2012 09:51:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="109955201"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2012 09:51:24 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Jan 2012 09:51:24 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.3]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.96]) with mapi id
	14.01.0355.002; Mon, 23 Jan 2012 09:51:23 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: Linux RT build fail
Thread-Index: AczUfleoloDM1F4tQ++5IDV6JnACtQAQ5MkAAU1c1KA=
Date: Mon, 23 Jan 2012 17:51:23 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2040AE0@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE2030A3D@ORSMSX105.amr.corp.intel.com>
	<4F147006.1070401@windriver.com>
In-Reply-To: <4F147006.1070401@windriver.com>
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
X-List-Received-Date: Mon, 23 Jan 2012 17:51:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Could you please let me know if the fix is available for this?

Thanks
Kishore.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Monday, January 16, 2012 10:44 AM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org; Hart, Darren
Subject: Re: Linux RT build fail

On 12-01-16 01:40 PM, Bodke, Kishore K wrote:
> Hi,
>
> I get build failure for the rt.
>
> ERROR: Function 'do_patch' failed (see
> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-y=
octo-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22=
d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
> for further information)
>
> ERROR: Logfile of failure stored in:
> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-y=
octo-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22=
d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>
> Log data follows:
>
> | ERROR: Function 'do_patch' failed (see
> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-y=
octo-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22=
d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
> for further information)
>
> | Deleted branch meta-temp (was 620917d).
>
> |
>
> | ERROR: patch
> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-y=
octo-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22=
d10952618a2ad146e6149d240cd2-r1/linux/meta/cfg/kernel-cache/features/rt/rt-=
apply-patch-3.0.10-rt27.patch.patch
> is not available

This is the problem. But I could have sworn that I fixed this, and
send a merge request. When I just checked now, it still looks broken.

That being said, we should have seen this before now. Are any -rt
kernels being build regularly on master ?

It is partially due to meta-kernel-dev picking up new kernel tools that
do strict checking on patches by default (hence my question about
anyone else building this on master).

I'm pushing a fix out now to the meta branch and will send it along
with my next consolidated pull request.

Cheers,

Bruce

>
> |
>
> | ERROR. Could not find an excutable target for
> yocto/standard/preempt-rt/base
>
> | ERROR. Could not locate meta series for preempt-rt-standard
>
> | ERROR. Could not modify yocto/standard/preempt-rt/base
>
> NOTE: package
> linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf=
4107c7f22d10952618a2ad146e6149d240cd2-r1:
> task do_patch: Failed
>
> NOTE: package bzip2-1.0.6-r4: task do_compile: Succeeded
>
> ERROR: Task 3
> (/usr/local/src/jan13/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.b=
b,
> do_patch) failed with exit code '1'
>
> Is this anything to do with meta-kernel-dev I am using or something else?
>
> Thanks
>
> Kishore.
>


