Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBE15E009AE; Thu, 23 Apr 2015 01:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC4DE00994
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 01:45:50 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 23 Apr 2015 01:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,629,1422950400"; d="scan'208";a="714155829"
Received: from kreynold-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.25.159])
	by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2015 01:45:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Apr 2015 09:45:45 +0100
Message-ID: <3464582.nUN1vsFaMq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F77E520E-C779-436E-B54F-F34D4D4561BE@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1508758.Rhv2PmRKWu@peggleto-mobl.ger.corp.intel.com>
	<F77E520E-C779-436E-B54F-F34D4D4561BE@gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Thu, 23 Apr 2015 08:45:53 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wednesday 22 April 2015 23:49:41 Khem Raj wrote:
> > On Apr 22, 2015, at 4:22 PM, Paul Eggleton <paul.eggleton@linux.int=
el.com>
> > wrote:>=20
> > On Wednesday 22 April 2015 20:51:08 Brian Karcz wrote:
> >> Thanks for pointing me to that. It sounds like exactly what I need=
. I
> >> can't believe that I've not come across that in my searches. I sup=
pose
> >> its a matter of using the right search criteria.
> >=20
> > So I do want to mention one thing - we envisaged externalsrc more f=
or
> > situations where you temporarily want to build from an external sou=
rce
> > tree (for example, when you're in the middle of development). The
> > expectation is that when you reach production you switch over to a
> > standard repository
> > specified in SRC_URI. Having said that there aren't any actual barr=
iers to
> > using it on a more permanent basis as it sounds like you may  be
> > considering (although perhaps I've misunderstood.)
>=20
> Application development doesn=E2=80=99t end is what really happens, s=
o developers
> will need to keep using something like this forever on a given applic=
ation,
> and somehow externalsrc sounds temporary i.e. not included into regul=
ar
> workflow.

But does the source tree persist on one developer's machine? Or should =
it in=20
fact be on a proper server in a repository of its own?

> >> 2) can the SRC_URI now be omitted in the recipe since there is not=
hing to
> >> fetch?
> >=20
> > You can leave it completely blank if you wish. In dizzy and earlier=
,
> > SRC_URI is effectively ignored with externalsrc. In master and the
> > just-released fido release, any local file:// references will still=
 be
> > fetched if present, remote URIs will be ignored.
>=20
> Will they be just fetched or also applied to source tree like in
> non-externalsrc case. getting a  'prepared source tree' in an externa=
lsrc
> env is a big confusion point for developers where a given component i=
s
> building totally fine and if one want to use externalsrc then develop=
er
> needs to do =E2=80=98preparation of source tree=E2=80=99, so it seems=
 post 1.7 we have
> something inbetween solution ?

They will be unpacked into the workdir as they would have been without=20=

externalsrc. They do not go into the source tree.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

