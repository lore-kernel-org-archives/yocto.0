Return-Path: <bevenson@melinkcorp.com>
Received: from hrndva-omtalb.mail.rr.com (hrndva-omtalb.mail.rr.com
	[71.74.56.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87EC2E015A6
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 06:50:10 -0700 (PDT)
X-Authority-Analysis: v=2.0 cv=R/aB6KtX c=1 sm=0 a=oH/T31WtClCaBcnw0WEUzA==:17
	a=GDJcWSoBFrAA:10 a=u0wVhyBbg9UA:10 a=p0Hsp6PJnzcA:10
	a=qixkpPymAAAA:8 a=KGjhK52YXX0A:10 a=8Pm0Rrj0-aoA:10
	a=OlQVsI4-gmbWftCPNboA:9 a=C3B5OrDE1XEA:10
	a=oH/T31WtClCaBcnw0WEUzA==:117
X-Cloudmark-Score: 0
X-Authenticated-User: 
X-Originating-IP: 98.100.91.242
Received: from [98.100.91.242] ([98.100.91.242:47484]
	helo=ih3-development.melinkcorp.local)
	by hrndva-oedge02.mail.rr.com (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 2.2.3.46 r()) with ESMTP
	id AF/F2-01080-21D85425; Fri, 27 Sep 2013 13:50:10 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Fri, 27 Sep 2013 09:49:34 -0400
Message-Id: <1380289774-26237-1-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [yocto-autobuilder][RFC PATCH 1/1] Document CreateBBLayersConf
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
X-List-Received-Date: Fri, 27 Sep 2013 13:50:11 -0000

Adds details on how to use CreateBBLayersConf to
README-NEW-AUTOBUILDER.  Details on usage were gathered from
code inspection of CreateBBLayersConf.py and from personal
usage experience.  Sent as an RFC to request comments on
section placement and wording.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 README-NEW-AUTOBUILDER |   43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index ae1852c..27f892f 100644
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
+              'bbtextprepend': '#Adding one comment line\nAdding a second comment line\n'
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
+          meta-openembedded/meta-networking, and meta-openembedded/meta-gnome to
+          BBLAYERS.  Note that this will override any default layers from a
+          bspprovider.
 
 scheduler: A list of dicts. Each item defines a scheduler associated with this
        buildset:
-- 
1.7.9.5


