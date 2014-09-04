Return-Path: <janjaapkempenaar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 624FBE0079E; Thu,  4 Sep 2014 04:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (janjaapkempenaar[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0A07E004F5
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 04:41:09 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id w62so10047008wes.13
	for <yocto@yoctoproject.org>; Thu, 04 Sep 2014 04:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=QPVsN7GUURK7gx+ASRhDNC5iHDTor8UeT7XVbd7d11Q=;
	b=xUNFuOXB5njfQivW1oHg5oaw/MKGLVxF919icvkXuYqDHZg+hBMS3TIOItjmUShaqu
	wMTbzeAHDeoYp8dhez5uWL8+MBX/sF0YpsOtaBnhHhdMRBV++SnmSpWC956JMaF725Z0
	NJSx2Xp+uM43Rmr4PYfRug3BvH7MTvV60EF1NZ+DgkK/kC96cDU0OCEtrF6ltlAZjE41
	nDMrFat9NXh7LO/CuSBGecXwjbTpb7x15bTkfDuhwJROSlhqHeSX1C3n5L+qy8yb8sgI
	ckUbWyjQFcCzxNoKn6+mKbQ4VC5wKEkkFBtQpWhKpBfAC1nM5otTzu6VFF/ql9+tWaaS
	pFiQ==
X-Received: by 10.194.203.105 with SMTP id kp9mr5363045wjc.41.1409830867617;
	Thu, 04 Sep 2014 04:41:07 -0700 (PDT)
Received: from ?IPv6:2001:610:1908:1500:8cb5:6063:34fd:c38a?
	([2001:610:1908:1500:8cb5:6063:34fd:c38a])
	by mx.google.com with ESMTPSA id hf9sm1118792wib.11.2014.09.04.04.41.07
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 04 Sep 2014 04:41:07 -0700 (PDT)
From: Jan Jaap Kempenaar <janjaapkempenaar@gmail.com>
Message-Id: <3DDFCB58-7ADD-4F44-A55E-E9EE9AAD429B@gmail.com>
Date: Thu, 4 Sep 2014 13:41:05 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-Mailman-Approved-At: Thu, 04 Sep 2014 08:55:00 -0700
Subject: [bitbake] .bbappend files in includes/require behaviour
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
X-List-Received-Date: Thu, 04 Sep 2014 11:41:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

I have a question regarding the behaviour of .bbappend files.

=3D=3D Situation sketch

I have the following situation:
- I have a YOCTO setup with all my nessecary layers.
- I have a board support package layer for my embedded target.
- I have a meta-xenomai layer
-> The meta xenomai layer provides 2 .bbappend files. 1 which appends =
the linux kernel recipe and one which appends the default base image =
from the board support package.
- I have an additional layer with recipes which are specific for our =
project.

=3D=3D Details

I am using the Gumstix bsp layers.
Now I have the following situation gumstix provides the following =
recipe:
gumstix-console-image.bb
in my meta-xenomai layer i have a:
gumstix-console-image.bbappend -> this adds the xenomai userspace =
libraries to the image installation.

Now for our project I created on our "meta-project" layer a =
project-image.bb with the following:

require recipes-images/gumstix/gumstix-console-image.bb
# Other installation requirements follow from here.

=3D=3D Expectations and results
I am using .bbappend files, such that I can easily disable the xenomai =
layer without breaking the yocto build environment.
however with all layers enabled when i:
bitbake project-image
the gumstix-console-image.bbappend alterations do not take effect, so my =
question is:
When using require to include a recipe, is it correct that for that =
recipe all .bbappend files are ignored?

If so, is there a way such that still can have the described behaviour.

Any help or pointers to documentation are much appreciated.

Regards,
Jan Jaap Kempenaar=

