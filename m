Return-Path: <belatronix@freenet.de>
Received: from mout2.freenet.de (mout2.freenet.de [195.4.92.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CBDEE002A8
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:48:26 -0700 (PDT)
Received: from [195.4.92.140] (helo=mjail0.freenet.de)
	by mout2.freenet.de with esmtpa (ID belatronix@freenet.de) (port 25)
	(Exim 4.76 #1) id 1SrSjw-0007cO-Iq
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:48:24 +0200
Received: from localhost ([::1]:60339 helo=mjail0.freenet.de)
	by mjail0.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1SrSjw-0002JS-F4
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:48:24 +0200
Received: from [195.4.92.27] (port=46343 helo=17.mx.freenet.de)
	by mjail0.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1SrShu-0001fZ-K8
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:46:21 +0200
Received: from a89-182-207-125.net-htp.de ([89.182.207.125]:50857
	helo=[192.168.1.151])
	by 17.mx.freenet.de with esmtpsa (ID belatronix@freenet.de)
	(TLSv1:CAMELLIA256-SHA:256) (port 465) (Exim 4.76 #1)
	id 1SrSfy-0007Dr-Id
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:44:19 +0200
Message-ID: <5006A190.6090508@freenet.de>
Date: Wed, 18 Jul 2012 13:44:16 +0200
From: Axel Beierlein <belatronix@freenet.de>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 11:48:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello,

when i start bitbake core-image-minimal i get the Error
"PATH contains '.' or '', which will break the build, please remove this."

But there is definitly no '' a whitespace or a point in my PATH.

What could be the reason for this Error?

Regards

Axel

