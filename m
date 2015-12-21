Return-Path: <maslo@binarylemon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B31E00AE4; Mon, 21 Dec 2015 03:25:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 600 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Dec 2015 03:25:06 PST
Received: from nov-007-i607.relay.mailchannels.net
	(nov-007-i607.relay.mailchannels.net [46.232.183.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7784E00903
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:25:05 -0800 (PST)
X-Sender-Id: asmallorange|x-authuser|maslo@binarylemon.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 867B01D0FEF;
	Mon, 21 Dec 2015 11:09:32 +0000 (UTC)
Received: from sardine.arvixe.com (ip-10-204-4-183.us-west-2.compute.internal
	[10.204.4.183])
	by relay.mailchannels.net (Postfix) with ESMTPA id EE1AD1D0F40;
	Mon, 21 Dec 2015 11:09:31 +0000 (UTC)
X-Sender-Id: asmallorange|x-authuser|maslo@binarylemon.com
Received: from sardine.arvixe.com ([UNAVAILABLE]. [10.221.137.216])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.6.1); Mon, 21 Dec 2015 11:09:32 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: asmallorange|x-authuser|maslo@binarylemon.com
X-MailChannels-Auth-Id: asmallorange
X-MC-Loop-Signature: 1450696172115:228004180
X-MC-Ingress-Time: 1450696172115
Received: from 95-105-188-16.dynamic.orange.sk ([95.105.188.16]:52309
	helo=[192.168.1.199])
	by sardine.arvixe.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.86)
	(envelope-from <maslo@binarylemon.com>)
	id 1aAyLK-000AfO-Pt; Mon, 21 Dec 2015 03:09:30 -0800
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Jozef Maslik <maslo@binarylemon.com>
In-Reply-To: <CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
Date: Mon, 21 Dec 2015 12:09:08 +0100
Message-Id: <3848CC51-54FB-4AA9-A548-95229C186560@binarylemon.com>
References: <CAAfyv378CR0-RFgLUp7V7HjuzdgEAjXVT2_nFTUvGCbRa2i76A@mail.gmail.com>
	<CAJTo0Lbx7BWsWQiYqsRgbjStZh9sN7-WOFacJTfvG9GeEfhxnA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
X-AuthUser: maslo@binarylemon.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: building on os x
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
X-List-Received-Date: Mon, 21 Dec 2015 11:25:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_55267215-918E-45AC-AB2E-813F7217FCBC"

--Apple-Mail=_55267215-918E-45AC-AB2E-813F7217FCBC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

my experience is almost same - faster and more comfortable way was use =
VM with minimal ubuntu installation (server version without GUI).

Anyway, are there any activities or plans to fix and support osx?

Regards,
Jozef


> On 21 Dec 2015, at 11:51, Burton, Ross <ross.burton@intel.com> wrote:
>=20
>=20
> On 21 December 2015 at 09:43, Belisko Marek <marek.belisko@gmail.com =
<mailto:marek.belisko@gmail.com>> wrote:
> I did check internet before asking but there is not much reference. So
> sorry for stupid question but it is possible to build e.g.
> core-image-minimal on os x natively? I read something about
> meta-darwin but I'm not sure if it's what I'm looking for ( IIRC it's
> for creating SDK for osx). Anybody tried that? Many thanks.
>=20
> I've patches to make bitbake work (there's a few linuxisms here and =
there) but the biggest problem is that OSX doesn't use GCC and various =
recipes fail to build properly.  It's a whole lot easier to use a Linux =
VM, you can even do a minimal (non-graphical) install and SSH into it.
>=20
> Ross
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_55267215-918E-45AC-AB2E-813F7217FCBC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">my =
experience is almost same - faster and more comfortable way was use VM =
with minimal ubuntu installation (server version without GUI).</div><div =
class=3D""><br class=3D""></div><div class=3D"">Anyway, are there any =
activities or plans to fix and support osx?</div><div class=3D""><br =
class=3D""></div><div class=3D"">Regards,</div><div =
class=3D"">Jozef</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 21 Dec 2015, at 11:51, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 21 December 2015 at 09:43, Belisko Marek <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:marek.belisko@gmail.com" =
target=3D"_blank" class=3D"">marek.belisko@gmail.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5xx" =
class=3D"a3s" style=3D"overflow:hidden">I did check internet before =
asking but there is not much reference. So<br class=3D"">
sorry for stupid question but it is possible to build e.g.<br class=3D"">
core-image-minimal on os x natively? I read something about<br class=3D"">=

meta-darwin but I'm not sure if it's what I'm looking for ( IIRC it's<br =
class=3D"">
for creating SDK for osx). Anybody tried that? Many =
thanks.</div></blockquote></div><br class=3D"">I've patches to make =
bitbake work (there's a few linuxisms here and there) but the biggest =
problem is that OSX doesn't use GCC and various recipes fail to build =
properly.&nbsp; It's a whole lot easier to use a Linux VM, you can even =
do a minimal (non-graphical) install and SSH into it.</div><div =
class=3D"gmail_extra"><br class=3D""></div><div =
class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_55267215-918E-45AC-AB2E-813F7217FCBC--
