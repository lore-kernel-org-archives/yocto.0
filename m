Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BC57E00566; Fri, 15 Aug 2014 16:40:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E1A1E0054C;
	Fri, 15 Aug 2014 16:39:59 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id fp1so4131109pdb.27
	for <multiple recipients>; Fri, 15 Aug 2014 16:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=mD4QXcESAzfM3/a13gZo6TX6BgQdACcEKPWiFtYUcoY=;
	b=lH2VElRAZGLwAYIFatPECC6+rw6iVkIkhVq5HUlvA8TXfowlKMCpxaa/aR3Ho6E/fy
	CjjlaEFiyWukRH3N8rnq1EJ0Yr5Agy/x8wd/PBu/VMTvZmfei1dQwE6WnL4O1BmhsmRg
	OgUJE4vb+VqPiGnobeIqbNks06pccv5PYucgDklZ1bUF5p/6IXesBYlLNTRacsEoGyDV
	QgTvVKrDDXh7XP1RefT29PlyFbTI6Xi/AKilyTV6t9kKncis0hZIBlx8gBQNiS6Y2+yI
	RSwrguUP5+xAkonMpimVu5pAvYMWHdGH2r4ZRXaGmaKDFIdD15BvQLUaWLFAV4OryMhi
	QduA==
X-Received: by 10.66.136.48 with SMTP id px16mr14571876pab.10.1408145998622;
	Fri, 15 Aug 2014 16:39:58 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:5ac:c9e2:f0bb:91a3?
	([2601:c:9380:601:5ac:c9e2:f0bb:91a3])
	by mx.google.com with ESMTPSA id w7sm9021839pbs.74.2014.08.15.16.39.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Aug 2014 16:39:57 -0700 (PDT)
Message-ID: <53EE9A4B.1040205@gmail.com>
Date: Fri, 15 Aug 2014 16:39:55 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, yocto-bsp@yoctoproject.org
Subject: BSP for SAMSUNG S5PV210 ARM Cortex A8
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
X-List-Received-Date: Fri, 15 Aug 2014 23:40:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



Aloha all,

Does anyone know if there is a Yocto bsp for the SAMSUNG S5PV210 ARM 
Cortex A8 eval board? I have one on order. If there isn't one, then I 
plan on creating one.

Mahalo,
Armin

