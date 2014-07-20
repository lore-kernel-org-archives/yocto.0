Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF9F6E0053F; Sun, 20 Jul 2014 06:48:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 931 seconds by postgrey-1.32 at yocto-www;
	Sun, 20 Jul 2014 06:48:21 PDT
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A59D5E003D6
	for <yocto@yoctoproject.org>; Sun, 20 Jul 2014 06:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=Kf1vZe4KyJo3VJZ5a6p5+15BlAkstKoZcAkHSSq7vs4=; 
	b=Osk6nYG63vML5bs6/CKiZxXTA3YiGQq/PkxwqfFF2sboFE5DXFuvVy3rrT8bTNnFPZY246XwNxDeILns3iGR4IGb1omGW+vRrtH85CFRmIZReV+duhJifuLiSq7UX9vmtdZgZ/vrzbYeSE7yQxskpqZ8X6yM1d0DTnyyI7XZTSc=;
Received: from [109.224.171.0] (port=20693
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1X8rEJ-0008wf-Gg; Sun, 20 Jul 2014 14:32:45 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F1B91CF7B31604FABE8442530201B7812205967@ALPURAPA22.e2k.ad.ge.com>
Date: Sun, 20 Jul 2014 14:32:44 +0100
Message-Id: <A6357789-EC9C-489B-9AF0-71EAEE428FF6@keylevel.com>
References: <D628D33F-1776-4BEA-8D2B-3F98CB94B921@keylevel.com>
	<4F1B91CF7B31604FABE8442530201B7812205967@ALPURAPA22.e2k.ad.ge.com>
To: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: core-image-x11 screen resolution
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
X-List-Received-Date: Sun, 20 Jul 2014 13:48:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 18 Jul 2014, at 22:57, Wenholz, Brian (GE Healthcare) =
<Brian.Wenholz@med.ge.com> wrote:

> Chris,
>=20
> To do this I use a custom xorg.conf file by creating a bbappend for =
the xserver-xf86-config recipe in my own layer. Just needs the =
FILESEXTRAPATHS_prepend and PR variables updated. Then you place the =
custom file in the xserver-xf86-config or files directory. I keep my =
layer appends in the same relative structure as the full recipe for my =
own sanity.
>=20
> Hope this helps.

Thanks, this is the way I would normally do it myself :-)

I was just wondering if there was a really simple way to set it at build =
time (like adding video=3D to the kernel arguments) when I'm evaluating =
various platforms and my local layers aren't available. For now I can =
just use xrandr to switch resolution.

> Brian Wenholz=20
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Friday, July 18, 2014 4:59 PM
> To: Yocto Project
> Subject: [yocto] core-image-x11 screen resolution
>=20
> Is there an easy/quick way to set the screen resolution used when =
core-image-x11 starts X?
>=20
> I.e. something that can be added into local.conf?
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




