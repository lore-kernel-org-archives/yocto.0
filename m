Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2015CE00C10; Wed, 11 May 2016 15:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4F52FE00B04
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 15:29:06 -0700 (PDT)
Received: (qmail 24497 invoked by uid 1003); 11 May 2016 22:29:05 -0000
Received: from unknown (HELO ?192.168.1.38?) (philip@opensdr.com@66.87.80.207)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	11 May 2016 22:29:05 -0000
To: Ann Thornton <ann.thornton@nxp.com>, Paul Knopf <pknopf@medxchange.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CABfz71d-VJ+x5g6b0hW2zfROCVooNqcHnvYSZARj1mz5x_aA6Q@mail.gmail.com>
	<HE1PR0401MB1802B975ADD6AF65A653B81786720@HE1PR0401MB1802.eurprd04.prod.outlook.com>
From: Philip Balister <philip@balister.org>
Message-ID: <0817120c-5798-53c1-c5ae-efe98a7362e6@balister.org>
Date: Wed, 11 May 2016 18:29:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0401MB1802B975ADD6AF65A653B81786720@HE1PR0401MB1802.eurprd04.prod.outlook.com>
Subject: Re: meta-fsl-bsp-release on krogoth
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2016 22:29:09 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 05/11/2016 03:01 PM, Ann Thornton wrote:
> Hi Paul,
>  Thanks for the interest!  It will be out when the next new silicon is released.  We are working on it but it won’t be soon.

What about existing customers? People really needs stable branches to
support products. In 6 months there is a new release, so if I had new
silicon, I would support it for that release and make sure existing
customers had a stable base to work from.

Philip

>   Ann Thornton
> Software Engineer
> NXP Semiconductors
> 6501 William Cannon Drive West
> Austin, Texas  78735
> USA
> Email: Ann.Thornton@nxp.com
> 
> 
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Paul Knopf
> Sent: Wednesday, May 11, 2016 9:43 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] meta-fsl-bsp-release on krogoth
> 
> When will meta-fsl-bsp-release add support for krogoth?
> http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/refs/
> 
> Current branches are:
> daisy_3.10.53-1.1.0_GA<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.0_GA>
> 
> qt5everywhere: Update SRCREV and License to fix configure problems<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.0_GA>
> 
> Lauren Post
> 
> 13 months
> 
> daisy_3.10.53-1.1.1_patch<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.1_patch>
> 
> qt5everywhere: Update SRCREV and License to fix configure problems<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.1_patch>
> 
> Lauren Post
> 
> 13 months
> 
> daisy_3.10.53-1.1.2_patch<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=daisy_3.10.53-1.1.2_patch>
> 
> qt5everywhere: Update SRCREV and License to fix configure problems<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=daisy_3.10.53-1.1.2_patch>
> 
> Lauren Post
> 
> 13 months
> 
> dizzy_3.14.28-1.0.0_GA<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dizzy_3.14.28-1.0.0_GA>
> 
> qtsystems: Fix fetch location and change bluez dependency<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dizzy_3.14.28-1.0.0_GA>
> 
> Lauren Post
> 
> 13 months
> 
> dizzy_3.14.28-1.0.1_patch<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dizzy_3.14.28-1.0.1_patch>
> 
> imx-gpu-viv: Upgrade sfp to 5.0.11.p4.5<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dizzy_3.14.28-1.0.1_patch>
> 
> Neena Busireddy
> 
> 12 months
> 
> dora_3.10.17-1.0.0_GA<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.0_GA>
> 
> evtest: Use version in bbappend<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.0_GA>
> 
> Lauren Post
> 
> 15 months
> 
> dora_3.10.17-1.0.1<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.1>
> 
> README: Update with information about 3.10.17-1.0.1<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.1>
> 
> Lauren Post
> 
> 15 months
> 
> dora_3.10.17-1.0.2<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.2>
> 
> gpu-viv: Add 1.0.2 sfp version by commit 96e9db0<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.2>
> 
> Jun Zhu
> 
> 15 months
> 
> dora_3.10.17-1.0.3<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=dora_3.10.17-1.0.3>
> 
> README: Update version info<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=dora_3.10.17-1.0.3>
> 
> Lauren Post
> 
> 7 months
> 
> fido_3.14.28_7D_alpha<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.28_7D_alpha>
> 
> linux-imx: Update to commit a34e259cc0a4e86ccb993c947991d2823d81eb14<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.28_7D_alpha>
> 
> Jun Zhu
> 
> 12 months
> 
> fido_3.14.38_6QP_beta<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6QP_beta>
> 
> EULA: Add latest EULA bound with proprietary packages<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6QP_beta>
> 
> Lauren Post
> 
> 10 months
> 
> fido_3.14.38_6QP_ga<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6QP_ga>
> 
> imx-gpu-viv: Upgrade sfp package to 5.0.11.p7.1<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6QP_ga>
> 
> Neena Busireddy
> 
> 8 months
> 
> fido_3.14.38_6UL7D_beta<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL7D_beta>
> 
> simg2img: Update as adding Apache2.0 license copyright file<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL7D_beta>
> 
> Jun Zhu
> 
> 10 months
> 
> fido_3.14.38_6UL_ga<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL_ga>
> 
> linux-imx: Add protocol git to KERNEL_SRC<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL_ga>
> 
> Lauren Post
> 
> 8 months
> 
> fido_3.14.38_6UL_patch<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.38_6UL_patch>
> 
> README: Update version info<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.38_6UL_patch>
> 
> Lauren Post
> 
> 7 months
> 
> fido_3.14.52_1.1.0_ga<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=fido_3.14.52_1.1.0_ga>
> 
> linxu-imx-mfgtool: Update version to 1.1.1<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=fido_3.14.52_1.1.0_ga>
> 
> Lauren Post
> 
> 2 days
> 
> jethro_4.1.15-1.0.0_ga<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/?h=jethro_4.1.15-1.0.0_ga>
> 
> README: Update version to 4.1.15-1.1.1<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/commit/?h=jethro_4.1.15-1.0.0_ga>
> 
> Lauren Post
> 
> 4 weeks
> 
> master<http://git.freescale.com/git/cgit.cgi/imx/meta-fsl-bsp-release.git/log/>
> 
> 
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com<mailto:pknopf@medxchange.com>
> 
> 
> 

