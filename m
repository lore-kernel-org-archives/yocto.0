Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32C27E00D30; Thu, 25 Jul 2019 16:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [83.102.40.154 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 512 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jul 2019 16:07:58 PDT
Received: from sypressi2.dnainternet.net (sypressi2.dnainternet.net
	[83.102.40.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D2DE00C22
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 16:07:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by sypressi2.dnainternet.net (Postfix) with ESMTP id 793FC17844
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 01:59:24 +0300 (EEST)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from sypressi2.dnainternet.net ([83.102.40.154])
	by localhost (sypressi2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041) with ESMTP id s-ySjRmBwYCW for <yocto@yoctoproject.org>;
	Fri, 26 Jul 2019 01:59:24 +0300 (EEST)
Received: from kirsikkapuu2.dnainternet.net (kirsikkapuu2.dnainternet.net
	[83.102.40.52])
	by sypressi2.dnainternet.net (Postfix) with ESMTP id 0A83017807
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 01:59:24 +0300 (EEST)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by kirsikkapuu2.dnainternet.net (Postfix) with ESMTPS id D2D793CA2
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 01:59:22 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Fri, 26 Jul 2019 01:59:21 +0300
References: <CAA=hcWQAt_d3aE0d0ZdHZH=cg-DDy7Hw+VyYXw5JNpOsjSe_Tw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <CAA=hcWQAt_d3aE0d0ZdHZH=cg-DDy7Hw+VyYXw5JNpOsjSe_Tw@mail.gmail.com>
Message-Id: <A0DE6341-3472-422A-8CA7-2F524FFC14D7@iki.fi>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: Recurrent service file
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
X-List-Received-Date: Thu, 25 Jul 2019 23:08:00 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8686D626-ECA2-43FA-B7FC-FF2E8871B615"

--Apple-Mail=_8686D626-ECA2-43FA-B7FC-FF2E8871B615
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On 26 Jul 2019, at 1:45, JH <jupiter.hce@gmail.com> wrote:
>=20
> Hi,
>=20
> I am running Yocto distroI am building a service file like a cron job
> to run every 10 minutes, I searched from Internet, there was tips to
> use Restart=3Dalways and RestartSec=3D10min, but that seems not quite
> right, the document said that RestartSec is for delaying 10min, any
> tips how to fix following format?

You probably want a timer unit that triggers the service unit: =
<https://www.freedesktop.org/software/systemd/man/systemd.timer.html =
<https://www.freedesktop.org/software/systemd/man/systemd.timer.html>>

Regards,
Anders=20


--Apple-Mail=_8686D626-ECA2-43FA-B7FC-FF2E8871B615
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">On =
26 Jul 2019, at 1:45, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com" =
class=3D"">jupiter.hce@gmail.com</a>&gt; wrote:<br =
class=3D""><div><blockquote type=3D"cite" class=3D""><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi,<br=
 class=3D""><br class=3D"">I am running Yocto distroI am building a =
service file like a cron job<br class=3D"">to run every 10 minutes, I =
searched from Internet, there was tips to<br class=3D"">use =
Restart=3Dalways and RestartSec=3D10min, but that seems not quite<br =
class=3D"">right, the document said that RestartSec is for delaying =
10min, any<br class=3D"">tips how to fix following format?<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>You =
probably want a timer unit that triggers the service unit: &lt;<a =
href=3D"https://www.freedesktop.org/software/systemd/man/systemd.timer.htm=
l" =
class=3D"">https://www.freedesktop.org/software/systemd/man/systemd.timer.=
html</a>&gt;</div><div><br =
class=3D""></div><div>Regards,</div><div>Anders&nbsp;</div></div><br =
class=3D""></body></html>=

--Apple-Mail=_8686D626-ECA2-43FA-B7FC-FF2E8871B615--
