Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F8CE0161D
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:07:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2013 06:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="399711502"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.20])
	by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2013 06:07:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2013 14:07:01 +0100
Message-Id: <042d9aa9455c3288247526edbd9a2ae56eee5675.1379941403.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1379941403.git.paul.eggleton@linux.intel.com>
References: <cover.1379941403.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 2/4] mediatomb: add support for building against libav
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
X-List-Received-Date: Mon, 23 Sep 2013 13:07:23 -0000

Add a Debian patch to support building mediatomb against libav.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../mediatomb/files/libav_0.7_support.patch        | 70 ++++++++++++++++++++++
 recipes-multimedia/mediatomb/mediatomb_0.12.1.bb   |  3 +-
 2 files changed, 72 insertions(+), 1 deletion(-)
 create mode 100644 recipes-multimedia/mediatomb/files/libav_0.7_support.patch

diff --git a/recipes-multimedia/mediatomb/files/libav_0.7_support.patch b/recipes-multimedia/mediatomb/files/libav_0.7_support.patch
new file mode 100644
index 0000000..59c0935
--- /dev/null
+++ b/recipes-multimedia/mediatomb/files/libav_0.7_support.patch
@@ -0,0 +1,70 @@
+Fix mediatomb to build against libav 0.7+
+
+Patch originally from Debian.
+
+Upstream-Status: Pending
+
+=== modified file 'src/metadata/ffmpeg_handler.cc'
+--- old/src/metadata/ffmpeg_handler.cc	2010-08-25 17:07:03 +0000
++++ new/src/metadata/ffmpeg_handler.cc	2011-05-19 04:33:32 +0000
+@@ -89,6 +89,33 @@
+ 
+ 	Ref<StringConverter> sc = StringConverter::m2i();
+     
++	/* Tabs are 4 characters here */
++	typedef struct {const char *avname; metadata_fields_t field;} mapping_t;
++	static const mapping_t mapping[] =
++	{
++		{"title",   M_TITLE},
++		{"artist",  M_ARTIST},
++		{"album",   M_ALBUM},
++		{"date",    M_DATE},
++		{"genre",   M_GENRE},
++		{"comment", M_DESCRIPTION},
++		{"track",   M_TRACKNUMBER},
++		{NULL,      M_MAX},
++	};
++
++	if (!pFormatCtx->metadata)
++		return;
++	for (const mapping_t *m = mapping; m->avname != NULL; m++)
++	{
++		AVMetadataTag *tag = NULL;
++		tag = av_metadata_get(pFormatCtx->metadata, m->avname, NULL, 0);
++		if (tag && tag->value && tag->value[0])
++		{
++			log_debug("Added metadata %s: %s\n", m->avname, tag->value);
++			item->setMetadata(MT_KEYS[m->field].upnp, sc->convert(tag->value));
++		}
++	}
++	/* Old algorithm (doesn't work with libav >= 0.7)
+ 	if (strlen(pFormatCtx->title) > 0) 
+     {
+ 	    log_debug("Added metadata title: %s\n", pFormatCtx->title);
+@@ -131,6 +158,7 @@
+         item->setMetadata(MT_KEYS[M_TRACKNUMBER].upnp, 
+                           sc->convert(String::from(pFormatCtx->track)));
+ 	}
++	*/
+ }
+ 
+ // ffmpeg library calls
+@@ -178,7 +206,7 @@
+ 	for(i=0; i<pFormatCtx->nb_streams; i++) 
+     {
+ 		AVStream *st = pFormatCtx->streams[i];
+-		if((st != NULL) && (videoset == false) && (st->codec->codec_type == CODEC_TYPE_VIDEO))
++		if((st != NULL) && (videoset == false) && (st->codec->codec_type == AVMEDIA_TYPE_VIDEO))
+         {
+             if (st->codec->codec_tag > 0)
+             {
+@@ -209,7 +237,7 @@
+                 *y = st->codec->height;
+ 			}
+ 		} 
+-		if(st->codec->codec_type == CODEC_TYPE_AUDIO) 
++		if(st->codec->codec_type == AVMEDIA_TYPE_AUDIO) 
+         {
+ 			// Increase number of audiochannels
+ 			audioch++;
+
diff --git a/recipes-multimedia/mediatomb/mediatomb_0.12.1.bb b/recipes-multimedia/mediatomb/mediatomb_0.12.1.bb
index 04191e2..4bd9917 100644
--- a/recipes-multimedia/mediatomb/mediatomb_0.12.1.bb
+++ b/recipes-multimedia/mediatomb/mediatomb_0.12.1.bb
@@ -3,12 +3,13 @@ HOMEPAGE = "http://mediatomb.cc/"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0b609ee7722218aa600220f779cb5035 \
                     file://src/main.cc;beginline=14;endline=25;md5=ba9c4cf20a63e18b1626c4c9d794635a"
-DEPENDS = "expat ffmpeg sqlite3 libexif js zlib file taglib ffmpegthumbnailer curl"
+DEPENDS = "expat libav sqlite3 libexif js zlib file taglib ffmpegthumbnailer curl"
 PR = "r4"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/mediatomb/mediatomb-${PV}.tar.gz \
 	   file://youtube_warning.patch \
 	   file://size_t_header.patch \
+	   file://libav_0.7_support.patch \
 	   file://init \
 	   file://default \
 	   file://config.xml \
-- 
1.8.1.2


