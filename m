Return-Path: <Breixo.Lopez@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E159E00A7F; Mon, 24 Oct 2016 14:32:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (breixo.lopez[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Oct 2016 14:32:08 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF255E0070F
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 14:32:08 -0700 (PDT)
Received: from [87.156.173.72] by 3capp-gmx-bs73.server.lan (via HTTP); Mon,
	24 Oct 2016 23:26:59 +0200
MIME-Version: 1.0
Message-ID: <trinity-ee573f61-4ec5-47e9-8586-c5d6ff22723b-1477344419519@3capp-gmx-bs73>
From: =?UTF-8?Q?=22Breixo_L=C3=B3pez_Garc=C3=ADa=22?= <Breixo.Lopez@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 24 Oct 2016 23:26:59 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:sZlXvGSApPBrpAFF6ZL1XlXIbXLCcFhLDppaQ419/AX
	jpKCUxm4KqCwlJm5CArmzq1gPF4IBs3L3llrRGPSjSHo/g1xkH
	ZkzpLuyXLRogUDJkLqjF62J+p5WXrB1n4hfdse1fVOJuJQ8tOA
	Kvl+aV/vprG9fPPdFXiYaqL38YRFhm2vsyiXNAcRFAyYR4ayZl
	wTOyuzq1p0/t5lm0vc7H4eW53NXXPSuP1kgBtIsxd1T716Nteg
	S8DFKsBX0h+mVb0THfL6u1xQCuwyXAls0DHma1hN/6Zfhcv3Gu jXoONE=
X-UI-Out-Filterresults: notjunk:1;V01:K0:MJ3WQ+lyJZY=:Db1tPckckF3x60JW9iiDV5
	I/4Zw1Qu6GlKudAxAstAt0kA+fhqZYRIeI2cihi9wobQffxQWhAkhyJH9K1SZ3AERYuZUSGkY
	sW/AhkLMVWtGnZtV1r/kjpkhzYR1N84YXEE5j0pFH/HAvef1N2SOYJTWh2lTDavkXl3M7npnS
	lZ0BOrmU3lsDDdnQN2ZN5sugPQfLh5V3Yd6X4qjRnko3rk9dLn8yBlAMAM4SQ7Y+Bt05DK+NL
	CQvcapGX/gXwNiEARqG6YLdxPvxoZexzAP/iPTMtIVCSkUoC9nZzkl8uwPRK0wIOQxdor4/P2
	MMknvO59Z/HNvlSqZtFMFylDunknXuePWKjWKJbzpYSl/2y7TSHjrrleDJG09lrgLT25mW3T/
	jyAisnGW+D9wFdv4sLgk8G5fmOiGSrXGlCHPJwlH8RS4bCDIefV7N6F1xK0AlgQeM+CXPCn4k
	vZT4SmFUFw==
Subject: Re: [meta-raspberrypi] Master doesn't seem to be building right...
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
X-List-Received-Date: Mon, 24 Oct 2016 21:32:11 -0000
Content-Type: text/plain; charset=UTF-8

Hi Frank,

I found similar errors that you using the ktogoth branch in the poky repo from yocto. When I build the rasberry-pi2 images in a debian Jessy host.

The issue in my case is that the parsing use in split_overlays function from the meta-raspberrypi/classes/linux-raspberrypi-base.bbclass  was not working properly for my case.

I resolved it with a "workaround", when I figured out that the issue is in the task rpi-sdimg from meta-raspberrypi/classes/sdcard_image-rpi.bbclass in the mcopy, because the command was running over files without the correct name

The patch applied in my case looks like:


diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
index 0487ef1..5f555c9 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -116,9 +122,11 @@ IMAGE_CMD_rpi-sdimg () {
                mmd -i ${WORKDIR}/boot.img overlays
                for DTB in ${DT_OVERLAYS}; do
                                DTB_EXT=${DTB##*.}
+                                #DTB_EXT=dtb
                                DTB_BASE_NAME=`basename ${DTB} ."${DTB_EXT}"`

-                       mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}
+                       #mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}.${DTB_EXT} ::overlays/${DTB_BASE_NAME}.${DTB_EXT}
+                         mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${DTB_BASE_NAME}-overlay.dtb ::overlays/${DTB_BASE_NAME}-overlay.dtb
                done
        fi
        case "${KERNEL_IMAGETYPE}" in
diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 3a6e33d..02535b2 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -36,7 +36,8 @@ def split_overlays(d, out, ver=None):
     dts = get_dts(d, ver)
     if out:
         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
-        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
+        overlays = oe.utils.str_filter_out('\S+\.dtbo$', dts, d)
+        #overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
         overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \
                    " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)

-----------------------------------------------------------------------------------------------

Please be aware that this patch is not fully tested and it is only a workaround could be possible that is not working for all the cases.

-Regards 



