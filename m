Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4FBDE0120E
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2011 09:32:14 -0700 (PDT)
Received: from mail9-ch1-R.bigfish.com (216.32.181.168) by
	CH1EHSOBE017.bigfish.com (10.43.70.67) with Microsoft SMTP Server id
	14.1.225.22; Mon, 29 Aug 2011 16:32:13 +0000
Received: from mail9-ch1 (localhost.localdomain [127.0.0.1])	by
	mail9-ch1-R.bigfish.com (Postfix) with ESMTP id E181E19036C;
	Mon, 29 Aug 2011 16:32:13 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h63h)
X-Spam-TCS-SCL: 2:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail9-ch1 (localhost.localdomain [127.0.0.1]) by mail9-ch1
	(MessageSwitch) id 1314635497515257_25092;
	Mon, 29 Aug 2011 16:31:37 +0000 (UTC)
Received: from CH1EHSMHS024.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.254])	by mail9-ch1.bigfish.com (Postfix) with ESMTP id
	8C6FAAC80CD; Mon, 29 Aug 2011 16:29:44 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS024.bigfish.com
	(10.43.70.24) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Mon, 29 Aug 2011 16:29:41 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0323.002; Mon, 29 Aug 2011 11:29:40 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Thread-Topic: [yocto] Tested host distros for 1.1
Thread-Index: AQHMZme6Y8ldjNC6X0SyAO7e5bxn8pU0WCEAgAAAdwA=
Date: Mon, 29 Aug 2011 16:29:40 +0000
Message-ID: <CAEsOVNdgcQ73mk4G8pAgbK5JfGnSDnvcaJAMuNVwa61ZLEz-_Q@mail.gmail.com>
References: <201108231642.49667.paul.eggleton@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CBD6@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNeP9Epi6nqGGV-_NwFM4U085qGO6K9-En8KFDVFg9L5YA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CC17@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CC17@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Mon, 29 Aug 2011 16:32:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <94745ABB7D10B44C83E12B5DB4699E7C@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 29, 2011 at 11:27 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> Matthew,
>
> Right now what I mention in the Poky manual you reference is somewhat vag=
ue. =A0Early on the team had some discussion as to whether to try and compi=
le some sort of complete list of the distros that are supported. =A0It turn=
ed out the actual distros tested were few. =A0So I guess my comment here to=
 the group was trying to verify (again) whether we had a real list of distr=
os with version numbers we could say have been tested with Yocto. =A0Maybe =
it is worth discussing again how exhaustive and detailed we want the suppor=
ted distros list to be.

I understand, I was just hoping a few more in that list would keep
being supported such as SUSE, etc. I know we build on Fedora 13 and
CentOS 5.5 (with a few fixes not upstream yet)

-M=


