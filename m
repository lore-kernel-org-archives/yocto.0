Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE002.bigfish.com (am1ehsobe002.messaging.microsoft.com
	[213.199.154.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2CE9E0132F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 11:08:03 -0800 (PST)
Received: from mail115-am1-R.bigfish.com (10.3.201.240) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.23; Mon, 12 Dec 2011 19:08:00 +0000
Received: from mail115-am1 (localhost [127.0.0.1])	by
	mail115-am1-R.bigfish.com (Postfix) with ESMTP id 35DA1340115;
	Mon, 12 Dec 2011 19:08:00 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail115-am1 (localhost.localdomain [127.0.0.1]) by mail115-am1
	(MessageSwitch) id 1323716880125191_12682;
	Mon, 12 Dec 2011 19:08:00 +0000 (UTC)
Received: from AM1EHSMHS009.bigfish.com (unknown [10.3.201.250])	by
	mail115-am1.bigfish.com (Postfix) with ESMTP id 190BA200047;
	Mon, 12 Dec 2011 19:08:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS009.bigfish.com
	(10.3.207.109) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 12 Dec 2011 19:07:58 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.28]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Mon, 12 Dec 2011 13:07:59 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Sanity tested distributions list
Thread-Index: AQHMtDAPtBql9ggqGkKAisss96BpDpXY39GAgAAfAgA=
Date: Mon, 12 Dec 2011 19:07:59 +0000
Message-ID: <CAEsOVNcUji0Z4YhZL7Ooj-MDDCKrQCiy4acD5P-SyeSZ0S+rMA@mail.gmail.com>
References: <1408073.zz37vY4uZy@helios>
	<CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
	<3295079.2DL3Md5Ydr@helios>
In-Reply-To: <3295079.2DL3Md5Ydr@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sanity tested distributions list
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
X-List-Received-Date: Mon, 12 Dec 2011 19:08:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <719A08A4F2C76E439244FCE1F69E9BD0@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 12, 2011 at 11:16 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 06 December 2011 15:59:39 McClintock Matthew-B29882 wrote:
>> On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > We had some discussions [1] [2] about this last cycle but I don't feel
>> > we
>> > reached a proper conclusion on the list of tested distributions we wan=
t
>> > to set (SANITY_TESTED_DISTROS) and I assume we want to support a few
>> > more distros (latest versions of Fedora & Ubuntu, presumably?). I'd
>> > like to update and re- post the patch [3] so we can close bug #1096 [4=
]
>> > but for that we need to agree on the list.
>>
>> I'm fairly comprehensively testing something close to the edison 1.1.1
>> release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but
>> maybe not in time for our next release.
>
> I can definitely see a compelling reason to mark CentOS 5.x as supported,=
 but
> the problem with it is it doesn't come with Python 2.6, so BitBake won't =
work
> out of the box (actually right now it fails before it has a chance to sho=
w a
> reasonable error message, which is even worse). We really need a concise =
set
> of instructions on how to install the external python tarball, at the mom=
ent I
> don't think we have these.
>
> Did you need to perform any other special steps on either of these
> distributions?

I'm not 100% sure what I did to bring up our CentOS box but I think
all I needed was to install python 2.6.

-M=


