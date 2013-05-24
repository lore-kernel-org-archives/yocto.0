Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3902CE014F5
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 13:36:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 May 2013 13:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,737,1363158000"; d="scan'208";a="319153371"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 24 May 2013 13:36:22 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0123.003; Fri, 24 May 2013 13:36:22 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v3 0/2] Yocto SDK IDE cleanup
Thread-Index: AQHOWF4KUwj8dbIFrUO1Da54J7H0AZkUy4tA
Date: Fri, 24 May 2013 20:36:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C32DE7@ORSMSX103.amr.corp.intel.com>
References: <1369385115-31487-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1369385115-31487-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH v3 0/2] Yocto SDK IDE cleanup
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
X-List-Received-Date: Fri, 24 May 2013 20:36:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The remote tools related changes are merged to eclipse-poky master plus the=
 following patch:

http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3Dff4ccb4=
d65243f2a28eb89c72e9b425702b6c3aa

For headless build.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, May 24, 2013 1:45 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v3 0/2] Yocto SDK IDE cleanup

- org.yocto.sdk.ide clean up - remove unused classes

Ioana Grigoropol (2):
  Remove unused TCFTerminalConnectors
  Remove all plugin dependencies to RSE APi from remote tools plugin

 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   10 +-
 .../remotetools/views/TCFTerminalConnector.java    |   49 ----------
 .../views/TCFTerminalConnectorImpl.java            |   98 ----------------=
----
 3 files changed, 4 insertions(+), 153 deletions(-)  delete mode 100644 plu=
gins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTermi=
nalConnector.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/views/TCFTerminalConnectorImpl.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

