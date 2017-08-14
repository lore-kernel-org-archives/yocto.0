Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95219E00CE9; Mon, 14 Aug 2017 12:37:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E54F9E00CE9
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 12:37:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 298C61620;
	Mon, 14 Aug 2017 12:37:15 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylwz5xSScOJH; Mon, 14 Aug 2017 12:37:08 -0700 (PDT)
Received: from linuxlap.zyxel.com (c83-248-212-222.bredband.comhem.se
	[83.248.212.222])
	by smtp1.genivi.org (Postfix) with ESMTPSA id ECC72161F;
	Mon, 14 Aug 2017 12:37:06 -0700 (PDT)
Message-ID: <1502739375.26251.126.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: yocto@yoctoproject.org
Organization: GENIVI Alliance
Date: Mon, 14 Aug 2017 21:36:15 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Cc: "automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Idea for bbappend / layer organization and naming convention
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
X-List-Received-Date: Mon, 14 Aug 2017 19:37:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Yocto community,

Triggered by the previous email request to yocto@ about best practices for
layer organization I'm finally firing off this email for (hopefully) some
feedback on an idea we first kicked around, discussed for rough consensus
and then decided to implement in the Yocto based GDP project [1].  You can
see it as a trial, anything can be changed, but so far so good...

We adopted a somewhat novel (but actually not really unique, see inside)
naming convention [2] for all modifications to components that belong to
other layers.

This convention shows what layers are being modified by the .bbappends by
actually naming the layer it is (intending to**) modify.  The initiative
also aims to highlight and separate .bbappends (modifications) from uniquely
added components in our project (new .bb files) in GDP.

**Note that we are well aware this does NOT control bitbake behavior (as
neither does the recipe-xxx/ directory convention), and is therefore just a
guide.  If the project is misconfigured, bitbake could do something
different than the naming convention implies and it could even be
misleading, but at least the *programmer intent* is shown clearly.

I think it also makes .bbappends more explicitly visible and might trigger
the idea:   Do we really need this?  Are we really modifying *that* adopted
layer, and if so, why?

To Russel who wrote the previous request for guidance - feel free to
consider, but I won't recommend this directly since it's by no means an
agreed best practice in all of the community.  I'm rather asking for other
experienced OE developers to consider and comment on the idea.  

For oldtimers it's probably easy to find this odd and just be negative
against it since well, "standard practice", inertia, NIH and all that, but
I'll stick my neck out anyway because it seems to solve some issues of
organization and understanding at least for us (and I'm a sucker for some
flamebait ;)

If the intro is too formal and long, just look at the final examples.  I
think you'll get it.  Feel free to ask.


- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance

[1] https://github.com/GENIVI/genivi-dev-platform
[2] Naming strategy for bitbake extension layers:			
https://at.projects.genivi.org/wiki/x/w4Xk




