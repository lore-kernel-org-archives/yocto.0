Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7507E01303
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 19:42:12 -0700 (PDT)
Received: from mail132-ch1-R.bigfish.com (10.43.68.233) by
	CH1EHSOBE004.bigfish.com (10.43.70.54) with Microsoft SMTP Server id
	14.1.225.23; Fri, 2 Nov 2012 02:42:12 +0000
Received: from mail132-ch1 (localhost [127.0.0.1])	by
	mail132-ch1-R.bigfish.com (Postfix) with ESMTP id 1CCB63004D9	for
	<yocto@yoctoproject.org>; Fri,  2 Nov 2012 02:42:12 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I936eI1432Izz1de0h1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail132-ch1 (localhost.localdomain [127.0.0.1]) by mail132-ch1
	(MessageSwitch) id 1351824129681511_3316;
	Fri,  2 Nov 2012 02:42:09 +0000 (UTC)
Received: from CH1EHSMHS031.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.251])	by mail132-ch1.bigfish.com (Postfix) with ESMTP id
	A3A502200A1	for <yocto@yoctoproject.org>;
	Fri,  2 Nov 2012 02:42:09 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS031.bigfish.com
	(10.43.70.31) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 2 Nov 2012 02:42:09 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.103]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0318.003;
	Fri, 2 Nov 2012 02:42:08 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Guo Chunrong-B40290 <B40290@freescale.com>, Luo Zhenhua-B19537
	<B19537@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc-private master]
	tcf-qoriqdbg_4.0.0.105390.bb: task do_compile:failed
Thread-Index: AQHNuKOn07qYOzaiOUSIANZYqwWq/w==
Date: Fri, 2 Nov 2012 02:42:08 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A749E9A@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1351655982-5284-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1351655982-5284-1-git-send-email-b40290@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc-private master] tcf-qoriqdbg_4.0.0.105390.bb: task do_compile:failed
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
X-List-Received-Date: Fri, 02 Nov 2012 02:42:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <474CF40CDDAAA746BAE2C19D21A89106@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2012 at 10:59 PM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>       fix error:
>       ./core.internal/socketSupport.cpp: In function 'int tcf::closesocke=
t_(int)':
>       | ./core.internal/socketSupport.cpp:69:12: error: '::close' has not=
 been declared
>       | make: *** [objs/tcf.qoriqdbg.agent.target/./core.internal/socketS=
upport.o] Error 1
>       | make: *** Waiting for unfinished jobs....
>       | ./core.internal/tcpTransport.cpp: In member function 'tcf::tcf_er=
ror
>         tcf::TCPTransport::createLocalPeer(const char*, tcf::IPeer**)':
>       | ./core.internal/tcpTransport.cpp:590:66: error: 'gethostname' was=
 not declared in this scope
>       | make: *** [objs/tcf.qoriqdbg.agent.target/./core.internal/tcpTran=
sport.o] Error 1
>       | ERROR: oe_runmake failed
>       | ERROR: Function failed: do_compile
>
> Signed-off-by: Chunrong Guo <b40290@freescale.com>
> ---
>  .../files/add-include-in-socketSupport.patch       |   10 ++++++++++
>  .../files/add-include-in-tcpTransport.patch        |   11 +++++++++++
>  .../tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb      |    4 +++-
>  3 files changed, 24 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-bad/tcf-qoriqdbg/files/add-include-in-socketS=
upport.patch
>  create mode 100644 recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTran=
sport.patch

This is a patch to a private layer and should not go upstream.

-M

>
> diff --git a/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.=
patch b/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch
> new file mode 100644
> index 0000000..f969d47
> --- /dev/null
> +++ b/recipes-bad/tcf-qoriqdbg/files/add-include-in-socketSupport.patch
> @@ -0,0 +1,10 @@
> +--- tcf-qoriqdbg-4.0.0.105390-r2/tcf-qoriqdbg-4.0.0.105390/core.internal=
/socketSupport.cpp     2011-10-07 18:15:25.000000000 -0500
> ++++ tcf-qoriqdbg-4.0.0.105390/core.internal/socketSupport.cpp  2012-10-3=
0 05:27:20.627395526 -0500
> +@@ -46,6 +46,7 @@
> + // Linux interfaces for getifaddrs/freeifaddrs
> + #include <sys/types.h>
> +
> ++#include <unistd.h>
> + // To disable the nagle algorithm
> + #include <netinet/tcp.h>
> +
> diff --git a/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.p=
atch b/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch
> new file mode 100644
> index 0000000..945b786
> --- /dev/null
> +++ b/recipes-bad/tcf-qoriqdbg/files/add-include-in-tcpTransport.patch
> @@ -0,0 +1,11 @@
> +--- tcf-qoriqdbg-4.0.0.105390-r2/tcf-qoriqdbg-4.0.0.105390/core.internal=
/tcpTransport.cpp      2012-04-05 22:16:07.000000000 -0500
> ++++ tcf-qoriqdbg-4.0.0.105390/core.internal/tcpTransport.cpp   2012-10-3=
0 20:42:11.648654005 -0500
> +@@ -35,7 +35,7 @@
> + #include "channelImpl.h"
> + #include "socketSupport.h"
> + #include "socketTrace.h"
> +-
> ++#include <unistd.h>
> + #include <sstream>
> + #include <iomanip>
> + #include <cerrno>
> diff --git a/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb b/reci=
pes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
> index 77523a1..0450306 100644
> --- a/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
> +++ b/recipes-bad/tcf-qoriqdbg/tcf-qoriqdbg_4.0.0.105390.bb
> @@ -1,10 +1,12 @@
>  DESCRIPTION =3D "SPID based TCF agent"
>  SECTION =3D "tcf-qoriqdbg"
>  LICENSE =3D "Freescale EULA"
> -PR =3D "r2"
> +PR =3D "r3"
>  LIC_FILES_CHKSUM =3D "file://Makefile;beginline=3D6;endline=3D17;md5=3D7=
5c98af1c2fa46281fbdac337244d196"
>
>  SRC_URI =3D "file://${PN}-${PV}.tar.bz2 \
> +           file://add-include-in-tcpTransport.patch \
> +           file://add-include-in-socketSupport.patch  \
>  "
>  SRC_URI[md5sum] =3D "f11b99b489030d9f35573e91c4404e03"
>  SRC_URI[sha256sum] =3D "3250e2951c3b57bfc3dc9e1174e38555e75682ad90831720=
a7c882093c119f2b"
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


