Return-Path: <joshua.lock@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A82EE0095C; Fri,  1 May 2015 04:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 448 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 May 2015 04:18:19 PDT
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02008E0049A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 04:18:19 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: joshuagl) with ESMTPSA id 57696600198
Message-ID: <1430478583.3318.15.camel@collabora.co.uk>
From: Joshua Lock <joshua.lock@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 01 May 2015 12:09:43 +0100
X-Mailer: Evolution 3.16.1 (3.16.1-1.fc22) 
Mime-Version: 1.0
Subject: First set of fido-next changes are in testing
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
X-List-Received-Date: Fri, 01 May 2015 11:18:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

All,

There have been a lot of patches proposed for fido so I wanted to let
you know that I have just submitted a first fido-next test build to
the autobuilder.

The full set of changes can be seen in my fido-next branch:

http://git.yoctoproject.org/cgit/cgit.cgi/poky
-contrib/log/?h=joshuagl/fido-next

Cheers,

Joshua

