Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54E06E0086E; Fri, 13 Mar 2015 04:51:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D0DEE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:51:10 -0700 (PDT)
Received: by qcvx3 with SMTP id x3so25773521qcv.0
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Th09YicdlVCcYMPNgqcrHZmVWKSjVrDUWy+3L662dA8=;
	b=l3oKTpdJaVI84h85HYB1N1tSjSqdwt7p/UcjZq1ATVOjAtYSX8PCvgQZebpeIYjIyl
	SmsPfwIeQ1N5ssm3ZSwioGmOTXmmpJ04f56XTRiD1zEXA+WvBrWseHOOA6DCFCPql/a9
	GsnsAgRxcKLcQ1vN90AAQ9O231GW1u9Ut7oivbm1/CGjQ0JRc9NroRBxIdEE3dB1oqFi
	G1KJfRVtBpxzGk3V3jHYtU6uYMunxidqCJdbv1JjCAmRZo1plX0so9aHn0Yh0q34fia6
	lahgzV46uH5C+TviC1UbI7YqP9PPy9GRCnlzQL4aMXR++zRD/XpntGTUCyd4YtIacCth
	9pLw==
X-Gm-Message-State: ALoCoQkyk84ZsirZlFmcQ+V/1wTQL+jjs1rq3K5AcANaOT8YX0/G1pmphHhL70JGdzrgh1HnqYMX
X-Received: by 10.55.21.66 with SMTP id f63mr65308800qkh.102.1426247470367;
	Fri, 13 Mar 2015 04:51:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Fri, 13 Mar 2015 04:50:49 -0700 (PDT)
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A8069053A4@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
	<4649620.1oiO9F2Se0@peggleto-mobl5.ger.corp.intel.com>
	<95CF81BBD42FB348A182716C4D4310A8069053A4@G2W2533.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Mar 2015 11:50:49 +0000
Message-ID: <CAJTo0LZA64bXZd-KxdN7n43oOzhj9f4wUFVR_s9GtgSVCavgQg@mail.gmail.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: running task only for native but not target?
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
X-List-Received-Date: Fri, 13 Mar 2015 11:51:12 -0000
Content-Type: multipart/alternative; boundary=001a1147ecd8d5737b05112a1d70

--001a1147ecd8d5737b05112a1d70
Content-Type: text/plain; charset=UTF-8

On 13 March 2015 at 11:46, Koehler, Yannick (HP Networking) <
yannick.koehler@hp.com> wrote:

>   Thanks, yes that is likely to work, I will try it.  I was looking for a
> more Yocto-like solution using the overriding stuff but it seems the
> overriding doesn't apply in this particular situation.
>

An alternative solution would be to build everything all the time, and
package correctly so that you don't install unrequired binaries on the
target.

Ross

--001a1147ecd8d5737b05112a1d70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 March 2015 at 11:46, Koehler, Yannick (HP Networking) <span dir=3D"lt=
r">&lt;<a href=3D"mailto:yannick.koehler@hp.com" target=3D"_blank">yannick.=
koehler@hp.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 id=3D":1uj" class=3D"a3s" style=3D"overflow:hidden">=C2=A0 Thanks, yes tha=
t is likely to work, I will try it.=C2=A0 I was looking for a more Yocto-li=
ke solution using the overriding stuff but it seems the overriding doesn&#3=
9;t apply in this particular situation.<br></div></blockquote><div><br></di=
v><div>An alternative solution would be to build everything all the time, a=
nd package correctly so that you don&#39;t install unrequired binaries on t=
he target.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a1147ecd8d5737b05112a1d70--
