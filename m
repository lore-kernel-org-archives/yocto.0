Return-Path: <prvs=9913b796b=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EED3E00D15; Fri,  5 Apr 2019 00:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.133.109 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa7.bmw.c3s2.iphmx.com (esa7.bmw.c3s2.iphmx.com
	[68.232.133.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFDFE00D07
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 00:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1554447867; x=1585983867;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=lXD0KXZV689jfsgCVKIuERRxMeGirQ/rNtY8lQGmFmI=;
	b=noD/q8/wFkgHIbL8ybSvYYB8VugpyYiKKKbsru/LUuWv5CWORXXzffUZ
	rKypZZuFoBM3/PaR9KK/n1MxIDRUJHGcvYSf9cvtHRt5b5FVo3f9A9O+v
	QnMA6wP6JkNayitsDccXqjm0zt7LhEqSiCeGe9lSCQHmxhj05PzaK8XaX w=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
	esa7.bmw.c3s2.iphmx.com with ESMTP/TLS; 05 Apr 2019 09:04:26 +0200
Received: from esabb3.muc ([160.50.100.30])  by esagw4.muc with ESMTP/TLS;
	05 Apr 2019 09:04:25 +0200
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp)
	([160.48.96.48])
	by esabb3.muc with ESMTP/TLS; 05 Apr 2019 09:04:25 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10l.europe.bmw.corp
	(160.48.96.48) with Microsoft SMTP Server (TLS;
	Fri, 5 Apr 2019 09:04:25 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.003;
	Fri, 5 Apr 2019 09:04:25 +0200
From: <Mikko.Rapeli@bmw.de>
To: <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] [ptest-runner] Run ptests via stdbuf configured to
	line-buffering
Thread-Index: AQHU6zFfFMfluXctaEWGw6xn8MPpNKYs9lkAgAAIMgCAAAJVgIAAAX6AgAABUoA=
Date: Fri, 5 Apr 2019 07:04:25 +0000
Message-ID: <20190405070425.GY20077@hiutale>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
	<8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
	<20190405061640.GT20077@hiutale>
	<a3d54bdd1bd6a674bc67deb32d5c824f0275c61e.camel@linuxfoundation.org>
	<20190405065421.GX20077@hiutale>
	<2fa5e79d7b6a04b29c14622ffff6637a93303f18.camel@linuxfoundation.org>
In-Reply-To: <2fa5e79d7b6a04b29c14622ffff6637a93303f18.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.45]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner] Run ptests via stdbuf configured to line-buffering
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
X-List-Received-Date: Fri, 05 Apr 2019 07:04:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D00723C3F852DC438C242880AA10CD88@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 05, 2019 at 07:59:41AM +0100, richard.purdie@linuxfoundation.or=
g wrote:
> On Fri, 2019-04-05 at 06:54 +0000, Mikko.Rapeli@bmw.de wrote:
> > On Fri, Apr 05, 2019 at 07:46:00AM +0100,=20
> > richard.purdie@linuxfoundation.org wrote:
> > > On Fri, 2019-04-05 at 06:16 +0000, Mikko.Rapeli@bmw.de wrote:
> > > > On Thu, Apr 04, 2019 at 10:48:17PM +0100, Richard Purdie wrote:
> > > > > On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> > > > > > As ptest-runner communicates with child processes via
> > > > > > pipe2(),
> > > > > > the corresponding channels are not attached to a pty. In that
> > > > > > situation stdio facilities like printf() or fwrite() are
> > > > > > fully
> > > > > > buffered. If a ptest would use them, without bothering
> > > > > > to fflush() the output, ptest-runner will only receive what
> > > > > > was written by the child ptest process after a buffer gets
> > > > > > filled.
> > > > > > If the unit tests are proceeding slowly, this may mean that
> > > > > > ptest-runner will erroneously timeout due to an apparent lack
> > > > > > of
> > > > > > 'signs of life' from the child process.
> > > > > >=20
> > > > > > stdbuf utility from coreutils adjusts the buffering to a
> > > > > > line-
> > > > > > buffered
> > > > > > one, and so ptest-runner will get the lines as soon as they
> > > > > > are
> > > > > > written.
> > > > > >=20
> > > > > > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > > > > > ---
> > > > > >  utils.c | 7 ++-----
> > > > > >  1 file changed, 2 insertions(+), 5 deletions(-)
> > > > >=20
> > > > > I'm a little torn on this. I noticed some of the run-ptest
> > > > > scripts
> > > > > use
> > > > > "| sed -u" whilst the one you were seeing problems with uses "|
> > > > > sed"
> > > > > without -u.
> > > > >=20
> > > > > We may want to consider strongly recommending -u. I'm testing a
> > > > > patch
> > > > > with some tweaks like that in it...
> > > >=20
> > > > Please no. I'm running images without sed and using busybox sed
> > > > instead, and that
> > > > doesn't support -u. I'd rather be compatible with sed from
> > > > busybox to
> > > > keep changes
> > > > to images minimal (e.g. install of additional packages) before
> > > > executing ptests.
> > >=20
> > > The other alternative option being proposed is for ptest-runner to
> > > depend on coreutils which is worse?
> >=20
> > GNU sed does not come from coreutils but from sed recipe.
> >=20
> > Your call in the end. I just provided my point of view.
>=20
> The original patch in this thread from Alex needs stdbuf which would
> add a coreutils depends to ptest-runner for everything as I understand
> it.

Ok, that too then. Then all hope is lost so lets include sed there as well =
:)

> > > I did test the -u option to sed in the openssh ptest runner and it
> > > did
> > > fix the problems we've been seeing.
> > >=20
> > > I'm open to other alternatives but the -u option to sed is looking
> > > like
> > > the best one we have right now. These bugs are making our testing
> > > of
> > > ptests effectively useless and unpredictable so this is a serious
> > > issue...
> >=20
> > Understood. I hope you could also add 'set -eux' to all ptest shell
> > scripts. Many of them seem to be missing shell script error handling
> > and failures like providing -u to busybox sed may go unnoticed.
>=20
> Patches would be welcome to help clean up some of these scripts. I feel
> like I'm fighting a lonely battle trying to get any of this to work at
> times :(

We're ramping up with ptests and will provide fixes back to upstream.

> The good news is the automated monitoring of the ptest results should
> catch problems like that as if a chunk of ptests "disappear", the new
> testing should quickly highlight that.
>=20
> (We should improve the scripts, we just also have another way to spot
> problems)

All this work is very much appreciated here in downstream! Thanks you very =
much!

-Mikko=

