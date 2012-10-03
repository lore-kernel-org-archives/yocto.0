Return-Path: <Aws.Ismail@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EFEBE00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 09:57:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q93Gvnq8023268
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 3 Oct 2012 09:57:49 -0700 (PDT)
Received: from [128.224.147.212] (128.224.147.212) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.309.2;
	Wed, 3 Oct 2012 09:57:49 -0700
Message-ID: <506C6E84.7080201@windriver.com>
Date: Wed, 3 Oct 2012 12:57:40 -0400
From: Aws Ismail <aws.ismail@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [128.224.147.212]
Subject: [PATCH] psplash: Add custom bar image and color options.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: aws.ismail@windriver.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 16:57:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

I have sent this a about two months ago but did not get a reply.
So I am sending it again to see if anyone has comments on it.

Thanks.

Aws\


-----------------------------------------------------------------
Author: Aws Ismail <aws.ismail@windriver.com>
Date:   Thu Aug 16 11:06:13 2012 -0400

     Use correct blue offset value for BGR888

     fs->blue_offset should be compared to 16 instead
     of 8 in order to detect BGR.

     Credit goes to Ulrich Feichter <u.feichter@avibit.com>
     for detecting this.

     Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
---
  psplash-fb.c |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 71740cd..f65d67e 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -185,7 +185,7 @@ psplash_fb_new (int angle)
           fb->rgbmode = RGB888;
    } else if (fb->red_offset == 0 && fb->red_length == 8 &&
        fb->green_offset == 8 && fb->green_length == 8 &&
-      fb->blue_offset == 8 && fb->blue_length == 8) {
+      fb->blue_offset == 16 && fb->blue_length == 8) {
           fb->rgbmode = BGR888;
    } else {
           fb->rgbmode = GENERIC;


