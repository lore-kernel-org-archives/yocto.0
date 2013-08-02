Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E16FE0152B
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 00:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=dkTkipZhM1RK1PwHieuoCzGSJmxNGZXjlBq7ROcD4+Q=; 
	b=Ikot0qpB1FadZbJT8Jax+DgJ4fb20X2m6BvClfY4m1204K8EaRIrCLwRTjcL1S4WFoZzOnEtk/HATZnWx2SxdhrnBTHb6mjw9PVc2vDOuYbL2B4WlOaRO7XcqbI9cuHhvxa2jGq8t9He0HYsCRlj/Y/aozp87NPczZvu9S0NNZk=;
Received: from [109.224.129.17] (port=25395
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1V59tn-004Icl-Nl; Fri, 02 Aug 2013 08:35:43 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <51FB5E1B.9010607@r-finger.com>
Date: Fri, 2 Aug 2013 08:35:42 +0100
Message-Id: <5D039805-3E13-436E-BEC0-66FD9570532F@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<51FA1764.4060408@r-finger.com> <51FA6B80.8030207@r-finger.com>
	<5C4C9EC7-1F17-4ED9-BCC7-C88C7514F41B@keylevel.com>
	<51FB5E1B.9010607@r-finger.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: Network booting
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
X-List-Received-Date: Fri, 02 Aug 2013 07:35:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On 2 Aug 2013, at 08:22, Tomas Frydrych wrote:

> On 01/08/13 19:53, Chris Tapp wrote:
>> I think it is ;-) I think I'll still need to use ipxe as I need to be
>> able to boot without DHCP support as well.
>=20
> Depends on the bios, if your machine's bios supports PXE, then you do
> not need ipxe, just a tftp server set up on the LAN that serves =
PXELinux.

My case is a bit more complicated as I also can't have non-secure =
(t)ftp! Are you saying that PXE can work without DHCP/BOOTP?

> I am wondering if having a thin meta-pxe layer would be useful to pull
> some of this together both code and people interested, or whether we
> should aim adding this functionality to OE-core?

I think this could be made a general use-case. A meta-layer sounds =
sensible to get it going - this could then be added to OE-core later if =
that makes sense.

It would benefit from some scripting support in the image to personalise =
it as it boots (e.g. setting IP configuration, hostname, etc.) - I'm =
currently looking to do this by passing parameters back from the server =
through the kernel command line.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




