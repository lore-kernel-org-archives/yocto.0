Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E1E7E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:49:08 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 25 Nov 2013 09:49:08 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 25 Nov 2013 09:45:51 -0500
Thread-Topic: Unable to upgrade kernel; package for kernel name includes
	version
Thread-Index: Ac7p7Ql1DnAWGplISYiWbscF7THRXA==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153C1156010@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Unable to upgrade kernel; package for kernel name includes version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Nov 2013 14:49:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm on poky/dylan-9.0.1 I am upgrading the Linux kernel for my device's ima=
ge from a custom 3.6.9 kernel to a custom 3.10 kernel.  I'm using this laye=
r: https://github.com/evensonbryan/meta-atmel as a basis for the custom ker=
nel recipe (there is a recipe for the 3.10 kernel that I haven't yet deploy=
ed to Github in case anyone is wondering).  I'm attempting to do a firmware=
 upgrade with my built packages (using opkg for package management) and I'v=
e discovered an issue with the kernel naming.  On my pre-upgraded device, a=
 list of installed packages includes:

kernel-devicetree
kernel-image-3.6.9-yocto-standard

So when I build my updated Linux kernel, the kernel image is now named "ker=
nel-image-3.10.0-yocto-standard".  So when I attempt to do an upgrade, the =
kernel-devicetree is upgraded just fine but the kernel image is not; kernel=
-image-3.10.0-yocto-standard is not the same package as kernel-image-3.6.9-=
yocto-standard, so opkg does not see this as an upgrade.

How do I force the packaging system to recognize that the new kernel is an =
upgrade of the old kernel, even though the packages have different names?  =
And for the future, how do I change the package name so that it doesn't inc=
lude the version?

Thanks,
Bryan




