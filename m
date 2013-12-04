Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A95E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 09:22:13 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id db12so12269313veb.36
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 09:22:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=BdB5NXWJOhMQgMytuhSM8A6LSwqJPr/tpfAszfbn8N0=;
	b=B0HUBRsv9BXYrm3ZXtUwKL7Pc59XkMtA4z05ipAoM4GrgJSX9pm9ztC4lPKKzrhSyF
	yo/Dt+Av5GiX5ZGJLdjJHzMFjOKXLfBA3c/eVyZPxC6087w7v1t9f1UyT5dmXHsoguBV
	5/Xh9EP1Cv7nheou+2DUhOWRuTsxWygnbfp/jis7rYSxMrO1OZsYt2vH2ptQH4K5PgxE
	N/oTlsA8U1NYTaoxFrhQMTRE6NViKQshCHLjykKfMuiCkYA4abREnEYQu7k52dBYoMys
	ol85KzQtpTVICO5GycUEhiK5L8ciyyFxoPPUw2TQv2KFSexGvq7vPutQYmPlXt+wptKe
	4c/Q==
X-Gm-Message-State: ALoCoQlqrLzX4l7Odcc9qqFSonCOWq8owQr5Sp6G+rfSyhYD0C9xEhmYucce/eTFNKuSuWU/wHqF
MIME-Version: 1.0
X-Received: by 10.52.118.98 with SMTP id kl2mr7527743vdb.30.1386177732742;
	Wed, 04 Dec 2013 09:22:12 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 4 Dec 2013 09:22:12 -0800 (PST)
Date: Wed, 4 Dec 2013 17:22:12 +0000
Message-ID: <CAPhnLPDFiPugxjMQLpUkVcC8-KFHiceFb3Q7qk7yAu-zPP=6mg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [RFC] Poky-contrib cleanup
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
X-List-Received-Date: Wed, 04 Dec 2013 17:22:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I've identifed around 400 branches in poky-contrib that were last
touched prior to 2013. I've asked people a few times to review their
branches and clean up, but I'm sure some folks have either left the
project or haven't been paying attention or really do need their older
branches.

So, I would like to propose moving any branch last committed to before
2013 to a new repo "poky-contrib-archive". This way we can speed up
fresh clones of poky-contrib but still maintain old branches that
might be useful.

Thoughts? If no one objects, I'd like to do this next week on the 12th.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

