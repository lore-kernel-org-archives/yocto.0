Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE8B0E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 10:58:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 10:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130374644"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 10:58:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <349bec4216096df2d42f0e9b2174e2937d80afd6.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<349bec4216096df2d42f0e9b2174e2937d80afd6.1333496206.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Apr 2012 12:57:28 -0500
Message-ID: <1333994248.2335.66.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/7] Cedartrail: Add new recipes for audio and video samples.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Apr 2012 17:58:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> This recipe adds sample Audio files and Video files
> for testing with pvr Acceleration driver.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   23 +++++++++++++++++++
>  .../video-samples/bigbuckbunny-ogg.bb              |   24 ++++++++++++++++++++
>  2 files changed, 47 insertions(+), 0 deletions(-)
>  create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
>  create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
> 
> diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
> new file mode 100644
> index 0000000..fd65cc7
> --- /dev/null
> +++ b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
> @@ -0,0 +1,23 @@
> +SUMMARY = "ogg file format music samples"
> +DESCRIPTION = "Installs ogg file format music samples in /home/Music dir"
> +
> +LICENSE = "CC-BY-3.0"
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
> +
> +DEPENDS += " " 
> +

Does this empty DEPENDS do anything?  Same thing in a couple other
places...

Tom


> +PR = "r0"
> +
> +SRC_URI = "http://downloads.yoctoproject.org/releases/media/music/ogg-CC-BY-3.0-music-samples-${PV}.tar.bz2 \
> +            "
> +
> +SRC_URI[md5sum] = "dc3dd4adca69996edaffe8828e1ee165"
> +SRC_URI[sha256sum] = "86381f8474d5ac2c80f54c951a8c22f67d352daa977341d3dfb4161e39ca3975"
> +
> +do_install() {
> +
> +install -d ${D}${base_prefix}/home/music
> +install -m 0644  ${WORKDIR}/ogg-CC-BY-3.0-music-samples-${PV}/*/*.ogg ${D}${base_prefix}/home/music
> +}
> +
> +FILES_${PN} += "${base_prefix}/home/music/*.ogg"
> diff --git a/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
> new file mode 100644
> index 0000000..036721c
> --- /dev/null
> +++ b/meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
> @@ -0,0 +1,24 @@
> +SUMMARY = "Big Buck Bunny video OGG sample "
> +DESCRIPTION = "Installs Big Buck Bunny Video OGG file samples in /home/video dir "
> +
> +LICENSE = "CC-BY-3.0"
> +LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/CC-BY-3.0;md5=dfa02b5755629022e267f10b9c0a2ab7"
> +
> +DEPENDS += " " 
> +
> +PR = "r0"
> +
> +SRC_URI = "http://blender-mirror.kino3d.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_stereo.ogg \
> +            "
> +
> +
> +SRC_URI[md5sum] = "576424c653da53e31b86c027e55758ae"
> +SRC_URI[sha256sum] = "785b09a585be55f81326a3fcef2cdeeb7ebbc33932b6305fd84209928df67f28"
> +
> +do_install() {
> +
> +install -d ${D}${base_prefix}/home/Videos
> +install -m 0644  ${WORKDIR}/*.ogg ${D}${base_prefix}/home/Videos
> +}
> +
> +FILES_${PN} += "${base_prefix}/home/Videos/*.ogg"



