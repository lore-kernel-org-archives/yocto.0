Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 214AEE008CC; Mon,  2 Feb 2015 09:40:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2FC5E008A6
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:40:40 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id eu11so84934521pac.2
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 09:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=HEhMfRBA5Ko8bf0/Mj8XrkPQt2P3GQDnRE8WxhGskWc=;
	b=o4o8YtK30WXqHEuSlYuK8/3p/u8AbKDcYprwIyLmc6JXjumywa33ErKdqvdJhlg3I+
	SJ7iKA4neWckPHgRLITsP63hReyhM990jMNdM7aU68PRAF3b+B6G7sVqCEPTA/wKxQmQ
	CMVJ8wl5YEliA1tVnQhaPIEGiXXVICL2GOksqmv8V1QPg1EoZUu4ZwjjgeAWeOFoQCJY
	GXpD9O/rJJ/iUeNhhNAJo526a66kI8mBt9WtzMMhgpf55ZK3H3YIn8eGdX59ExLHjrsy
	einkaLHA6oI4FpiR7E2k4vmdwzNNgPq1uMBfbQfYD4m14zCqSq0A1EONet+pKzbkUUBz
	6Idw==
X-Received: by 10.68.197.10 with SMTP id iq10mr31163851pbc.143.1422898840465; 
	Mon, 02 Feb 2015 09:40:40 -0800 (PST)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by mx.google.com with ESMTPSA id
	fy2sm19392236pbb.30.2015.02.02.09.40.39
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Feb 2015 09:40:39 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
Date: Mon, 2 Feb 2015 09:40:38 -0800
Message-Id: <EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
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
X-List-Received-Date: Mon, 02 Feb 2015 17:40:52 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_52A04D3F-E210-4975-BCF4-7BA3C89499B9"

--Apple-Mail=_52A04D3F-E210-4975-BCF4-7BA3C89499B9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 2, 2015, at 9:25 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 2 February 2015 at 10:54, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> On Mon, Feb 2, 2015 at 2:40 AM, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
> > cross-localdef-native:
> >
> > | In file included from glibc/locale/programs/locarchive.c:696:0:
> > | glibc/locale/programs/../../intl/l10nflist.c: In function
> > '_nl_normalize_codeset':
> > | glibc/locale/programs/../../intl/l10nflist.c:306:12: error: =
missing binary
> > operator before token "("
> > | glibc/locale/programs/../../intl/l10nflist.c:313:9: error:
> > '_nl_C_locobj_ptr' undeclared (first use in this function)
> > | glibc/locale/programs/../../intl/l10nflist.c:313:9: note: each =
undeclared
> > identifier is reported only once for each function it appears in
>=20
>=20
> gcc would work with latest tree but I did not run into this error. So
> wait a while until I get to it.
>=20
> I can confirm that the current branch builds gcc (and everything else =
in a minimal image) apart from cross-localdef-native, with a long set of =
errors for me now:
>=20

Thanks guys.
Yeah, you must be using a weirdly compiled gcc on your host which is =
defaulting to -std  < c99 and hence the problem. I have fix for that =
issue already locally.
I could reproduce it once I passed -std=3Dc89 in CFLAGS. but there is =
another issue where a new macro IS_IN(lib) is added in glibc 2.21 and is =
giving me a bit of heartache
I will update the branch soon when I have fix for it and then send a =
notification.


--Apple-Mail=_52A04D3F-E210-4975-BCF4-7BA3C89499B9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 2, 2015, at 9:25 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 2 February 2015 at 10:54, Khem Raj <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank" class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><span class=3D"">On Mon, Feb 2, 2015 at =
2:40 AM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:<br class=3D"">
</span><span class=3D"">&gt; cross-localdef-native:<br class=3D"">
&gt;<br class=3D"">
&gt; | In file included from =
glibc/locale/programs/locarchive.c:696:0:<br class=3D"">
&gt; | glibc/locale/programs/../../intl/l10nflist.c: In function<br =
class=3D"">
&gt; '_nl_normalize_codeset':<br class=3D"">
&gt; | glibc/locale/programs/../../intl/l10nflist.c:306:12: error: =
missing binary<br class=3D"">
&gt; operator before token "("<br class=3D"">
&gt; | glibc/locale/programs/../../intl/l10nflist.c:313:9: error:<br =
class=3D"">
&gt; '_nl_C_locobj_ptr' undeclared (first use in this function)<br =
class=3D"">
&gt; | glibc/locale/programs/../../intl/l10nflist.c:313:9: note: each =
undeclared<br class=3D"">
&gt; identifier is reported only once for each function it appears in<br =
class=3D"">
<br class=3D"">
<br class=3D"">
</span>gcc would work with latest tree but I did not run into this =
error. So<br class=3D"">
wait a while until I get to it.</blockquote></div><br class=3D"">I can =
confirm that the current branch builds gcc (and everything else in a =
minimal image) apart from cross-localdef-native, with a long set of =
errors for me now:</div><div class=3D"gmail_extra"><br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>Thanks guys.</div><div>Yeah, you must be using a =
weirdly compiled gcc on your host which is defaulting to -std &nbsp;&lt; =
c99 and hence the problem. I have fix for that issue already =
locally.</div><div>I could reproduce it once I passed -std=3Dc89 in =
CFLAGS. but there is another issue where a new macro IS_IN(lib) is added =
in glibc 2.21 and is giving me a bit of heartache</div><div>I will =
update the branch soon when I have fix for it and then send a =
notification.</div></div><br class=3D""></body></html>=

--Apple-Mail=_52A04D3F-E210-4975-BCF4-7BA3C89499B9--
