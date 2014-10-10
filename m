Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE2F0E0078E; Fri, 10 Oct 2014 16:19:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83216E0076C
	for <yocto@yoctoproject.org>; Fri, 10 Oct 2014 16:19:24 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:36969
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XcjSx-003MrZ-7G
	for yocto@yoctoproject.org; Sat, 11 Oct 2014 00:19:21 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <C795FDAD-3EFD-4254-B775-7F6D3191F797@keylevel.com>
Date: Sat, 11 Oct 2014 00:19:19 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-3.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Packaging foo required!
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
X-List-Received-Date: Fri, 10 Oct 2014 23:19:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a recipe that builds the turbosight kernel drivers. This =
currently builds loads of stuff, most of which I don't want to install =
in the final image.

I would like to use MACHINE_EXTRA_RDEPENDS in my local.conf to pull in =
the modules that I actually need, but that doesn't trigger building of =
'turbosight' as the recipe only RPROVIDES 'turbosight'.

I can get round this by manually adding RPROVIDES_${PN} =3D =
"kernel-module-x" entries to the recipe for each module, but there are =
lots and that would be rather painful if I did it for all the modules!

Is there some magic I can use to automatically generate a list of =
RPROVIDES for all of the packages that are produced, or should this =
already be happening?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


