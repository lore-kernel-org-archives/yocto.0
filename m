Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7233FE006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 08:10:33 -0700 (PDT)
Received: from mail146-ch1-R.bigfish.com (10.43.68.249) by
	CH1EHSOBE011.bigfish.com (10.43.70.61) with Microsoft SMTP Server id
	14.1.225.23; Mon, 25 Jun 2012 15:08:55 +0000
Received: from mail146-ch1 (localhost [127.0.0.1])	by
	mail146-ch1-R.bigfish.com (Postfix) with ESMTP id 659111002B8;
	Mon, 25 Jun 2012 15:08:54 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz709fI98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail146-ch1 (localhost.localdomain [127.0.0.1]) by mail146-ch1
	(MessageSwitch) id 1340636931859105_19266;
	Mon, 25 Jun 2012 15:08:51 +0000 (UTC)
Received: from CH1EHSMHS013.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail146-ch1.bigfish.com (Postfix) with ESMTP id
	CFA802A0043;	Mon, 25 Jun 2012 15:08:51 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS013.bigfish.com
	(10.43.70.13) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 25 Jun 2012 15:08:51 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Mon, 25 Jun 2012 10:10:28 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] Sourcing a shell script within a bbclass
Thread-Index: AQHNUuSnjylpH/eUkECJxwom/sAqbA==
Date: Mon, 25 Jun 2012 15:10:27 +0000
Message-ID: <CAEsOVNe2SUJUGvLWRBCqNkQXUiq2D6-1WtQzO_9Si2AMcUCJoA@mail.gmail.com>
References: <4CCCB628-7F57-4669-877F-751C2F35E1C7@gmail.com>
	<E9D68096-46E9-4B11-B097-8A217D28B07F@gmail.com>
In-Reply-To: <E9D68096-46E9-4B11-B097-8A217D28B07F@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Sourcing a shell script within a bbclass
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
X-List-Received-Date: Mon, 25 Jun 2012 15:10:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B1ED07C8797E2A49B44971436B7AC079@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 24, 2012 at 10:20 AM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
> Hi,
>
> On Jun 24, 2012, at 6:24 PM, Elvis Dowson wrote:
>
> How can I source a shell script within a bbclass? For example, in
> meta-xilinx/classes/xilinx-boot.bbclass, I need to source a script file
> called settings64.sh, which setups the environment variables for the Xili=
nx
> ISE 14.1 design tools, in order to generate a system ace image file.
>
> For the following code snippet:
>
> if =A0 [ "${XILINX_VER}" \> "14" ]; then
> bbnote "XILINX_VER ${XILINX_VER}, script location
> ${XILINX_LOC}/${EDK_SCRIPT}"
> source ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
> fi

ubuntu likes the . operator

> . ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}

-M

>
> I get the following error:
>
> DEBUG: Executing python function sstate_task_prefunc
> DEBUG: Python function sstate_task_prefunc finished
> DEBUG: Executing shell function do_deploy
> ERROR: Function failed: do_deploy (see
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.=
01-r16/temp/log.do_deploy.15616
> for further information)
> NOTE: Deploying uboot elf image to /project/xilinx-ml507
> NOTE: Xilinx design tools installed in /tool/xilinx/14.1/ISE_DS
> NOTE: Generate system ace image
> NOTE: EDK_SCRIPT settings64.sh
> NOTE: XILINX_VER 14.1, script location
> /tool/xilinx/14.1/ISE_DS/settings64.sh
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.=
01-r16/temp/run.do_deploy.15616:
> 129:
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.=
01-r16/temp/run.do_deploy.15616:
> source: not found
>
> if I replace the source keyword with a . (dot)
>
> if =A0 [ "${XILINX_VER}" \> "14" ]; then
> bbnote "XILINX_VER ${XILINX_VER}, script location
> ${XILINX_LOC}/${EDK_SCRIPT}"
> . ${XILINX_LOC}/${EDK_SCRIPT} ${XILINX_LOC}
> fi
>
> it executes the scripts but gives the following error:
>
> NOTE: XILINX_VER 14.1, script location
> /tool/xilinx/14.1/ISE_DS/settings64.sh
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.=
01-r16/temp/run.do_deploy.7879:
> 12: [:
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/u-boot-xilinx-v2012.04.=
01-r16/temp/run.do_deploy.7879:
> unexpected operator
> . /tool/xilinx/14.1/ISE_DS/common/.settings64.sh
> /tool/xilinx/14.1/ISE_DS/common
> . /tool/xilinx/14.1/ISE_DS/EDK/.settings64.sh /tool/xilinx/14.1/ISE_DS/ED=
K
> . /tool/xilinx/14.1/ISE_DS/common/CodeSourcery/.settings64.sh
> /tool/xilinx/14.1/ISE_DS/common/CodeSourcery
> . /tool/xilinx/14.1/ISE_DS/PlanAhead/.settings64.sh
> /tool/xilinx/14.1/ISE_DS/PlanAhead
> . /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1/.settings64.sh
> /tool/xilinx/14.1/ISE_DS/../../Vivado/2012.1
> . /tool/xilinx/14.1/ISE_DS/ISE/.settings64.sh /tool/xilinx/14.1/ISE_DS/IS=
E
> . /tool/xilinx/14.1/ISE_DS/SysGen/.settings64.sh
> /tool/xilinx/14.1/ISE_DS/SysGen
>
>
> What should I do to source the settings64.sh file properly within the
> bbclass?
>
>
> The problem was because of Ubuntu 12.04 shell being configured by default=
 to
> use dash, instead of bash.
>
> After I reconfigured the shell to use bash using the command:
>
> $ sudo dpkg-reconfigure dash
>
> everything works fine. However, Yocto 1.2 defaults or assumes that the us=
er
> will use dash.
>
> Is there anyway I can fix this issue, so that the bbclass works for both
> dash and bash. Using the . (dot) to source the script doesn't seem to wor=
k,
> so I was wondering if there are any other workarounds that I can use to
> emulate bash's sourcing behaviour in dash.
>
> Best regards,
>
> Elvis Dowson
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


