Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC1ADE01415
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:37 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so3043334pbb.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=6L+YlXJFoXMJnO0ziAu6jletUbJZNSw1F/pi40Aul9I=;
	b=N3iCmJ2hV8vctv0mYJ3oUb4SAM7++73Cc55atAbSZwTPAPOEYtx6DEceGbiO3pY9eo
	CdG0n/lUNam7W5LC6kDe3WEYyYnRoRKoobIYysyJ3lTF0sa3m5DE/28G8jdnUIQ2kZsp
	hj+HYu2DYnUWiERbaBXLeLfeoKYQDPsAGwP79EvpezBtukbLhd/2C09MpISbZ/0IYDrw
	+XRnhVw1CorchgbTUq3iMHOjv7YQdWTZuyZv3IuLOlajgoq1OX3lvk++n6XkbtDMbCZa
	+GTNLGlp2PMppjTZxVPmSA4AUNXI3mGI/DMmnrcko+aAJAqdNbkbDMBDrcgP4GVkbT+A
	gLgw==
Received: by 10.68.242.162 with SMTP id wr2mr1336007pbc.125.1337983837530;
	Fri, 25 May 2012 15:10:37 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id tt5sm6166522pbc.12.2012.05.25.15.10.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:10:37 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 25 May 2012 15:10:23 -0700
Message-Id: <edaef395dac10a1b2c405f2f5d47798d795d7687.1337983732.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
References: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <caa0042ec0042bb4d4f48ac2a4722af9e52469c1.1337983732.git.dvhart@linux.intel.com>
References: <caa0042ec0042bb4d4f48ac2a4722af9e52469c1.1337983732.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQk7tACybO6Qc7Fq/w6rpg3u/otTCyT6a8TaTdgE4oPp65sWx+NZ4aRnieSswHjR7h1xaoXH
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] fri2: Add alsa-state initial state
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
X-List-Received-Date: Fri, 25 May 2012 22:10:37 -0000

The FRI2 has an analog and digital playback device. Enable both by default.

Enable line-in capture.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-bsp/alsa-state/alsa-state.bbappend     |    1 +
 .../alsa-state/alsa-state/fri2-noemgd/asound.state |  411 ++++++++++++++++++++
 .../alsa-state/alsa-state/fri2/asound.state        |  411 ++++++++++++++++++++
 3 files changed, 823 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/recipes-bsp/alsa-state/alsa-state.bbappend
 create mode 100644 meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2-noemgd/asound.state
 create mode 100644 meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2/asound.state

diff --git a/meta-fri2/recipes-bsp/alsa-state/alsa-state.bbappend b/meta-fri2/recipes-bsp/alsa-state/alsa-state.bbappend
new file mode 100644
index 0000000..72d991c
--- /dev/null
+++ b/meta-fri2/recipes-bsp/alsa-state/alsa-state.bbappend
@@ -0,0 +1 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2-noemgd/asound.state b/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2-noemgd/asound.state
new file mode 100644
index 0000000..8a89f0b
--- /dev/null
+++ b/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2-noemgd/asound.state
@@ -0,0 +1,411 @@
+state.MID {
+	control.1 {
+		iface MIXER
+		name 'PCM Playback Volume'
+		value.0 24
+		value.1 24
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -900
+			dbvalue.1 -900
+		}
+	}
+	control.2 {
+		iface MIXER
+		name 'PCM Playback Switch'
+		value.0 true
+		value.1 true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.3 {
+		iface MIXER
+		name 'Headphone Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -4500
+			dbvalue.1 -4500
+		}
+	}
+	control.4 {
+		iface MIXER
+		name 'Headphone Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.5 {
+		iface MIXER
+		name 'Rear Mic Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.6 {
+		iface MIXER
+		name 'Rear Mic Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.7 {
+		iface MIXER
+		name 'Front Mic Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.8 {
+		iface MIXER
+		name 'Front Mic Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.9 {
+		iface MIXER
+		name 'Line Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.10 {
+		iface MIXER
+		name 'Line Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.11 {
+		iface MIXER
+		name 'CD Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.12 {
+		iface MIXER
+		name 'CD Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.13 {
+		iface MIXER
+		name 'Auto-Mute Mode'
+		value Disabled
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 Disabled
+			item.1 Enabled
+		}
+	}
+	control.14 {
+		iface MIXER
+		name 'Rear Mic Boost Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 3'
+			dbmin 0
+			dbmax 3000
+			dbvalue.0 0
+			dbvalue.1 0
+		}
+	}
+	control.15 {
+		iface MIXER
+		name 'Front Mic Boost Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 3'
+			dbmin 0
+			dbmax 3000
+			dbvalue.0 0
+			dbvalue.1 0
+		}
+	}
+	control.16 {
+		iface MIXER
+		name 'Capture Switch'
+		value.0 true
+		value.1 true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.17 {
+		iface MIXER
+		name 'Capture Switch'
+		index 1
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.18 {
+		iface MIXER
+		name 'Capture Switch'
+		index 2
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.19 {
+		iface MIXER
+		name 'Capture Volume'
+		value.0 25
+		value.1 25
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 2550
+			dbvalue.1 2550
+		}
+	}
+	control.20 {
+		iface MIXER
+		name 'Capture Volume'
+		index 1
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 -1200
+			dbvalue.1 -1200
+		}
+	}
+	control.21 {
+		iface MIXER
+		name 'Capture Volume'
+		index 2
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 -1200
+			dbvalue.1 -1200
+		}
+	}
+	control.22 {
+		iface MIXER
+		name 'Input Source'
+		value Line
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.23 {
+		iface MIXER
+		name 'Input Source'
+		index 1
+		value 'Rear Mic'
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.24 {
+		iface MIXER
+		name 'Input Source'
+		index 2
+		value 'Rear Mic'
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.25 {
+		iface MIXER
+		name 'IEC958 Playback Con Mask'
+		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access read
+			type IEC958
+			count 1
+		}
+	}
+	control.26 {
+		iface MIXER
+		name 'IEC958 Playback Pro Mask'
+		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access read
+			type IEC958
+			count 1
+		}
+	}
+	control.27 {
+		iface MIXER
+		name 'IEC958 Playback Default'
+		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access 'read write'
+			type IEC958
+			count 1
+		}
+	}
+	control.28 {
+		iface MIXER
+		name 'IEC958 Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+	control.29 {
+		iface MIXER
+		name 'IEC958 Default PCM Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+	control.30 {
+		iface MIXER
+		name 'Master Playback Volume'
+		value 24
+		comment {
+			access 'read write'
+			type INTEGER
+			count 1
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -900
+		}
+	}
+	control.31 {
+		iface MIXER
+		name 'Master Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+}
diff --git a/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2/asound.state b/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2/asound.state
new file mode 100644
index 0000000..8a89f0b
--- /dev/null
+++ b/meta-fri2/recipes-bsp/alsa-state/alsa-state/fri2/asound.state
@@ -0,0 +1,411 @@
+state.MID {
+	control.1 {
+		iface MIXER
+		name 'PCM Playback Volume'
+		value.0 24
+		value.1 24
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -900
+			dbvalue.1 -900
+		}
+	}
+	control.2 {
+		iface MIXER
+		name 'PCM Playback Switch'
+		value.0 true
+		value.1 true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.3 {
+		iface MIXER
+		name 'Headphone Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -4500
+			dbvalue.1 -4500
+		}
+	}
+	control.4 {
+		iface MIXER
+		name 'Headphone Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.5 {
+		iface MIXER
+		name 'Rear Mic Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.6 {
+		iface MIXER
+		name 'Rear Mic Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.7 {
+		iface MIXER
+		name 'Front Mic Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.8 {
+		iface MIXER
+		name 'Front Mic Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.9 {
+		iface MIXER
+		name 'Line Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.10 {
+		iface MIXER
+		name 'Line Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.11 {
+		iface MIXER
+		name 'CD Playback Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -3450
+			dbmax 1200
+			dbvalue.0 -3450
+			dbvalue.1 -3450
+		}
+	}
+	control.12 {
+		iface MIXER
+		name 'CD Playback Switch'
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.13 {
+		iface MIXER
+		name 'Auto-Mute Mode'
+		value Disabled
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 Disabled
+			item.1 Enabled
+		}
+	}
+	control.14 {
+		iface MIXER
+		name 'Rear Mic Boost Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 3'
+			dbmin 0
+			dbmax 3000
+			dbvalue.0 0
+			dbvalue.1 0
+		}
+	}
+	control.15 {
+		iface MIXER
+		name 'Front Mic Boost Volume'
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 3'
+			dbmin 0
+			dbmax 3000
+			dbvalue.0 0
+			dbvalue.1 0
+		}
+	}
+	control.16 {
+		iface MIXER
+		name 'Capture Switch'
+		value.0 true
+		value.1 true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.17 {
+		iface MIXER
+		name 'Capture Switch'
+		index 1
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.18 {
+		iface MIXER
+		name 'Capture Switch'
+		index 2
+		value.0 false
+		value.1 false
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 2
+		}
+	}
+	control.19 {
+		iface MIXER
+		name 'Capture Volume'
+		value.0 25
+		value.1 25
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 2550
+			dbvalue.1 2550
+		}
+	}
+	control.20 {
+		iface MIXER
+		name 'Capture Volume'
+		index 1
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 -1200
+			dbvalue.1 -1200
+		}
+	}
+	control.21 {
+		iface MIXER
+		name 'Capture Volume'
+		index 2
+		value.0 0
+		value.1 0
+		comment {
+			access 'read write'
+			type INTEGER
+			count 2
+			range '0 - 31'
+			dbmin -1200
+			dbmax 3450
+			dbvalue.0 -1200
+			dbvalue.1 -1200
+		}
+	}
+	control.22 {
+		iface MIXER
+		name 'Input Source'
+		value Line
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.23 {
+		iface MIXER
+		name 'Input Source'
+		index 1
+		value 'Rear Mic'
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.24 {
+		iface MIXER
+		name 'Input Source'
+		index 2
+		value 'Rear Mic'
+		comment {
+			access 'read write'
+			type ENUMERATED
+			count 1
+			item.0 'Rear Mic'
+			item.1 'Front Mic'
+			item.2 Line
+			item.3 CD
+		}
+	}
+	control.25 {
+		iface MIXER
+		name 'IEC958 Playback Con Mask'
+		value '0fff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access read
+			type IEC958
+			count 1
+		}
+	}
+	control.26 {
+		iface MIXER
+		name 'IEC958 Playback Pro Mask'
+		value '0f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access read
+			type IEC958
+			count 1
+		}
+	}
+	control.27 {
+		iface MIXER
+		name 'IEC958 Playback Default'
+		value '0400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
+		comment {
+			access 'read write'
+			type IEC958
+			count 1
+		}
+	}
+	control.28 {
+		iface MIXER
+		name 'IEC958 Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+	control.29 {
+		iface MIXER
+		name 'IEC958 Default PCM Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+	control.30 {
+		iface MIXER
+		name 'Master Playback Volume'
+		value 24
+		comment {
+			access 'read write'
+			type INTEGER
+			count 1
+			range '0 - 30'
+			dbmin -4500
+			dbmax 0
+			dbvalue.0 -900
+		}
+	}
+	control.31 {
+		iface MIXER
+		name 'Master Playback Switch'
+		value true
+		comment {
+			access 'read write'
+			type BOOLEAN
+			count 1
+		}
+	}
+}
-- 
1.7.5.4


