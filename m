Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE6DE013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 13:40:25 -0700 (PDT)
Received: from [109.224.129.17] (port=37952
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SVTyK-0005LE-LH
	for yocto@yoctoproject.org; Fri, 18 May 2012 21:40:24 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D444A89B-F6BA-46D7-84FD-BE09D40E918C@keylevel.com>
Date: Fri, 18 May 2012 21:40:22 +0100
Message-Id: <229D9F94-571A-4DDA-92E7-0BAE2ACB65D1@keylevel.com>
References: <D444A89B-F6BA-46D7-84FD-BE09D40E918C@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: How to set a DISTRO_FEATURE?
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
X-List-Received-Date: Fri, 18 May 2012 20:40:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 18 May 2012, at 21:21, Chris Tapp wrote:

> I've got a build based on the 'poky' distro.
>=20
> I want to use libsdl with directfb, but this option is only enabled if =
'directfb' is in DISTRO_FEATURES. Can I set this without creating my own =
distro?


Ah, got it. I need to set it in local.conf.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




