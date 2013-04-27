Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C86CAE0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 13:06:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2013 13:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,564,1363158000"; d="scan'208";a="304109243"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2013 13:06:17 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.22]) with mapi id
	14.01.0355.002; Sat, 27 Apr 2013 13:06:17 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/4] Initial changes for developing a common
	remote	plugin
Thread-Index: AQHOQo2RjjZ36ucErEadbDlHkYzKfpjozG1wgAFpdoCAAEfFEA==
Date: Sat, 27 Apr 2013 20:06:16 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDD0E76@ORSMSX104.amr.corp.intel.com>
References: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDD096B@ORSMSX104.amr.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A4639B37EA3@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A4639B37EA3@IRSMSX101.ger.corp.intel.com>
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
X-List-Received-Date: Sat, 27 Apr 2013 20:06:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

OK, then can you resend the patch set and drop the first patch so that the =
patch set is clearer on what they're meant to be? E.g. in this case, cleanu=
p the remote tools function usage.  Btw,  will the 3 patches all you'll nee=
d for cleanup or there'll be more?  If there'll be more, probably send them=
 all at the same time.

The other thing is your patches, each one only has a very brief commit subj=
ect, can you add a little bit more in the commit content for the change con=
text or purpose?

Thanks,
Jessica

-----Original Message-----
From: Grigoropol, IoanaX
Sent: Saturday, April 27, 2013 1:40 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 0/4] Initial changes for developing a common re=
mote plugin

Hi Jessica,

Yes it makes sense.
The reason why I started refactoring the code in the remote tools is to try=
 and isolate the functionality we need to move to the separate plugin.  Ins=
tead of moving everything in the first place, I am trying to reduce the cod=
e to single points of control without modifying the actual functionalities =
of the Helpers.
I can do the refactoring the other way around, but I think this way is clea=
ner because I would be clear what we need to keep in the helpers and what t=
o drop.

Thanks,
Ioana

-----Original Message-----
From: Zhang, Jessica
Sent: Friday, April 26, 2013 9:31 PM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 0/4] Initial changes for developing a common re=
mote plugin

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

