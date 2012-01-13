Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E3FE0030F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 18:50:06 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbjk17 with SMTP id k17so1265224vbj.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 18:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hoHWINvYZY05R4MS1MtjCNNE4RMJ6wVuiHxWhu22eoQ=;
	b=nTM5tdxdCOEuAGBRmp/YipDO6KS9HTIz+NHKhImPG338evDUP+/23TAX+RG1Xel9GI
	FNY5HJ/KZzAQ5yiDeUX/4WVKccnnVyvh7mgmAnZlbzfquYvhMRZXmvbuZKRjjEqDMhK+
	g0edA4aPVh+takUtUIwHZ5v/TYs+CeNZ/vOqc=
MIME-Version: 1.0
Received: by 10.52.20.165 with SMTP id o5mr186439vde.79.1326423005819; Thu, 12
	Jan 2012 18:50:05 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Thu, 12 Jan 2012 18:50:05 -0800 (PST)
Date: Thu, 12 Jan 2012 21:50:05 -0500
Message-ID: <CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Developer Manual Appendix B example
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
X-List-Received-Date: Fri, 13 Jan 2012 02:50:07 -0000
Content-Type: multipart/alternative; boundary=20cf307c9fd015717904b65fec23

--20cf307c9fd015717904b65fec23
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to do the Developer Manual Appendix B example exactly as written
only changing the path to my home directory. When I get to B.1.8.3, bitbake
after patching the kernel calibrate.c and modifiing the path to the local
git repository for linux-yocto, I get an error on the build.  The log file
of the error is below:

[INFO] doing kernel configme
[INFO] Branch yocto/standard/common-pc/base used by common-pc-standard.scc
[INFO] collecting configs in ./meta/meta-series
mv: cannot stat
`/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/linux-qemux86-standard-build/.tmp.config*':
No such file or directory
creation of pre-processed config data failed
config of yocto/standard/common-pc/base (common-pc-standard.scc) failed
ERROR: Function 'do_kernel_configme' failed (see
/home/jim/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/temp/log.do_kernel_configme.15214
for further information)

Any help would be appreciated.

Jim A

--20cf307c9fd015717904b65fec23
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m trying to do the Developer Manual Appendix B example exactly as wri=
tten only changing the path to my home directory. When I get to B.1.8.3, bi=
tbake after patching the kernel calibrate.c and modifiing the path to the l=
ocal git repository for linux-yocto, I get an error on the build.=A0 The lo=
g file of the error is below:<br>
<br>[INFO] doing kernel configme<br>[INFO] Branch yocto/standard/common-pc/=
base used by common-pc-standard.scc<br>[INFO] collecting configs in ./meta/=
meta-series <br>mv: cannot stat `/home/jim/poky/build/tmp/work/qemux86-poky=
-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72=
671808fdbe69a9fe03fd8f094e7c59da04a28c-r2/linux-qemux86-standard-build/.tmp=
.config*&#39;: No such file or directory<br>
creation of pre-processed config data failed<br>config of yocto/standard/co=
mmon-pc/base (common-pc-standard.scc) failed<br>ERROR: Function &#39;do_ker=
nel_configme&#39; failed (see /home/jim/poky/build/tmp/work/qemux86-poky-li=
nux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+72671=
808fdbe69a9fe03fd8f094e7c59da04a28c-r2/temp/log.do_kernel_configme.15214 fo=
r further information)<br>
<br>Any help would be appreciated. <br><br>Jim A<br><br>

--20cf307c9fd015717904b65fec23--
