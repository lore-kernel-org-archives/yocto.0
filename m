Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E42CE00B23; Thu, 11 Oct 2018 22:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FF4E0090C
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 22:11:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w9C5BavA015774
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 22:11:37 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 11 Oct 2018 22:11:36 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 12 Oct 2018 13:03:29 +0800
Message-ID: <20181012050329.8148-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [layerindex-web] Add YPCompatibleVersions to the api page
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
X-List-Received-Date: Fri, 12 Oct 2018 05:11:38 -0000
Content-Type: text/plain

We plan to use this compatible flag to filter the layer index results,
so add it to the api page first.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 layerindex/restviews.py | 4 ++++
 layerindex/urls.py      | 1 +
 2 files changed, 5 insertions(+)

diff --git a/layerindex/restviews.py b/layerindex/restviews.py
index 6e0bc75b848c..b0742798ef66 100644
--- a/layerindex/restviews.py
+++ b/layerindex/restviews.py
@@ -125,6 +125,10 @@ class YPCompatibleVersionSerializer(serializers.ModelSerializer):
         model = YPCompatibleVersion
         fields = '__all__'
 
+class YPCompatibleVersionViewSet(ParametricSearchableModelViewSet):
+    queryset = YPCompatibleVersion.objects.all()
+    serializer_class = YPCompatibleVersionSerializer
+
 class LayerSerializer(serializers.ModelSerializer):
     """
     A more fleshed-out LayerBranch serializer for external applications
diff --git a/layerindex/urls.py b/layerindex/urls.py
index 0593485a4f7a..f87ef3eabbd8 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -26,6 +26,7 @@ router.register(r'machines', restviews.MachineViewSet)
 router.register(r'distros', restviews.DistroViewSet)
 router.register(r'classes', restviews.ClassViewSet)
 router.register(r'layers', restviews.LayerViewSet, 'layers')
+router.register(r'YPCompatibleVersions', restviews.YPCompatibleVersionViewSet)
 
 urlpatterns = [
     url(r'^$',
-- 
2.14.4


