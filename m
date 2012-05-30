Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29D47E013D3
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 09:08:27 -0700 (PDT)
Received: from mail59-am1-R.bigfish.com (10.3.201.231) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Wed, 30 May 2012 16:08:00 +0000
Received: from mail59-am1 (localhost [127.0.0.1])	by mail59-am1-R.bigfish.com
	(Postfix) with ESMTP id 6B018140134;
	Wed, 30 May 2012 16:08:00 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 11
X-BigFish: VS11(zz9371Ic89bh1432N98dKzz1202hzz8275bhf73b6ilz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail59-am1 (localhost.localdomain [127.0.0.1]) by mail59-am1
	(MessageSwitch) id 1338394078486378_20475;
	Wed, 30 May 2012 16:07:58 +0000 (UTC)
Received: from AM1EHSMHS001.bigfish.com (unknown [10.3.201.234])	by
	mail59-am1.bigfish.com (Postfix) with ESMTP id 751C9400049;
	Wed, 30 May 2012 16:07:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS001.bigfish.com
	(10.3.207.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 30 May 2012 16:07:57 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0298.005; Wed, 30 May 2012 11:08:15 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
Thread-Topic: [yocto] ALT_SRC_URI ?
Thread-Index: AQHNPn5qCSDY21u1BUuWJ+PxCm5Hng==
Date: Wed, 30 May 2012 16:08:14 +0000
Message-ID: <CAEsOVNfUrVFO-zqO-G2Ci958_oUGSzUnpOG-3dL8X_bS-R_1UQ@mail.gmail.com>
References: <4FC62CB6.8060004@enea.com>
In-Reply-To: <4FC62CB6.8060004@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ALT_SRC_URI ?
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
X-List-Received-Date: Wed, 30 May 2012 16:08:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <37754E4B1443D34E959D75D233063A7B@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, May 30, 2012 at 9:20 AM, David Nystr=F6m <david.nystrom@enea.com> w=
rote:
> Hi,
>
> Since meta-fsl-ppc:s git daemon(git://git.freescale.com) was down, I
> experimented with adding the http reference as a mirror.
>
> MIRRORS_prepend =3D "\
> git://git.freescale.com/ppc/sdk/linux.git
> git://git.freescale.com/git/cgit.cgi/ppc/sdk/linux.git;protocol=3Dhttp \n=
 "
>
> Which failed and gave me:
> http://pastebin.com/5sTQ0eMC
>
> It shows bitbake trying to fetch something assumed to be created as a
> bitbake mirror, mangling the name.
>
> How would I go about doing above ?, getting it to failover to my own
> specified link ?

It appears to expect mirrors to be in a tarred up bare git repository.
Not sure if there is a way around this. You could do an override
somewhere:

SRC_URI_pn-linux-qoriq-sdk =3D "git://some/other/place"

-M=


