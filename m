Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D547A4C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 09:25:27 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FEPMpe021867;
	Fri, 15 Jul 2011 15:25:22 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21159-07; Fri, 15 Jul 2011 15:25:19 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6FEPGlv021861
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jul 2011 15:25:17 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1107151010270.1923@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107151010270.1923@localhost6.localdomain6>
Date: Fri, 15 Jul 2011 15:25:12 +0100
Message-ID: <1310739913.20015.1243.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about toolchains from QS manual
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
X-List-Received-Date: Fri, 15 Jul 2011 14:25:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 10:15 -0400, Robert P. J. Day wrote:
> (look on the bright side -- eventually, after many, many patches, i
> will have nothing left to whine about.)

:)

>   from quick start manual, i notice that all toolchain tarballs have
> "sdk" in the filename, whereas the actual downloads have "gmae".  a
> simple textual fix, i'm assuming.  (what means "gmae"?)

GMAE = GNOME Mobile and Embedded

think cut down GNOME.

>   more significantly, QS manual states that toolchains "should" be
> installed under /opt/poky.  "should" is a loaded word -- it implies a
> recommendation for some benefit but not an actual requirement.  and
> installing it there requires the reader to have root privilege,
> something to be avoided if at all possible.
> 
>   can someone clarify the "shouldness" or "mustness" of toolchain
> installation under /opt/poky?

At this point its a requirement, we'd like to relax that but it isn't
possible right now.

Cheers,

Richard


