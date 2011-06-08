Return-Path: <sinestado@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C29F4C8005F
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 18:51:30 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so1333850vws.35
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2011 16:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:subject:from:to:in-reply-to:references
	:content-type:date:message-id:mime-version:x-mailer;
	bh=rns6deNEa6TfXSrkqHqW0jlZPabX+feRdpVLQyNFZ1E=;
	b=WE8Y+4PihGp3QMgt0u4gA8jKgPy6Wi4cs91AWCuOAi9bfrqbGS6kVBF8TBZjg6SmeM
	wsZ4QCNaLYrJ2JHrzQcx1NDQBOMhXwghNvrtGYnPqXVvpb16D+TfvW5husae8HDdiWpg
	Jn3ZK+ZxEOOo2LG1eGS0h2axjVJwevdZgdtQc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=subject:from:to:in-reply-to:references:content-type:date:message-id
	:mime-version:x-mailer;
	b=YHFvbSO9KiUXlNJ/jhEdHIM5oVe5aV6s7Xobm6ryi5sNZTUjw9EdyfySGb6Q9qntWR
	Z5G4/kadNdQhxcr8EHwzBrg7EQRZI9oxLPKw7CQXws3S/04XkgXqNwq9/Fj3fVyTpdkN
	QcWZtPhKo9YI/DxRQlUOyXi8vyZs1hKZh0FlM=
Received: by 10.52.115.10 with SMTP id jk10mr53750vdb.294.1307577089628;
	Wed, 08 Jun 2011 16:51:29 -0700 (PDT)
Received: from [192.168.0.100] ([190.49.41.182])
	by mx.google.com with ESMTPS id e14sm666638vby.18.2011.06.08.16.51.26
	(version=SSLv3 cipher=OTHER); Wed, 08 Jun 2011 16:51:28 -0700 (PDT)
From: sushisan <sinestado@gmail.com>
To: yocto <yocto@yoctoproject.org>
In-Reply-To: <4DF007F1.1060006@linux.intel.com>
References: <1307575032.27437.9.camel@emiliano.local>
	<4DF007F1.1060006@linux.intel.com>
Date: Wed, 08 Jun 2011 20:51:23 -0300
Message-ID: <1307577083.27437.12.camel@emiliano.local>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
Subject: Re: recipe priority in multiple metas
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
X-List-Received-Date: Wed, 08 Jun 2011 23:51:30 -0000
Content-Type: multipart/alternative; boundary="=-a7GkTZ8j1lGSYGDyuEhr"

--=-a7GkTZ8j1lGSYGDyuEhr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

-----Mensaje original-----
De: Darren Hart <dvhart@linux.intel.com>
Para: sushisan <sinestado@gmail.com>
Cc: yocto@yoctoproject.org
Asunto: Re: [yocto] recipe priority in multiple metas
Fecha: Wed, 08 Jun 2011 16:38:25 -0700



On 06/08/2011 04:17 PM, sushisan wrote:
> Hi:
> 
> I have a project that use openssl.
> 
> I practically all recipes used are in yocto project
> but I need someones that are in meta-oe (ie: fuse)
> 
> openssl is in  meta/recipes-connectivity AND in meta-oe/recipes connectivity
> 
> I've putted meta first than meta-oe in my bblayers.conf, but when I try
> to do a bitbake openssl
> bitbake try to compile ever the meta-oe recipe
> 
> How I set priority in search recipes?

We discussed this in IRC and setting the BBFILE_PRIORITY in the
layer.conf of the respective layers seems to have addressed the
immediate issue.
------------------------------------------

Now work the priority issue.

BUT when I try to rebuild kernel I have this error now:

$] bitbake  linux-yocto

Loading cache: 100% |###################################################################################################################################| ETA:  00:00:00
Loaded 1636 entries from dependency cache.
Parsing recipes: 100% |#################################################################################################################################| Time: 00:00:02
Parsing of 1034 .bb files complete (1033 cached, 1 parsed). 1328 targets, 13 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.13.0"
METADATA_BRANCH   = "master"
METADATA_REVISION = "a702c3dbf5fdc88eefdadd1f6c4cd6e04811c1e1"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110608"
TARGET_FPU        = ""

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 461 of 908 (ID: 6, /home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch)
NOTE: package linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0: task do_fetch: Started
ERROR: '/home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb' failed
ERROR: Logfile of failure stored in: /home/opt/Yocto/ErgiOS_embedded/ErgiOS/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0/temp/log.do_fetch.10729
Log data follows:
| git: error while loading shared libraries: libcrypto.so.0.9.8: cannot open shared object file: No such file or directory
|  git: error while loading shared libraries: libcrypto.so.0.9.8: cannot open shared object file: No such file or directory
|  ERROR: Function 'Fetcher failure for URL: 'git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta'. Unable to fetch URL git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta from any source.' failed
| ERROR: Function 'Fetcher failure for URL: 'git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta'. Unable to fetch URL git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta from any source.' failed
NOTE: package linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0: task do_fetch: Failed
ERROR: Task 6 (/home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch) failed with exit code '1'




--=-a7GkTZ8j1lGSYGDyuEhr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/3.32.2">
</HEAD>
<BODY>
-----Mensaje original-----<BR>
<B>De</B>: Darren Hart &lt;<A HREF="mailto:Darren%20Hart%20%3cdvhart@linux.intel.com%3e">dvhart@linux.intel.com</A>&gt;<BR>
<B>Para</B>: sushisan &lt;<A HREF="mailto:sushisan%20%3csinestado@gmail.com%3e">sinestado@gmail.com</A>&gt;<BR>
<B>Cc</B>: <A HREF="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A><BR>
<B>Asunto</B>: Re: [yocto] recipe priority in multiple metas<BR>
<B>Fecha</B>: Wed, 08 Jun 2011 16:38:25 -0700<BR>
<BR>
<PRE>

On 06/08/2011 04:17 PM, sushisan wrote:
&gt; Hi:
&gt; 
&gt; I have a project that use openssl.
&gt; 
&gt; I practically all recipes used are in yocto project
&gt; but I need someones that are in meta-oe (ie: fuse)
&gt; 
&gt; openssl is in  meta/recipes-connectivity AND in meta-oe/recipes connectivity
&gt; 
&gt; I've putted meta first than meta-oe in my bblayers.conf, but when I try
&gt; to do a bitbake openssl
&gt; bitbake try to compile ever the meta-oe recipe
&gt; 
&gt; How I set priority in search recipes?

We discussed this in IRC and setting the BBFILE_PRIORITY in the
layer.conf of the respective layers seems to have addressed the
immediate issue.
------------------------------------------

Now work the priority issue.

BUT when I try to rebuild kernel I have this error now:

$] bitbake&nbsp; linux-yocto

Loading cache: 100% |###################################################################################################################################| ETA:&nbsp; 00:00:00
Loaded 1636 entries from dependency cache.
Parsing recipes: 100% |#################################################################################################################################| Time: 00:00:02
Parsing of 1034 .bb files complete (1033 cached, 1 parsed). 1328 targets, 13 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;1.13.0&quot;
METADATA_BRANCH&nbsp;&nbsp; = &quot;master&quot;
METADATA_REVISION = &quot;a702c3dbf5fdc88eefdadd1f6c4cd6e04811c1e1&quot;
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;i586&quot;
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;linux&quot;
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;qemux86&quot;
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;poky&quot;
DISTRO_VERSION&nbsp;&nbsp;&nbsp; = &quot;1.0+snapshot-20110608&quot;
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;&quot;

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 461 of 908 (ID: 6, /home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch)
NOTE: package linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0: task do_fetch: Started
ERROR: '/home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb' failed
ERROR: Logfile of failure stored in: /home/opt/Yocto/ErgiOS_embedded/ErgiOS/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0/temp/log.do_fetch.10729
Log data follows:
| git: error while loading shared libraries: libcrypto.so.0.9.8: cannot open shared object file: No such file or directory
|&nbsp; git: error while loading shared libraries: libcrypto.so.0.9.8: cannot open shared object file: No such file or directory
|&nbsp; ERROR: Function 'Fetcher failure for URL: 'git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta'. Unable to fetch URL git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta from any source.' failed
| ERROR: Function 'Fetcher failure for URL: 'git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta'. Unable to fetch URL git://git.yoctoproject.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta from any source.' failed
NOTE: package linux-yocto-2.6.37+git2+f1dc3722d45cdcc92c84ebfecf4ce616d2efed26_2+c1a74a7872fdd1152265087aa7e59b96a8f2f42a-r0: task do_fetch: Failed
ERROR: Task 6 (/home/opt/Yocto/ErgiOS_embedded/ErgiOS/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch) failed with exit code '1'

</PRE>
<BR>
</BODY>
</HTML>

--=-a7GkTZ8j1lGSYGDyuEhr--
