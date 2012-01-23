Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B5EDE00306
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 10:06:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0NI6NbT016618
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Jan 2012 10:06:23 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 23 Jan 2012 10:06:23 -0800
Message-ID: <4F1DA194.9030807@windriver.com>
Date: Mon, 23 Jan 2012 13:06:12 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <D956029D25CF204F948EA0FB515E1EE2030A3D@ORSMSX105.amr.corp.intel.com>
	<4F147006.1070401@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE2040AE0@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE2040AE0@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Mon, 23 Jan 2012 18:06:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

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

:100644 100644 8c4d748... 4b9e9ed... M 
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
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> ERROR: Logfile of failure stored in:
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>>
>> Log data follows:
>>
>> | ERROR: Function 'do_patch' failed (see
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/temp/log.do_patch.32459
>> for further information)
>>
>> | Deleted branch meta-temp (was 620917d).
>>
>> |
>>
>> | ERROR: patch
>> /usr/local/src/jan13/poky/build-rt/tmp/work/cedartrail-poky-linux/linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1/linux/meta/cfg/kernel-cache/features/rt/rt-apply-patch-3.0.10-rt27.patch.patch
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
>> linux-yocto-rt-3.0.14+git1+6ae3d992cf546184010e87a0349810198f1d167c_1+bcf4107c7f22d10952618a2ad146e6149d240cd2-r1:
>> task do_patch: Failed
>>
>> NOTE: package bzip2-1.0.6-r4: task do_compile: Succeeded
>>
>> ERROR: Task 3
>> (/usr/local/src/jan13/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb,
>> do_patch) failed with exit code '1'
>>
>> Is this anything to do with meta-kernel-dev I am using or something else?
>>
>> Thanks
>>
>> Kishore.
>>
>


