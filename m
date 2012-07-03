Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 234D4E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:39:28 -0700 (PDT)
Received: from mail120-va3-R.bigfish.com (10.7.14.236) by
	VA3EHSOBE003.bigfish.com (10.7.40.23) with Microsoft SMTP Server id
	14.1.225.23; Tue, 3 Jul 2012 19:37:26 +0000
Received: from mail120-va3 (localhost [127.0.0.1])	by
	mail120-va3-R.bigfish.com (Postfix) with ESMTP id 1C6ACA0777;
	Tue,  3 Jul 2012 19:32:13 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail120-va3 (localhost.localdomain [127.0.0.1]) by mail120-va3
	(MessageSwitch) id 1341343930480348_3180;
	Tue,  3 Jul 2012 19:32:10 +0000 (UTC)
Received: from VA3EHSMHS032.bigfish.com (unknown [10.7.14.250])	by
	mail120-va3.bigfish.com (Postfix) with ESMTP id 6C4501E021A;
	Tue,  3 Jul 2012 19:32:10 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS032.bigfish.com
	(10.7.99.42) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 3 Jul 2012 19:32:01 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.163]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Tue, 3 Jul 2012 14:25:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] prerequisite tools for making documentation
Thread-Index: AQHNWVGMStjHgLM6pEypnx8/ZEbiyA==
Date: Tue, 3 Jul 2012 19:25:04 +0000
Message-ID: <CAEsOVNc81L1AnwMoED_mm+vF_+d6cX-rjBVpfKYo5=NGBT_jdA@mail.gmail.com>
References: <4FE73AF6.2060008@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A1FA2E@ORSMSX101.amr.corp.intel.com>
	<CAME0jBRJS_zxENDxB8_-rhgwCR49B_wM-x=g-kZw=ggpWNbUcA@mail.gmail.com>
	<alpine.DEB.2.02.1207031505370.1660@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207031505370.1660@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prerequisite tools for making documentation
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
X-List-Received-Date: Tue, 03 Jul 2012 19:39:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <6AD22645A991754D991CB912EEBA77D4@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

I went through this trying to fix the docs build on a machine and my
build script has some clues about what I needed to do:

export PATH=3D/opt/fop-1.0:$PATH
export PATH=3D/usr/local/bin:$PATH

which xsltproc

cd documentation

for i in adt-manual dev-manual yocto-project-qs bsp-guide
kernel-manual poky-ref-manual; do
    make pdf html DOC=3D$i BRANCH=3Dedison
done

I think I needed a new 'fop' and a new 'xsltproc' - this was on an old
build machine (CentOS 5.X) though so things could be different.

-M

On Tue, Jul 3, 2012 at 2:07 PM, Robert P. J. Day <rpjday@crashcourse.ca> wr=
ote:
> On Tue, 3 Jul 2012, Chris Hallinan wrote:
>
>> I'd also be interested in knowing what host you built it on, as
>> several of us (including myself) have had difficulty building docs.
>
>   just recently, i whined incessantly about the issue i was having
> building PDF docs on my ubuntu 12.04 system,
>
> http://ubuntu.5.n6.nabble.com/quot-Cannot-open-file-sRGB-pf-quot-when-usi=
ng-quot-fop-quot-to-generate-PDF-td4981668.html
>
> anyone have a suggestion?  should i switch javas?  if anyone is
> getting PDFs to build on their ubuntu system, i'd be interested in
> knowing their setup and package list.
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


