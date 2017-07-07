Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C72E009C2; Fri,  7 Jul 2017 03:30:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62BE1E00718
	for <yocto@yoctoproject.org>; Fri,  7 Jul 2017 03:30:53 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id z78so20553061lff.0
	for <yocto@yoctoproject.org>; Fri, 07 Jul 2017 03:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=dywqBFAoR+LptDaJcusnFJ0f8ZwpMTuHTNJMtbhhExI=;
	b=lvS2pd5OeDGQhll6ilmjFnl3P0aNO/dmr7YlToqZdIDYtAz/ArjqkmXlNhZLMHvTsf
	SAojtvh5U8hkf+QOzAOAu4byppugFA+wrC9Wo4BwsZYmDaKoAqHPO44+WK1tqQNoyrsZ
	aonttiKbfI66kMaBovq5VCW5WwtNGoh6M6dveV7TDtjoAcjyGfmiWBnXa1PAoXQRj8aX
	GZy9am+7gRW2hJqAJ1JyzA40wREfR8IG3z5LR5CxjD7l3ftN64L3d8wm5pLAqUj+c4Td
	EvNN+QZR03cjuDr5x029c4THajkH3lq6u0QxHCJt8kPcb6eMPyi1nh1z+N3OcIwm75DF
	IL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dywqBFAoR+LptDaJcusnFJ0f8ZwpMTuHTNJMtbhhExI=;
	b=OitppirSqmCqqC1hxMpvmtTmLRh6zF9I1z/7j62uu5EqZCMcF8ccFvdvXhjbmhmGna
	jxgjUn883W3/ws27pXEOAWLLhMJqrTqjSl6b7fJwerrdQyeCVTzaSnDSdZLL7b9TY9IG
	HHxWGKTw3yV0oudbHz5KXiUS9wEjJcf58RYSaaXDXi1sXnIMebeTGSbXrD1FYIg+GKGN
	Kcg/siU9t5bhDT9LGAAlTMbxgVNNaodQg6dZQfiDd7HjQbb79fcnKBTKXA5hu5jW+6SZ
	B5G6Q+s/5gd3tSgWKzBvRUg+Td0B19MDvW5quP7+G68rdkwZKWkVPFxmrD6GBzULoJeZ
	0wsw==
X-Gm-Message-State: AIVw111UMzzxB3nqFlC3xqtWJ6DOj7utWcbdUMZEJxK+nfd9eOjtJLxG
	scWvUugEyiTRH11xfOk=
X-Received: by 10.25.43.73 with SMTP id r70mr9074715lfr.135.1499423452547;
	Fri, 07 Jul 2017 03:30:52 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id i77sm658282lfk.29.2017.07.07.03.30.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Jul 2017 03:30:51 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jul 2017 12:30:47 +0200
Message-Id: <20170707103047.919-1-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.13.2
Subject: [meta-qt4][PATCH] qmmp: Fix gcc-6 build error
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
X-List-Received-Date: Fri, 07 Jul 2017 10:30:57 -0000

Invalid conversion (const).

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-qt4/qt-apps/qmmp/invalid-conv.patch | 37 +++++++++++++++++++++++++++++
 recipes-qt4/qt-apps/qmmp_0.8.6.bb           |  1 +
 2 files changed, 38 insertions(+)
 create mode 100644 recipes-qt4/qt-apps/qmmp/invalid-conv.patch

diff --git a/recipes-qt4/qt-apps/qmmp/invalid-conv.patch b/recipes-qt4/qt-apps/qmmp/invalid-conv.patch
new file mode 100644
index 000000000000..f862d1bbd38d
--- /dev/null
+++ b/recipes-qt4/qt-apps/qmmp/invalid-conv.patch
@@ -0,0 +1,37 @@
+Upstream-Status: Inappropriate [current version does not have this plugin]
+diff --git a/src/plugins/Effect/srconverter/srconverter.cpp b/src/plugins/Effect/srconverter/srconverter.cpp
+index fcd77bc04cb7..873923e6219e 100644
+--- a/src/plugins/Effect/srconverter/srconverter.cpp
++++ b/src/plugins/Effect/srconverter/srconverter.cpp
+@@ -51,17 +51,18 @@ void SRConverter::applyEffect(Buffer *b)
+ {
+     if (m_src_state && b->nbytes > 0)
+     {
++	float *data_in = new float [m_src_data.input_frames * channels()];
+         m_src_data.end_of_input = 0;
+         m_src_data.input_frames = b->nbytes / m_sz / channels();
+-        m_src_data.data_in = new float [m_src_data.input_frames * channels()];
+         m_src_data.output_frames = m_src_data.src_ratio * m_src_data.input_frames + 1;
+         m_src_data.data_out = new float [m_src_data.output_frames * channels()];
+ 
+ 
+         if(format() == Qmmp::PCM_S16LE)
+         {
+-            src_short_to_float_array((short*) b->data, m_src_data.data_in,
++            src_short_to_float_array((short*) b->data, data_in,
+                                      m_src_data.input_frames * channels());
++            m_src_data.data_in = data_in;
+         }
+         else
+         {
+@@ -75,8 +76,9 @@ void SRConverter::applyEffect(Buffer *b)
+                         data[i] |= 0xff000000;
+                 }
+             }
+-            src_int_to_float_array((int*) b->data, m_src_data.data_in,
++            src_int_to_float_array((int*) b->data, data_in,
+                                    m_src_data.input_frames * channels());
++            m_src_data.data_in = data_in;
+         }
+ 
+         if ((m_srcError = src_process(m_src_state, &m_src_data)) > 0)
diff --git a/recipes-qt4/qt-apps/qmmp_0.8.6.bb b/recipes-qt4/qt-apps/qmmp_0.8.6.bb
index e68ad0f189a4..acb7dad34600 100644
--- a/recipes-qt4/qt-apps/qmmp_0.8.6.bb
+++ b/recipes-qt4/qt-apps/qmmp_0.8.6.bb
@@ -10,6 +10,7 @@ DEPENDS = "taglib libmad libvorbis libogg alsa-lib libsndfile1 libsamplerate0 cu
 
 SRC_URI = "http://qmmp.ylsoftware.com/files/${BP}.tar.bz2 \
            file://no-host-paths.patch \
+           file://invalid-conv.patch \
           "
 
 SRC_URI[md5sum] = "67e96e89c61b7432e5a12f555db702b1"
-- 
2.13.2


