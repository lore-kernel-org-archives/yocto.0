Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F442E00BA1; Thu, 21 Nov 2019 13:12:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE4FE0053F
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:12:34 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id i11so5141439iol.13
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 13:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=4AxkGGDxxb7RYWiHIV4hncmsl4uxfC4y5TN3+tEPWLk=;
	b=Kq8ZEqLNLpkqjjVjOxoQcSptguYYD43lEJyH3PfeLzWNe9wZxeMwDhLReh9RMw6aT+
	Faw9jwAmsK7WOEF1Xlm9zCt7kYKWuQQxqYFr+lf5KODDpKLNWvW4Jk7GndLQmfx03LiB
	eyqtZGV32A1mW+NmbcpzIUknJdwVc5LMMGzeO+pivQ8z2NxGy9gusYWQBr8Qn2Z+C4H/
	1Thbp2M2pnCI8fZguKKTMiTWLYcuXs523Y5KYAMeOntRENEDbbzWZSAthJlfD1/5NXF8
	6H5nDIZz6CKfAPCZ+FL6FQkpjV3LB7pesIH49sV5tIBtu3QaMZhid5ZJFmqJq1yDoSg3
	1pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4AxkGGDxxb7RYWiHIV4hncmsl4uxfC4y5TN3+tEPWLk=;
	b=te2m+cXz+fPAm+cUfEkwYOMwmWqgJSHaqQzmMjt1vKLsK50UdTYCtS43JQ98p9v0/7
	hJiDpF1l5VEfznZ3AG0GWq/rqBb4VXeFYYUBksOMNgvg9xlnrgPqcQAFJqI4GjK4w+OV
	ERjge71G6nnFOViKrN3GZfhMbk29jm9igGxGEWinWOVhenS/YuoxL8C8casX8Q5mJxQA
	kTiG23YpdlbEf/j7mZN2jVP9uVlVZcgBxUoRudrWnXVCxbdCREhXYZa6oZI8SgxsTBTQ
	hOJhHvsDXY054SWFmmfxTgRgQyW8vp+uhfO8kpchy14G4i4J2AVXMXs2BxBPSDX18yzd
	fDdw==
X-Gm-Message-State: APjAAAXAyXUg+0QAKoRxj5fwGLGWXTvHhGHfD5T7jsbXYh25kGF19tGG
	boZVNtPtJObviQqV9p1gv+LkkLSE8bkt396DDI1fiUqK6a1FVQ==
X-Google-Smtp-Source: APXvYqwyoCZW0aYbq56D+4jB2d2IhUN31eytSj5J9ShgnJFGeKpwUX98/DxC05IUgKpyKjUjMV2hgBoa8TFH1W+p0Ek=
X-Received: by 2002:a5e:8a04:: with SMTP id d4mr9957320iok.42.1574370754203;
	Thu, 21 Nov 2019 13:12:34 -0800 (PST)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Thu, 21 Nov 2019 16:12:23 -0500
Message-ID: <CAPoiz9w9qWwEqMipK7iF-VLP5dFH21nZdTCpeLNncsqHHpFJxQ@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Subject: OpenEmbedded Workshop at FOSDEM20 CFP
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
X-List-Received-Date: Thu, 21 Nov 2019 21:12:36 -0000
Content-Type: text/plain; charset="UTF-8"

We are proud to announce the inaugural OpenEmbedded Workshop. It is
being held on 03 February 2020 in Brussels, Belgium. The day after
FOSDEM.

The Call for Participation is open now. For more information, go to
https://pretalx.com/oe-workshop-2020/cfp

Early-bird tickets coming soon!

Thank you,
The OpenEmbedded Board

