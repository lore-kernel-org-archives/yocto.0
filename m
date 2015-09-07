Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24121E00CE0; Sun,  6 Sep 2015 19:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B0EE00C22
	for <yocto@yoctoproject.org>; Sun,  6 Sep 2015 19:40:57 -0700 (PDT)
Received: by iofh134 with SMTP id h134so75362517iof.0
	for <yocto@yoctoproject.org>; Sun, 06 Sep 2015 19:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=uzDupExA9mrLsGOXlQGFB/bYNM779pNA6glF8h08IgA=;
	b=NaJ+C1iY4DT+gN2Avv2yyXbCChTvLvkcSyINeJnWqRprI93LQAZW4OPXZ+K/z3XQAX
	86LhYfADu39yL73qYW8F4YPi6kr52g1bmhaX1XBTtqJPbPxFPDx5tSoaOGww8FL2h0hd
	GwdSLHLVp8jmB1KZQi1P5WMaHx5IBfOoB8ZK85wMuC6EflyM1xOHRzHAP37erxvBMfPZ
	30hlUK+0axfoyvLfBJ1GSZW8O3pkyGhmSEvawQDqlgwmn8uyw5o4iOm57lHtYPa1sv0X
	AlDoOx3IIySrf0W4DTZKndRdLr1uS9YROz9d+qklMIBGLXT/GdwrtYIyP2hJGAJ/GiwC
	u+HQ==
X-Received: by 10.107.135.169 with SMTP id r41mr14598180ioi.152.1441593656945; 
	Sun, 06 Sep 2015 19:40:56 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	k2sm4943552igx.0.2015.09.06.19.40.56 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Sep 2015 19:40:56 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55ECF934.80902@gmail.com>
Date: Sun, 6 Sep 2015 22:40:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Mon, 07 Sep 2015 02:41:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

I can't explain why, but when I build "core-image-minimal" for
MACHINE=raspberrpi2 I get the following SD creation error:

    ERROR: Error: The image creation script
    '/z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.rpi-sdimg'
    returned 2:
    expr: non-integer argument
    WARNING:
    /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.rpi-sdimg:1
    exit 2 from
      ROOTFS_SIZE_ALIGNED=$(expr 12288.0 + 4096 - 1)


Looking at meta-raspberrypi/classes/sdcard_image-rpi.bbclass, line 83:

    ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} +
${IMAGE_ROOTFS_ALIGNMENT} - 1)

which looks like the offending line. ROOTFS_SIZE seems to come from the
line immediately above:

    ROOTFS_SIZE=`du -bks ${SDIMG_ROOTFS} | awk '{print $1}'`

But 'du' doesn't return non-integer values, does it? When I invoke the
host's 'du' I get the correct value:

    du -bks
/z/layerindex-master/raspi2/tmp/deploy/images/raspberrypi2/core-image-minimal-raspberrypi2-20150906234844.rootfs.ext3
| awk '{print $1}'
    12288

Does anyone have any idea why the ".0" is getting tacked on?

Best regards,
    Trevor

