Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE001.bigfish.com (db3ehsobe001.messaging.microsoft.com
	[213.199.154.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 467DCE006AC
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 11:31:39 -0700 (PDT)
Received: from mail6-db3-R.bigfish.com (10.3.81.248) by
	DB3EHSOBE001.bigfish.com (10.3.84.21) with Microsoft SMTP Server id
	14.1.225.22; Tue, 25 Oct 2011 18:31:32 +0000
Received: from mail6-db3 (localhost.localdomain [127.0.0.1])	by
	mail6-db3-R.bigfish.com (Postfix) with ESMTP id D96FB17084E3;
	Tue, 25 Oct 2011 18:31:34 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,13,
Received: from mail6-db3 (localhost.localdomain [127.0.0.1]) by mail6-db3
	(MessageSwitch) id 1319567437649985_13247;
	Tue, 25 Oct 2011 18:30:37 +0000 (UTC)
Received: from DB3EHSMHS012.bigfish.com (unknown [10.3.81.249])	by
	mail6-db3.bigfish.com (Postfix) with ESMTP id 959C11620058;
	Tue, 25 Oct 2011 18:30:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS012.bigfish.com
	(10.3.87.112) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 25 Oct 2011 18:30:34 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Tue, 25 Oct 2011 13:30:37 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] Proposed roadmap and design for Hob improvement
Thread-Index: AQHMkDZTpBw+KHCQZkuO0BR9k/nt2A==
Date: Tue, 25 Oct 2011 18:30:37 +0000
Message-ID: <CAEsOVNe+Eza_eoBzy2aZTdtm=X6dMsGKrzzKJnTLs37E34V3Lw@mail.gmail.com>
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
	<33AB447FBD802F4E932063B962385B3512DB2DBA09@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNdfJ_VRRNVRGNf3C7ziBdn4uaa3hNUk5hSAQnj9zimkYQ@mail.gmail.com>
	<4EA6FB40.7050600@linux.intel.com>
In-Reply-To: <4EA6FB40.7050600@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Proposed roadmap and design for Hob improvement
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Oct 2011 18:31:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D55389D098C6124793550ED2433C2473@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 25, 2011 at 1:09 PM, Joshua Lock <josh@linux.intel.com> wrote:
> Of course with ambiguous terms like *somewhere* I'm not sure we're
> thinking along exactly the same lines but we're definitely looking to
> speed up and re-use in as many places as possible.

Well, somewhere is 'tmp/deploy/rpms' or $BB_RPM_MIRROR or RPMs from
sstate-cache.

-M=


