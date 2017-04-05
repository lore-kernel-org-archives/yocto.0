Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C7BE006CD; Tue,  4 Apr 2017 23:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [23.83.222.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cadetblue.ash.relay.mailchannels.net
	(cadetblue.ash.relay.mailchannels.net [23.83.222.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37119E00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 23:59:04 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 02003103B22;
	Wed,  5 Apr 2017 06:52:36 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.135.247])
	by relay.mailchannels.net (Postfix) with ESMTPA id 3291C10342C;
	Wed,  5 Apr 2017 06:52:35 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.82.168])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.37); Wed, 05 Apr 2017 06:52:35 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Wide-Eyed-Shoe: 604446977c886439_1491375155768_918872150
X-MC-Loop-Signature: 1491375155768:480376717
X-MC-Ingress-Time: 1491375155768
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:35745 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1cvenv-001XBb-6X; Wed, 05 Apr 2017 08:52:34 +0200
Date: Wed, 5 Apr 2017 07:52:28 +0100
From: Paul Barker <pbarker@toganlabs.com>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170405075228.4912cbd4@host0.betafive.co.uk>
In-Reply-To: <1491327350-31629-1-git-send-email-gizero@gmail.com>
References: <1491327350-31629-1-git-send-email-gizero@gmail.com>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=5.0
X-AuthUser: pbarker@toganlabs.com
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.com>
Subject: Re: [meta-raspberrypi][PATCH v2] rpi-config: fix invalid shell variable name
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
X-List-Received-Date: Wed, 05 Apr 2017 06:59:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue,  4 Apr 2017 19:35:50 +0200
Andrea Galbusera <gizero@gmail.com> wrote:

> Commit da32aac introduced an invalid shell variable name in do_deploy():
> according to bash manpage variable names cannot contain dots. Replace
> dot with underscore to fix it.
>=20
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>=20
> v2: also update README accordingly
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  README                                  | 2 +-
>  recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/README b/README
> index c58bc99..9fdd5eb 100644
> --- a/README
> +++ b/README
> @@ -247,7 +247,7 @@ List of currently supported models:
>  If you would like to use the Waveshare "C" 1024=C3=97600, 7 inch Capacit=
ive Touch
>  Screen LCD, HDMI interface (http://www.waveshare.com/7inch-HDMI-LCD-C.ht=
m)
>  Rev 2.1, please set the following in your local.conf
> -WAVESHARE_1024X600_C_2.1 =3D "1"
> +WAVESHARE_1024X600_C_2_1 =3D "1"
> =20
>  3.P. Enable UART
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
> index 8adc938..af55983 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -112,7 +112,7 @@ do_deploy() {
>      fi
> =20
>      # Waveshare "C" 1024x600 7" Rev2.1 IPS capacitive touch (http://www.=
waveshare.com/7inch-HDMI-LCD-C.htm)
> -    if [ "${WAVESHARE_1024X600_C_2.1}" =3D "1" ]; then
> +    if [ "${WAVESHARE_1024X600_C_2_1}" =3D "1" ]; then
>          echo "# Waveshare \"C\" 1024x600 7\" Rev2.1 IPS capacitive touch=
 screen" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "max_usb_current=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/con=
fig.txt
>          echo "hdmi_group=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.t=
xt

This fixes the build for me and looks good :)

