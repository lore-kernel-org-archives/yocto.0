Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A94E0139E
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 02:21:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Feb 2012 02:21:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108583956"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by azsmga001.ch.intel.com with ESMTP; 20 Feb 2012 02:21:20 -0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 20 Feb 2012 18:20:12 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.91]) with mapi id
	14.01.0355.002; Mon, 20 Feb 2012 18:20:11 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Any existing window manager that supports dual screens?
Thread-Index: AczvuTkytO1Zv+KQTpKWB5EmW3TdYQ==
Date: Mon, 20 Feb 2012 10:20:11 +0000
Message-ID: <A25F549E4D43CD42B4C02DF47A1913230FCCB564@SHSMSX102.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Any existing window manager that supports dual screens?
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
X-List-Received-Date: Mon, 20 Feb 2012 10:21:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
I'm booting Yocto Linux with some board that has 2 physical screens: one is=
 traditional VGA output and the other is the on-board LCD screen.
I've managed to modify xorg.conf to make both screens work: i.e., I can mov=
e the mouse cursor on both two screens.

However, a screen shows the SATO desktop while the other shows nothing but =
a black screen -- surely when I move the mouse cursor on the screen, I can =
see the cursor.
I suppose this is because the default window manager (i.e., matchbox-wm) ca=
n't support dual screen?=20

Could anybody point out if we have a more powerful window manager that has =
the support?
Does matchbox-wm-2 have the support?

BTW, I see there is a recipe gnome-session_2.30.2.bb in oe's side.
I think gnome-session should have the support? Maybe we can port it to poky=
?

Thanks!

-- Dexuan


