Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCBB8E0152B
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 11:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=6OK8j52oJSqaJ3Eh1spbLFiwLjkaBgmVmcAT+fhgp7A=; 
	b=MrzUrKysixKv9mRX2SlkNHTny/yKnrORdzf06bA1ZNkT6d2yep3wBLiUUtqNJi1MchRO8QdqiVznuEqgQS9TOx7Z4y8tyvPbH/d5E2hIz94Mr8VROS7pu6Z0I1/jCX4M2dq1EaziQHr55/8kAX4pvtfT8GamT8RBmX8oQ+IP2qQ=;
Received: from [109.224.129.17] (port=32372
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>)
	id 1V4y0T-002UFL-Q6; Thu, 01 Aug 2013 19:53:49 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <51FA6B80.8030207@r-finger.com>
Date: Thu, 1 Aug 2013 19:53:48 +0100
Message-Id: <5C4C9EC7-1F17-4ED9-BCC7-C88C7514F41B@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
	<51FA1764.4060408@r-finger.com> <51FA6B80.8030207@r-finger.com>
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
X-List-Received-Date: Thu, 01 Aug 2013 18:53:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Tomas,

On 1 Aug 2013, at 15:06, Tomas Frydrych wrote:

> Hi Chris,
>=20
> On 01/08/13 09:08, Tomas Frydrych wrote:
>> On 31/07/13 21:30, Chris Tapp wrote:
>> It's relatively easy to add support for tftp to the yocto live image
>> scripts; this allows you to either boot from the network, or install
>> from the network. I have have some raw patches kicking around, that =
add
>> support for both tftp and scp, I have been meaning to clean it up and
>> post an rfc to the list, I'll try to get that done this week.
>=20
> I am attaching the patches I have, it's a bit raw, and needs more work
> before submitting for consideration in oe-core, but I think out of the
> box tftp support would be useful to have somewhere.
>=20
> The patches include changes to the live/install scripts from the =
oe-core
> initramfs recipes and an image recipe for an initrd image with the
> necessary tools (I initially started to write separate recipes for the
> scripts, but realized quickly that the differences from the standard
> live image bits are so small that's hardly justified in comparison to
> the increased maintenance burden.)
>=20
> The main changes to the scripts are:
>=20
> * use syslinux instead of grub, makes life lot simpler, 'naf said,
> * rework the install script so that unassisted install is possible,
> * support tfpt for kernel/rootfs loading, and scp for rootfs loading,

Thanks, these look very useful.

> The test-ssh-key recipe provides a dummy (i.e., compromised) ssh key
> that can be used for rudimentary testing of using scp for kernel
> loading; scp is potentially useful for remote system updates from
> outside of LAN boundaries, but a real set up would need bit of thought
> on how to manage the real keys, etc.
>=20
> The net-image also generates a sample config file for PXELinux in the
> deploy/images directory (net-image.pxelinux.cfg), which documents =
fairly
> well how to set it up. I hope this is of some use, at least to foster
> more discussion. :)

I think it is ;-) I think I'll still need to use ipxe as I need to be =
able to boot without DHCP support as well.

> Tomas
>=20
> --=20
> http://sleepfive.com
> =
<0001-test-ssh-key-dummy-ssh-key-for-testing-of-scp-functi.patch><0002-ini=
tramfs-live-install-improve-install-script-for-un.patch><0003-initramfs-li=
ve-boot-improve-script-to-support-tftp-b.patch><0004-net-image-initrd-imag=
e-for-tfpt-booting.patch>_______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




