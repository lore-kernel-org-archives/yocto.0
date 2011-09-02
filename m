Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE001.bigfish.com (am1ehsobe001.messaging.microsoft.com
	[213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E77EE0120F
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 08:41:02 -0700 (PDT)
Received: from mail106-am1-R.bigfish.com (10.3.201.247) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 15:41:01 +0000
Received: from mail106-am1 (localhost.localdomain [127.0.0.1])	by
	mail106-am1-R.bigfish.com (Postfix) with ESMTP id 1EB56350161;
	Fri,  2 Sep 2011 15:41:01 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail106-am1 (localhost.localdomain [127.0.0.1]) by mail106-am1
	(MessageSwitch) id 1314978060673211_20643;
	Fri,  2 Sep 2011 15:41:00 +0000 (UTC)
Received: from AM1EHSMHS002.bigfish.com (unknown [10.3.201.243])	by
	mail106-am1.bigfish.com (Postfix) with ESMTP id 9ED3786004F;
	Fri,  2 Sep 2011 15:41:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS002.bigfish.com
	(10.3.207.102) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 15:40:59 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 10:40:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] RPM multilib package installation issue
Thread-Index: AQHMaYaVWl4p2YpWqEiD6/aZWrPpig==
Date: Fri, 2 Sep 2011 15:40:03 +0000
Message-ID: <CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
In-Reply-To: <4E60F024.4030000@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
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
X-List-Received-Date: Fri, 02 Sep 2011 15:41:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <839FD28ED24B134CA783C0A0CBC4DBB9@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2011 at 10:03 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
>> However in run time testing I met a problem that, for those libraries wh=
ose
>> base/multilib versions packages will be both built out (like libgtk, it =
has
>> "libgtk-2.0-2.22.1-r2.x86_64.rpm" and "libgtk-2.0-2.22.1-r2.x86.rpm"), t=
he
>> rpm will only installs the lib32 version of it.
>
> During filesystem construction the system uses dependencies to decide wha=
t to
> install. =A0If you build a 32-bit connman-gnome and it requires other 32-=
bit
> libraries the dependency scanner will either pick them up and install the=
m, or
> error due to missing dependencies.

Some you are saying since we do not build an actual binary that
depends on the 64bit library we just drop the libraries we requested
to be installed?

-M=


