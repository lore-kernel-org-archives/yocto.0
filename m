Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032F9E006CD; Tue,  4 Apr 2017 10:20:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.222.33 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from chameleon.ash.relay.mailchannels.net
	(chameleon.ash.relay.mailchannels.net [23.83.222.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A90FDE00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 10:20:45 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 38D45364A3B;
	Tue,  4 Apr 2017 17:14:10 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.135.247])
	by relay.mailchannels.net (Postfix) with ESMTPA id AE8C73647FA;
	Tue,  4 Apr 2017 17:14:09 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.108.37])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.37); Tue, 04 Apr 2017 17:14:10 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Unite-Eyes: 5af64e3f70c6641b_1491326050092_2853899404
X-MC-Loop-Signature: 1491326050092:3776933248
X-MC-Ingress-Time: 1491326050091
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:51668 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1cvS1u-003S2s-Dl; Tue, 04 Apr 2017 19:14:10 +0200
Date: Tue, 4 Apr 2017 18:14:02 +0100
From: Paul Barker <pbarker@toganlabs.com>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170404181402.7e0cc385@host0.betafive.co.uk>
In-Reply-To: <1491315483-24345-1-git-send-email-gizero@gmail.com>
References: <1491315483-24345-1-git-send-email-gizero@gmail.com>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=5.0
X-AuthUser: pbarker@toganlabs.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: fix invalid shell variable name
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
X-List-Received-Date: Tue, 04 Apr 2017 17:20:58 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue,  4 Apr 2017 16:18:03 +0200
Andrea Galbusera <gizero@gmail.com> wrote:

> Commit da32aac introduced an invalid shell variable name in do_deploy():
> according to bash manpage variable names cannot contain dots. Replace
> dot with underscore to fix it.
> 
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 8adc938..af55983 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -112,7 +112,7 @@ do_deploy() {
>      fi
>  
>      # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.waveshare.com/7inch-HDMI-LCD-C.htm)
> -    if [ "${WAVESHARE_1024X600_C_2.1}" = "1" ]; then
> +    if [ "${WAVESHARE_1024X600_C_2_1}" = "1" ]; then
>          echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "max_usb_current=1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "hdmi_group=2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt

Commit da32aac also added a note to the readme file which needs
changing to match the new name, otherwise looks good.

