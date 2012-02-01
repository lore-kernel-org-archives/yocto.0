Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B453FE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 13:36:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2012 13:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119299519"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2012 13:36:04 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 13:36:02 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.175]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.161]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 13:36:02 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Gaku music player
Thread-Index: AczhCvuf97F0gVucS4aRnf5UhWJQpQASvfUAABC1kRA=
Date: Wed, 1 Feb 2012 21:36:01 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
In-Reply-To: <4F298A58.5030700@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Wed, 01 Feb 2012 21:36:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Thanks for the clarification.

I am building on Edison.  I found that ogg music files play
OK on my gaku player.  I think that should be good enough, but just for my =
information purposes
can you help me understand how does one accept the commercial iirc license =
?

Thanks
Rahul

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, February 01, 2012 10:54 AM
To: Saxena, Rahul
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Gaku music player



On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> Hello,
>=20
> =20
>=20
> What type of music files is the Gaku music player on Sato desk top
> supposed to play ?
>=20
> For me it did not work with mp3 files..however it is playing the
> soundtrack from a .ogg video file

It depends on which licenses you allow (the gstreamer mp3 plugin
requires acceptance of the commercial license iirc). Are you building on
edison or master?

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

