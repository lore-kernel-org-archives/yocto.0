Return-Path: <hal.martin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9273E00655; Sat, 26 Jul 2014 12:38:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hal.martin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8FEE004D1
	for <yocto@yoctoproject.org>; Sat, 26 Jul 2014 12:38:56 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id a1so5604459wgh.35
	for <yocto@yoctoproject.org>; Sat, 26 Jul 2014 12:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jf9g4jDm187FAg+qUMchoBnTVre47AXPA04w2gyjcV0=;
	b=Npteg525JY57JNdFxXRy8Y/vaeMfgS2QxZDuFsgQ/W7dQwOnAjJVeSW0mC8lm2Tjix
	5Ik6EuC3ZAdLyoHeuiuma7xu7gE7DHpBAnhmhQF/hsw+CYcZQtkhDy8EffrbYoSGZI+H
	Z0h4rt1Mpk3fvN4uWFGJLwxuAV+gd3j48fVqu2Y/fpoNbj1oMAEu7b/TMauVWOp7H1cT
	VNiarMN+BYJ1DKW97vp0LFfquFUisb+TRbTSzVF5J9gkqpl9dG1XAYwoLE3rk1VReZwN
	RFnucVaIs5PDv9wwv8mSglTha6ibs3qHTiWYtl4AXa7qluKizomBtxnvdHuOdetCfyHJ
	N5wg==
MIME-Version: 1.0
X-Received: by 10.180.11.206 with SMTP id s14mr5587471wib.27.1406403536120;
	Sat, 26 Jul 2014 12:38:56 -0700 (PDT)
Received: by 10.217.104.132 with HTTP; Sat, 26 Jul 2014 12:38:56 -0700 (PDT)
Date: Sat, 26 Jul 2014 21:38:56 +0200
Message-ID: <CAHkvJJLac=B6M6_+Uqbso22pEkDeFNbrmNs4u4P-9v6=3P1PGA@mail.gmail.com>
From: Hal Martin <hal.martin@gmail.com>
To: yocto@yoctoproject.org
Subject: GStreamer from HTTP source
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
X-List-Received-Date: Sat, 26 Jul 2014 19:39:00 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to play live TV on a Wandboard Dual. I have a RTL2832U
DVB-T tuner and I'm using the tvheadend to manage tuning and capture.
I can use VLC on my laptop to play live TV, but I'm not having any
luck getting the Wandboard to play live TV.

gplay doesn't support HTTP streams and gst-launch fails to play the
stream. The totem recipe in open embedded is really old and doesn't
seem to be working, so I'm not sure what I can use to play an HTTP (or
HTSP) stream.

Any suggestions would be greatly appreciated. Apologies if this is a
repeat question, I searched the list archives and couldn't find
anything relevant.

Thanks,
Hal

# gst-launch souphttpsrc
location=http://localhost:9981/stream/channelid//29 ! mpegtsdemux
name=ts ts. ! queue ! vpudec ! mfw_v4lsink sync=false ts. ! queue  !
beepdec ! alsasink sync=false -vvv

MFW_GST_V4LSINK_PLUGIN 3.0.11 build on Jul 12 2014 03:42:13.
Setting pipeline to PAUSED ...
[INFO]  Product Info: i.MX6Q/D/S
vpudec versions :)
        plugin: 3.0.11
        wrapper: 1.0.46(VPUWRAPPER_ARM_LINUX Build on Jul 12 2014 03:21:38)
        vpulib: 5.4.23
        firmware: 3.1.1.46056
Pipeline is PREROLLING ...
ERROR: from element /GstPipeline:pipeline0/GstMpegTSDemux:ts: Could
not determine type of stream.
Additional debug info:
/var/lib/jenkins/jobs/yocto/workspace/fsl-community-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/gst-plugins-bad/0.10.23-r4/gst-plugins-bad-0.10.23/gst/mpegdemux/gstmpegtsdemux.c(2931):
gst_mpegts_demux_sink_event ():
/GstPipeline:pipeline0/GstMpegTSDemux:ts:
No valid streams found at EOS
ERROR: pipeline doesn't want to preroll.
Setting pipeline to NULL ...
Total rendered:0
Freeing pipeline ...
[--->FINALIZE v4l_sink

