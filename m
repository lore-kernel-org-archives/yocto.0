Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D79E00511
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 07:22:14 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2013 07:22:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="414349305"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 07:21:41 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.165]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 07:21:41 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: stupid question about post-installation scripts
Thread-Index: AQHO6QEijnn9qoGtOECZtPlRt2hplZo2EeeA
Date: Mon, 25 Nov 2013 15:21:41 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311240533220.32547@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: FW: stupid question about post-installation scripts
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
X-List-Received-Date: Mon, 25 Nov 2013 15:22:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

I don't know... I am forwarding to the discussion list.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Sunday, November 24, 2013 2:37 AM
>To: Rifenbark, Scott M
>Subject: stupid question about post-installation scripts
>
>
>  when one defines pkg_postinst scripts, are those scripts invoked at
>*both* root filesystem creation time and first boot time? so that one need=
s to
>manually check the value of ${D} to decide whether to run them, say, at fi=
rst
>boot time?
>
>  i'm reading the section here:
>
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-
>manual.html#post-installation-scripts
>
>and i know i've seen elsewhere scripts explicitly checking the value of th=
e ${D}
>prefix to determine when they're being invoked. it *seems* like that's wha=
t's
>happening, but if that's the case, it can probably be said much more clear=
ly.
>
>rday

