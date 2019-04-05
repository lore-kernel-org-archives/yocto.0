Return-Path: <prvs=9913b796b=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67F94E00D08; Thu,  4 Apr 2019 23:16:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.133.110 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa9.bmw.c3s2.iphmx.com (esa9.bmw.c3s2.iphmx.com
	[68.232.133.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82787E00CD6
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 23:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1554445018; x=1585981018;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=0dDU5v1hxM5rNtY52K0Xdf2ZhIMKP9+ARZGoxg5RKfM=;
	b=pZDd25YHQyIsjUiMxu1k0SbtRvSybBM+9/5VALG6STR1i5RhuRfMWjqC
	tLpCigsZQO8bmihyGxhqBaC/lh9HBB38fYRp+Kid46AFwHcfWVETaT4dL
	msCW3ohLNF73xjtExXp+pZ5r5X4qZ26fotg+BWmu3yAwV3yomRToCKBfw g=;
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
	esa9.bmw.c3s2.iphmx.com with ESMTP/TLS; 05 Apr 2019 08:16:56 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw2.muc with ESMTP/TLS;
	05 Apr 2019 08:16:40 +0200
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp)
	([160.48.96.47])
	by esabb4.muc with ESMTP/TLS; 05 Apr 2019 08:16:40 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10k.europe.bmw.corp
	(160.48.96.47) with Microsoft SMTP Server (TLS;
	Fri, 5 Apr 2019 08:16:40 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.003;
	Fri, 5 Apr 2019 08:16:40 +0200
From: <Mikko.Rapeli@bmw.de>
To: <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] [ptest-runner] Run ptests via stdbuf configured to
	line-buffering
Thread-Index: AQHU6zFfFMfluXctaEWGw6xn8MPpNKYs9lkA
Date: Fri, 5 Apr 2019 06:16:40 +0000
Message-ID: <20190405061640.GT20077@hiutale>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
	<8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
In-Reply-To: <8703dcd293e64bbee38f5ff20ae422c80c579511.camel@linuxfoundation.org>
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
X-List-Received-Date: Fri, 05 Apr 2019 06:16:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9A68DDA17E23A04597D9D2B3F198E191@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 04, 2019 at 10:48:17PM +0100, Richard Purdie wrote:
> On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> > As ptest-runner communicates with child processes via pipe2(),
> > the corresponding channels are not attached to a pty. In that
> > situation stdio facilities like printf() or fwrite() are fully
> > buffered. If a ptest would use them, without bothering
> > to fflush() the output, ptest-runner will only receive what
> > was written by the child ptest process after a buffer gets filled.
> > If the unit tests are proceeding slowly, this may mean that
> > ptest-runner will erroneously timeout due to an apparent lack of
> > 'signs of life' from the child process.
> >=20
> > stdbuf utility from coreutils adjusts the buffering to a line-
> > buffered
> > one, and so ptest-runner will get the lines as soon as they are
> > written.
> >=20
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >  utils.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
>=20
> I'm a little torn on this. I noticed some of the run-ptest scripts use
> "| sed -u" whilst the one you were seeing problems with uses "| sed"
> without -u.
>=20
> We may want to consider strongly recommending -u. I'm testing a patch
> with some tweaks like that in it...

Please no. I'm running images without sed and using busybox sed instead, an=
d that
doesn't support -u. I'd rather be compatible with sed from busybox to keep =
changes
to images minimal (e.g. install of additional packages) before executing pt=
ests.

-Mikko=

