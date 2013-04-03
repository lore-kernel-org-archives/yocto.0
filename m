Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62230E01545
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:45:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Apr 2013 11:45:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="222468909"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Apr 2013 11:45:47 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 3 Apr 2013 11:45:47 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.107]) with mapi id
	14.01.0355.002; Wed, 3 Apr 2013 11:45:46 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Grigoropol, IoanaX"
	<ioanax.grigoropol@intel.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH] Remove clutter project templates
Thread-Index: AQHOMEleY65SZpX4NkGNHiTS7byLfJjE0ZIA
Date: Wed, 3 Apr 2013 18:45:45 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDBE18E@ORSMSX104.amr.corp.intel.com>
References: <1363104333-15085-1-git-send-email-ioanax.grigoropol@intel.com>
	<2562063.qdqmlPHIqx@helios>
	<3E179CF0D7162B4AA4E2B324209A4639B30171@IRSMSX101.ger.corp.intel.com>
	<6064664.vH6NInnK1q@helios>
In-Reply-To: <6064664.vH6NInnK1q@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Remove clutter project templates
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
X-List-Received-Date: Wed, 03 Apr 2013 18:45:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

We removed clutter project templates just because we found that the underli=
ne package support for it is no longer there(in core-image-sato) and assume=
 that there's a reason for the change.  I'm in the same boat as you that by=
 no means I'm an expert with clutter thus don't know how popular it's among=
 developers. But base on my limited experiment with it when adding the temp=
late support in Eclipse, it seems a pretty neat framework for adding animat=
ion support, etc. and can be useful  for new application developers doing t=
he work.

Thanks,
Jessica



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Wednesday, April 03, 2013 1:58 AM
To: Grigoropol, IoanaX
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH] Remove clutter project templates

On Wednesday 03 April 2013 08:42:23 Grigoropol, IoanaX wrote:
> Paul Eggleton wrote:
> > On Tuesday 12 March 2013 18:05:33 Ioana Grigoropol wrote:
> > > - support for clutter was removed from core-image-sato along with
> > > clutter-box2d and thus the project templates in Eclipse should not
> > > be supported anymore; gtk templates should be used instead
> >
> > The removal of clutter-box2d doesn't signal that clutter itself is
> > unsupported, so I think maybe we shouldn't be removing these
> > templates just yet.
>
> In my opinion, since clutter was only brought in core-image-sato and
> core-image-sato-sdk by clutter-box2d, and not independently, it means
> it was not really intended to support it.

Possibly; the other alternative is that nobody had really considered the qu=
estion of whether or not it should be included. I'm unsure as to which is t=
he case here.

> Do you think there should be support for clutter in the sdk images ?

I would say it depends on whether we believe it will be useful to new appli=
cation developers, or we're just keeping it around for compatibility with e=
xisting applications. I can see it being useful but I'd probably like to he=
ar from Jessica and others as well.

> Clutter + dependencies is not a small package and was only getting
> into images through testapps feature, and we could use gtk templates inst=
ead.

True, but Gtk+ and Clutter aren't quite the same thing. I'm not an expert o=
n Clutter by any means but I believe it provides a much better framework fo=
r animations and non-traditional UIs than Gtk+ does.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

