Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 348FDE00C32; Wed,  3 Feb 2016 05:41:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C765BE00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 05:41:43 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id g73so55272402ioe.3
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 05:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=H3WrRbKKvcC3DWWzA/Qs8ssayc2uOWPV5PSMm73OEYU=;
	b=dVVyViBa0ciw2we9TKnfgljo8KjfI4AVQrbzZ/XSS1zbze8EZa8H4x6Jdk4CyTrCar
	HPzoE8fIoneF+FjQh34hBvYodkZqq3E+y3AI9LonjGuVoARNNASQqOL2zj5VjwG691Wx
	CGCrplS450rhgQnUa1TFXwYGelA0vXQoQNA2aC4ZGwJhJvYyZJdykO1JIU3vuKvry64a
	kBRnNNfvUC/QLkD+1KAhJPlotLIEtv+NDPXSSsGFcxMflSQszguttD4hzPC/ila+5qzW
	CH6ul5HmE54mLHU7QqgaRSn8r+WM1Wg+TZNHj+rOK6haVS4RrC7tk+YIM/5IS3maDWwM
	zmeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=H3WrRbKKvcC3DWWzA/Qs8ssayc2uOWPV5PSMm73OEYU=;
	b=Q2s6IRo55LYs+t8k9mC8hDN4IexjxMdRq0jlr8a3YW4EXEgkcbKFWPbAYTQLaqpQyy
	zjJvKG3impy4SwKNdvrPb9YL38JN+aqmK27IN13JtzRua1oVkHey2N/PMl5N8YACsrp+
	ltLgZit6ChQrj6BiS1edBtlkkM49u9296h9SCYX+yCdJz3W6G0gIFv3mtxupfolCXCoC
	QRRtwGJyFOfZ+++DVNuT+HIyVQWBsGZClrEgq4zqGjQHJl85C2W+EDH9u53pio0sHZb/
	ASR9BIBajAA8YBNylsnXEtvbV1krFr+N4nYKJjH6wyPR+o4UWQZ0QuxqbQ4StFEn52gX
	766g==
X-Gm-Message-State: AG10YOSwRvt9O2wxGdnZKRMbYNswrbzTW8EoNNpCKe/vVUs68wLc/5BEQ4JNG2d+5XAoHB9U9z2vx/Mu7nXMdA==
MIME-Version: 1.0
X-Received: by 10.107.10.157 with SMTP id 29mr3884380iok.133.1454506902903;
	Wed, 03 Feb 2016 05:41:42 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Wed, 3 Feb 2016 05:41:42 -0800 (PST)
Date: Wed, 3 Feb 2016 14:41:42 +0100
Message-ID: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Wed, 03 Feb 2016 13:41:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

FAQ for layerindex says recipes are updated every 3 hours but I think
it does not work. E.g meta-oe geis/grail/frame are not mentioned but
were committed few days ago.

Andreas

