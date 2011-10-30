Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60B4EE012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 09:34:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Oct 2011 09:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="69384182"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 30 Oct 2011 09:34:45 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Sun, 30 Oct 2011 09:34:44 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "'opensource@keylevel.com'" <opensource@keylevel.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Sun, 30 Oct 2011 09:34:44 -0700
Thread-Topic: [yocto] Which filesystem for target?
Thread-Index: AcyVvplSXbJQxFPrRwyxJhbDku7wrwBYz3nF
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B261A69694D@orsmsx501.amr.corp.intel.com>
In-Reply-To: <6722EDB4-6AD2-4E51-A826-B00D3AABC6A0@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Which filesystem for target?
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
X-List-Received-Date: Sun, 30 Oct 2011 16:34:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Anybody got an answer for Chris? =20

(A lot of folks are traveling back from a conference, Chris, so might expla=
in slowness)
Sent from my Blackberry

----- Original Message -----
From: Chris Tapp [mailto:opensource@keylevel.com]
Sent: Friday, October 28, 2011 03:11 PM=0A=
To: yocto@yoctoproject.org <yocto@yoctoproject.org>
Subject: [yocto] Which filesystem for target?

A bit of an open-ended question, but...

Which is the 'best' filesystem to use for an embedded device that's =20
using a CF card?

It needs to survive loss-of-power, have a RO root filesystem, allow =20
user configuration data to persist and (ideally) only use 'Busybox' =20
commands.

This seems to imply the use of a partition for booting (mount RO) and =20
a second partition or a loop-device on the boot partition for =20
persistent storage.

I would normally go for ext3, but Busybox doesn't support it (afaik). =20
The Busybox tune2fs also only supports -L, so I can't stop 'disk needs =20
checking after <n> mounts' messages.

Is btrfs a suitable alternative?

Chris Tapp

opensource@keylevel.com
www.keylevel.com



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

