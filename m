Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E94D9E013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 15:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=h2ecmc9fxYb7mjyrT0XKzKN5Hmb3ta99vT4assRUDjo=; 
	b=JCkR/vlXkAWbHry8QOiZE9QF0veEM3jGy0ckB2XqnhBPBwJHDoxU3hY+zROBwYkFnc7jImPrppHAFpr21yYMSg/mBAiyq32IQnY/+hDAPckz3OXqCn/l7Vfv0CkdL2XVXFFs3TvQ8N/x+OfD2MEus8ARenJEza5neQnmjG6x1AI=;
Received: from [109.224.129.17] (port=39742
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UoLUJ-002AiD-0N
	for yocto@yoctoproject.org; Sun, 16 Jun 2013 23:31:55 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <19D48B82-8A42-4CDA-9C08-C25519D19DE9@keylevel.com>
Date: Sun, 16 Jun 2013 23:31:53 +0100
Message-Id: <FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com>
References: <19D48B82-8A42-4CDA-9C08-C25519D19DE9@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Re: Danny/Cedartrail psplash not showing
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
X-List-Received-Date: Sun, 16 Jun 2013 22:31:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 16 Jun 2013, at 22:51, Chris Tapp wrote:

> I've got a custom Cedartrail image which works great, but I can't get =
the psplash screen to show on boot.
>=20
> I see a message like "cannot mmap framebuffer" scroll up the screen, =
but this isn't in the message log so I don't get the full context.
>=20
> I've tried looking at the code for pspash-fb.c, but there aren't a lot =
of clues (for me!). Is this something to do with the pixel format, as =
hinted at by the comment referring to 'line_length'?

Looks like it might be - adding 'video=3D1024x768-32@60' to the kernel =
command line means that the psplash screen shows.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




