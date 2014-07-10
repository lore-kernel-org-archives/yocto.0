Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B37E00734; Thu, 10 Jul 2014 12:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0023]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9F42E006F1
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 12:00:41 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id la4so19765vcb.28
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=a++PDmGKNHEsy4fwT2gDT1ze24AWKxRegSAqgoyXa7o=;
	b=P4odgiPR1ybNzavlqd0omCVhgJk4Sgrudmt6xpi45qT94jYVlWbRe0bLMrd3vn3Z00
	avSOm33OY110izWemnPBqiWbkdZlVkTsFRYMJs/0mLBh0HadjojFaU/HlmqwN2rqx0iQ
	CuEmN0feTZLFX8u1RRGqU4P02kbFCTrVY6BWlt9Y8sGT7dcZu66Lx3zf6FRIA+7S5OvB
	Pc5x3ok03HgW9B/KZXeEkq/TimxV/XgfieKIp6GwOzFIl7Gmxe1KDfyxmqUXXLEjzzwH
	LkAmzee40/4gll37ZPNIyxy+fED1+FftHwvoRO1dt57L9WVOQejU4cWo5DzYNCTJt6tY
	V9oA==
X-Received: by 10.220.68.140 with SMTP id v12mr46677870vci.13.1405018840058;
	Thu, 10 Jul 2014 12:00:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Thu, 10 Jul 2014 12:00:09 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Jul 2014 15:00:09 -0400
Message-ID: <CAF_dkJC121L=5shvVvOebHJRodDRRrRqNxo1dBvbgCVP2bLrCQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Is it possible to prevent a package from updating the shared state cache?
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
X-List-Received-Date: Thu, 10 Jul 2014 19:00:52 -0000
Content-Type: text/plain; charset=UTF-8

Suppose I always wanted Yocto to process a particular recipe local to
a project and never to consult the shared state for that recipe.  Is
there some way to mark a recipe to do this?

--wpd

