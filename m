Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4890DE0076B; Fri, 20 Mar 2015 07:53:15 -0700 (PDT)
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
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F278AE003FA
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 07:53:08 -0700 (PDT)
Received: by iedm5 with SMTP id m5so30181732ied.3
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 07:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=r3Y7TFalOYhrp+FGTPWZDZkQSHscVoVptlwJgAANY+g=;
	b=elAzdvWe2HSBtwcw2ymybUsaxwE9TK46LWDSJ+o+PJya2vmmVLQVy9dSrRxc3rjPlQ
	HUne3cp/oeAemcFNK4WP1B+tS8hJFLApL3uYgl5xRHe4my4UiMrucRMCgmhV0WXjr3Cj
	CsXDOcEtZ3M506GL5KeUf1b+7Fbo7e4bykTtYSxh0DEZqPF/zaxbZL4tfvUR4RiY+Biy
	9ePVopPvFWhu8ctEj7yupF9gtxtvHnLJA/aBMOnWxSSDel1dGwDpgZQoSOqot7+YXjGW
	m01r6kePr918O5VHgORytnD8Eml4LL+cnITv21AwvE7RJtUHd+KWbItgSKlwXT9vgbDC
	LrNg==
X-Received: by 10.107.132.13 with SMTP id g13mr114157781iod.4.1426863188382;
	Fri, 20 Mar 2015 07:53:08 -0700 (PDT)
Received: from [192.168.141.85] ([67.55.34.223])
	by mx.google.com with ESMTPSA id
	g195sm3263555iog.24.2015.03.20.07.53.07 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Mar 2015 07:53:08 -0700 (PDT)
Message-ID: <550C3452.2070403@gmail.com>
Date: Fri, 20 Mar 2015 10:53:06 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
Subject: unpacking poky-dora-10.0.4.tar.bz2
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
X-List-Received-Date: Fri, 20 Mar 2015 14:53:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

When I download and unpack poky-dora-10.0.4.tar.bz2 from
http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/poky-dora-10.0.4.tar.bz2
I end up with a directory called
poky-de14d21bc6633ddeb810cef051b91ee322276496 instead of (the expected?)
poky-dora-10.0.4.

Is this expected?

Best regards,
    Trevor

