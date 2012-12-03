Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559DCE0045D
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 09:46:10 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2012 09:46:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,208,1355126400"; d="scan'208";a="258330641"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2012 09:46:07 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Mon, 3 Dec 2012 09:46:07 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "koansoftware@gmail.com" <koansoftware@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Howto use yocto meta-toolchain?
Thread-Index: AQHN0Wb/zw6Ttm4RIkqX03P8SKy9s5gHWE0w
Date: Mon, 3 Dec 2012 17:46:06 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B67F66@ORSMSX101.amr.corp.intel.com>
References: <50BCBE77.4070700@gmail.com>
In-Reply-To: <50BCBE77.4070700@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Howto use yocto meta-toolchain?
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
X-List-Received-Date: Mon, 03 Dec 2012 17:46:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marco,

Can you filed a bug about this in bugzilla?  Also, you don't need to sudo t=
o run the install script, if you choose the default location which is /opt/=
poky/1.3, it'll prompt you for the password, or you can specify a directory=
 under your $HOME dir.  In your bug, can you provide some detail how you bu=
ild the toolchain, e.g. the local.conf file changes, etc.?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Marco
Sent: Monday, December 03, 2012 7:00 AM
To: yocto@yoctoproject.org
Subject: [yocto] Howto use yocto meta-toolchain?

Hi,
after build meta-toolchain (for beagleboard, for example) I have this scrip=
t

15:32 koan@quad:~/yocto-8-danny/poky/build
$ ll tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
-rwxr-xr-x 1 koan koan 16143 2012-12-03 15:25 tmp/deploy/sdk/poky-eglibc-x8=
6_64-arm-toolchain-1.3.sh

Then I argued I had to launch it to install the Yocto toolchain, but I get =
an error

15:32 koan@quad:~/yocto-8-danny/poky/build
$ sudo tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
[sudo] password for koan:
Enter target directory for SDK (default: /opt/poky/1.3):
You are about to install the SDK to "/opt/poky/1.3". Proceed[Y/n]?
Extracting SDK...done
Setting it up...find: `/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/lib':
No such file or directory
SDK could not be set up. Relocate script failed. Abort!

What's wrong?
I wasn't able to find any document about it in YP website.

TIA
--
Marco
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

