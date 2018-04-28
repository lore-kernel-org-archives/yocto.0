Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10ECEE0098A; Sat, 28 Apr 2018 16:03:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79861E00595
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2018 16:03:04 -0700 (PDT)
Received: from resomta-ch2-09v.sys.comcast.net ([69.252.207.105])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id CYp4fbTPfqEz4CYrvfNdJe; Sat, 28 Apr 2018 23:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1524956583;
	bh=SCHWVsajhFArxhA73qyeD443DP6M80kaWmG1E0MCK4E=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=bPsIoOFEM+97XFZ9p30mxd2J7cK7DvlycyRbY/Tc5B4yxXzWh+kvEJ+SRpYGka0u9
	VHowBSECawleWRFbvat6q/KgwP+/3YMlpibKPZXmaAbZDBKKECXZwHa0nSWO7DP1U4
	VJuKMAdKRc/dok+AvWwSXvrv07rOdGxfv8aCs9aR/i8UFXHdvXQUibB8kx5b+L4W2B
	gg387+R3uJKZgmbRGCzrAQLzmp7JFfLwm98HAo2P05rgWItz7bYoS5vu6RPsNpTzf7
	StwL7HkR/te6xTk1L5xMTpt86jccx+cs5OBDGrydq9JWFHsQGhbm2IM8SWm1thClFi
	pyZcKCf5L6dLg==
Received: from [IPv6:2601:18f:880:9aeb:21d6:36f0:dca2:3547]
	([IPv6:2601:18f:880:9aeb:21d6:36f0:dca2:3547])
	by resomta-ch2-09v.sys.comcast.net with ESMTPSA
	id CYrufKiPzFtThCYrvfgteq; Sat, 28 Apr 2018 23:03:03 +0000
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <CAJTo0LaOtoAVsq_uh+HB9-GiJh7pzPR_hMpoPsUqvTZbFHJAtw@mail.gmail.com>
Date: Sat, 28 Apr 2018 19:03:02 -0400
Message-Id: <C72A9416-3D9C-41A8-B58C-1D21B84CA595@comcast.net>
References: <7ED8F308-F150-4C07-9FA9-325E45D1388B@comcast.net>
	<CAJTo0LaOtoAVsq_uh+HB9-GiJh7pzPR_hMpoPsUqvTZbFHJAtw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3445.5.20)
X-CMAE-Envelope: MS4wfL6RLUypQIjS4m17nTDrkWTKTXabq7YG2fAulxy/+BJmwSMcMeii712dA/frXsRado7YdOtFpICD/uGLl3jZRTDIOl/dQvle3ZAA/Zfrpyq24ZMNZarj
	spJ+i/YRSkATmbhP1HlSrWj3hUj/1xXnuWnYpXV4JQ7jqso4zKKFjB/9Avjv8Msd5KQpkJFFgTPOguUFhAibIIJAfcMapOX+2f29NMaw6lDq0zTlX7M6YFKq
	cyzAq8vLRQ+fMkXKhcBcTeKP/fY3UtemJsNNW93K5mqlpZ70bAgTbLP63atzBNlqKSDOY8bg2bJ5ceyEdTxltg==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: python & xml2
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
X-List-Received-Date: Sat, 28 Apr 2018 23:03:05 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I created a bbappend file with the following:

PYTHON_PN =3D "python"
DEPENDS +=3D "python"
RDEPENDS_${PN}-ptest +=3D "python-core"
PYTHON_BASEVERSION =3D "2.7"
PYTHON_DIR =3D "python2.7"

Seems to work although I have not tested it yet=E2=80=A6 the library =
shows up in the correct site dir anyway.

I would think this would be easier and more obvious to change but I=E2=80=99=
m not python or xml2 expert.
Our users have older python applications that reply on python2.

Thanks for the response.

Russell


> On Apr 28, 2018, at 8:20 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
> The recipe specifies that Python 3 is to be used.  If you want to
> build it against Python 2 you'll have to patch the recipe.
>=20
> Ross
>=20
> On 28 April 2018 at 00:26, Russell Peterson <bluehills7@comcast.net> =
wrote:
>> I am trying to install libxml2 for python2 in my image recipe.  Seems =
like it is being installed in the python3 site packages directory =
instead of the python2 site packages directory.  While looking into this =
I have become very confused.  Is there some documentation on this?  Do I =
need to set some kind of variable in the xml2 recipe??
>>=20
>> Russell
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


