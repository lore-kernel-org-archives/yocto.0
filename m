Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D7E3E0097F; Wed, 19 Aug 2015 15:23:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B044E00947
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 15:23:16 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so115990779igb.0
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 15:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jW/K8PODXnj6sRjcBBuvwZe3iXDzTwNlwL+MLOHC9Rs=;
	b=qZ7M0m1KcTuEQykDoQR65FiQFH/dySUvxp8HHv5rNIB86ZZYiD1DZIORXyQ/ftjx+/
	fftYIlXy6mYZxpZAjNpETSKufDFCiNblaYqQIVN1IiZ2cfAnF2SjIB+sutkURaAv3SyS
	zQ6DieMA3uJK+n5p6sQzRi8+LO9eDCqBHmPkAWz41f3Y5HYrHWAh8flzc/5zXt81igVv
	omBbfHCXV755cje+ngGwOZFdhJK0Ymwsm7hjPonGyCx2/LgVyWrIi9C67e1UWbQv5L6i
	apAJ1gGX9DOaA+qzyJSdZ7J8zVux3AzSHd/xRotgeWs5cIF0Tez9MUQEpBHgySNJydD+
	Ff2Q==
MIME-Version: 1.0
X-Received: by 10.50.114.68 with SMTP id je4mr6750241igb.78.1440022996047;
	Wed, 19 Aug 2015 15:23:16 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Wed, 19 Aug 2015 15:23:16 -0700 (PDT)
Date: Thu, 20 Aug 2015 00:23:16 +0200
Message-ID: <CALbNGRSQGZdyeWGF8vWN9gqJ-iO9CYiQy9pjKNFpCYEyJM09TA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] kernel do_patch lasts ages
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
X-List-Received-Date: Wed, 19 Aug 2015 22:23:20 -0000
Content-Type: text/plain; charset=UTF-8

Hi

since one week or so my build sometimes freezes with

linux-raspberrypi-3.18.11+gitd64fa8121fca9883d6fb14ca06d2abf66496195e-r0
do_patch (pid 7335)

without any progress noticeable.

In log.do_patch I see strange stuff:

DEBUG: Executing shell function do_patch
[INFO] validating against known patches  (raspberrypi2-standard-meta)
  [####################################################################################################]
(|)(200 %)

Anybody out there with ideas what's going on?

Andreas

