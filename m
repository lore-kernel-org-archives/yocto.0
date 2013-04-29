Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EBBE0137F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 01:21:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 29 Apr 2013 01:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="325853516"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2013 01:21:44 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.73]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.198]) with mapi id
	14.01.0355.002; Mon, 29 Apr 2013 09:20:58 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/4] Initial changes for developing a common
	remote	plugin
Thread-Index: AQHOQqwkVsufIgqhuk+z8AGNyhvZ5JjpvYwggACxsQCAAm/l6w==
Date: Mon, 29 Apr 2013 08:20:58 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639B38258@IRSMSX101.ger.corp.intel.com>
References: <1366986723-27748-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C6FDD096B@ORSMSX104.amr.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A4639B37EA3@IRSMSX101.ger.corp.intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C6FDD0E76@ORSMSX104.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C6FDD0E76@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
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
X-List-Received-Date: Mon, 29 Apr 2013 08:21:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
I will resent the refactoring patches for the remote tools plugin since the=
re will be more than three and I will postpone the first one for after the =
refactoring.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Saturday, April 27, 2013 11:06 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 0/4] Initial changes for developing a common re=
mote plugin=0A=
=0A=
Hi Ioana,=0A=
=0A=
OK, then can you resend the patch set and drop the first patch so that the =
patch set is clearer on what they're meant to be? E.g. in this case, cleanu=
p the remote tools function usage.  Btw,  will the 3 patches all you'll nee=
d for cleanup or there'll be more?  If there'll be more, probably send them=
 all at the same time.=0A=
=0A=
The other thing is your patches, each one only has a very brief commit subj=
ect, can you add a little bit more in the commit content for the change con=
text or purpose?=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: Grigoropol, IoanaX=0A=
Sent: Saturday, April 27, 2013 1:40 AM=0A=
To: Zhang, Jessica; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 0/4] Initial changes for developing a common re=
mote plugin=0A=
=0A=
Hi Jessica,=0A=
=0A=
Yes it makes sense.=0A=
The reason why I started refactoring the code in the remote tools is to try=
 and isolate the functionality we need to move to the separate plugin.  Ins=
tead of moving everything in the first place, I am trying to reduce the cod=
e to single points of control without modifying the actual functionalities =
of the Helpers.=0A=
I can do the refactoring the other way around, but I think this way is clea=
ner because I would be clear what we need to keep in the helpers and what t=
o drop.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
=0A=
-----Original Message-----=0A=
From: Zhang, Jessica=0A=
Sent: Friday, April 26, 2013 9:31 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 0/4] Initial changes for developing a common re=
mote plugin=0A=
=0A=
Hi Ioana,=0A=
=0A=
I thought we're going to create a common remote util plugin first then modi=
fy the remotetools and bc.ui to use this new remote util plugin.  From your=
 patch series, the 1st path seems you're doing that but the following 3 you=
 are making changes to remote tools files.  I'd like us to focus on creatin=
g this common util first then switch to modify the other plug-ins by using =
this common util.  I'd expect this common util will contain classes that ho=
st all the functions that currently exist in RemoteHelper.java in bc.ui jzh=
ang/windows-build and RSEHelper.java in remotetools.  There are many duplic=
ate codes in these classes that we should abstract them out to put in this =
common util plug-in.  Does this make sense?=0A=
=0A=
Also, please add License header in new files if you are going to introduce =
any.=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Friday, April 26, 2013 7:32 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH 0/4] Initial changes for developing a common remote=
 plugin=0A=
=0A=
- create a separate plugin in which to drop all tools needed for remote sup=
port=0A=
  - will leave it empty until all functionalilty is properly separated & th=
e util remote code is clearly distinguised=0A=
- code refactoring for remote tools plugin in order to simplify code and cr=
eate single point of control over commands stages=0A=
=0A=
[Yocto #4362]=0A=
Ioana Grigoropol (4):=0A=
  Initial commit for remote separate plugin=0A=
  Refactor Model(s) to display customized messages=0A=
  Unify preProcess for all commands models=0A=
  Add default behaviour for commands for post processing=0A=
    Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>=0A=
=0A=
 plugins/org.yocto.remote.utils/.classpath          |    7 ++=0A=
 plugins/org.yocto.remote.utils/.project            |   28 ++++++=0A=
 .../.settings/org.eclipse.jdt.core.prefs           |    7 ++=0A=
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   10 +++=0A=
 plugins/org.yocto.remote.utils/build.properties    |    4 +=0A=
 .../src/org/yocto/remote/utils/Activator.java      |   50 +++++++++++=0A=
 .../yocto/sdk/remotetools/actions/BaseModel.java   |   89 +++++++++++++---=
----=0A=
 .../sdk/remotetools/actions/OprofileModel.java     |   53 ++++--------=0A=
 .../sdk/remotetools/actions/PowertopModel.java     |   47 ++++-------=0A=
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++++----=0A=
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |   63 ++++----------=
=0A=
 .../sdk/remotetools/actions/UstModelLegacy.java    |   54 ++++--------=0A=
 12 files changed, 243 insertions(+), 203 deletions(-)  create mode 100644 =
plugins/org.yocto.remote.utils/.classpath=0A=
 create mode 100644 plugins/org.yocto.remote.utils/.project=0A=
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jd=
t.core.prefs=0A=
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
 create mode 100644 plugins/org.yocto.remote.utils/build.properties=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Activator.java=0A=
=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

