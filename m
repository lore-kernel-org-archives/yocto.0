Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE003.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D72E00307
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 08:01:44 -0800 (PST)
Received: from mail151-tx2-R.bigfish.com (10.9.14.239) by
	TX2EHSOBE003.bigfish.com (10.9.40.23) with Microsoft SMTP Server id
	14.1.225.23; Tue, 6 Dec 2011 16:01:43 +0000
Received: from mail151-tx2 (localhost [127.0.0.1])	by
	mail151-tx2-R.bigfish.com (Postfix) with ESMTP id 02FAF6003D6;
	Tue,  6 Dec 2011 16:01:43 +0000 (UTC)
X-SpamScore: -19
X-BigFish: VS-19(zz9371K1432N98dK14ffOzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail151-tx2 (localhost.localdomain [127.0.0.1]) by mail151-tx2
	(MessageSwitch) id 1323187182222530_21678;
	Tue,  6 Dec 2011 15:59:42 +0000 (UTC)
Received: from TX2EHSMHS038.bigfish.com (unknown [10.9.14.235])	by
	mail151-tx2.bigfish.com (Postfix) with ESMTP id E0D0D400042;
	Tue,  6 Dec 2011 15:59:41 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS038.bigfish.com
	(10.9.99.138) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 6 Dec 2011 15:59:41 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Tue, 6 Dec 2011 09:59:40 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Sanity tested distributions list
Thread-Index: AQHMtDAPtBql9ggqGkKAisss96BpDg==
Date: Tue, 6 Dec 2011 15:59:39 +0000
Message-ID: <CAEsOVNdiJT7MfCBYgaimSd2jcQpJxfmgcYihvV_BDfhy6ZrshQ@mail.gmail.com>
References: <1408073.zz37vY4uZy@helios>
In-Reply-To: <1408073.zz37vY4uZy@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"saul.wold@intel.com" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 06 Dec 2011 16:01:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <EE208198C7BE7B4DBB0A77481189C506@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 6, 2011 at 9:43 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi all,
>
> We had some discussions [1] [2] about this last cycle but I don't feel we
> reached a proper conclusion on the list of tested distributions we want t=
o set
> (SANITY_TESTED_DISTROS) and I assume we want to support a few more distro=
s
> (latest versions of Fedora & Ubuntu, presumably?). I'd like to update and=
 re-
> post the patch [3] so we can close bug #1096 [4] but for that we need to =
agree
> on the list.

I'm fairly comprehensively testing something close to the edison 1.1.1
release on CentOS 5.5 and Ubuntu 10.04 LTS. We plan on adding more but
maybe not in time for our next release.

-M=


