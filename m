Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD97E00592
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 17:42:39 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2012 17:42:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="60429280"
Received: from unknown (HELO [10.255.14.96]) ([10.255.14.96])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Jan 2012 17:42:29 -0800
Message-ID: <4F220105.3080600@linux.intel.com>
Date: Thu, 26 Jan 2012 17:42:29 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F21FDEF.2010500@linux.intel.com>
In-Reply-To: <4F21FDEF.2010500@linux.intel.com>
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
X-List-Received-Date: Fri, 27 Jan 2012 01:42:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2012 05:29 PM, Darren Hart wrote:
> In support of a new BSP I've written two new recipes and appended to
> another to depend on them. The new recipes files are not appearing in
> the resulting images. I'm sure I'm overlooking something trivial, but
> I'm not sure what it would be. The layer is available here:
>
> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x
>
> I've added ranpwd, genmac, and appended to netbase.
>
> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. Building
> core-image-minimal triggers the build of genmac and ranpwd, and the
> modified /etc/network/interfaces appears in the rootfs. genmac and
> ranpwd place the appropriate files in their workdir/image directory, but
> those files don't make it into the rootfs.
>
RDEPENDS_${PN} would work much better !

Sau!

> Can anyone offer an explanation as to why that might be? The top 4
> commits of the repository linked to above will list the new recipes and
> the bbappend for reference.
>
> Thanks,
>

