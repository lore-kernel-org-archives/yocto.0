Return-Path: <bevenson@melinkcorp.com>
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34EFBE00A50
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 07:26:30 -0800 (PST)
Received: from [98.100.91.242] ([98.100.91.242:37480]
	helo=ih3-development-ubuntu-vm.melinkcorp.local)
	by cdptpa-oedge02 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id D3/41-15561-525E9135; Fri, 07 Mar 2014 15:26:29 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Mar 2014 10:25:44 -0500
Message-Id: <1394205944-6955-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
X-RR-Connecting-IP: 107.14.168.130:25
X-Cloudmark-Score: 0
Subject: [AB PATCH 01/01] README-NEW-AUTOBUILDER: Document CreateBBLayersConf
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
X-List-Received-Date: Fri, 07 Mar 2014 15:26:31 -0000

Adds details on how to use CreateBBLayersConf to
README-NEW-AUTOBUILDER.  Details on usage were gathered from
code inspection of CreateBBLayersConf.py and from personal
usage experience.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 README-NEW-AUTOBUILDER |   43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index 1e46f5b..1b972af 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -90,7 +90,48 @@ props: A list of dicts. This is used when you need to add properties to a
 
 steps: A list of dicts. These steps can be either custom buildsteps or basic 
        buildbot buildsteps with args passed as dict pairs. Custom buildsteps
-       that we utilize are in lib/python2.7/site-packages/autobuilder/buildsteps
+       that we utilize are in lib/python2.7/site-packages/autobuilder/buildsteps.
+
+       CreateBBLayersConf: This build step creates the bblayers.conf used by the
+       build system to determine which layers to use and where to find them.
+
+          {'CreateBBLayersConf': {'buildprovider' : 'yocto',
+            'bsplayer':'True',
+            'bspprovider':'intel',
+            'bbtextprepend':'text_to_prepend',
+            'bbtextappend':'text_to_append',
+            'layerdirs': ['layerdir1', 'layerdir2', ...]}}
+
+          buildprovider: Optional and defaults to 'yocto'.  If this is set to
+          'yocto', then it adds the layers' 'meta', 'meta-yocto' and
+          'meta-yocto-bsp' to BBLAYERS. If set to 'oe', then only 'meta' is
+          added to BBLAYERS.
+
+          bsplayer: Optional and defaults to False.  Set this to 'True' if you
+          want to use an established BSP layer and include its default layers.
+
+          bspprovider: Required if bsplayer is set to True.  Defines the BSP
+          provider so the default layers can be included.  At this time only
+          'intel', 'fsl-ppc' and 'fsl-arm' are recognized.
+
+          bbtextprepend: Prepends the given text to bblayers.conf.  Use \n in
+          the text to start a new line and always end the text with a \n.  For
+          example:
+              'bbtextprepend': '#Adding one comment line\n#Adding a second comment line\n'
+
+          bbtextappend: Appends the given text to bblayers.conf.  Same format
+          as bbtextprepend.
+
+          layerdirs: Used to add layers to BBLAYERS.  Layers are added in the
+          order specified and are added after the layers created by the
+          buildprovider.  For example:
+              'layerdirs': ['meta-openembedded/meta-oe',
+                  'meta-openembedded/meta-networking',
+                  'meta-openembedded/meta-gnome']
+          will append the layers meta-openembedded/meta-oe,
+          meta-openembedded/meta-networking, and meta-openembedded/meta-gnome
+          to BBLAYERS.  Note that this will override any default layers from a
+          bspprovider.
 
 scheduler: A list of dicts. Each item defines a scheduler associated with this
        buildset:
-- 
1.7.9.5


