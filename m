Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4790E008CF; Tue, 18 Nov 2014 13:34:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Nov 2014 13:34:57 PST
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AE0BBE0087D
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 13:34:57 -0800 (PST)
Received: (qmail 18530 invoked by uid 1003); 18 Nov 2014 21:28:16 -0000
Received: from unknown (HELO ?192.168.1.109?) (philip@opensdr.com@71.171.45.99)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	18 Nov 2014 21:28:16 -0000
Message-ID: <546BB9EF.4040807@balister.org>
Date: Tue, 18 Nov 2014 16:28:15 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Layer model doomed, unless we all work together
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
X-List-Received-Date: Tue, 18 Nov 2014 21:34:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

As evidence, please review this list:

http://layers.openembedded.org/layerindex/branch/master/duplicates/

I mean FOUR recipes for alsa-plugins?

I am trying to fix the pyqt recipe in meta-oe, and had th eidea to check
for it in other layers. This leads me to meta-ivi-demo, which has an
update for sip-native and another pyqt recipe. To be fair, they are
using Qt5, so it is a little more complex.

At any rate, we need to stop ripping recipes out of layers and maing
local copies, or worse, updating our local copies and not the primary
layer. The intent of the layer concept was not to fragment development
across many separate repositories.

I see a couple of issues we need to start talking about:

1) recipes that need to move closer to core because a range of other
packages use them.

2) people feel they have to remove recipes from layers and make local
copies.

And just so people know what seriously pisses me off :) Copying a recipe
from a layer, updating it, and not sending the recipe to the layer they
got the update from.

Thanks for letting me vent,

Philip

