Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85EEBE00BBC; Mon,  7 Aug 2017 18:41:52 -0700 (PDT)
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
	*      [69.252.207.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-12v.sys.comcast.net
	(resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B5FE00BA2
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 18:41:50 -0700 (PDT)
Received: from resomta-ch2-11v.sys.comcast.net ([69.252.207.107])
	by resqmta-ch2-12v.sys.comcast.net with ESMTP
	id etVbdoKqVxR26etWodGygR; Tue, 08 Aug 2017 01:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1502156510;
	bh=5wQLjLGGHnJJgn7YjLVqQ9GP7s1OOfLVzmUGDEO1eYU=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=XinLJSinDjDa7eJsC7nYAc/FsKsO/eDE2s6S0LslOQBSEP6y2FFHIZ3iYWFcWeI+i
	ryGGchumTopPnWCNC2WGWxJrLIYY6jq/kfWgiuSh5lioc8HDihHoHl7q7lpNUsGM50
	Vwgsb7bnxOP8iaBgdGLCWrTOeIqlYCk4tpH39cnlnCE4CJRIiADu4uCZJhwi+XN248
	I1eAvO67u0m6Y0ywB2mUvl57T5aWgUE7vrLgpIC4jIllZQ1ZspPG3Lm8ZGZeoldQw2
	pVOy1nsn0ro8cPJGa3fD7WMINpGN4A5LAIhQOVANGae76y0SdABhK9pR3OfO6PO2Kv
	beiPtvMcj7slA==
Received: from [IPv6:2601:18f:800:acc1:6521:5b15:4878:e863]
	([IPv6:2601:18f:800:acc1:6521:5b15:4878:e863])
	by resomta-ch2-11v.sys.comcast.net with SMTP
	id etWndqgjsuMJOetWndebFA; Tue, 08 Aug 2017 01:41:50 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <2375676.dB7SvS9hsX@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 7 Aug 2017 21:41:48 -0400
Message-Id: <F0A9A900-5197-4F66-A56B-43954E06C7DF@comcast.net>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
	<1944952060.249322.1501698853728@connect.xfinity.com>
	<2375676.dB7SvS9hsX@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfPPmM8V65e86kXOPLhIi+HhTC9hhjfTig5DGxLthti2xNN7q5Lu+qvDjuNNwqALnKTJUM/gqCL6ahoX5vOoS0MMUlighJEeWGhEMLyZPaHNeswExP85F
	D3H+LhTtnyRwZZ6qHk0AbFLMCuByr2vfMq+bybY539cmTqWUxvft2Nnm0gkBQbWabLB2cYVK5GWsX43DJsof8ngZJp0fXs2K53zdURNMprLn5eN6Ajue8fzB
	9VoEh+LB5JYDxCtJyf5pYQ==
Cc: yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Tue, 08 Aug 2017 01:41:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks, Paul.

That helped, however, I still see some of the same =E2=80=9Cunexpected=E2=80=
=9D errors for perf tasks as well as my virtual/kernel tasks. =20

I presume SDK_INHERIT_BLACKLIST excludes the use of the class for the =
SDK=E2=80=A6 but I am unclear as to why I see these errors with my =
linux-yocto-xxx.bb recipe/tasks.

Thanks again.

Russell


> On Aug 7, 2017, at 2:49 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> Hi Russell,
>=20
> On Wednesday, 2 August 2017 8:34:11 PM CEST RUSSELL PETERSON wrote:
>> Frustrating in that I can't get the eSDK to fully build. I'm past the =
issue
>> with kernel-devsrc and harfbuzz... but now I see hundreds of messages =
like
>> below. Anyone seen this before? =46rom what I can tell these tasks =
are being
>> executed out of the run queue.  Not all the messages are from =
cve-check but
>> most.
>=20
> So there are certain classes that will interfere with the ability of =
the eSDK=20
> to lock down the configuration, I wasn't aware of it but =
cve-check.bbclass is=20
> apparently one of them. Try adding this to your configuration:
>=20
> SDK_INHERIT_BLACKLIST =3D "buildhistory icecc cve-check"
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


