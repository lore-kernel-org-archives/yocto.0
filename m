Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89FFE0084F
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 07:49:55 -0800 (PST)
Received: from [109.224.171.0] (port=41832
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WK8eG-0008B4-Lg
	for yocto@yoctoproject.org; Sun, 02 Mar 2014 15:49:52 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <FF9E7E89-95A5-4383-8BAF-35B201407F20@keylevel.com>
Date: Sun, 2 Mar 2014 15:49:51 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Subject: Package 'X' provides... what?
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
X-List-Received-Date: Sun, 02 Mar 2014 15:49:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm in the middle of updating some code (under 'danny') from Gstreamer =
0.10 to 1.0.

At the moment I pull in things like 'gst-plugins-base-playbin' by having =
a 'DEPENDS' in a recipe. However, that's not what it's called in =
Gstreamer 1.0.

How do I find out what (e.g.) gstreamer1.0-plugins-base.bb actually =
provides? Once I've got it to build for one plugin I can go to the work =
directory to see what gets packaged to find the names of other plugins, =
but I can't find a way in to start with. Is there some bitbake magic I =
can use to list what's provided by a recipe?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




