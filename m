Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4725E00404
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 08:49:37 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 1C6F4B6A0CF
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 17:49:36 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.1 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.site (ppp-188-174-11-106.dynamic.mnet-online.de
	[188.174.11.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id E5AF3B6A0BE
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 17:49:35 +0200 (CEST)
Message-ID: <522C9C86.4050700@philipp-wagner.com>
Date: Sun, 08 Sep 2013 17:49:26 +0200
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: How to include python-misc in SDK?
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
X-List-Received-Date: Sun, 08 Sep 2013 15:49:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to build a SDK, which I can use to develop software for an
image. I'm running

bitbake -c populate_sdk my-image-name

Afterwards I get a nice SDK, but I cannot really use it. The the
software I'm building needs (on the host) the Python module "filecmp".
This module is packaged inside python-misc, or nativesdk-python-misc, as
far as I can tell.

Right now the SDK contains some basic Python, but not this module, and
since the PATH is set in a way that the build uses the python inside the
SDK, my builds fail.

So what do I need to do to get this package included in my SDK?

Philipp

