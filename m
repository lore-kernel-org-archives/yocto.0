Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BE3DE00777; Tue, 10 Mar 2015 05:12:50 -0700 (PDT)
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
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E652E00750
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 05:12:45 -0700 (PDT)
Received: by padet14 with SMTP id et14so1281535pad.11
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 05:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ivFOSLoeYKAbDGlYOgEIkQp4r7LqLMQXkightGE+zM0=;
	b=LttPSYr5SW5jYZPFr9ROf0XZmAPujJKAKG4J9kTBGzqEHD3Itf19jmnLBtAM5ktZS9
	LQFTrhFSbKm8Y1S0j5Q9hpMzzFG8XQTakNJ2PnEddf96UZmenAkoI3k7gNvzicflffjk
	JUXWSKdsvkQ7RzCrdLyMGIIHjJPMaxUhRKrWI5Uh+vDTFvIN1CWR+d51VCzJpVoSGoZM
	9TedkdFnvEjW0OVqtYSWp9TVIw8dIbuhknPCllQ2o+NC0ryNYnohS2btZ3m9BwdvkVsI
	cPXpnS/BTdAbODamoWr3WCHfKwLnjtb793KEurLfaBl7qmIiD6ffPFYHvl1IcZLulcuV
	/E1A==
MIME-Version: 1.0
X-Received: by 10.70.53.137 with SMTP id b9mr66215436pdp.69.1425989565420;
	Tue, 10 Mar 2015 05:12:45 -0700 (PDT)
Received: by 10.70.38.9 with HTTP; Tue, 10 Mar 2015 05:12:45 -0700 (PDT)
Date: Tue, 10 Mar 2015 13:12:45 +0100
Message-ID: <CALbNGRRQCZPgJ2eC90ZVR_N-_xsob4K9Dv6SgnvYt=qsd1YK5g@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: meta-gumstix-community moved - please update layerindex
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
X-List-Received-Date: Tue, 10 Mar 2015 12:12:50 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

meta-gumstix-community has moved to

https://github.com/schnitzeltony/meta-gumstix-community

Could you update layerindex please?

Andreas

