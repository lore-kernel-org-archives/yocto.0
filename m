Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA53E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 06:48:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 06:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1020,1363158000"; d="scan'208";a="342149479"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 08 Jul 2013 06:48:02 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.127]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.204]) with mapi id
	14.03.0123.003; Mon, 8 Jul 2013 14:48:00 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Norman Cheung <brjerome.1@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Help with installing Eclipse ADT Plug-in
Thread-Index: AQHOenj+ogCswxONR0KsJToCWmtMoJlazZ7g
Date: Mon, 8 Jul 2013 13:48:00 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F0FEA3@IRSMSX104.ger.corp.intel.com>
References: <51D86559.7060903@gmail.com>
In-Reply-To: <51D86559.7060903@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Help with installing Eclipse ADT Plug-in
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
X-List-Received-Date: Mon, 08 Jul 2013 13:48:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Norman,

There may be some items that you have missed, or you can try another way by=
 running a headless build and then trying to install the plugin. The headle=
ss build should be able to install the required items needed by the plugin.=
=20
To run the headless build, you have to have the eclipse-poky source code (e=
.g.: git://git.yoctoproject.org/eclipse-poky) and then run the setup.sh scr=
ipt under the scripts folder.

Regards,
--
Alexandru Georgescu


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Norman Cheung
Sent: Saturday, July 06, 2013 21:44
To: yocto@yoctoproject.org
Subject: [yocto] Help with installing Eclipse ADT Plug-in

I followed the steps to install ADT plug-in in the Development Manual secti=
on 4.2.2.1.

The error is:
Cannot complete the install because one or more required items could not be=
 found.
   Software being installed: Yocto Project ADT Plug-in
1.4.0.201306120814 (org.yocto.sdk.feature.group 1.4.0.201306120814)

In installing the pre-requisites, the only item that failed was RSE WincE S=
ervices (step 12 in 4.2.2.1.3).

I also tried compile the plug-in from source same error.  How can I locate =
what items are missing?

Thanks,
Norman


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

