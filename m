Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF56BE005B7
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2011 19:22:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Sep 2011 19:22:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="55414736"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 23 Sep 2011 19:22:27 -0700
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 24 Sep 2011 10:22:26 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Sat, 24 Sep 2011 10:22:25 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sat, 24 Sep 2011 10:22:24 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 24 Sep 2011 10:22:23 +0800
Thread-Topic: [yocto] Eclipse Plugin 1.1-M4
Thread-Index: Acx5+vokbkl1TCBCRSK2w3CXlQSjhAAZH3tg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F31BD344D6C@shsmsx502.ccr.corp.intel.com>
References: <4E7C918D.5050407@communistcode.co.uk>
	<4E7C93EE.2030509@communistcode.co.uk>
In-Reply-To: <4E7C93EE.2030509@communistcode.co.uk>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Eclipse Plugin 1.1-M4
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
X-List-Received-Date: Sat, 24 Sep 2011 02:22:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jack,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
> Sent: Friday, September 23, 2011 10:13 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Eclipse Plugin 1.1-M4
>=20
> On 23/09/2011 15:02, Jack Mitchell wrote:
> > I am trying to get the latest plugin working with Eclipse Indigo and
> > have followed the instructions listed here:
> >
> > http://permalink.gmane.org/gmane.linux.embedded.yocto.general/2596
> >
> > The instructions all work fine until I point Eclipse to a local git
> > clone of the EclipsePlugin directory. When I try to install the plugin
> > I recieve this error message:
> >
> > Cannot complete the install because one or more required items could
> > not be found.
> >   Software being installed: Yocto Plugin for Eclipse 1.1.0.qualifier
> > (org.yocto.sdk.feature.group 1.1.0.qualifier)
> >   Missing requirement: Yocto Plugin for Eclipse 1.1.0.qualifier
> > (org.yocto.sdk.feature.group 1.1.0.qualifier) requires
> > 'org.yocto.sdk.source.feature.group 0.0.0' but it could not be found
> >
> > Could anyone shed any light on the situation?

How did you build out the plugin? You many try out using the scripts/build.=
sh to build the 1.1M4 plugin upon your own Indigo.
  ECLIPSE_HOME=3D<dir where you installed your Indigo> scripts/build.sh 1.1=
M4 <your release name>
You should find the file org.yocto.sdk-<your release name>-<date>-archive.z=
ip after a successful build. Please try install that archive zip file and s=
ee if it works.

> > Regards,
> > Jack.
>=20
> Ok, I managed to get it installed by adding the 1.0 repository so that it=
 could
> find the'group' it was looking for. When installed I then tried to alter =
the
> preferences and promtly recieved this message:

Do you mean you installed the 1.0 plugin? I don't think 1.0 plugin would wo=
rk with Indigo.

> Unable to create the selected preference page.
> org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage
>=20
> Screenshot: http://i.imgur.com/Ieibg.png
>=20
> If I try to create a project using the yocto plugin it throws a nullPoint=
er error -
> am I missing something here or are there still issues to be ironed out on=
 the
> new 1.1 git?
>=20


