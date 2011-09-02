Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A92E00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 11:36:07 -0700 (PDT)
Received: from mail120-ch1-R.bigfish.com (216.32.181.171) by
	CH1EHSOBE006.bigfish.com (10.43.70.56) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 18:36:07 +0000
Received: from mail120-ch1 (localhost.localdomain [127.0.0.1])	by
	mail120-ch1-R.bigfish.com (Postfix) with ESMTP id 807B01260234;
	Fri,  2 Sep 2011 18:36:07 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail120-ch1 (localhost.localdomain [127.0.0.1]) by mail120-ch1
	(MessageSwitch) id 1314988567429276_29143;
	Fri,  2 Sep 2011 18:36:07 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.243])	by mail120-ch1.bigfish.com (Postfix) with ESMTP id
	593D873804F;	Fri,  2 Sep 2011 18:36:07 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS005.bigfish.com
	(10.43.70.5) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 18:36:06 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 13:36:06 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] RPM multilib package installation issue
Thread-Index: AQHMaYaVWl4p2YpWqEiD6/aZWrPpipU6kD2AgAAKGgCAAAyoAIAAGAAA
Date: Fri, 2 Sep 2011 18:36:05 +0000
Message-ID: <CAEsOVNczt5gLjp_FoF_voMbwSJ1ft8TNz5hdQvheQ20Lo3Sq0Q@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
	<CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
	<4E610DDA.9040701@windriver.com>
In-Reply-To: <4E610DDA.9040701@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2011 18:36:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B98A4D4CF293FB48A6B76FC69BE18A5E@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2011 at 12:09 PM, Mark Hatle <mark.hatle@windriver.com> wrot=
e:
> For everything I see, that should work.
>
> In classes/image.bbclass, RDEPENDS is augmented by the contents of
> IMAGE_INSTALL, LINGUAS_INSTALL, MULTILIB_IMAGE_INSTALL, and NORMAL_FEATUR=
E_INSTALL.

The bitbake side is fine, It's getting put into RDEPENDS and all the
packages are beinh built properly. RPMs are built as well.

> The place to start looking for this is within the log.do_rootfs in the ro=
otfs
> directory you are working on. =A0You should see something that indicates =
it's
> trying to install the "lib64-perl". =A0(in the case of RPM, it should eve=
ntually
> rename it to "perl" -- but choose the 64-bit version.)

However, I don't see code that invokes package_rpm.bbclass properly.
It looks like it could work, but no where is MLPREFIX set for image.
There is some override or something missing on my end or in the code
to properly export these vars for the ML rpm install scenario.

Further more, from what I see no where in rootfs_rpm.bbclass do we
pass MULTILIB_PACKAGE_INSTALL into the list of packages to be
installed... thus they fall off. ipk looks like it might have this
stuff done.

-M

-M=


