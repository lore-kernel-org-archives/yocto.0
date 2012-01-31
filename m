Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50364E00303
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 10:21:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Jan 2012 10:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102333352"
Received: from unknown (HELO envy.home) ([10.255.14.180])
	by orsmga001.jf.intel.com with ESMTP; 31 Jan 2012 10:21:46 -0800
Message-ID: <4F28311D.8070803@linux.intel.com>
Date: Tue, 31 Jan 2012 10:21:17 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4F21FDEF.2010500@linux.intel.com>
	<20120127080245.GA3779@jama.jama.net>
	<4F225AFC.9040306@linux.intel.com>
In-Reply-To: <4F225AFC.9040306@linux.intel.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 31 Jan 2012 18:21:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 01/27/2012 12:06 AM, Darren Hart wrote:
> 
> 
> On 01/27/2012 12:02 AM, Martin Jansa wrote:
>> On Thu, Jan 26, 2012 at 05:29:19PM -0800, Darren Hart wrote:
>>> In support of a new BSP I've written two new recipes and
>>> appended to another to depend on them. The new recipes files
>>> are not appearing in the resulting images. I'm sure I'm
>>> overlooking something trivial, but I'm not sure what it would
>>> be. The layer is available here:
>>> 
>>> http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/sys940x
>>>
>>>
>>>
>
>>> 
I've added ranpwd, genmac, and appended to netbase.
>>> 
>>> netbase RDEPENDS on genmac and genmac RDEPENDS on ranpwd. 
>>> Building core-image-minimal triggers the build of genmac and 
>>> ranpwd, and the modified /etc/network/interfaces appears in
>>> the rootfs. genmac and ranpwd place the appropriate files in
>>> their workdir/image directory, but those files don't make it
>>> into the rootfs.
>>> 
>>> Can anyone offer an explanation as to why that might be? The
>>> top 4 commits of the repository linked to above will list the
>>> new recipes and the bbappend for reference.
> 
>> Have you tried correct version of RDEPENDS? RDEPENDS_${PN} ?
> 
> I have, yes, this is what Saul suggested in his response. Same end
> result.
> 

Apparently I had failed to cleanall my genmac recipe. So while netbase
depended on genmac, genmac was not depending on ranpwd. I can't explain
why this resulted in neither genmac nor ranpwd appearing in the rootfs
at the time. My current build installed both.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPKDETAAoJEKbMaAwKp364ca8IAL5eHwcDENdZlknPUVpUIuDj
BVSRbtqKTAzVQgQb8ewWY1Yyt4EEPqlvBl1isKbmNKGz5uyYj+xoHAaQl4Xak2Hp
Q8fkTDuUrpMPlJGJYKt9hV9aXHYf/f2lXU0OXRsq389QVHP9JW/Jvjvs7ynx+KcA
4P6pJav+PXfuKBGAu6by+SFnIZYM3DUyVKZANUcVQChC5siLWHNbwMhfPNurnIbe
3+vrr1acXa9/q4e++apkIENLHY8Omasu/JuKa92aM+7dcUp4gNetj/6oPmkBr1OC
407weio81nC8G5nCSXJcbG58Yf12jXDt6605jjOU9R6fBfFrQMquY3QpeNaeZNk=
=Mlbi
-----END PGP SIGNATURE-----

