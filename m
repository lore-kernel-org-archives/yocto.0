Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05479E00566; Wed,  8 Mar 2017 06:29:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C31E9E003C1
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 06:29:24 -0800 (PST)
Received: by mail-wr0-f178.google.com with SMTP id u48so24593919wrc.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 06:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=76z1Iq7mlHxL2AyPn7Kp0d4an/Cl47Waz8IP+ypC6do=;
	b=DhMCN5Egwl+ievLENkb0t1jBYIDp9q77oT1gz1mWmzH9IXzmeZWaijTFO/tuG/Q67a
	48pDvbbkAMRWY3PbAJoO2QMU+EJF7+UCY85JtQPMBNS+3ZA3ECdIs54Ym/OUvAynK8z7
	Ocrex3oT1kW007xdFkVbtYWTanavrdIp/ck3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=76z1Iq7mlHxL2AyPn7Kp0d4an/Cl47Waz8IP+ypC6do=;
	b=a9VIGEYcja26hPuyCq8v0bXfjAxLcLTTkGu6d6lG998103nM0iiCTnAkL9azDIZGep
	7zTBioI2JguTXKG4jamDZ1uciL6o85/Im0hJacRQpj2zci6ASZPvrhVvD5dJyiCvCZdo
	ALzhZga7YdqLV7ikxlllfpVlIr7VA0OCReTQka9h+SdqyFM7+T0lHRG4/RA+80AS2gci
	ZY8vBgCyL8YqhQQ05VgKcFBVphO78pR+QGLlBD+iSJSDq9TaJ5nh8BjB4BJGmbJoOVy8
	aOwVa5It2aJ6wEBOho3BaVq6tGanA2Et0a5xW2KLISMBp3Nut3j/6nPCSERfHuEtjXZO
	bDkw==
X-Gm-Message-State: AMke39ldNO8cc+JM7ihKNBTrCS2ItMwSyMv5nnAnq55ZUTNYbHbaNL/Z5tdHWxVyvMlh1A==
X-Received: by 10.223.128.99 with SMTP id 90mr6030830wrk.157.1488983362836;
	Wed, 08 Mar 2017 06:29:22 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-205-71.w2-13.abo.wanadoo.fr.
	[2.13.232.71]) by smtp.gmail.com with ESMTPSA id
	j184sm23422319wmd.31.2017.03.08.06.29.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 06:29:21 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
X-Enigmail-Draft-Status: N1110
Message-ID: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
Date: Wed, 8 Mar 2017 15:29:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 14:29:28 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">For info.<br>
      as the target file of this patch
      (gst-plugins-bad-1.10.2/sys/decklink/gstdecklink.cpp) has changed,
      the patch now fails when building yocto/maser<br>
      <br>
      It was created with gst-plugins-bad-1.10.2 but poky now download
      1.10.4<br>
      <br>
      the patch can be found here :<br>
poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/ensure-valid-sentinels-for-gst_structure_get-etc.patch</font><br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre

-------------- error log --------------------------

ERROR: gstreamer1.0-plugins-bad-1.8.2+gitAUTOINC+5e73b5a484-r0 do_patch: Command Error: 'quilt --quiltrc /home/dominig/build/tmp/work/corei7-64-agl-linux/gstreamer1.0-plugins-bad/1.8.2+gitAUTOINC+5e73b5a484-r0/recipe-sysroot-native/etc/quiltrc push' exited with 0  Output:
Applying patch ensure-valid-sentinels-for-gst_structure_get-etc.patch
patching file sys/decklink/gstdecklink.cpp
Hunk #1 FAILED at 476.
Hunk #2 FAILED at 489.
2 out of 2 hunks FAILED -- rejects in file sys/decklink/gstdecklink.cpp
patching file sys/decklink/gstdecklinkaudiosrc.cpp
Hunk #1 succeeded at 313 (offset -9 lines).
patching file sys/decklink/gstdecklinkvideosink.cpp
Hunk #1 succeeded at 158 (offset -5 lines).
Patch ensure-valid-sentinels-for-gst_structure_get-etc.patch does not apply (enforce with -f)
ERROR: gstreamer1.0-plugins-bad-1.8.2+gitAUTOINC+5e73b5a484-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /home/dominig/build/tmp/work/corei7-64-agl-linux/gstreamer1.0-plugins-bad/1.8.2+gitAUTOINC+5e73b5a484-r0/temp/log.do_patch.5672
ERROR: Task (/home/dominig/AGL/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_git.bb:do_patch) failed with exit code '1'

</pre>
  </body>
</html>

