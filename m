Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B93E00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 08:28:24 -0800 (PST)
Received: by qcsd1 with SMTP id d1so934851qcs.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 08:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=1JIfrKIL0oVHhMWmmNpFWV3jw1UKXLwOm8I85bhd7ME=;
	b=C/LptVnz4VqkqFf6TRGgy/SKPSth+YnzUn3UbO7Q7I0EzmEgIRaDpZR7JvTMKdUnjk
	wC/nqc1DH00ZLWvTzLHCZ6poI294pfUE5Xo6+WVu7bPRINCoZD9On3dXfGgk4JBjlEda
	6bNoH8ww6ELtfnzQC/VvmZ72M/bg7bDlde5K4=
Received: by 10.229.115.21 with SMTP id g21mr10294924qcq.56.1328113702975;
	Wed, 01 Feb 2012 08:28:22 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	eb4sm48537456qab.4.2012.02.01.08.28.21 (version=SSLv3 cipher=OTHER);
	Wed, 01 Feb 2012 08:28:22 -0800 (PST)
Message-ID: <4F296826.4030909@gmail.com>
Date: Wed, 01 Feb 2012 11:28:22 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: 1.2_M2-Final build failures
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
X-List-Received-Date: Wed, 01 Feb 2012 16:28:24 -0000
Content-Type: multipart/alternative;
	boundary="------------000802050902040901000600"

--------------000802050902040901000600
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using the tarballs for Poky and meta-intel for 1.2_M2-Final, I was 
getting a lot of build failures below is what worked and what didn't. 
Not sure if this is a bug or if I'm missing something. I extracted the 
meta-intel tarball for 1.2_M2-Final in the poky directory created by 
extracting the poky tarball for 1.2_M2.Final.

 1. building qemux86 core-image-minimal works
 2. building qemux86 core-image-sato works
 3. building n450 core-image-minimal fails with error: ERROR: Unable to
    parse /home/jim/poky/meta/recipes-core/tasks/task-base.bb:00:20
    Traceback (most recent call last):
       File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 379, in
    multi_finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.bb
    <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
    0x4a801d0>):
              try:
     >        finalize(fn, d)
              except bb.parse.SkipPackage as e:
       File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 323, in
    finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.bb
    <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
    0x4a801d0>, variant=None):
                  code.append("%s(d)" % funcname)
     >    bb.utils.simple_exec("\n".join(code), {"d": d})
              bb.data.update_data(d)
       File "/home/jim/poky/bitbake/lib/bb/utils.py", line 387, in
    simple_exec(code='__anon_119__home_jim_poky_meta_classes_staging_bbclass(d)\n__anon_485__home_jim_poky_meta_classes_base_bbclass(d)\n__anon_189__home_jim_poky_meta_classes_package_bbclass(d)\n__anon_1034__home_jim_poky_meta_classes_package_rpm_bbclass(d)\n__anon_20__home_jim_poky_meta_classes_debian_bbclass(d)\n__anon_55__home_jim_poky_meta_classes_sstate_bbclass(d)\n__anon_26__home_jim_poky_meta_classes_task_bbclass(d)\n__anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb(d)',
    context={'d': <bb.data_smart.DataSmart object at 0x4a801d0>}):
          def simple_exec(code, context):
     >    exec(code, _context, context)

       File "<string>", line 8, in <module>
       File
    "__anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb",
    line 8, in
    __anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb(d=<bb.data_smart.DataSmart
    object at 0x4a801d0>)
    AttributeError: 'NoneType' object has no attribute 'split'

    ERROR: Command execution failed: Exited with 1
    Summary: There were 1 WARNING messages shown.

    Summary: There were 1 ERROR messages shown, returning a non-zero
    exit code.

 4. building cedartrail core-image-minimal fails with error: ERROR:
    Unable to parse conf/bitbake.conf: Could not include required file
    conf/machine/include/ia32-base.inc

Jim A


--------------000802050902040901000600
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Using the tarballs for Poky and meta-intel for 1.2_M2-Final, I was
    getting a lot of build failures below is what worked and what
    didn't. Not sure if this is a bug or if I'm missing something. I
    extracted the meta-intel tarball for 1.2_M2-Final in the poky
    directory created by extracting the poky tarball for 1.2_M2.Final.<br>
    <br>
    <ol>
      <li>building qemux86 core-image-minimal works</li>
      <li>building qemux86 core-image-sato works<br>
      </li>
      <li>building n450 core-image-minimal fails with error: ERROR:
        Unable to parse
        /home/jim/poky/meta/recipes-core/tasks/task-base.bb:00:20<br>
        Traceback (most recent call last):<br>
        &nbsp; File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 379,
        in multi_finalize(fn='/home/jim/poky/meta/recipes-core/tasks/<a
          href="http://task-base.bb">task-base.bb</a>',
        d=&lt;bb.data_smart.DataSmart object at 0x4a801d0&gt;):<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
        &nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; finalize(fn, d)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except bb.parse.SkipPackage as e:<br>
        &nbsp; File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 323,
        in finalize(fn='/home/jim/poky/meta/recipes-core/tasks/<a
          href="http://task-base.bb">task-base.bb</a>',
        d=&lt;bb.data_smart.DataSmart object at 0x4a801d0&gt;,
        variant=None):<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; code.append("%s(d)" % funcname)<br>
        &nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; bb.utils.simple_exec("\n".join(code), {"d": d})<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.data.update_data(d)<br>
        &nbsp; File "/home/jim/poky/bitbake/lib/bb/utils.py", line 387, in
        simple_exec(code='__anon_119__home_jim_poky_meta_classes_staging_bbclass(d)\n__anon_485__home_jim_poky_meta_classes_base_bbclass(d)\n__anon_189__home_jim_poky_meta_classes_package_bbclass(d)\n__anon_1034__home_jim_poky_meta_classes_package_rpm_bbclass(d)\n__anon_20__home_jim_poky_meta_classes_debian_bbclass(d)\n__anon_55__home_jim_poky_meta_classes_sstate_bbclass(d)\n__anon_26__home_jim_poky_meta_classes_task_bbclass(d)\n__anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb(d)',

        context={'d': &lt;bb.data_smart.DataSmart object at
        0x4a801d0&gt;}):<br>
        &nbsp;&nbsp;&nbsp;&nbsp; def simple_exec(code, context):<br>
        &nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; exec(code, _context, context)<br>
        &nbsp;&nbsp;&nbsp;&nbsp; <br>
        &nbsp; File "&lt;string&gt;", line 8, in &lt;module&gt;<br>
        &nbsp; File
        "__anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb",
        line 8, in
        __anon_140__home_jim_poky_meta_recipes_core_tasks_task_base_bb(d=&lt;bb.data_smart.DataSmart

        object at 0x4a801d0&gt;)<br>
        AttributeError: 'NoneType' object has no attribute 'split'<br>
        <br>
        ERROR: Command execution failed: Exited with 1<br>
        Summary: There were 1 WARNING messages shown.<br>
        <br>
        Summary: There were 1 ERROR messages shown, returning a non-zero
        exit code.<br>
        <br>
      </li>
      <li>building cedartrail core-image-minimal fails with error:
        ERROR: Unable to parse conf/bitbake.conf: Could not include
        required file conf/machine/include/ia32-base.inc</li>
    </ol>
    <p>Jim A<br>
    </p>
  </body>
</html>

--------------000802050902040901000600--
