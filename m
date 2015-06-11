Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4490BE009F6; Thu, 11 Jun 2015 03:43:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20FA2E009C2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:42:55 -0700 (PDT)
Received: by qkoo18 with SMTP id o18so1295580qko.1
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:42:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s7uth9KKe9IRW7ygBbx6HaPxJIilYPar36gaUmK8Q/4=;
	b=apWCTb47GgvYUoXDmJ89X4pcQptNiomSzXnXBsLZChyQyCL4rYPMExivepeyptzdrB
	rEdatPiN30r/9qIRHzQ97Y9NH3DGSV20/MEti8E2BARTUAQbJUbLA3qq6RouimgCkAiR
	zGW87wYuusslngzrlYRcVmaqKXErqSaX0qL9UltX3IINmDfgiQPdUsLP9LEEx34uV8CJ
	9DzrX7xERAIRkgSXLft/nwVf4NKDFo8XrlX1ZRyNDMCOGeV6OSFat45Mkp2YCz78sFRp
	p88bbS2iHWzXGrBrFAqeaSckUTZ6y3WFgWn4p0/+rSyIhaopCBJAEoYlR5uVW+wmd8pr
	f9pg==
X-Gm-Message-State: ALoCoQlepGg0i86upfMbPGtopfLTiks2xgVgHfp8AbuWvfqkgmV1DRKonysyLvTl21WO5kMuEkZy
X-Received: by 10.140.20.99 with SMTP id 90mr10263545qgi.87.1434019373900;
	Thu, 11 Jun 2015 03:42:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 11 Jun 2015 03:42:33 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1506110630340.5358@localhost>
References: <F38A866CD026F746A3BF0928A84397BE3A42B2EE@AZ-FFEXMB01.global.avaya.com>
	<CAJTo0LZ8o=8KHZ=357AuNcF4-Y480t_jHCdbpfRev0nxy=Nqfw@mail.gmail.com>
	<alpine.LFD.2.11.1506110630340.5358@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Jun 2015 11:42:33 +0100
Message-ID: <CAJTo0LZZcQyBhXGGktGemmU1Os2d12pE+CDpvbjWTUBZNn9YJA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Merging of two recipes
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
X-List-Received-Date: Thu, 11 Jun 2015 10:43:04 -0000
Content-Type: multipart/alternative; boundary=001a11c125d461fdec05183ba7cf

--001a11c125d461fdec05183ba7cf
Content-Type: text/plain; charset=UTF-8

On 11 June 2015 at 11:31, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>   i vaguely recall from way back that the tar packaging was not really
> supported, or was mostly unused, or something to that effect. what's
> the status on that these days?
>

As it's barely functional (no metadata, obviously) it doesn't get used a
lot, but it shouldn't be broken...  I did wonder if we should remove it
some time ago, but the consensus was that it's a nice concise example and
should work.

Ross

--001a11c125d461fdec05183ba7cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On 11 June 2015 at 11:31, Rober=
t P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" =
target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":cj" class=3D"a3=
s" style=3D"overflow:hidden">=C2=A0 i vaguely recall from way back that the=
 tar packaging was not really<br>
supported, or was mostly unused, or something to that effect. what&#39;s<br=
>
the status on that these days?<br></div></blockquote><div><br></div><div>As=
 it&#39;s barely functional (no metadata, obviously) it doesn&#39;t get use=
d a lot, but it shouldn&#39;t be broken...=C2=A0 I did wonder if we should =
remove it some time ago, but the consensus was that it&#39;s a nice concise=
 example and should work.</div><div><br></div><div>Ross=C2=A0</div></div></=
div></div>

--001a11c125d461fdec05183ba7cf--
