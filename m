Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC1D2E00CD0; Tue,  6 Dec 2016 07:02:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A398EE00BB1
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 07:02:24 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 41DE968A01B; Tue,  6 Dec 2016 15:02:23 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D9F8168A019;
	Tue,  6 Dec 2016 15:02:20 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9528A674028F;
	Tue,  6 Dec 2016 16:02:20 +0100 (CET)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
Date: Tue, 6 Dec 2016 16:02:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't hard wire use of userland
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
X-List-Received-Date: Tue, 06 Dec 2016 15:02:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-12-06 13:45, Herve Jourdain wrote:
> Hi Gary,
>
> But dispmanx is really only provided by userland, it does not exist in other
> flavors of egl/libgles.
> Actually, dispmanx should not be selected in PACKAGECONFIG if userland is
> not in use for EGL/GLES.

Fine, but I'm looking for a solution where I can choose to use vc-graphics-hardfp
so X11 works again and I can also have gst-player which depends on gstreamer-1.0-bad

Any ideas?

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Gary Thomas
> Sent: mardi 6 décembre 2016 10:34
> To: yocto@yoctoproject.org
> Cc: Gary Thomas <gary@mlbassoc.com>
> Subject: [yocto] [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't
> hard wire use of userland
>
> Selection of the libgl packages should be by virtual/XXX.  Using 'userland'
> directly can lead to build conflicts and make the system unbuildable.
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git
> a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index 7292f90..432869d 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -9,4 +9,4 @@ PACKAGECONFIG_GL_rpi = "egl gles2"
>
>  PACKAGECONFIG_append_rpi = " hls libmms faad"
>
> -PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"
> +PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,virtual/egl
> virtual/libgles2"
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

