Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe006.messaging.microsoft.com
	[213.199.154.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9666BE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 13:22:57 -0800 (PST)
Received: from mail27-am1-R.bigfish.com (10.3.201.232) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.23; Thu, 16 Feb 2012 21:22:56 +0000
Received: from mail27-am1 (localhost [127.0.0.1])	by mail27-am1-R.bigfish.com
	(Postfix) with ESMTP id 6377726050C;
	Thu, 16 Feb 2012 21:22:56 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail27-am1 (localhost.localdomain [127.0.0.1]) by mail27-am1
	(MessageSwitch) id 1329427374558773_17145;
	Thu, 16 Feb 2012 21:22:54 +0000 (UTC)
Received: from AM1EHSMHS013.bigfish.com (unknown [10.3.201.254])	by
	mail27-am1.bigfish.com (Postfix) with ESMTP id 45CCB1E0045;
	Thu, 16 Feb 2012 21:22:54 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS013.bigfish.com
	(10.3.207.151) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Feb 2012 21:22:52 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.244]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Thu, 16 Feb 2012 15:22:50 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Hollis Blanchard <hollis_blanchard@mentor.com>
Thread-Topic: [yocto] trouble using a local kernel repo
Thread-Index: AQHM7PEi1zPgH4JkF0iwZMq/EertIw==
Date: Thu, 16 Feb 2012 21:22:49 +0000
Message-ID: <CAEsOVNfdiouZJ=qvN_GLBoLtJojHvdnXzVUoL674KN1LnNudYQ@mail.gmail.com>
References: <4F3D6431.70505@mentor.com>
In-Reply-To: <4F3D6431.70505@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 21:22:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F0BF37678A672A4182520A26E8EAB31C@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2012 at 8:16 PM, Hollis Blanchard
<hollis_blanchard@mentor.com> wrote:
> I'm trying to figure out how to use a cloned/modified copy of the
> linux-yocto-3.0 git repository. Here's what I did:
>
> * cloned linux-yocto-3.0.git and committed to the meta branch
> * specified my new repo:
>
> --- a/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> @@ -18,12 +18,12 @@ SRCREV_machine_qemuppc ?=3D
> "15fd748017f0849138ff4b47d73f6866fa26cfe8"
> =A0SRCREV_machine_qemux86 ?=3D "8f74a4339b3dc029fafff0ba7d88d6dc950d4b31"
> =A0SRCREV_machine_qemux86-64 ?=3D "610c5a62daeda033755b0b7bfcb3e2cad5c76f=
3f"
> =A0SRCREV_machine ?=3D "5df0b4c2538399aed543133b3855f809adf08ab8"
> -SRCREV_meta ?=3D "b78a519841bd8b477cad599af8d38df6760445c1"
> +SRCREV_meta ?=3D "7af8d6f8769335b79c1b76c8bded256b8f909c74"
>
> =A0PR =3D "r3"
> =A0PV =3D "${LINUX_VERSION}+git${SRCPV}"
>
> -SRC_URI =3D
> "git://git.yoctoproject.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1=
;branch=3D${KBRANCH},meta
> +SRC_URI =3D
> "git:///mnt/linux-yocto-3.0.git;protocol=3Dfile;nocheckout=3D1;branch=3D$=
{KBRANCH},meta;name=3Dmachi
>
> =A0COMPATIBLE_MACHINE =3D "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
>
> * bitbake -c clean virtual/kernel&& =A0bitbake virtual/kernel
>
>
> What I get is this:
> ERROR: Function failed: do_validate_branches (see
> /mnt/poky.git/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3=
.0.18+git2+7af8d6f8769335b79c1b76c8bded256b8f909c74_1+368e38c673ffac8b37fc2=
a2d4c1e4a1e6f8abf19-r3/temp/log.do_validate_branches.5342
> for further information)
>
> There is no more information in that file. It contains only the exact
> message I already got on the console ("ERROR: Function failed ...").
>
> What am I missing?
> http://www.yoctoproject.org/docs/current/kernel-manual/kernel-manual.html
> was not helpful.

Not much help but you can look in:

meta/classes/kernel-yocto.bbclass:do_validate_branches() {

And try to figure out which step could return an error code to the shell.

-M=


