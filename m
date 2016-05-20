Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C710AE00C45; Fri, 20 May 2016 02:15:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CFEEE00BE7
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 02:14:56 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2609.sfr.fr (SMTP Server) with ESMTP id 7BC0F1C001C35;
	Fri, 20 May 2016 11:14:55 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2609.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 20 May 2016 11:14:53 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andrei Gherzan' <andrei@gherzan.ro>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
	<20160519145702.GE3601@resin.home>
In-Reply-To: <20160519145702.GE3601@resin.home>
Date: Fri, 20 May 2016 11:14:50 +0200
Message-ID: <03c501d1b278$1217bbe0$364733a0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwIzqYEmArTy4+eg4wX3sA==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Fri, 20 May 2016 09:15:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Andrei,

While I totally agree with that, the other lines above do not add the
space...
And I've been asked before to not modify the formatting - albeit that was in
a case of spaces replacing tabs, which is slightly different - which is why
I did this way.
Do you want me to do the modification only for my 2 lines, or also for the
other similar lines - while I'm at it...

Herve

-----Original Message-----
From: Andrei Gherzan [mailto:andrei@gherzan.ro] 
Sent: jeudi 19 mai 2016 16:57
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics
driver: add vc4-kms-v3d to the overlays

On Wed, May 18, 2016 at 08:21:16PM +0800, Herve Jourdain wrote:
> This patch series enables the support for the VC4 graphics driver from
Eric Anholt.
> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
> (This patch has a dependency on the patch that enables the support of
.dtbo overlay files)
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4bc8eb7..79e436d 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -19,6 +19,8 @@ PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft",
"1", "0", d)}"
>  PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0",
d)}"
>  PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0",
d)}"
>
> +VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1",
"0", d)}"
> +
>  inherit deploy
>
>  do_deploy() {
> @@ -102,6 +104,12 @@ do_deploy() {
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # VC4 Graphics support
> +    if [ "${VC4GRAPHICS}" = "1" ]; then
> +        echo "# Enable VC4 Graphics"
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=vc4-kms-v3d,cma-256"
>>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

NIT: space after >>

--
Andrei Gherzan


