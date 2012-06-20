Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F8BAE0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 15:16:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Jun 2012 15:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114396185"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Jun 2012 15:16:05 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 20 Jun 2012 15:16:05 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.217]) with mapi id
	14.01.0355.002; Wed, 20 Jun 2012 15:16:05 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: self-hosted image vs. build appliance
Thread-Index: AQHNTwEW/XWUxllnjUKGJL2YlOIOiJcDavkQ
Date: Wed, 20 Jun 2012 22:16:04 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C85E65B@ORSMSX105.amr.corp.intel.com>
References: <CC07B7AA.119FA%belen.barros.pena@intel.com>
In-Reply-To: <CC07B7AA.119FA%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: self-hosted image vs. build appliance
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
X-List-Received-Date: Wed, 20 Jun 2012 22:16:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>Sent: Wednesday, June 20, 2012 9:24 AM
>
>Does anybody know why are we calling it 'self-hosted-image' in Hob and
>'build-appliance' in the Yocto Project website? Wouldn't it be easier if
>we used the same name everywhere? Which one should be used?

Yes indeed, we should have consistent naming for this feature.

The problem is, neither name is very good.

"build-appliance" =3D an implication that the thing "just works" like an ap=
pliance should just work in your kitchen. Unfortunately, the name isn't ver=
y descriptive.
"Self-hosted-image" =3D a description of how the thing is constructed (it's=
 a Linux OS which was constructed by the Yocto Project itself, and it build=
s using the Yocto Project).

So neither name is good, but build appliance is usually the one I use.

If anyone has a better name I WOULD LOVE TO HAVE IT. Otherwise please file =
a bug to change the self-hosted-image name to build appliance.

Dave

