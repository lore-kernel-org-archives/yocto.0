Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F6C5E00599
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 10:43:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2012 10:43:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="103454660"
Received: from unknown (HELO [10.255.14.110]) ([10.255.14.110])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2012 10:43:12 -0800
Message-ID: <4F22F040.3000109@linux.intel.com>
Date: Fri, 27 Jan 2012 10:43:12 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com> <4F21CF79.5060909@intel.com>
In-Reply-To: <4F21CF79.5060909@intel.com>
Subject: Re: understanding recipes
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
X-List-Received-Date: Fri, 27 Jan 2012 18:43:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 26/01/12 14:11, Scott Garman wrote:
> In this case, the LIC_FILES_CHKSUM is storing the md5sum of the COPYING
> file, which is stored in the top-level directory of the extracted sources.
>
> So manually download the hello version you are trying to use, extract
> the tarball locally, and run md5sum against the COPYING file. Then
> update the LIC_FILES_CHKSUM field with that new md5 checksum.

Or if you're lazy, like me, you can just run the build and let it fail 
then run md5sum on the extracted source in the work directory.

i.e. for qemux86 hello world I could bitbake helloworld then:

md5sum tmp/work/i586-poky-linux/hello-world-2.7-r0/hello-world-2.7/COPYING

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

