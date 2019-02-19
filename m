Return-Path: <kristupas.savickas@teltonika.lt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA9ECE00AB0; Mon, 18 Feb 2019 21:46:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.61.46.25 listed in list.dnswl.org]
Received: from mail.teltonika.lt (mail.teltonika.lt [92.61.46.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABC6E00901
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 21:46:16 -0800 (PST)
Received: from [192.168.90.159] (88-119-152-93.static.zebra.lt [88.119.152.93])
	by mail.teltonika.lt (Postfix) with ESMTPSA id 16BEB2460011
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 07:46:15 +0200 (EET)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Message-ID: <0a62a0c4-add9-4e7a-7506-bf14e9a1a1c7@teltonika.lt>
Date: Tue, 19 Feb 2019 07:46:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
Subject: Triggering a rebuild when file deployed from other recipe changes
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
X-List-Received-Date: Tue, 19 Feb 2019 05:46:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

I have a recipe that packages images from ${DEPLOY_DIR_IMAGE} into a 
final binary that can be installed by the user. It looks something like 
this:

do_compile[depends] += "virtual/rootfs-image:do_image_complete"
do_compile[depends] += "virtual/boot-image:do_deploy"
do_compile[depends] += "virtual/bootloader:do_deploy"

do_compile() {
     zip -j --compression-method=store \
         ${B}/${IMAGE_VERSION_STR}.bin \
         ${DEPLOY_DIR_IMAGE}/${ROOTFS_IMAGE_FULLNAME} \
         ${DEPLOY_DIR_IMAGE}/${BOOT_IMAGE_FULLNAME} \
         ${DEPLOY_DIR_IMAGE}/${ABOOT_IMAGE_FULLNAME}
}

Is there a way to trigger a rebuild of this package if any other package 
it depends on rebuilds? I guess I need to do something with sstate, but 
I'm not sure what mechanism I'm supposed to follow (or am I off the 
beaten track?).

-- 
Pagarbiai,
Linux programuotojas
Kristupas Savickas
+370 633 36795


