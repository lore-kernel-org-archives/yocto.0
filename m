Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C320E002AB
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 00:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=JM+DwmfdH/0zH20YJ0OEY4DcYEIveM350l5R2Oq78/4=; 
	b=m0u4c6hl/L5ZRve9yTLBRsed/Pyo3rc3uquWuys3LcR92/2OK5cA9DhBxeMjUWZCIbOuXf5aXg+ZfwcmYQD+4M0DODJFH3cZQwPBQ3mw2rhKeNRQUuweTtm393C1zISc;
Received: from [109.224.129.17] (port=8781
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TbRwR-0003Kf-GG; Thu, 22 Nov 2012 08:15:23 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LaRTB01WDwDvC8yHNoM3fSfDB-dk6wQFzgjaymboRj08A@mail.gmail.com>
Date: Thu, 22 Nov 2012 08:15:22 +0000
Message-Id: <68CEAD63-F825-444F-B148-AA688E82701F@keylevel.com>
References: <4C2DC877-D240-4C4A-939A-A2502343BEF2@keylevel.com>
	<CAJTo0LaRTB01WDwDvC8yHNoM3fSfDB-dk6wQFzgjaymboRj08A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Cedartrail / GLES / Framebuffer
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
X-List-Received-Date: Thu, 22 Nov 2012 08:15:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross,

(Resend, as I forgot to include the list last time).

On 15 Nov 2012, at 14:44, Burton, Ross wrote:

> Hi,
>=20
> On 20 October 2012 19:31, Chris Tapp <opensource@keylevel.com> wrote:
>> I'm still trying to get my 'perfect' platform configuration for a =
project.
>>=20
>> 1) I need to use the 'nopvr' machine as I need unionfs. This means I =
need the kernel 3.2, which doesn't currently support pvr;
>> 2) I'm running using the framebuffer and would rather not have to =
include libx11;
>> 3) I was using SDL, but I now need to support GLESv2 / EGL as well.
>>=20
>> Is it possible to build a system that runs like this? i.e. GLES on =
the framerbuffer without X11.
>>=20
>> I think the only issue is getting a build of MESA that runs without =
x11, but is there anything else, or another way?
>=20
> I had this marked to Follow Up but managed to ignore it until now, =
sorry.

My turn - I had to go to Japan for a week and I've only just caught up =
with e-mails ;-)

> GLES without X11 should work using EGL, but that will be using the
> closed cdv-pvr-drivers package.  If you can't use those for other
> reasons, then you're stuck.

That should be ok for this project. Thanks for the confirmation.

> (yay closed drivers)
>=20
> I understand that Ubuntu contains a re-packaging and re-build of the
> CedarView binary drivers - it may be worth seeing what kernel they are
> built against as I believe that the stack is slightly new than the
> MeeGo-derived binaries that we're using.

I'll have a look, but this is well outside my comfort-zone :-) James =
Abernathy reported similar:

"It may not solve the 3.0 problem for CDV and Yocto, but I noticed that =
Ubuntu 12.04.1 with the 3.2 kernel supports the PVR driver on it's 3.2.0 =
kernel.  I've only tested it successfully on an All-In-One with LVDS off =
of an eDP to LVDS converter used on the DN2800MT motherboard."

> Ross

Chris Tapp

opensource@keylevel.com
www.keylevel.com




