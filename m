Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88675E00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 08:41:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2012 08:41:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102736579"
Received: from unknown (HELO helios.localnet) ([10.252.122.196])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 08:41:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Date: Wed, 01 Feb 2012 16:41:11 +0000
Message-ID: <3971839.nMHIKpoOXs@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-15-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F296826.4030909@gmail.com>
References: <4F296826.4030909@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 1.2_M2-Final build failures
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
X-List-Received-Date: Wed, 01 Feb 2012 16:41:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 February 2012 11:28:22 jfabernathy wrote:
> Using the tarballs for Poky and meta-intel for 1.2_M2-Final, I was
> getting a lot of build failures below is what worked and what didn't.
> Not sure if this is a bug or if I'm missing something. I extracted the
> meta-intel tarball for 1.2_M2-Final in the poky directory created by
> extracting the poky tarball for 1.2_M2.Final.
>...
>  3. building n450 core-image-minimal fails with error: ERROR: Unable to
>     parse /home/jim/poky/meta/recipes-core/tasks/task-base.bb:00:20
>     Traceback (most recent call last):
>        File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 379, in
>     multi_finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.bb
>     <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
>     0x4a801d0>):
> 
>               try:
>      >        finalize(fn, d)
> 
>               except bb.parse.SkipPackage as e:
>        File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 323, in
>     finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.bb
>     <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
>     0x4a801d0>, variant=None):
>                   code.append("%s(d)" % funcname)
> 
>      >    bb.utils.simple_exec("\n".join(code), {"d": d})
> 
>               bb.data.update_data(d)
>        File "/home/jim/poky/bitbake/lib/bb/utils.py", line 387, in
>    
> simple_exec(code='__anon_119__home_jim_poky_meta_classes_staging_bbclass(d)
> \n__anon_485__home_jim_poky_meta_classes_base_bbclass(d)\n__anon_189__home_j
> im_poky_meta_classes_package_bbclass(d)\n__anon_1034__home_jim_poky_meta_cla
> sses_package_rpm_bbclass(d)\n__anon_20__home_jim_poky_meta_classes_debian_bb
> class(d)\n__anon_55__home_jim_poky_meta_classes_sstate_bbclass(d)\n__anon_26
> __home_jim_poky_meta_classes_task_bbclass(d)\n__anon_140__home_jim_poky_meta
> _recipes_core_tasks_task_base_bb(d)', context={'d': <bb.data_smart.DataSmart
> object at 0x4a801d0>}):
>           def simple_exec(code, context):
>      >    exec(code, _context, context)
> 
>        File "<string>", line 8, in <module>
>        File
>     "__anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb",
>     line 8, in
>    
> __anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb(d=<bb.data_s
> mart.DataSmart object at 0x4a801d0>)
>     AttributeError: 'NoneType' object has no attribute 'split'
> 
>     ERROR: Command execution failed: Exited with 1
>     Summary: There were 1 WARNING messages shown.
> 
>     Summary: There were 1 ERROR messages shown, returning a non-zero
>     exit code.
> 
>  4. building cedartrail core-image-minimal fails with error: ERROR:
>     Unable to parse conf/bitbake.conf: Could not include required file
>     conf/machine/include/ia32-base.inc

I think I know what's going on here. In previous editions it was enough to 
have just the meta-intel sub-layer in your bblayers.conf (e.g. meta-crownbay) 
- now you also need to add meta-intel itself to get certain common files. If 
you do this then your errors will go away.

I did notice this the other day and I think we can improve things such that 
you get a sensible error message in this situation rather than the above. I 
will try to send out some patches next week.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

