Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AE42E00D44; Mon, 25 Jul 2016 23:18:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93227E00D28
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 23:18:14 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bRvgy-0001A7-BU
	for yocto@yoctoproject.org; Tue, 26 Jul 2016 08:18:12 +0200
Received: from host-82-135-29-140.customer.m-online.net ([82.135.29.140])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:18:12 +0200
Received: from gmane by host-82-135-29-140.customer.m-online.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:18:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 26 Jul 2016 09:18:05 +0300
Message-ID: <nn6vat$c6p$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: host-82-135-29-140.customer.m-online.net
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
Subject: empty packages
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
X-List-Received-Date: Tue, 26 Jul 2016 06:18:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

According to [1]:

"By default, BitBake does not produce empty packages."

This does not seem to be the case at least for Jethro.

If I bitbake something like this[2] for qemuarm I see empty packages
like e.g. the -dev package.

Now it's getting even more interesting.

[3] says:

The list of packages to be created from the recipe. The default value is
the following:

${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale
${PACKAGE_BEFORE_PN} ${PN}

... but ...

a non empty -dbg package is being built
an empty -dev package is being built
no -locale package is being built

Is this expected behavior? If yes please explain.

Regards,

Robert


[1]
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-ALLOW_EMPTY
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation/ref-manual/examples/hello-single/hello.bb
[3]
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PACKAGES..."The
three principal virtues of a programmer are Laziness, Impatience, and
Hubris." - Larry Wall

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



