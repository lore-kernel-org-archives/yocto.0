Return-Path: <darren.hart@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EEDCE00B21; Thu, 23 Feb 2017 09:45:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2975DE00AF2
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 09:45:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Feb 2017 09:45:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,198,1484035200"; d="scan'208";a="51917978"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga002.jf.intel.com with ESMTP; 23 Feb 2017 09:45:13 -0800
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 23 Feb 2017 09:44:52 -0800
Received: from fmsmsx118.amr.corp.intel.com ([169.254.1.242]) by
	fmsmsx117.amr.corp.intel.com ([169.254.3.201]) with mapi id
	14.03.0248.002; Thu, 23 Feb 2017 09:44:52 -0800
From: "Hart, Darren" <darren.hart@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [PATCH] yocto-docs: Some aesthetic changes to
	kernel-dev-common.xml
Thread-Index: AQHSjcU08FU4B3X4DU2ga5N5Rl5ppaF22heggACIEgD//3rMkA==
Date: Thu, 23 Feb 2017 17:44:52 +0000
Message-ID: <79661426AB6B40478E52EE7F511CC9051F9C36EB@fmsmsx118.amr.corp.intel.com>
References: <alpine.LFD.2.20.1702230604450.7481@uk63952.mitel.com>
	<79661426AB6B40478E52EE7F511CC9051F9C362B@fmsmsx118.amr.corp.intel.com>
	<alpine.LFD.2.20.1702231238380.25959@uk63952.mitel.com>
In-Reply-To: <alpine.LFD.2.20.1702231238380.25959@uk63952.mitel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-docs: Some aesthetic changes to kernel-dev-common.xml
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
X-List-Received-Date: Thu, 23 Feb 2017 17:45:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Thursday, February 23, 2017 9:40 AM
> To: Hart, Darren <darren.hart@intel.com>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: RE: [PATCH] yocto-docs: Some aesthetic changes to kernel-dev-
> common.xml
>=20
> On Thu, 23 Feb 2017, Hart, Darren wrote:
>=20
> > > -----Original Message-----
> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > > Sent: Thursday, February 23, 2017 3:08 AM
> > > To: Yocto discussion list <yocto@yoctoproject.org>
> > > Cc: Hart, Darren <darren.hart@intel.com>
> > > Subject: [PATCH] yocto-docs: Some aesthetic changes to kernel-dev-
> > > common.xml
> > >
> > >
> > > Small number of aesthetic/visual changes to kernel-dev-
> common.xml.
> > >
> >
> > Erm... that's not really what these are :-) These are a mix of
> > grammatical fixes, format preferences, and clarifying commentary,
> > which do amount to some functional changes in terms of what a reader
> > may do or not do as a result of reading them. Please be explicit in
> > your commit log.
> >
> > That said, I have no objections to these changes, the majority of
> > which I consider to be good improvements. Thanks for taking the time
> > to improve the documentation.
>=20
>   so i should resubmit PATCH v2 with a more detailed commit msg? ok, i
> can do that. stay tuned ...

That is ultimately up to the maintainer who could decide to update the mess=
age
themselves, or require a v2 from you. If it were me, I would just submit a =
v2
with an updated commit message as that is likely the fastest path to mergin=
g,
and you are sure to get your intent captured.

Thanks!
--
Darren Hart
Intel Open Source Technology Center


