Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD649E008FF; Mon,  2 Feb 2015 09:43:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97C50E0095D
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:43:41 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id fb1so85161482pad.10
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=hZT0wDGqbxLT9t5RHUZ+tC+OfLrxTEUB8wRh5tDLYzI=;
	b=qR9CGAvBG5l538eujMfo7hjJjr/03uXd3dtmmRW/bazS8u+IpHicxwrC9dMlu6voH4
	f54DQ7fVSfr188UzoRlmzZPhmYOV2aC1miFYwg16527iAPAbFEHWd7oqCIsh8cJ2ZonE
	xKpOADO3jjwQEhE2rjbE4/EszHuep9woILzApNPWKek+6xrps9QNnpIs+sHApjxcHWwC
	1HThxs3hfD1AKwKtbIhfp0fJ1wbmvcrGCAuFt9Uvbj7l/5kM2lc42HvD0kWCanvJrFCm
	PzV+EZ91L7Rvwrq71kL+lOTxcLcNp7F+l2JBY10jiLBNC3lUX8C5zfqhcDkrbfg3t7Cb
	ssDg==
X-Received: by 10.68.216.161 with SMTP id or1mr30845097pbc.120.1422899020965; 
	Mon, 02 Feb 2015 09:43:40 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:208e:756e:d63f:530d?
	([2601:9:3580:84c:208e:756e:d63f:530d])
	by mx.google.com with ESMTPSA id c9sm19435349pdm.51.2015.02.02.09.43.40
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Feb 2015 09:43:40 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LbhMAnd=TKhbWHhTsbca_bVSvtjLFsR6b_P5gsarO7AOg@mail.gmail.com>
Date: Mon, 2 Feb 2015 09:43:39 -0800
Message-Id: <E753DBB2-6DEA-41CB-B266-34B35807F5D7@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<54CFA8A5.7090504@mvista.com>
	<CAJTo0LbhMAnd=TKhbWHhTsbca_bVSvtjLFsR6b_P5gsarO7AOg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 17:43:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0609BA8A-08DB-4E5B-997B-045F85F3433F"

--Apple-Mail=_0609BA8A-08DB-4E5B-997B-045F85F3433F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 2, 2015, at 9:26 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
> Armin,
>=20
> On 2 February 2015 at 16:41, akuster <akuster@mvista.com =
<mailto:akuster@mvista.com>> wrote:
> If I knew what "testing' entailed I would through some time at this.
>=20
> "Please build your stuff with this glibc/gcc and check it still =
works".
>=20

anything helps. apply the patches and see if they apply and parse =
correctly with your layer combo
then second step is compile and build images/sdks as Ross said.
Third would be boot and runt the images and workloads which you normally =
do
4th would be run your tests
5th would be run gcc and glibc unit tests.
and repeat same for as many architectures as possible.

> Ross


--Apple-Mail=_0609BA8A-08DB-4E5B-997B-045F85F3433F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 2, 2015, at 9:26 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra">Armin,</div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On 2 =
February 2015 at 16:41, akuster <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:akuster@mvista.com" target=3D"_blank" =
class=3D"">akuster@mvista.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":55" =
class=3D"a3s" style=3D"overflow:hidden">If I knew what "testing' =
entailed I would through some time at this.<br =
class=3D""></div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">"Please build your stuff with this glibc/gcc and check it =
still works".</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>anything helps. apply the patches and see if they =
apply and parse correctly with your layer combo</div><div>then second =
step is compile and build images/sdks as Ross said.</div><div>Third =
would be boot and runt the images and workloads which you normally =
do</div><div>4th would be run your tests</div><div>5th would be run gcc =
and glibc unit tests.</div><div>and repeat same for as many =
architectures as possible.</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><div =
class=3D"">Ross</div></div></div></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_0609BA8A-08DB-4E5B-997B-045F85F3433F--
