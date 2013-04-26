Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B18CE014D3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 23:00:16 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id ro2so1042150pbb.4
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 23:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=QsY7XQFjyTh36RmsMTDbkdb30wDf1S7XtsPKmpgQtSU=;
	b=gUlluanxOk0Z7i/xcYUTyAuv5Kw218FV5A6C7sNK5RVSF62p4MnuYaX+ZzAKNIXyCO
	Fg+k7ihQ+jHyofm7Auwvs5jAKtPPoqrJtQOjpQYkKjv/cjznmNRmt7HEeeELN7gUCHJr
	bYyAJBUqEVJ6ak7QjP+LnuqtdZ1tjUiT6W7n7AQPxYN6DovJhZrEmsHnlDr9pifrDLgz
	YuqTqKaqZGmAjNE23fQAuhH/h+e0m7+tj9NXbP68nUCpSOrt3v0KU6clcb3BHGV8qGK0
	4ZGw1m5+swDXHyhyfkiScE+mcpvKIXyJxlB5HMfzhVKNTkcJ1saCacNNibD37sDjbpOG
	Vl5A==
X-Received: by 10.68.170.66 with SMTP id ak2mr56779632pbc.123.1366956016422;
	Thu, 25 Apr 2013 23:00:16 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	qi1sm11249616pac.21.2013.04.25.23.00.14 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 23:00:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <62673661A504604B856269DAADA8BC281DE3C18C@ILPTWPVEXMB02.ecitele.com>
Date: Thu, 25 Apr 2013 23:00:15 -0700
Message-Id: <11E60CB6-AAB8-4682-8C23-B3C956EB9071@gmail.com>
References: <62673661A504604B856269DAADA8BC281DE3C18C@ILPTWPVEXMB02.ecitele.com>
To: Michael Fainstein <Michael.Fainstein@ecitele.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: strip path in meta/site/common-linux
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
X-List-Received-Date: Fri, 26 Apr 2013 06:00:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 17, 2013, at 10:30 PM, Michael Fainstein =
<Michael.Fainstein@ecitele.com> wrote:

> IMHO program strip should be removed from meta/site/common-linux.
>=20
> I had a problem in my recipe: 'make install' was failing due to =
/usr/bin/strip failure to recognize file format (I am building for =
powerpc on x86_64 PC). I traced this error back to ./configure that was =
selecting /usr/bin/strip instead of powerpc-fsl-linux-gnuspe-strip. =
After some more digging I found that configure selects strip due to line =
db_cv_path_strip=3D${db_cv_path_strip=3D/usr/bin/strip}
> in meta/site/common-linux.
> I solved it by setting CONFIG_SITE=3D"" in my recipe.
> IMHO common-linux should contain only architecture-independent =
definitions. strip is architecture-dependent (e.g. x86 strip can't =
handle powerpc files), so it shouldn't be defined in =
meta/site/common-linux.


I would encourage you to write a patch and send it over.


