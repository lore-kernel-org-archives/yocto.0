Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36F2CE0052B; Tue,  7 Mar 2017 04:07:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF512E0050B
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 04:07:28 -0800 (PST)
Received: from lap0 (unknown [IPv6:2a02:8084:983e:6c80:f2d5:bfff:fe15:444c])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2CBAB1720A4;
	Tue,  7 Mar 2017 13:07:25 +0100 (CET)
Date: Tue, 7 Mar 2017 12:07:24 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: "Maxin B. John" <maxin.john@intel.com>
Message-ID: <20170307120724.344b8587@lap0>
In-Reply-To: <1488814083-7886-1-git-send-email-maxin.john@intel.com>
References: <1488814083-7886-1-git-send-email-maxin.john@intel.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-omx: remove bbappend for version 1.2.0
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
X-List-Received-Date: Tue, 07 Mar 2017 12:07:33 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  6 Mar 2017 17:28:03 +0200
"Maxin B. John" <maxin.john@intel.com> wrote:

> OE-Core rev: aa06a18d59eb391d1a7ace9daa0681bdf8daf17f
> removed gstreamer1.0-omx_1.2.0 recipe.
> 
> Signed-off-by: Maxin B. John <maxin.john@intel.com>
> ---
>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
>  .../0001-config-files-path.patch                   | 137
> --------------------- .../0002-fix-decoder-flushing.patch
> |  16 --- .../0003-no-timeout-on-get-state.patch             |  16 ---
>  ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
>  ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
>  ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115
> ----------------- .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> |  14 --- 9 files changed, 493 deletions(-)
>  delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
> delete mode 100644
> recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend

I got a parse failure on all my scheduled builds last night. This patch
fixes the builds for me :)

Thanks,
Paul

