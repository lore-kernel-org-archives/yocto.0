Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A39D4C800A9
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 08:48:43 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6CDmclo020798;
	Tue, 12 Jul 2011 14:48:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19843-04; Tue, 12 Jul 2011 14:48:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6CDmSBd020792
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jul 2011 14:48:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1107120714220.4716@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107120714220.4716@localhost6.localdomain6>
Date: Tue, 12 Jul 2011 14:48:27 +0100
Message-ID: <1310478507.20015.1050.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should dev docs replace "poky-init-build-env" with "oe-init-build-env"?
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
X-List-Received-Date: Tue, 12 Jul 2011 13:48:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-12 at 07:17 -0400, Robert P. J. Day wrote:
> poking around my git clone and i notice a few references to what
> *seems* to be the older script for init'ing the build environment in
> the documentation directory:
> 
> $ grep -rw poky-init-build-env *
> adt-manual/adt-prepare.xml:        (e.g. <filename>poky-init-build-env</filename>).
> adt-manual/adt-prepare.xml:     $ source poky-bernard-5.0.1/poky-init-build-env $HOME/mybuilds/YP-5.0.1
> ... and a couple more ...
> $
> 
>   as i read it, the correct name should be oe-init-build-env, no?  is
> someone already lined up to fix that?  if not, i can submit a patch.

It did get renamed as you describe, yes. I don't think anyone has a
patch so I'd gladly take one, thanks!

Richard


