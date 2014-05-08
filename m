Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D2AE00B3D; Thu,  8 May 2014 10:03:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK
	signature from author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1408 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 10:03:09 PDT
Received: from a180.4uh.net (unknown [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F0B2E0073D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=fBbT9OVCRwcEgg6F+/4XVx7Y1g2hEXb1utVo6hKe9AE=; 
	b=BKUVewRFZLC2VZPEy2Qktt8t7TiDIWdJSgL49Qo53QLxvj/UX3gZVVNi0KKKsRRXCdxfyPLbpcO+cAPaJmKnMxYuIeirtca8x5aqZeWWsw9UwrAQkixh4TlTMUZKxiUhI26vkZLeOOGio7x3PGUjsA/XHVkMs4iFyc1MESZgM6Y=;
Received: from [109.224.171.0] (port=2697 helo=srv-192-168-1-40.ukfast.net)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1WiRM6-0037xJ-FH; Thu, 08 May 2014 17:39:36 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
Date: Thu, 8 May 2014 17:39:35 +0100
Message-Id: <503552D1-6274-4FEC-AC5F-6EB0F411A58E@keylevel.com>
References: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
X-Mailer: Apple Mail (2.1874)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SATO on Intel DN2800MT
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
X-List-Received-Date: Thu, 08 May 2014 17:03:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi John,

On 8 May 2014, at 16:25, r10kindsofpeople <r10kindsofpeople@gmail.com> =
wrote:

> I'm trying to experiment with the SATO build on a DN2800MT with a VGA =
monitor, but can't seem to get going.  The binaries from Daisy and =
genericX86 get as far as the Yocto progress bar complete, and then go =
black.  Any quick hints?

Have a look in the README file for the cedartrail BSP. At the bottom you =
will find:

Work Around for VGA and LVDS Display issue in PVR driver
--------------------------------------------------------

The PVR driver has a issue that for some systems it causes
it to incorrectly assume that a LVDS display is connected
while infact a VGA display is connected and Vice Versa.
If your VGA or LVDS display does not work with
"cedartrail" MACHINE, then if you have connected a VGA display,
add the following to the kernel command line:

video=3DLVDS-1:d video=3DVGA-1:e

<snip>

I suspect it's this. Watch out if you use HDMI as well - the VGA fix =
seems to break HDMI. On my systems the VGA then works, but the HDMI =
pauses a lot running the same image! I think you can use similar magic =
for HDMI (or did I just take it out?).

> I note also that genericX86 looks like a complete Yocto tree rather =
than just BSP layers.  Am I right, and are there hints on how to combine =
this with a generic Daisy tree for other processors/projects?
>=20
> =
Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/xorg-=
xserver/xserver-xf86-config/genericx86/xorg.conf is a zero length file.  =
 ?
>=20
> John
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




