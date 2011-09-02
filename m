Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE002.bigfish.com (am1ehsobe002.messaging.microsoft.com
	[213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7819EE00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 09:25:01 -0700 (PDT)
Received: from mail94-am1-R.bigfish.com (10.3.201.241) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 16:25:00 +0000
Received: from mail94-am1 (localhost.localdomain [127.0.0.1])	by
	mail94-am1-R.bigfish.com (Postfix) with ESMTP id 4880C11382D6;
	Fri,  2 Sep 2011 16:25:00 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail94-am1 (localhost.localdomain [127.0.0.1]) by mail94-am1
	(MessageSwitch) id 1314980699904828_22281;
	Fri,  2 Sep 2011 16:24:59 +0000 (UTC)
Received: from AM1EHSMHS017.bigfish.com (unknown [10.3.201.252])	by
	mail94-am1.bigfish.com (Postfix) with ESMTP id CF53D18F804C;
	Fri,  2 Sep 2011 16:24:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS017.bigfish.com
	(10.3.207.155) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 16:24:57 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 11:24:55 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] RPM multilib package installation issue
Thread-Index: AQHMaYaVWl4p2YpWqEiD6/aZWrPpipU6kD2AgAAKGgA=
Date: Fri, 2 Sep 2011 16:24:54 +0000
Message-ID: <CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
In-Reply-To: <4E60FAC3.5030100@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 02 Sep 2011 16:25:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <57539F88C229364DB9531C4812B0545B@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2011 at 10:48 AM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> The normal OE approach is to resolve all items by run-time dependencies. =
=A0That
> is why a lot more is built then installed.
>
> So if you want a system capable of running bash, you would create a task =
(and
> related image) that simply has a RDEPENDS on "bash". =A0Everything else i=
s
> determined automatically. =A0So even if you build ncurses for 32-bit and =
64-bit,
> only the one needed by bash will be installed.
>
> If you change this and specify that your task RDEPENDS is "bash lib64-ncu=
rses".
> =A0Then the system will determine the dependencies based on both bash and=
 the
> 64-bit ncurses. =A0This will result in a system (likely 32-bit in this ex=
ample)
> that includes bash and lib64-ncurses and all of it's dependencies...
>
> The point is, if you explicitly tell the system to install something it i=
s
> expected to be installed. =A0If you don't the automatic resolution is use=
d to
> determine install components and not everything you want may be installed=
.

One would expect then if I did a:

MULTILIB_IMAGE_INSTALL +=3D "lib64-perl"

I would be a 64bit perl and a slew of 64 bit libraries installed. I'm
still trying to figure out why this is not happening on my particular
build.

-M=


