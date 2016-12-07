Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2B7E00D4D; Wed,  7 Dec 2016 05:32:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [23.83.209.23 listed in list.dnswl.org]
Received: from brown.birch.relay.mailchannels.net
	(brown.birch.relay.mailchannels.net [23.83.209.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F930E00D30
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:32:40 -0800 (PST)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 43E901015DA;
	Wed,  7 Dec 2016 13:13:54 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-229-10-199.us-west-2.compute.internal
	[10.229.10.199])
	by relay.mailchannels.net (Postfix) with ESMTPA id 864A1100E72;
	Wed,  7 Dec 2016 13:13:53 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.34.134.237])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Wed, 07 Dec 2016 13:13:54 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1481116433872:1234808368
X-MC-Ingress-Time: 1481116433872
Received: from [37.228.244.105] (port=45456 helo=[192.168.0.60])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1cEc2e-002W3N-46; Wed, 07 Dec 2016 14:13:49 +0100
Message-ID: <1481116425.19291.8.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 07 Dec 2016 13:13:45 +0000
In-Reply-To: <CAJTo0LbUhfsw1nqzf9YvNG7Rv=b8Cq=xvSFNgxx+ZegS6+yR-A@mail.gmail.com>
References: <1481115648.19291.5.camel@toganlabs.com>
	<CAJTo0LbUhfsw1nqzf9YvNG7Rv=b8Cq=xvSFNgxx+ZegS6+yR-A@mail.gmail.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Ignoring Fetch errors for optional source.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Dec 2016 13:32:56 -0000
Content-Type: multipart/alternative; boundary="=-FzmgAPLeS6EXYqg3ToCt"

--=-FzmgAPLeS6EXYqg3ToCt
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-12-07 at 13:08 +0000, Burton, Ross wrote:
>=20
> On 7 December 2016 at 13:00, Beth 'pidge' Flanagan=20
> om> wrote:
> > I've an odd use case that I wonder if anyone has a work around/way
> > of
> > doing it.
> >=20
> > I've a client who has contractors who can't have access to a
> > certain
> > segment of the code base. So for example, a recipe will have a
> > SRC_URI
> > for the main bit that everyone has access to, but an extra src_uri
> > that
> > some people won't have access to.
> >=20
> > I want to be able to just ignore any fetch/unpack errors if that
> > extra
> > src is unfetchable. Thoughts on how to achieve this?
> >=20
> One solution would be to have a global variable I_AM_SPECIAL which
> the recipes can use:
>=20
> SRC_URI =3D "http://public.com/tarball.tar.gz
> ${@oe.types.boolean(d.getVar("I_AM_SPECIAL")) and
> 'http://private.com/tarball.tar.gz'}"
Yeah, unfortunately, people don't neccessarily know they're special if
you get my meaning.
One way we've been trying this is like so:
=C2=A0 =C2=A0 try:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fetcher =3D bb.fetch2.Fet=
ch(extra_uri, d)
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fetcher.download()
=C2=A0=C2=A0=C2=A0=C2=A0except:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pass
But this doesn't seem to be catching the fetch error.
-b
> > That might work, and also add determinism.
> > Ross
>=20

--=-FzmgAPLeS6EXYqg3ToCt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Wed, 2016-12-07 at 13:08 +0000, Burton, Ro=
ss wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 7 December 2016 at 13:00, Beth =
'pidge' Flanagan <span dir=3D"ltr">&lt;<a href=3D"mailto:pidge@toganlabs.co=
m" target=3D"_blank">pidge@toganlabs.com</a>&gt;</span> wrote:<br><blockquo=
te type=3D"cite"><div id=3D":502" class=3D"a3s aXjCH m158d9607e70f63b2">I'v=
e an odd use case that I wonder if anyone has a work around/way of<br>
doing it.<br>
<br>
I've a client who has contractors who can't have access to a certain<br>
segment of the code base. So for example, a recipe will have a SRC_URI<br>
for the main bit that everyone has access to, but an extra src_uri that<br>
some people won't have access to.<br>
<br>
I want to be able to just ignore any fetch/unpack errors if that extra<br>
src is unfetchable. Thoughts on how to achieve this?</div><br></blockquote>=
</div><br>One solution would be to have a global variable I_AM_SPECIAL whic=
h the recipes can use:</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">SRC_URI =3D "<a href=3D"http://public.com/tarball.tar.gz">=
http://public.com/tarball.tar.gz</a> ${@oe.types.boolean(d.getVar("I_AM_SPE=
CIAL")) and '<a href=3D"http://private.com/tarball.tar.gz'">http://private.=
com/tarball.tar.gz'</a>}"</div></div></blockquote><div><br></div><div>Yeah,=
 unfortunately, people don't neccessarily know they're special if you get m=
y meaning.</div><div><br></div><div>One way we've been trying this is like =
so:</div><div><br></div><div>&nbsp; &nbsp; try:</div><div>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fetcher =3D bb.fetch2.Fetch(extra_uri, d)</d=
iv><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fetcher.download()<=
/div><div>&nbsp;&nbsp;&nbsp;&nbsp;except:</div><div>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;pass</div><div><br></div><div>But this doesn't see=
m to be catching the fetch error.</div><div><br></div><div>-b</div><div><br=
></div><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">That might work, and also add determ=
inism.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>
</blockquote></body></html>

--=-FzmgAPLeS6EXYqg3ToCt--
