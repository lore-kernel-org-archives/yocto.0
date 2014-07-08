Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B11BAE0054C; Tue,  8 Jul 2014 12:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712D7E0044D
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 12:14:11 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id lx4so4226527iec.24
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 12:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XTCQQOfCRGarA0r+x3meEUd39YEuzs8BtqM5DvsBjLo=;
	b=AC1aqC3kUryz0I90hvqA+rGM3XWi1wRIMLmUWpuPZ9zwoDBwSUK8i1SxFY5gjjh8dN
	2vDTTsnYyFKGWTGBhsUkswOSxGAvBbPpBKtTgoOePwdaLbG68QQXUCVoeL11XWhOOnbb
	RmaRASKubTg5VqkyMXYF+wbX/SYGIoGeeEE/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=XTCQQOfCRGarA0r+x3meEUd39YEuzs8BtqM5DvsBjLo=;
	b=jlyKDNuTv24kAwdCL560UFWhrSYJaj9HnH+F7eB/mKuIs6Ez8Ob0b7fKuURmUEbppW
	ga3Bjqp+bYPd799IZv75zIvJ/64Rjgy8wr9DK29oZ2z89rzi3AN5BlwwagFWP7qxsMlv
	nAPCiLd+7bNDmoCBPTzixDy/0CxkGcvJhGBFgXs7vqThNC5tfQXaRMHI4okML8yikUxa
	u8SBfvkM8lMy6yXMCrYeHNFxbrCJEzxZabOXTXTHy0SumkWSSgl0d/8J1mw33L9bfnS+
	lZBN2ZnqO072rSmrDM2muOoj2Ax+7buhwRn0cU4kN+Gb8Rn58Rr4A2Hie0fK0t5mK4lR
	x1cw==
X-Gm-Message-State: ALoCoQnPOumZVqhRVkhr64RrN1dm0zaNyHRA6UjTbOeroI+bPhT0nWQ7IGcZocVlqkwfB0t9q3ow
MIME-Version: 1.0
X-Received: by 10.50.43.167 with SMTP id x7mr6504252igl.36.1404846850945; Tue,
	08 Jul 2014 12:14:10 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 12:14:10 -0700 (PDT)
Date: Tue, 8 Jul 2014 12:14:10 -0700
Message-ID: <CA+gsK-qEG9_RLNx-iyA0C4j9ppYQT48gKXrgn=dktGw7j2bpgA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: MIPI for Intel E3800 Bay Trail
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
X-List-Received-Date: Tue, 08 Jul 2014 19:14:14 -0000
Content-Type: multipart/alternative; boundary=089e011602b2847bdf04fdb365e7

--089e011602b2847bdf04fdb365e7
Content-Type: text/plain; charset=UTF-8

This question is lesser a matter of YP but probably of upstream support.
Nevertheless, the YP kernel experts would certainly know. Which, if any, of
the YP kernels provide MIPI drivers for the Intel E3800?

Thanks,
Rudi

--089e011602b2847bdf04fdb365e7
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>This question is lesser a matter of YP but probably of upstream support. Nevertheless, the YP kernel experts would certainly know. Which, if any, of the YP kernels provide MIPI drivers for the Intel E3800?<br>
<br></div>Thanks,<br>Rudi<br></div>

--089e011602b2847bdf04fdb365e7--
