Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA5C7E009CF; Thu, 16 Mar 2017 03:14:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from nov-007-i457.relay.mailchannels.net
	(nov-007-i457.relay.mailchannels.net [46.232.183.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA5B6E00953
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 03:14:34 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id ADACA124039;
	Thu, 16 Mar 2017 10:14:31 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.126.49])
	by relay.mailchannels.net (Postfix) with ESMTPA id 3DB69121CE6;
	Thu, 16 Mar 2017 10:14:31 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.55.158])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.32); Thu, 16 Mar 2017 10:14:31 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Whistle-Spill: 39832fe603643271_1489659271559_271703161
X-MC-Loop-Signature: 1489659271559:3525410160
X-MC-Ingress-Time: 1489659271559
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:62337 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1coSQP-000OIC-Ov; Thu, 16 Mar 2017 11:14:30 +0100
Date: Thu, 16 Mar 2017 10:14:27 +0000
From: Paul Barker <pbarker@toganlabs.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Message-ID: <20170316101427.2b406e44@host0.betafive.co.uk>
In-Reply-To: <20170315201844.26804-1-fabien.lahoudere@collabora.co.uk>
References: <20170315201844.26804-1-fabien.lahoudere@collabora.co.uk>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=2.0
X-AuthUser: pbarker@toganlabs.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] Remove orphan bbappend
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
X-List-Received-Date: Thu, 16 Mar 2017 10:14:38 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 15 Mar 2017 21:18:44 +0100
Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:

> gstreamer1.0-omx_1.2.0.bb and gstreamer1.0-omx_git.bb have been removed
> from poky on master branch, so related bbappend should be removed.
> 
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> ---
>  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend              | 14 --------------
>  recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend | 13 -------------
>  2 files changed, 27 deletions(-)
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> 
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> deleted file mode 100644
> index 49ba376..0000000
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -#
> -# Need to make this conditional to gstreamer1
> -#
> -SRC_URI_append_rpi = " \
> -             file://0001-config-files-path.patch \
> -             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
> -             file://0002-fix-decoder-flushing.patch \
> -             file://0003-no-timeout-on-get-state.patch \
> -             file://0004-Properly-handle-drain-requests-while-flushing.patch \
> -             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> -             file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
> -"
> -
> -FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> deleted file mode 100644
> index 9bcc446..0000000
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -#
> -# Need to make this conditional to gstreamer1
> -#
> -SRC_URI_append_rpi = " \
> -             file://0001-config-files-path.patch \
> -             file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
> -             file://0003-fix-decoder-flushing.patch \
> -             file://0003-no-timeout-on-get-state.patch \
> -             file://0004-Properly-handle-drain-requests-while-flushing.patch \
> -             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> -"
> -
> -FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"

Khem already has a patch staged for this which also drops the patch
files themselves:
https://github.com/kraj/meta-raspberrypi/commit/ff914ff62267336a602c3dc96e959900795f5617

Thanks,
Paul

