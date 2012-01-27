Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 067C8E00592
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 00:06:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2012 00:06:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111246638"
Received: from unknown (HELO envy.home) ([10.255.14.108])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2012 00:06:47 -0800
Message-ID: <4F225AFC.9040306@linux.intel.com>
Date: Fri, 27 Jan 2012 00:06:20 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4F21FDEF.2010500@linux.intel.com>
	<20120127080245.GA3779@jama.jama.net>
In-Reply-To: <20120127080245.GA3779@jama.jama.net>
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
X-List-Received-Date: Fri, 27 Jan 2012 08:06:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 01/27/2012 12:02 AM, Martin Jansa wrote:
> On Thu, Jan 26, 2012 at 05:29:19PM -0800, Darren Hart wrote:
>> In support of a new BSP I've written two new recipes and appended
>> to another to depend on them. The new recipes files are not
>> appearing in the resulting images. I'm sure I'm overlooking
>> something trivial, but I'm not sure what it would be. The layer
>> is available here:
>> 
>> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x
>>
>>
>> 
I've added ranpwd, genmac, and appended to netbase.
>> 
>> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd.
>> Building core-image-minimal triggers the build of genmac and
>> ranpwd, and the modified /etc/network/interfaces appears in the
>> rootfs. genmac and ranpwd place the appropriate files in their
>> workdir/image directory, but those files don't make it into the
>> rootfs.
>> 
>> Can anyone offer an explanation as to why that might be? The top
>> 4 commits of the repository linked to above will list the new
>> recipes and the bbappend for reference.
> 
> Have you tried correct version of RDEPENDS? RDEPENDS_${PN} ?

I have, yes, this is what Saul suggested in his response. Same end result.

- --
Darren

> 
> Cheers,
>> 
>> Thanks,
>> 
>> -- Darren Hart Intel Open Source Technology Center Yocto Project
>> - Linux Kernel _______________________________________________ 
>> yocto mailing list yocto@yoctoproject.org 
>> https://lists.yoctoproject.org/listinfo/yocto
> 

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPIlrzAAoJEKbMaAwKp364JC4IAJWQOfoNUlbXUSMfe3OQda5V
NOSBcFSEfkkk7c/cvxWHq9B298BRvqMDXzTY2kqZOOjx5a8zocg/+wRLdkvPjx7F
x9ZpSVjp+UDoHeQDDh9Qx3My7r2w1h2RK6YTM1sc+y3Ubc1USxdvedOLAVCzoE7O
Imr2aDKFWgyaK2C5dmxC4kTVwwIVStlciX1KaomcJv2kfvVpV1Cg2jDdEkwwPAu7
m09JcasPnukS+T7yF6XBMelYrWLbkJnH4O19pvaHXbZIDBLBon72zpXC+dahpCmm
41KNwrRKTIzW/iSk562ZF+KwD+tVLnpxGKYqxpmsJ7HyU0dOylSDfcsj8Yf9nsc=
=JAHD
-----END PGP SIGNATURE-----

