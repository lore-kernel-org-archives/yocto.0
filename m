Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6294AE00A38; Mon, 17 Aug 2015 06:40:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D3A0E00816
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 06:40:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9AD6127E334
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 13:40:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id rxBr-IoXe12r for <yocto@yoctoproject.org>;
	Mon, 17 Aug 2015 13:40:06 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 50F7527E30B
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 13:40:03 +0000 (UTC)
To: yocto@yoctoproject.org
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <55D1E42B.10202@dynamicdevices.co.uk>
Date: Mon, 17 Aug 2015 14:39:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
Subject: Issue with init scripts start-stop-daemon and use of set -e ?
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
X-List-Received-Date: Mon, 17 Aug 2015 13:40:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I've been trying to track down an issue I was seeing with ofono not
restarting on a fido image and have encountered what seems to be an
issue related to the sys v init script.

Sometimes when we make a call as follows the ofono daemon isn't started
correctly

/etc/init.d/ofono restart

It seems there's a "set -e" in there to cause the script to exit if a
command returns a non-zero.

When the do_stop() function is called from restart if the daemon isn't
already running busybox will return non-zero which causes the script to
drop out and the do_start() method is never called.

(I have yet to determine why the ofono daemon might not be running
already when we make the call but that's a separate problem...)

Given the expected behaviour of calling restart on a service is to start
it even if it was not running then perhaps the "set -e" needs to be
removed or || true added ?

This seems relevant to ofono in master, and some quick grepping of
init.d shows other scripts are similar.

Can anybody comment?

Thanks,

Alex

