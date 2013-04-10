Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FA3FE014D0
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 07:54:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Apr 2013 07:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,447,1363158000"; d="scan'208";a="292963304"
Received: from ideapad.rb.intel.com ([10.237.105.146])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2013 07:53:49 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Apr 2013 17:36:07 +0300
Message-Id: <1365604568-16116-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][branch:danny] Remove clutter project templates
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
X-List-Received-Date: Wed, 10 Apr 2013 14:54:08 -0000

- support for clutter was removed from core-image-sato along with clutter-box2d and thus the project templates in Eclipse should not be supported anymore

[Yocto #3991]
Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 plugins/org.yocto.sdk.ide/plugin.xml               |   12 --
 .../HelloWorldCClutterProject/src/Basename.c       |  199 -------------------
 .../src/Basename.desktop.in.src                    |    9 -
 .../HelloWorldCClutterProject/src/INSTALL          |    9 -
 .../HelloWorldCClutterProject/src/Makefile.am.src  |   10 -
 .../HelloWorldCClutterProject/src/Makefile.am.top  |    7 -
 .../HelloWorldCClutterProject/src/README           |   25 ---
 .../HelloWorldCClutterProject/src/autogen.sh       |   10 -
 .../HelloWorldCClutterProject/src/configure.ac.top |   51 -----
 .../HelloWorldCClutterProject/template.properties  |   28 ---
 .../HelloWorldCClutterProject/template.xml         |  146 --------------
 .../src/configure.ac.top                           |    1 -
 .../HelloWorldCPPClutterProject/src/Basename.cpp   |  203 --------------------
 .../src/Basename.desktop.in.src                    |    9 -
 .../HelloWorldCPPClutterProject/src/INSTALL        |    9 -
 .../src/Makefile.am.src                            |   10 -
 .../src/Makefile.am.top                            |    6 -
 .../HelloWorldCPPClutterProject/src/README         |   25 ---
 .../HelloWorldCPPClutterProject/src/autogen.sh     |   10 -
 .../src/configure.ac.top                           |   51 -----
 .../template.properties                            |   28 ---
 .../HelloWorldCPPClutterProject/template.xml       |  146 --------------
 22 files changed, 1004 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.c
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.desktop.in.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/ChangeLog
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/INSTALL
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/NEWS
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/README
 delete mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/autogen.sh
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/configure.ac.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.xml
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.cpp
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.desktop.in.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/ChangeLog
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/INSTALL
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.src
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/NEWS
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/README
 delete mode 100755 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/autogen.sh
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/configure.ac.top
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.properties
 delete mode 100644 plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.xml

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index c540b9b..51a8b21 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -112,18 +112,6 @@
       </template>
       <template
             filterPattern=".*gcc"
-            id="org.yocto.sdk.ide.template.helloWorldCClutterProject"
-            location="templates/projecttemplates/HelloWorldCClutterProject/template.xml"
-            projectType="org.yocto.sdk.ide.projectType">
-      </template>
-      <template
-            filterPattern=".*g\+\+"
-            id="org.yocto.sdk.ide.template.helloWorldCPPClutterProject"
-            location="templates/projecttemplates/HelloWorldCPPClutterProject/template.xml"
-            projectType="org.yocto.sdk.ide.projectType">
-      </template>
-      <template
-            filterPattern=".*gcc"
             id="org.yocto.sdk.ide.template.helloWorldCGTKProject"
             location="templates/projecttemplates/HelloWorldCGTKProject/template.xml"
             projectType="org.yocto.sdk.ide.projectType">
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.c b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.c
deleted file mode 100644
index 14076a0..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.c
+++ /dev/null
@@ -1,199 +0,0 @@
-
-
-#include <clutter/clutter.h>
-#include <stdlib.h>
-#include <stdio.h>
-#include <string.h>
-
-#define SCN_WIDTH  800
-#define SCN_HEIGHT 480
-
-const char *MAIN_STR = "$(message)";
-const char *TEXT_FONT = "Courier Bold 170px";
-const int FONT_SIZE = 170;
-const guint32 colors[] = {0xFF0000FF/*red*/,    0x00FF00FF/*green*/,  
-                          0x0000FFFF/*blue*/,   0xFFFF00FF/*yellow*/, 
-                          0xFF00FFFF/*pink*/,   0x00FFFFFF/*teal*/,
-                          0xFF8000FF/*orange*/, 0xFFFFFFFF/*white*/};
-const int NUM_COLORS = 8;
-
-// Return the next color in the colors[] array 
-ClutterColor *get_next_color ()
-{
-    static int i=0;
-    ClutterColor *cc = malloc (sizeof (ClutterColor));
-    clutter_color_from_pixel (cc, colors[i++]);
-    if (i > (NUM_COLORS-1)) {
-        i=0;
-    }
-    return cc;
-}
-
-gulong get_rand_animation()
-{
-   int r = rand()%11;
-   switch (r) {
-   case 0: return CLUTTER_EASE_IN_OUT_QUAD;
-   case 1: return CLUTTER_EASE_IN_OUT_CUBIC;
-   case 2: return CLUTTER_EASE_IN_OUT_QUART;
-   case 3: return CLUTTER_EASE_IN_OUT_QUINT;
-   case 4: return CLUTTER_EASE_IN_OUT_SINE;
-   case 5: return CLUTTER_EASE_IN_OUT_EXPO;
-   case 6: return CLUTTER_EASE_IN_OUT_CIRC;
-   case 7: return CLUTTER_EASE_IN_OUT_ELASTIC;
-   case 8: return CLUTTER_EASE_IN_OUT_BACK;
-   case 9: return CLUTTER_EASE_IN_OUT_BOUNCE;
-   default: return CLUTTER_LINEAR;
-   }
-}
-
-gint get_rand_option (gint opt1, gint opt2, gint opt3)
-{
-    gint num = rand()%3;
-    if (num==0) {
-        return opt1;
-    } else if (num==1) {
-        return opt2;
-    } else {
-        return opt3;
-    }
-}
-
-// Each time the frame is painted, shade or lighten the coloring
-void on_new_frame (ClutterTimeline *tl, 
-                   gint frame_num, 
-                   gpointer data)
-{
-    static gboolean get_darker = TRUE;
-
-    ClutterActor *actor = CLUTTER_ACTOR(data);
-    ClutterColor *orig_color = g_object_get_data (G_OBJECT (actor), "color");
-    gint color_adj = GPOINTER_TO_INT(g_object_get_data(G_OBJECT(actor), 
-                                                       "color_adjustment"));
-    if (get_darker) {
-        color_adj --;
-        if (color_adj < -100) {
-            color_adj = -100;
-            get_darker = FALSE;
-        }
-    } else {
-        color_adj += 1;
-        if (color_adj > 0) {
-            color_adj = 0;
-            get_darker = TRUE;
-        }
-    }
-    gdouble scale = 1.0+(0.005*(gdouble)color_adj);
-    ClutterColor c;
-    clutter_color_shade (orig_color, scale, &c);
-
-    clutter_text_set_color (CLUTTER_TEXT(actor), &c); 
-    g_object_set_data (G_OBJECT (actor), 
-                       "color_adjustment", 
-                       GINT_TO_POINTER(color_adj));
-}
-
-ClutterActor *create_new_character (char c, int xpos, int ypos) 
-{
-    ClutterActor *actor; 
-    ClutterColor *color;
-    char sz[2];
-    sz[0] = c;
-    sz[1] = '\0';
-
-    color = get_next_color(); 
-    actor = clutter_text_new_full (TEXT_FONT, sz, color);
-    clutter_actor_set_position (actor, xpos, ypos);
-
-    //Setup animation
-    ClutterTimeline *timeline;
-    timeline = clutter_timeline_new (60);    //num frames, fps
-    clutter_timeline_set_loop (timeline, TRUE);
-
-    //Create animation behavior (rotations)
-    ClutterAlpha *alpha;
-    ClutterBehaviour *behaviour;
-    alpha = clutter_alpha_new_full (timeline, get_rand_animation());
-
-    behaviour = clutter_behaviour_rotate_new (alpha, 
-                                              get_rand_option(CLUTTER_X_AXIS,
-                                                              CLUTTER_Y_AXIS,
-                                                              CLUTTER_Z_AXIS),
-                                              CLUTTER_ROTATE_CW,
-                                              0.0, 360.0);
-    clutter_behaviour_rotate_set_center (CLUTTER_BEHAVIOUR_ROTATE (behaviour),
-                                         FONT_SIZE/2, FONT_SIZE/2, 0);
-
-    clutter_behaviour_apply (behaviour, actor);
-    g_signal_connect (timeline, "new-frame", G_CALLBACK (on_new_frame), actor);
-    clutter_timeline_start (timeline);
-
-    //save variables for later destruction
-    g_object_set_data (G_OBJECT (actor), "color", color);
-    g_object_set_data (G_OBJECT (actor), "color_adjustment", GINT_TO_POINTER(0));
-    g_object_set_data (G_OBJECT (actor), "timeline", timeline);
-    g_object_set_data (G_OBJECT (actor), "alpha", alpha);
-    g_object_set_data (G_OBJECT (actor), "behaviour", behaviour);
-    return actor;
-}
-
-static gboolean key_pressed_cb (ClutterStage *stage, 
-                                ClutterEvent *event, gpointer data)
-{
-    if (event->type == CLUTTER_KEY_RELEASE) {
-        ClutterEvent *kev = (ClutterEvent *) event;
-        guint symb = clutter_event_get_key_symbol (kev);
-        if (symb == CLUTTER_Escape || symb == CLUTTER_q) {
-            clutter_main_quit ();
-            return TRUE;
-        }
-    }
-    return FALSE;
-}
-
-int main (int argc, char **argv)
-{
-    const ClutterColor scn_bkgd = {0x00,0x00,0xFF,0xFF};
-    ClutterActor *stage;
-
-    srand(time(NULL)); //for random colors
-
-    clutter_init(&argc, &argv);
-
-    //create stage, make fullscreen, set colors
-    stage = clutter_stage_get_default();
-    clutter_stage_set_fullscreen (CLUTTER_STAGE(stage), TRUE);
-
-    gfloat scn_width = SCN_WIDTH, scn_height = SCN_HEIGHT;
-    clutter_actor_get_size (stage, &scn_width, &scn_height);
-    clutter_actor_set_size(stage, scn_width, scn_height);
-    clutter_stage_set_color (CLUTTER_STAGE(stage), &scn_bkgd);
-    clutter_stage_set_title(CLUTTER_STAGE(stage), "Clutter $(projectName)");
-
-    //show MAIN_STR ('Hello World') and animate
-    gint num_actors = 0;
-    ClutterActor *actor;
-    ClutterActor *arrActors[strlen(MAIN_STR)];
-    gint xpos = (scn_width - (FONT_SIZE/3 * strlen(MAIN_STR)))/2;
-    int i=0;
-    for (i=0; i<strlen(MAIN_STR); i++) {
-        if (MAIN_STR[i]==' ') {
-            xpos += FONT_SIZE/3;
-            continue;
-        }
-        actor = create_new_character (MAIN_STR[i], xpos, 
-                                      (scn_height-FONT_SIZE)/2);
-        arrActors[num_actors++] = actor;
-        clutter_container_add_actor (CLUTTER_CONTAINER (stage), actor);
-        xpos += FONT_SIZE/3;
-    }
-
-    clutter_actor_show_all (stage);
-
-    // ESC exits
-    g_signal_connect (stage, "key-release-event",
-                      G_CALLBACK (key_pressed_cb), arrActors);
-    clutter_main ();
-
-    return 0;
-}
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.desktop.in.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.desktop.in.src
deleted file mode 100644
index b6eb111..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Basename.desktop.in.src
+++ /dev/null
@@ -1,9 +0,0 @@
-[Desktop Entry]
-Version=@VERSION@
-Encoding=UTF-8
-Name=$(projectName) with Clutter
-Comment=A "$(message)" application with simple animations using Clutter
-Type=Application
-Categories=Application
-Exec=$(projectName)
-Name[en_US]=$(message) with Clutter
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/ChangeLog b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/ChangeLog
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/INSTALL b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/INSTALL
deleted file mode 100644
index b8b0535..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/INSTALL
+++ /dev/null
@@ -1,9 +0,0 @@
-Building:
-  $ ./autogen.sh  [--enable-gtk-doc] [--prefix=/usr]
-  $ make
-
-Installing:
-  $ sudo make install
-
-Running:
-  $ $(projectName)
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.src
deleted file mode 100644
index 830e329..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.src
+++ /dev/null
@@ -1,10 +0,0 @@
-
-bin_PROGRAMS = $(projectName)
-$(projectName)_SOURCES = $(projectName).c
-
-AM_CFLAGS = @$(projectName)_CFLAGS@
-AM_LDFLAGS = @$(projectName)_LIBS@
-
-desktop_DATA = $(projectName).desktop
-
-CLEANFILES = *~ $(projectName).desktop
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.top
deleted file mode 100644
index 7bee2b7..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/Makefile.am.top
+++ /dev/null
@@ -1,7 +0,0 @@
-SUBDIRS = $(sourceDir)
-
-MAINTAINERCLEANFILES = aclocal.m4 compile config.guess \
-		config.sub configure depcomp install-sh \
-		ltmain.sh Makefile.in missing
-
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/NEWS b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/NEWS
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/README b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/README
deleted file mode 100644
index ea46b5b..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/README
+++ /dev/null
@@ -1,25 +0,0 @@
-$(projectName)
-Copyright (C) $(copyright).
-
-Brief description of project....
-
------------------------------------------------------------------------------
- Build
------------------------------------------------------------------------------
-$ ./autogen.sh
-$ make
-
------------------------------------------------------------------------------
- Build with documentation generated (usually for libraries)
------------------------------------------------------------------------------
-$ ./autogen.sh --enable-gtk-doc
-$ make
-
-( If built with the --enable-gtk-doc flag above you can view the index.html
-  file in your web browser. )
-$ firefox ./docs/reference/index.html
-
------------------------------------------------------------------------------
- Install
------------------------------------------------------------------------------
-$ sudo make install
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/autogen.sh b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/autogen.sh
deleted file mode 100755
index 7fd81e2..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/autogen.sh
+++ /dev/null
@@ -1,10 +0,0 @@
-#! /bin/sh
-[ -e config.cache ] && rm -f config.cache
-
-libtoolize --automake
-aclocal ${OECORE_ACLOCAL_OPTS}
-autoconf
-autoheader
-automake -a
-./configure $@
-exit
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/configure.ac.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/configure.ac.top
deleted file mode 100644
index 9167e7b..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/src/configure.ac.top
+++ /dev/null
@@ -1,51 +0,0 @@
-AC_PREREQ(2.61)
-
-# package version number (not shared library version)
-# odd micro numbers indicate in-progress development
-# even micro numbers indicate released versions
-m4_define($(projectName)_version_major, 0)
-m4_define($(projectName)_version_minor, 1)
-m4_define($(projectName)_version_micro, 0)
-
-m4_define([$(projectName)_version],
-          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
-m4_define([$(projectName)_api_version],
-          [$(projectName)_version_major.$(projectName)_version_minor])
-
-AC_INIT($(projectName), $(projectName)_version)
-AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
-AC_CONFIG_HEADERS(config.h)
-
-# Checks for programs.
-AC_PROG_LIBTOOL
-AM_PROG_CC_C_O
-AC_PROG_INSTALL
-
-# enable pkg-config
-PKG_PROG_PKG_CONFIG
-
-# Checks for library functions.
-#AC_CHECK_FUNCS([memset])
-
-PKG_CHECK_MODULES($(projectName), glib-2.0 clutter-1.0)
-AC_SUBST($(projectName)_CFLAGS)
-AC_SUBST($(projectName)_LIBS)
-
-desktopdir=${datadir}/applications
-AC_SUBST(desktopdir)
-
-icondir=${datadir}/icons/hicolor/32x32/apps
-AC_SUBST(icondir)
-
-AC_OUTPUT([
-Makefile
-$(sourceDir)/Makefile
-$(sourceDir)/$(projectName).desktop
-])
-
-echo ""
-echo "   $(projectName) $VERSION"
-echo "   ====================="
-echo ""
-echo "   To build the project, run \"make\""
-echo ""
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.properties
deleted file mode 100644
index 9430748..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.properties
+++ /dev/null
@@ -1,28 +0,0 @@
-###############################################################################
-# Copyright (c) 2007, 2009 Symbian Software Private Ltd. and others.
-# All rights reserved. This program and the accompanying materials
-# are made available under the terms of the Eclipse Public License v1.0
-# which accompanies this distribution, and is available at
-# http://www.eclipse.org/legal/epl-v10.html
-# 
-# Contributors:
-#     Bala Torati (Symbian) - initial API and implementation
-#     Red Hat Inc - modification to use with Autotools project
-###############################################################################
-
-#Template Default Values
-HelloWorld.CAnsitemplate.label=Clutter Hello World Project
-HelloWorld.CAnsitemplate.description=A skeletal C Clutter Hello World project. Creates a folder for sources and autogen artifacts.
-HelloWorld.basics.label=Basic Settings
-HelloWorld.basics.description=Basic properties of a project
-HelloWorld.author.label=Author
-HelloWorld.author.description=Name of the author
-HelloWorld.copyright.label=Copyright notice
-HelloWorld.copyright.description=The name of the copyright holder (e.g. XYZ Corporation)
-HelloWorld.copyright.default=Your copyright
-HelloWorld.message.default=Hello World
-HelloWorld.message.description=Your hello world greeting message
-HelloWorld.message.label=Hello world greeting
-HelloWorld.sourceDir.label=Source
-HelloWorld.sourceDir.description=Directory for hello world project source files
-HelloWorld.sourceDir.default=src
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.xml
deleted file mode 100644
index dcaccbe..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCClutterProject/template.xml
+++ /dev/null
@@ -1,146 +0,0 @@
-<?xml version="1.0" encoding="ISO-8859-1"?>
-<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
-		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
-		id="HelloWorldCClutterYoctoProject" label="%HelloWorld.CAnsitemplate.label" description="%HelloWorld.CAnsitemplate.description"
-		help="help.html">
-
-	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
-		<property id="author"
-			label="%HelloWorld.author.label"
-			description="%HelloWorld.author.description"
-			type="input"
-			pattern=".+"
-			default=""
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="copyright"
-			label="%HelloWorld.copyright.label"
-			description="%HelloWorld.copyright.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.copyright.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="message"
-			label="%HelloWorld.message.label"
-			description="%HelloWorld.message.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.message.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="sourceDir"
-			label="%HelloWorld.sourceDir.label"
-			description="%HelloWorld.sourceDir.description"
-			type="input"
-			default="%HelloWorld.sourceDir.default"
-			pattern="[a-zA-Z0-9]+"
-			mandatory="true"
-			persist="true"/>
-		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
-    		<item label="BSD License"  name="BSD"/>
-    		<item label="MIT License"  name="MIT"/>
-    		<item label="GNU General Public License v2.0"  name="GPLv2"/>
-    		<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
-    		<item label="GNU General Public License v3.0"  name="GPLv3"/>
-    		<item label="Other"  name="Other"/>
-		</property>			
-	</property-group>
-
-	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="true" /> 
-		<simple name="isEmptyProject" value="false" />
-	</process>
-
-	<process type="org.eclipse.cdt.core.CreateSourceFolder">
-		<simple name="projectName" value="$(projectName)"/>
-		<simple name="path" value="$(sourceDir)"/>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AddFiles">
-		<simple name="projectName" value="$(projectName)"/>
-		<complex-array name="files">
-			<element>
-				<simple name="source" value="../Licenses/AUTHORS"/>
-				<simple name="target" value="AUTHORS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="../Licenses/COPYING_$(license)"/>
-				<simple name="target" value="COPYING"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        	<element>
-				<simple name="source" value="../Licenses/Header_$(license)"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
-				<simple name="replaceable" value="true"/>
-        	</element>
-			<element>
-				<simple name="source" value="src/autogen.sh"/>
-				<simple name="target" value="autogen.sh"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Basename.desktop.in.src"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).desktop.in"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/ChangeLog"/>
-				<simple name="target" value="ChangeLog"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/configure.ac.top"/>
-				<simple name="target" value="configure.ac"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/INSTALL"/>
-				<simple name="target" value="INSTALL"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.src"/>
-				<simple name="target" value="$(sourceDir)/Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.top"/>
-				<simple name="target" value="Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/NEWS"/>
-				<simple name="target" value="NEWS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/README"/>
-				<simple name="target" value="README"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-		</complex-array>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AppendCreate">
-        <simple name="projectName" value="$(projectName)"/>
-        <complex-array name="files">
-			<element>
-				<simple name="source" value="src/Basename.c"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).c"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        </complex-array>
-	</process>
-
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
-		<simple name="projectName" value="$(projectName)" /> 
-	</process>
-</template>
-
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/src/configure.ac.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/src/configure.ac.top
index 2526a6f..5cc622b 100644
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/src/configure.ac.top
+++ b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPAutotoolsProject/src/configure.ac.top
@@ -27,7 +27,6 @@ PKG_PROG_PKG_CONFIG
 # Checks for library functions.
 #AC_CHECK_FUNCS([memset])
 
-#PKG_CHECK_MODULES($(projectName), glib-2.0 clutter-1.0)
 AC_SUBST($(projectName)_CFLAGS)
 AC_SUBST($(projectName)_LIBS)
 
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.cpp b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.cpp
deleted file mode 100644
index 0dd8ec9..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.cpp
+++ /dev/null
@@ -1,203 +0,0 @@
-
-
-#include <clutter/clutter.h>
-#include <stdlib.h>
-#include <stdio.h>
-#include <string.h>
-
-#define SCN_WIDTH  800
-#define SCN_HEIGHT 480
-
-const char *MAIN_STR = "$(message)";
-const char *TEXT_FONT = "Courier Bold 170px";
-const int FONT_SIZE = 170;
-const guint32 colors[] = {0xFF0000FF/*red*/,    0x00FF00FF/*green*/,  
-                          0x0000FFFF/*blue*/,   0xFFFF00FF/*yellow*/, 
-                          0xFF00FFFF/*pink*/,   0x00FFFFFF/*teal*/,
-                          0xFF8000FF/*orange*/, 0xFFFFFFFF/*white*/};
-const int NUM_COLORS = 8;
-
-// Return the next color in the colors[] array 
-ClutterColor *get_next_color ()
-{
-    static int i=0;
-    //v0.9:
-    //ClutterColor *cc = clutter_color_new (0,0,0,0);
-    //v0.8 (alpha)
-    ClutterColor *cc = (ClutterColor*)malloc(sizeof(ClutterColor));
-
-    clutter_color_from_pixel (cc, colors[i++]);
-    if (i > (NUM_COLORS-1)) {
-        i=0;
-    }
-    return cc;
-}
-
-gint get_rand_option (gint opt1, gint opt2, gint opt3)
-{
-    gint num = rand()%3;
-    if (num==0) {
-        return opt1;
-    } else if (num==1) {
-        return opt2;
-    } else {
-        return opt3;
-    }
-}
-
-
-// Each time the frame is painted, shade or lighten the coloring
-void on_new_frame (ClutterTimeline *tl, 
-                   gint frame_num, 
-                   gpointer data)
-{
-    static gboolean get_darker = TRUE;
-
-    ClutterActor *actor = CLUTTER_ACTOR(data);
-    ClutterColor *orig_color =
-       (ClutterColor*)g_object_get_data (G_OBJECT (actor), "color");
-    gint color_adj = GPOINTER_TO_INT(g_object_get_data(G_OBJECT(actor), 
-                                                       "color_adjustment"));
-    if (get_darker) {
-        color_adj --;
-        if (color_adj < -100) {
-            color_adj = -100;
-            get_darker = FALSE;
-        }
-    } else {
-        color_adj += 1;
-        if (color_adj > 0) {
-            color_adj = 0;
-            get_darker = TRUE;
-        }
-    }
-    gdouble scale = 1.0+(0.005*(gdouble)color_adj);
-    ClutterColor c;
-    clutter_color_shade (orig_color, scale, &c);
-    clutter_text_set_color (CLUTTER_TEXT(actor), &c); 
-    g_object_set_data (G_OBJECT (actor), 
-                       "color_adjustment", 
-                       GINT_TO_POINTER(color_adj));
-}
-
-gulong get_rand_animation ()
-{
-   int r = rand()%11;
-   switch (r) {
-   case 1: return CLUTTER_EASE_IN_OUT_QUAD;
-   case 2: return CLUTTER_EASE_IN_OUT_CUBIC;
-   case 3: return CLUTTER_EASE_IN_OUT_QUART;
-   case 4: return CLUTTER_EASE_IN_OUT_QUINT;
-   case 5: return CLUTTER_EASE_IN_OUT_SINE;
-   case 6: return CLUTTER_EASE_IN_OUT_EXPO;
-   case 7: return CLUTTER_EASE_IN_OUT_CIRC;
-   case 8: return CLUTTER_EASE_IN_OUT_ELASTIC;
-   case 9: return CLUTTER_EASE_IN_OUT_BACK;
-   case 10: return CLUTTER_EASE_IN_OUT_BOUNCE;
-   default: return CLUTTER_LINEAR;
-   }
-}
-
-
-ClutterActor *create_new_character (char c, int xpos, int ypos) 
-{
-    ClutterActor *actor; 
-    ClutterColor *color;
-    char sz[2];
-    sz[0] = c;
-    sz[1] = '\0';
-
-    color = get_next_color(); 
-    actor = clutter_text_new_full (TEXT_FONT, sz, color);
-    clutter_actor_set_position (actor, xpos, ypos);
-
-    //Setup animation
-    ClutterTimeline *timeline;
-    timeline = clutter_timeline_new (6000);    //num frames, fps
-    clutter_timeline_set_loop (timeline, TRUE);
-
-    //Create animation behavior (rotations)
-    ClutterAlpha *alpha;
-    ClutterBehaviour *behaviour;
-    alpha = clutter_alpha_new_full (timeline, get_rand_animation());
-
-    ClutterRotateAxis r = (ClutterRotateAxis)get_rand_option(CLUTTER_X_AXIS,
-							     CLUTTER_Y_AXIS,
-							     CLUTTER_Z_AXIS);
-    behaviour = clutter_behaviour_rotate_new (alpha, r, CLUTTER_ROTATE_CW,
-					      0.0, 360.0);
-    clutter_behaviour_rotate_set_center (CLUTTER_BEHAVIOUR_ROTATE (behaviour),
-                                         FONT_SIZE/2, FONT_SIZE/2, 0);
-
-    clutter_behaviour_apply (behaviour, actor);
-    g_signal_connect (timeline, "new-frame", G_CALLBACK (on_new_frame), actor);
-    clutter_timeline_start (timeline);
-
-    //save variables for later destruction
-    g_object_set_data (G_OBJECT (actor), "color", color);
-    g_object_set_data (G_OBJECT (actor), "color_adjustment", GINT_TO_POINTER(0));
-    g_object_set_data (G_OBJECT (actor), "timeline", timeline);
-    g_object_set_data (G_OBJECT (actor), "alpha", alpha);
-    g_object_set_data (G_OBJECT (actor), "behaviour", behaviour);
-    return actor;
-}
-
-static gboolean key_pressed_cb (ClutterStage *stage, 
-                                ClutterEvent *event, gpointer data)
-{
-    if (event->type == CLUTTER_KEY_RELEASE) {
-        guint symb = clutter_event_get_key_symbol (event);
-        if (symb == CLUTTER_Escape || symb == CLUTTER_q) {
-            clutter_main_quit ();
-            return TRUE;
-        }
-    }
-    return FALSE;
-}
-
-int main (int argc, char **argv)
-{
-    const ClutterColor scn_bkgd = {0x00,0x00,0xFF,0xFF};
-    ClutterActor *stage;
-
-    srand(time(NULL)); //for random colors
-
-    clutter_init(&argc, &argv);
-
-    //create stage, make fullscreen, set colors
-    stage = clutter_stage_get_default();
-    clutter_stage_set_fullscreen (CLUTTER_STAGE(stage), TRUE);
-
-    gfloat scn_width = SCN_WIDTH, scn_height = SCN_HEIGHT;
-    clutter_actor_get_size (stage, &scn_width, &scn_height);
-    clutter_actor_set_size(stage, scn_width, scn_height);
-    clutter_stage_set_color (CLUTTER_STAGE(stage), &scn_bkgd);
-    clutter_stage_set_title(CLUTTER_STAGE(stage), "Clutter Helloworld");
-
-    //show MAIN_STR ('Hello World') and animate
-    gint num_actors = 0;
-    ClutterActor *actor;
-    ClutterActor *arrActors[strlen(MAIN_STR)];
-    gint xpos = (scn_width - (FONT_SIZE/3 * strlen(MAIN_STR)))/2;
-    guint i=0;
-    for (i=0; i<strlen(MAIN_STR); i++) {
-        if (MAIN_STR[i]==' ') {
-            xpos += FONT_SIZE/3;
-            continue;
-        }
-        actor = create_new_character (MAIN_STR[i], xpos, 
-                                      (scn_height-FONT_SIZE)/2);
-        arrActors[num_actors++] = actor;
-        clutter_container_add_actor (CLUTTER_CONTAINER (stage), actor);
-        xpos += FONT_SIZE/3;
-    }
-
-    clutter_actor_show_all (stage);
-
-    // ESC exits
-    g_signal_connect (stage, "key-release-event",
-                      G_CALLBACK (key_pressed_cb), arrActors);
-    clutter_main ();
-
-    return 0;
-}
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.desktop.in.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.desktop.in.src
deleted file mode 100644
index b6eb111..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Basename.desktop.in.src
+++ /dev/null
@@ -1,9 +0,0 @@
-[Desktop Entry]
-Version=@VERSION@
-Encoding=UTF-8
-Name=$(projectName) with Clutter
-Comment=A "$(message)" application with simple animations using Clutter
-Type=Application
-Categories=Application
-Exec=$(projectName)
-Name[en_US]=$(message) with Clutter
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/ChangeLog b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/ChangeLog
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/INSTALL b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/INSTALL
deleted file mode 100644
index b8b0535..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/INSTALL
+++ /dev/null
@@ -1,9 +0,0 @@
-Building:
-  $ ./autogen.sh  [--enable-gtk-doc] [--prefix=/usr]
-  $ make
-
-Installing:
-  $ sudo make install
-
-Running:
-  $ $(projectName)
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.src b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.src
deleted file mode 100644
index d05441f..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.src
+++ /dev/null
@@ -1,10 +0,0 @@
-
-bin_PROGRAMS = $(projectName)
-$(projectName)_SOURCES = $(projectName).cpp
-
-AM_CXXFLAGS = @$(projectName)_CFLAGS@
-AM_LDFLAGS = @$(projectName)_LIBS@
-
-desktop_DATA = $(projectName).desktop
-
-CLEANFILES = *~ $(projectName).desktop
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.top
deleted file mode 100644
index 6060599..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/Makefile.am.top
+++ /dev/null
@@ -1,6 +0,0 @@
-EXTRA_DIST = autogen.sh
-SUBDIRS = $(sourceDir) 
-
-DISTCHECK_CONFIGURE_FLAGS=
-
-CLEANFILES = *~
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/NEWS b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/NEWS
deleted file mode 100644
index e69de29..0000000
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/README b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/README
deleted file mode 100644
index ea46b5b..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/README
+++ /dev/null
@@ -1,25 +0,0 @@
-$(projectName)
-Copyright (C) $(copyright).
-
-Brief description of project....
-
------------------------------------------------------------------------------
- Build
------------------------------------------------------------------------------
-$ ./autogen.sh
-$ make
-
------------------------------------------------------------------------------
- Build with documentation generated (usually for libraries)
------------------------------------------------------------------------------
-$ ./autogen.sh --enable-gtk-doc
-$ make
-
-( If built with the --enable-gtk-doc flag above you can view the index.html
-  file in your web browser. )
-$ firefox ./docs/reference/index.html
-
------------------------------------------------------------------------------
- Install
------------------------------------------------------------------------------
-$ sudo make install
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/autogen.sh b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/autogen.sh
deleted file mode 100755
index 7fd81e2..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/autogen.sh
+++ /dev/null
@@ -1,10 +0,0 @@
-#! /bin/sh
-[ -e config.cache ] && rm -f config.cache
-
-libtoolize --automake
-aclocal ${OECORE_ACLOCAL_OPTS}
-autoconf
-autoheader
-automake -a
-./configure $@
-exit
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/configure.ac.top b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/configure.ac.top
deleted file mode 100644
index 8a248fa..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/src/configure.ac.top
+++ /dev/null
@@ -1,51 +0,0 @@
-AC_PREREQ(2.61)
-
-# package version number (not shared library version)
-# odd micro numbers indicate in-progress development
-# even micro numbers indicate released versions
-m4_define($(projectName)_version_major, 0)
-m4_define($(projectName)_version_minor, 1)
-m4_define($(projectName)_version_micro, 0)
-
-m4_define([$(projectName)_version],
-          [$(projectName)_version_major.$(projectName)_version_minor.$(projectName)_version_micro])
-m4_define([$(projectName)_api_version],
-          [$(projectName)_version_major.$(projectName)_version_minor])
-
-AC_INIT($(projectName), $(projectName)_version)
-AM_INIT_AUTOMAKE($(projectName), $(projectName)_version)
-AC_CONFIG_HEADERS(config.h)
-
-# Checks for programs.
-AC_PROG_LIBTOOL
-AC_PROG_CXX
-AC_PROG_INSTALL
-
-# enable pkg-config
-PKG_PROG_PKG_CONFIG
-
-# Checks for library functions.
-#AC_CHECK_FUNCS([memset])
-
-PKG_CHECK_MODULES($(projectName), glib-2.0 clutter-1.0)
-AC_SUBST($(projectName)_CFLAGS)
-AC_SUBST($(projectName)_LIBS)
-
-desktopdir=${datadir}/applications
-AC_SUBST(desktopdir)
-
-icondir=${datadir}/icons/hicolor/32x32/apps
-AC_SUBST(icondir)
-
-AC_OUTPUT([
-Makefile
-$(sourceDir)/Makefile
-$(sourceDir)/$(projectName).desktop
-])
-
-echo ""
-echo "   $(projectName) $VERSION"
-echo "   ====================="
-echo ""
-echo "   To build the project, run \"make\""
-echo ""
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.properties b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.properties
deleted file mode 100644
index d84b2c7..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.properties
+++ /dev/null
@@ -1,28 +0,0 @@
-###############################################################################
-# Copyright (c) 2007, 2009 Symbian Software Private Ltd. and others.
-# All rights reserved. This program and the accompanying materials
-# are made available under the terms of the Eclipse Public License v1.0
-# which accompanies this distribution, and is available at
-# http://www.eclipse.org/legal/epl-v10.html
-# 
-# Contributors:
-#     Bala Torati (Symbian) - initial API and implementation
-#     Red Hat Inc - modification to use with Autotools project
-###############################################################################
-
-#Template Default Values
-HelloWorld.CCtemplate.label= Clutter Hello World Project
-HelloWorld.CCtemplate.description=A skeletal C++ Clutter Hello World project. Creates a folder for sources and autogen artifacts.
-HelloWorld.basics.label=Basic Settings
-HelloWorld.basics.description=Basic properties of a project
-HelloWorld.author.label=Author
-HelloWorld.author.description=Name of the author
-HelloWorld.copyright.label=Copyright notice
-HelloWorld.copyright.description=The name of the copyright holder (e.g. XYZ Corporation)
-HelloWorld.copyright.default=Your copyright notice
-HelloWorld.message.default=Hello World
-HelloWorld.message.description=Your hello world greeting message
-HelloWorld.message.label=Hello world greeting
-HelloWorld.sourceDir.label=Source
-HelloWorld.sourceDir.description=Directory for hello world project source files
-HelloWorld.sourceDir.default=src
\ No newline at end of file
diff --git a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.xml b/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.xml
deleted file mode 100644
index d692d52..0000000
--- a/plugins/org.yocto.sdk.ide/templates/projecttemplates/HelloWorldCPPClutterProject/template.xml
+++ /dev/null
@@ -1,146 +0,0 @@
-<?xml version="1.0" encoding="ISO-8859-1"?>
-<template type="ProjTempl" version="1.0" supplier="Eclipse.org" revision="1.0" author="Bala Torati (Symbian)"
-		copyright="Copyright (c) 2007,2009 Symbian Software Limited and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available athttp://www.eclipse.org/legal/epl-v10.html"
-		id="HelloWorldCPPClutterProject" label="%HelloWorld.CCtemplate.label" description="%HelloWorld.CCtemplate.description"
-		help="help.html">
-
-	<property-group id="basics" label="%HelloWorld.basics.label" description="%HelloWorld.basics.description" type="PAGES-ONLY" help="help.html">
-		<property id="author"
-			label="%HelloWorld.author.label"
-			description="%HelloWorld.author.description"
-			type="input"
-			pattern=".+"
-			default=""
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="copyright"
-			label="%HelloWorld.copyright.label"
-			description="%HelloWorld.copyright.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.copyright.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="message"
-			label="%HelloWorld.message.label"
-			description="%HelloWorld.message.description"
-			type="input"
-			pattern=".+"
-			default="%HelloWorld.message.default"
-			hidden="false"
-			mandatory="true"
-			persist="true"/>
-		<property id="sourceDir"
-			label="%HelloWorld.sourceDir.label"
-			description="%HelloWorld.sourceDir.description"
-			type="input"
-			default="%HelloWorld.sourceDir.default"
-			pattern="[a-zA-Z0-9]+"
-			mandatory="true"
-			persist="true"/>
-		<property id="license" label="License" description="License" type="select" default="BSD" mandatory="false" persist="true">
-    		<item label="BSD License"  name="BSD"/>
-    		<item label="MIT License"  name="MIT"/>
-    		<item label="GNU General Public License v2.0"  name="GPLv2"/>
-    		<item label="GNU General Public License v2.0_or_later"  name="GPLv2_or_later"/>
-    		<item label="GNU General Public License v3.0"  name="GPLv3"/>
-    		<item label="Other"  name="Other"/>
-		</property>			
-	</property-group>
-
-	<process type="org.yocto.sdk.ide.NewYoctoProject">
-		<simple name="name" value="$(projectName)" /> 
-		<simple name="artifactExtension" value="exe" /> 
-		<simple name="isCProject" value="false" /> 
-		<simple name="isEmptyProject" value="false" />
-	</process>
-
-	<process type="org.eclipse.cdt.core.CreateSourceFolder">
-		<simple name="projectName" value="$(projectName)"/>
-		<simple name="path" value="$(sourceDir)"/>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AddFiles">
-		<simple name="projectName" value="$(projectName)"/>
-		<complex-array name="files">
-			<element>
-				<simple name="source" value="../Licenses/AUTHORS"/>
-				<simple name="target" value="AUTHORS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="../Licenses/COPYING_$(license)"/>
-				<simple name="target" value="COPYING"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        	<element>
-				<simple name="source" value="../Licenses/Header_$(license)"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).cpp"/>
-				<simple name="replaceable" value="true"/>
-        	</element>
-			<element>
-				<simple name="source" value="src/autogen.sh"/>
-				<simple name="target" value="autogen.sh"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Basename.desktop.in.src"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).desktop.in"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/ChangeLog"/>
-				<simple name="target" value="ChangeLog"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/configure.ac.top"/>
-				<simple name="target" value="configure.ac"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/INSTALL"/>
-				<simple name="target" value="INSTALL"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.src"/>
-				<simple name="target" value="$(sourceDir)/Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/Makefile.am.top"/>
-				<simple name="target" value="Makefile.am"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/NEWS"/>
-				<simple name="target" value="NEWS"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-			<element>
-				<simple name="source" value="src/README"/>
-				<simple name="target" value="README"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-		</complex-array>
-	</process>
-
-	<process type="org.eclipse.cdt.core.AppendCreate">
-        <simple name="projectName" value="$(projectName)"/>
-        <complex-array name="files">
-			<element>
-				<simple name="source" value="src/Basename.cpp"/>
-				<simple name="target" value="$(sourceDir)/$(projectName).cpp"/>
-				<simple name="replaceable" value="true"/>
-			</element>
-        </complex-array>
-	</process>
-	
-	<process type="org.yocto.sdk.ide.NewYoctoProjectPostProcess">
-		<simple name="projectName" value="$(projectName)" /> 
-	</process>
-</template>
-
-- 
1.7.9.5


