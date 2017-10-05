Return-Path: <drew@moseleynet.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 073C5E00D7E; Wed,  4 Oct 2017 17:48:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469C9E00D75
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 17:48:14 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id g125so4826958oib.12
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 17:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=moseleynet.net; s=google;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=hjC0I9FYbhj3EbKeu4eXLtZHZ+sKVlQbDXKbTnmRAZw=;
	b=NwnLygBeekS9F8qH+1LoCrTZXalm7bpB2fyMxNdpzBCsDgVXD/m3nDst97DzVtDNJt
	K7EXQ/S296I6rIFbkwMbFeZpqg2UsthDfLIX+syhMZvv5XP8IeRzq9NQ91ONi7hdKKgy
	/QNQvCi8cUpnzhB1slC/dY0pLjtPKF+o50FCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=hjC0I9FYbhj3EbKeu4eXLtZHZ+sKVlQbDXKbTnmRAZw=;
	b=TfInNh2vR2RRvVHuYa1RcKqHoB2MmRwzs/S2dP53QuwjhCwTb3G2qNfnD8BlABjHho
	2BvdFnPsCYXUERMms8UAgzA9jRAC7NMUsNPZn+CxpEOWidlO+gq8PYYRqeICUHivY1Zh
	TIIPg4eavUZTBtwCbRjHyZbGcIIk+kSNWSxtrujM9hz0V721C1o0Ye50MTRVdgM8OoYj
	w7xbctrgIuGlflbN2qYeZvmqsGZJPW3GDU68eKS1jQ2Xepwwvwv8IVw7UKLU9VFp6tor
	fgCjXxc0QzQNa0/TsebYtXLPRMqRYZamQl9qE0YMkmG1wp8TcQ8VnYhdlVFhcJ/gRhq5
	pLqw==
X-Gm-Message-State: AMCzsaUmFYn1W19eidYd0wd5pKXVqFca5WqGXOUfkKF90U9kdyVin1R6
	ki4upaBqPJQHx17K3/XcOkhfOw==
X-Google-Smtp-Source: AOwi7QBqlVQ3Vzf92/fuFVJDne+IemqCqwNskIGqiShNh0dCUy79sI1lWPc0+vJ+DouxLymNFrogDA==
X-Received: by 10.202.237.202 with SMTP id l193mr5656572oih.317.1507164494062; 
	Wed, 04 Oct 2017 17:48:14 -0700 (PDT)
Received: from [192.168.1.31] (173-168-237-167.res.bhn.net. [173.168.237.167])
	by smtp.gmail.com with ESMTPSA id
	a13sm8483656otd.38.2017.10.04.17.48.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Oct 2017 17:48:13 -0700 (PDT)
From: Drew Moseley <drew@moseleynet.net>
Message-Id: <E2D72216-F81A-4F98-BD2A-0D4A7D9128BE@moseleynet.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 4 Oct 2017 20:48:11 -0400
In-Reply-To: <CAPxJQ9G7zqCvSQ1M00y2md0TniEHK+QQssvAApVQWkAECnYArQ@mail.gmail.com>
To: Mark Hieber <hieberm@gmail.com>
References: <CAPxJQ9G7zqCvSQ1M00y2md0TniEHK+QQssvAApVQWkAECnYArQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: Another question about yocto
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
X-List-Received-Date: Thu, 05 Oct 2017 00:48:16 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_43CF698A-F472-440C-8002-89066B10F6B1"

--Apple-Mail=_43CF698A-F472-440C-8002-89066B10F6B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On Oct 4, 2017, at 8:31 PM, Mark Hieber <hieberm@gmail.com> wrote:
>=20
> I am trying to build =
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/desk=
top-file-utils/ =
<http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/des=
ktop-file-utils/> into my image.
>=20
> My local.conf has IMAGE_INSTALL_append =3D " =
desktop-file-utils-native=E2=80=9D

You are trying to install a native package, which is intended only to =
run on your host build system, in your target image.  I suspect you want =
to include desktop-file-utils here.

Drew=

--Apple-Mail=_43CF698A-F472-440C-8002-89066B10F6B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Oct 4, 2017, at 8:31 PM, Mark Hieber &lt;<a =
href=3D"mailto:hieberm@gmail.com" class=3D"">hieberm@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D"">I am trying to build <a =
href=3D"http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devto=
ols/desktop-file-utils/" =
class=3D"">http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-de=
vtools/desktop-file-utils/</a> into my image.<br class=3D""><br =
class=3D"">My local.conf has IMAGE_INSTALL_append =3D " =
desktop-file-utils-native=E2=80=9D</div></div></blockquote><div><br =
class=3D""></div>You are trying to install a native package, which is =
intended only to run on your host build system, in your target image. =
&nbsp;I suspect you want to include desktop-file-utils =
here.</div><div><br class=3D""></div><div>Drew</div></body></html>=

--Apple-Mail=_43CF698A-F472-440C-8002-89066B10F6B1--
