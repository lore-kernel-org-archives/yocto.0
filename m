Return-Path: <james.woodyatt@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C7DE00B7A
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 16:18:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Apr 2014 16:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,776,1389772800"; d="scan'208";a="485156138"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga001.jf.intel.com with ESMTP; 01 Apr 2014 16:18:03 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 1 Apr 2014 16:18:03 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.217]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.191]) with mapi id
	14.03.0123.003; Tue, 1 Apr 2014 16:18:02 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: "Beiser, Roy" <roy.beiser@intel.com>
Thread-Topic: [yocto] Yocto cross-compile for Galileo
Thread-Index: Ac9M0t7W1qikFWhmTrOHmu96rlVhMABaG2iA
Date: Tue, 1 Apr 2014 23:18:01 +0000
Message-ID: <57296EEE-39D1-4C56-9891-C117C4526DEB@intel.com>
References: <CA806B38124012458512340FD751E651039D2CCE@HASMSX104.ger.corp.intel.com>
In-Reply-To: <CA806B38124012458512340FD751E651039D2CCE@HASMSX104.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto cross-compile for Galileo
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
X-List-Received-Date: Tue, 01 Apr 2014 23:18:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <B719395FEEE4944B93B4D6C7D3946DEA@intel.com>
Content-Transfer-Encoding: quoted-printable

Mr. Beiser=97

I don=92t think the specifics you want have been written down. We haven=92t=
 investigated using Eclipse for cross-development with Galileo, but it seem=
s reasonable to expect that you should be able to follow the instructions i=
n the Quark Board Support Package Guide to build a toolchain.  Where you wi=
ll encounter trouble is getting Eclipse to download, run and debug software=
 on the Galileo board=97 which has a custom serial port protocol for commun=
icating with the Arduino IDE for Galileo that basically supports downloadin=
g sketches and installing new capsule firmware images, and that=92s it.


=97
james woodyatt <james.woodyatt@intel.com<mailto:james.woodyatt@intel.com>>
Software Architect, New Devices Group

On Mar 31, 2014, at 4:23, Beiser, Roy <roy.beiser@intel.com<mailto:roy.beis=
er@intel.com>> wrote:

Hi Jessica,

I=92m looking for a document which will describe how to set-up Eclipse on U=
buntu 12.04 for cross-compiling applications for Galileo.
The standard Yocto documents (like the one attached) are lacking the specif=
ics for Galileo .

Thanks,

Roy Beiser
Network Engineer, CCIE #22724, PMP
IT / Network Access Engineering
Telephone : +972-8-612-6200
Mobile      : +972-547-886-200




---------------------------------------------------------------------
Intel Electronics Ltd.

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

<Yocto Project Eclipse plug-in and Developer Tools Hands-on Lab.pdf>--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


