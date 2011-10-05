Return-Path: <Noel.Vellemans@visionBMS.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF85E004CF
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2011 06:59:04 -0700 (PDT)
Received: from [85.158.138.147:32858] by server-3.bemta-3.messagelabs.com id
	8B/CD-24552-5A26C8E4; Wed, 05 Oct 2011 13:59:01 +0000
X-Env-Sender: Noel.Vellemans@visionBMS.com
X-Msg-Ref: server-7.tower-195.messagelabs.com!1317823137!55936083!1
X-Originating-IP: [195.134.156.204]
X-StarScan-Version: 6.3.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29141 invoked from network); 5 Oct 2011 13:58:57 -0000
Received: from gateway.loepfe.com (HELO gateway.loepfe.com) (195.134.156.204)
	by server-7.tower-195.messagelabs.com with SMTP;
	5 Oct 2011 13:58:57 -0000
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 5 Oct 2011 15:59:00 +0200
Message-ID: <1531E53627F1F749B4FE809BF2A4EB6702B1357A@WETMEX10.loepfe.com>
In-Reply-To: <4E8C5F74.3080205@mlbassoc.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] Sato Font-shadow ?
thread-index: AcyDZQr5g3auZgthSY+jpXgSwWZUzAAACe2Q
References: <1531E53627F1F749B4FE809BF2A4EB6702B13551@WETMEX10.loepfe.com>
	<4E8C5F74.3080205@mlbassoc.com>
From: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
To: <yocto@yoctoproject.org>
Subject: Re: Sato Font-shadow ?
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
X-List-Received-Date: Wed, 05 Oct 2011 13:59:05 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable


Hi,

I'm building the QEMU build...

'Where' are the video settings defined/specified ?

Regards Noel.



PS: made a typo on the org--post "sometimes  it is red, or red.. " had
to be "sometimes it is red, or yellow.."
=20

-----Original Message-----
From: Gary Thomas [mailto:gary@mlbassoc.com]=20
Sent: 5Oct11 15:45
To: Vellemans, Noel
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Sato Font-shadow ?

On 2011-10-05 07:40, Vellemans, Noel wrote:
>
> Hi all
>
>
> I've build the beta-test build [wget=20
> _http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-f8cddd74
> 574756174a82c856cecdeb6f83b9dea5.tar.bz2_] { core-image-sato }
>
> The build succeeds but there is 'STRANGE' thing, the fonts seem to=20
> contain a shadow, this shadow color is not always the same color
(sometimes it is red, or red.. or whatever combination).
>
> The best place where you can see it is on the CLOCK that is displayed
on the top of the screen, another place where you can see it is when you
open a terminal window.
>
> Anyone that has seen the same behavior ?
> Where do I start looking ?
>
> Regards Noel
>
> NOTE: If I do replace the rootfs with one from the yocto web-site...
this faultly-'shadow'-behavoir is gone.

What's your hardware platform?  I saw this on a BeagleBoard [equivalent]
due to improper video settings.

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
)

