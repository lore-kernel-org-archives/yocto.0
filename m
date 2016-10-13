Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D8C6E00E71; Thu, 13 Oct 2016 10:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FDA7E00E57
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 10:20:57 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id q126so33624752vkd.2
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 10:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=3ZQ23QDlHP8wXtpnafcy8mQ/oEVIPiZqWWQQU4AmEKs=;
	b=k7eMA+KxTP91Ga/JBokB27M6PQcmxNBLdfljAOE6S0yZ8fNbIMRkzYsU90X7Jd3cvv
	3PU2vsy3fFvasd+G8dxQD782XTbXDXLE2THDSjD/7tFc4M0OhUs8s8H5cR+2ZZam/Odh
	QBtNfIuxqlIUIkjmCz/MsQSpbGY9y6kRaOx4rHXLJJgg8C28UWJUdfJ+d3ZCOR2myIJp
	5ULn1PkKbaS0zkk0kCsj60KKX1spDcTJCKO0HtRAawsLIh6Lx8Szo92Id7alZ9lnVhrs
	IBanhtj0iItvTHhTBBYnGO3ee0clyJwINf8auIfHGnnjGpZBzEJqOUN6gj71yxcIhUj8
	t0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3ZQ23QDlHP8wXtpnafcy8mQ/oEVIPiZqWWQQU4AmEKs=;
	b=VXiWRFg6IEr35NgykNdDjpT8Eoa8v59rTZKQv5mVQuRhbAioFlExT1tRoX5UkxWsth
	O5xQVnQqx1Doo1TjEleMyIbEJV1E+nK6TRre9aeAtEfDSro4sa6Jb/wMRHxpIduEwfhw
	KtvRSBvSV5rJBu/M809NXIJ+OaSup6K4r5Qc6jhnzWhy0jXuTihh9jC1AbdtE1iy1h7Y
	Pwa8hPQpl/8lwhvlrWvcu97+fNhvYOQxDYKKLTuUWukWfj5Jghnrxaze9m8nnbbgu4Pn
	5i6FP49mKbwL4kWBcMRxWKBVc8bsMc8pN9xuFrPNEhDKmCwBg1MNpEaci6LYltTTm4tz
	/RGg==
X-Gm-Message-State: AA6/9RlkDQlu6/ISM4AjtEjqOmpC2lATYwt/mhKEc0J86FF1BagBw8ISyScFS6Uc+GVJ+/BT7xGuDxl8lAyg1Q==
X-Received: by 10.31.206.198 with SMTP id e189mr4637582vkg.51.1476379256868;
	Thu, 13 Oct 2016 10:20:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Thu, 13 Oct 2016 10:20:56 -0700 (PDT)
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 13 Oct 2016 19:20:56 +0200
Message-ID: <CALbNGRRHQJGxcNCLNN+q4YGeV=VwfPbtO_XrcoMj-ngQkjSiqw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Big endian ARM machine with NEON wanted
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
X-List-Received-Date: Thu, 13 Oct 2016 17:21:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Does anybody know a big endian and common machine supporting NEON? I
would need one for testing my port of portaudio.

Thanks in advance

Andreas

