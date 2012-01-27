Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FC41E00592
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 17:57:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jan 2012 17:57:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="100989829"
Received: from unknown (HELO envy.home) ([10.255.14.108])
	by orsmga001.jf.intel.com with ESMTP; 26 Jan 2012 17:57:37 -0800
Message-ID: <4F220477.8030600@linux.intel.com>
Date: Thu, 26 Jan 2012 17:57:11 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com>
In-Reply-To: <4F220105.3080600@linux.intel.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 01:57:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/26/2012 05:42 PM, Saul Wold wrote:
> On 01/26/2012 05:29 PM, Darren Hart wrote:
>> In support of a new BSP I've written two new recipes and appended to
>> another to depend on them. The new recipes files are not appearing in
>> the resulting images. I'm sure I'm overlooking something trivial, but
>> I'm not sure what it would be. The layer is available here:
>>
>> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x
>>
>> I've added ranpwd, genmac, and appended to netbase.
>>
>> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. Building
>> core-image-minimal triggers the build of genmac and ranpwd, and the
>> modified /etc/network/interfaces appears in the rootfs. genmac and
>> ranpwd place the appropriate files in their workdir/image directory, but
>> those files don't make it into the rootfs.
>>
> RDEPENDS_${PN} would work much better !

Perhaps, but it didn't fix this particular problem. Neither
/usr/bin/ranpwd nor /etc/init.d/genmac appear in the rootfs. However,
each still appears in their respective workdir/image:

$ find
tmp/work/sys940x_noemgd-poky-linux/core-image-minimal-1.0-r0/rootfs
-name "ranpwd"
<NULL>

$ find
tmp/work/sys940x_noemgd-poky-linux/core-image-minimal-1.0-r0/rootfs
-name "genmac"
<NULL>

$ ls tmp/work/core2-poky-linux/genmac-1.0-r0/image/etc/init.d/
genmac

$ ls tmp/work/core2-poky-linux/ranpwd-git-r0/image/usr/bin/
ranpwd

genmac doesn't have a log.do_install in the workdir/temp directory. Is
that significant?

ranpwd does, but it isn't instructive:

$ cat tmp/work/core2-poky-linux/ranpwd-git-r0/temp/log.do_install
DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']

Any other thoughts?


> 
> Sau!
> 
>> Can anyone offer an explanation as to why that might be? The top 4
>> commits of the repository linked to above will list the new recipes and
>> the bbappend for reference.
>>
>> Thanks,
>>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

