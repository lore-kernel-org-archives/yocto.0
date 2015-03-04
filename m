Return-Path: <scerveau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60867E00754; Wed,  4 Mar 2015 08:48:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scerveau[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2605E006EF
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 08:48:28 -0800 (PST)
Received: by wesu56 with SMTP id u56so47586256wes.10
	for <yocto@yoctoproject.org>; Wed, 04 Mar 2015 08:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=4Vk4b3P9Ag8q/FjP/T5GMyE4I9Sg4lNw0LtmyDTPcso=;
	b=ytATFtsNx5TfXeVkwGcbbOsA9vQsgpP9T/Qitq/ZeeBzH9Y8xxzUYbdZGm+wzEf0l5
	p2zgQ/A/myY/l2HNxZhFkCxRCT5RUH5N6GnJbooKIWbfmnKG2thYoHp4l8rUEyS32xsP
	BHLBlfF/cdYiXpUjgaCDCeUXU8L1NeNX7VPeJT0lLCKtJHqVWvx+JCLzuFiiVEG9AIBx
	+Sj4oQ5b80BD+YmGBVjI1zlxghXgLCg8bHzmpusi36ZgkDmual1ZYDFUSMKpjuaYIDp+
	+ZbJYevT7nA5SKZmbU5In5u9aW6KcLlsA4yhWj+hR4p4bbpuC9tym7xyOqq0q77KFLIk
	Q2pA==
X-Received: by 10.180.105.131 with SMTP id gm3mr58154227wib.11.1425487707854; 
	Wed, 04 Mar 2015 08:48:27 -0800 (PST)
Received: from [172.24.63.26]
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id hw7sm2820261wjb.24.2015.03.04.08.48.25
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Mar 2015 08:48:27 -0800 (PST)
Message-ID: <54F73757.9070702@gmail.com>
Date: Wed, 04 Mar 2015 17:48:23 +0100
From: scerveau <scerveau@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: gstreamer1.0-plugins-good: Fix qt with alac
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
X-List-Received-Date: Wed, 04 Mar 2015 16:48:31 -0000
X-Groupsio-MsgNum: 23848
Content-Type: multipart/mixed; boundary="------------030607050305060603010508"

--------------030607050305060603010508
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Here is a patch for alac encoding with qtmux.
Someone could be interested.

https://www.marc.info/?l=gstreamer-cvs&m=141954352317221&w=2

Best regards.

Stéphane

--------------030607050305060603010508
Content-Type: text/x-patch;
 name="qtmux_fix_alac_muxing.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="qtmux_fix_alac_muxing.patch"

diff --git a/gst/isomp4/gstqtmux.c b/gst/isomp4/gstqtmux.c
index fc747ed..6614ba4 100644
--- a/gst/isomp4/gstqtmux.c
+++ b/gst/isomp4/gstqtmux.c
@@ -2870,7 +2870,8 @@ gst_qt_mux_audio_sink_set_caps (GstQTPad * qtpad, GstCaps * caps)
     if (GST_READ_UINT32_LE (map.data + 4) == FOURCC_alac) {
       len -= 8;
       codec_config =
-          gst_buffer_copy_region ((GstBuffer *) codec_data, 0, 8, len);
+          gst_buffer_copy_region ((GstBuffer *) codec_data,
+          GST_BUFFER_COPY_MEMORY, 8, len);
     } else {
       codec_config = gst_buffer_ref ((GstBuffer *) codec_data);
     }

--------------030607050305060603010508--
