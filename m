Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B0CE014E9
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 11:30:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Apr 2013 11:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,559,1363158000"; d="scan'208";a="326763031"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 26 Apr 2013 11:30:33 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.222]) with mapi id
	14.01.0355.002; Fri, 26 Apr 2013 11:30:33 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/4] Initial changes for developing a common
	remote	plugin
Thread-Index: AQHOQo2RjjZ36ucErEadbDlHkYzKfpjozG1w
Date: Fri, 26 Apr 2013 18:30:32 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDD096B@ORSMSX104.amr.corp.intel.com>
References: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] Initial changes for developing a common remote	plugin
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
X-List-Received-Date: Fri, 26 Apr 2013 18:30:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I thought we're going to create a common remote util plugin first then modi=
fy the remotetools and bc.ui to use this new remote util plugin.  From your=
 patch series, the 1st path seems you're doing that but the following 3 you=
 are making changes to remote tools files.  I'd like us to focus on creatin=
g this common util first then switch to modify the other plug-ins by using =
this common util.  I'd expect this common util will contain classes that ho=
st all the functions that currently exist in RemoteHelper.java in bc.ui jzh=
ang/windows-build and RSEHelper.java in remotetools.  There are many duplic=
ate codes in these classes that we should abstract them out to put in this =
common util plug-in.  Does this make sense?

Also, please add License header in new files if you are going to introduce =
any.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Friday, April 26, 2013 7:32 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/4] Initial changes for developing a common remote=
 plugin

- create a separate plugin in which to drop all tools needed for remote sup=
port
  - will leave it empty until all functionalilty is properly separated & th=
e util remote code is clearly distinguised
- code refactoring for remote tools plugin in order to simplify code and cr=
eate single point of control over commands stages

[Yocto #4362]
Ioana Grigoropol (4):
  Initial commit for remote separate plugin
  Refactor Model(s) to display customized messages
  Unify preProcess for all commands models
  Add default behaviour for commands for post processing
    Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>

 plugins/org.yocto.remote.utils/.classpath          |    7 ++
 plugins/org.yocto.remote.utils/.project            |   28 ++++++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 ++
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 +++
 plugins/org.yocto.remote.utils/build.properties    |    4 +
 .../src/org/yocto/remote/utils/Activator.java      |   50 +++++++++++
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   89 +++++++++++++---=
----
 .../sdk/remotetools/actions/OprofileModel.java     |   53 ++++--------
 .../sdk/remotetools/actions/PowertopModel.java     |   47 ++++-------
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++++----
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   63 ++++----------
 .../sdk/remotetools/actions/UstModelLegacy.java    |   54 ++++--------
 12 files changed, 243 insertions(+), 203 deletions(-)  create mode 100644 =
plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jd=
t.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Activator.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

