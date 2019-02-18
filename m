Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B918CE00CC3; Mon, 18 Feb 2019 03:22:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
X-Greylist: delayed 2447 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Feb 2019 03:22:15 PST
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3492BE00BCC
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 03:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Message-ID:To:Date:From:Subject:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EPWrb1z0td3DhnsP7yrLyeLbvQO25w9kH0egNpCAtuI=;
	b=LMI/DkMKGOd48E9AzCRtr8g62
	YvbMG/NFqF6CTS1ZT478mOh+2xVf2DHARH0H7JSnLVnIP9nS8gpqmsl/j1Ha4HvrYsviec550Ijsc
	hgcD7H7wQH52w/V2zr/OvI/YfPsA2l5ztLIhrMZ8/7rNkVW81Bn3MMshcGYH73FGql9n7T3ZpSCAP
	Kd0O36fwnuCMKMIStIekMzb1aA/i7/0v5NIydboas/m5Bl2M2V1v9ndx3UgPKqA4HvmZeh0aN0z0n
	4CsM6B6n2Uq/rrnWRT3LI6GeTHNpd28rGKRdCGd8Af5PMgi6nyJt2bTQ9/CmnN5RwKDMAIWB5coyN
	uEyWjbZ7Q==;
Received: from [213.55.176.251] (port=38200 helo=[100.66.235.42])
	by europa.tizoo.com with esmtpa (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gvgMX-008O8L-Lk
	for yocto@yoctoproject.org; Mon, 18 Feb 2019 11:41:26 +0100
User-Agent: Android
X-Is-Generated-Message-Id: true
MIME-Version: 1.0
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Date: Mon, 18 Feb 2019 11:41:24 +0100
To: yocto@yoctoproject.org
Message-ID: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
X-Mailman-Approved-At: Mon, 18 Feb 2019 10:32:29 -0800
Subject: QEMU Raspberry Pi 2 machine
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
X-List-Received-Date: Mon, 18 Feb 2019 11:22:16 -0000
Content-Type: multipart/alternative;
	boundary="----89XLKKKORB9MKX7LP3XBM33KNSQ5UB"
Content-Transfer-Encoding: 7bit

------89XLKKKORB9MKX7LP3XBM33KNSQ5UB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

Hi,

The chromium-x11 browser can't be compiled for the qemuarm machine bec=
ause it use the old ARM926 processor=2E I have modified the qemuarm=2Econf =
file=C2=A0 inside poky/meta/conf/machine/ to add
DEFAULTTUNE ?=3D "cortexa7=
thf-neon-vfpv4"
require conf/machine/include/tune-cortexa7=2Einc
But I want=
 to avoid patching files of the poky project=2E Is there a proper way to ad=
d a QEMU Raspberry Pi 2 target like qemuraspi2 for example ? It look like m=
any recipe files contains specific part for qemuarm so I wonder if adding a=
 new QEMU machine it a simple enough task=2E

Best Regards,
Jean-Christian =
de Rivaz

------89XLKKKORB9MKX7LP3XBM33KNSQ5UB
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<br><br></div>
<div dir=3D"auto">The chromium-x11 brow=
ser can't be compiled for the qemuarm machine because it use the old ARM926=
 processor=2E I have modified the qemuarm=2Econf file=C2=A0 inside poky/met=
a/conf/machine/ to add<br></div>
<div dir=3D"auto">DEFAULTTUNE ?=3D "cortex=
a7thf-neon-vfpv4"<br></div>
<div dir=3D"auto">require conf/machine/include/=
tune-cortexa7=2Einc<br></div>
<div dir=3D"auto">But I want to avoid patchin=
g files of the poky project=2E Is there a proper way to add a QEMU Raspberr=
y Pi 2 target like qemuraspi2 for example ? It look like many recipe files =
contains specific part for qemuarm so I wonder if adding a new QEMU machine=
 it a simple enough task=2E<br><br></div>
<div dir=3D"auto">Best Regards,<b=
r></div>
<div dir=3D"auto">Jean-Christian de Rivaz</div>

------89XLKKKORB9MKX7LP3XBM33KNSQ5UB--
