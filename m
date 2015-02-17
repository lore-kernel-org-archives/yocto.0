Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0EFAE00769; Tue, 17 Feb 2015 06:17:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A838E0043B
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 06:16:57 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id hl2so29980926igb.5
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 06:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=r2GR1LdrRW1J7CzkdiQ9qkiqRsPABs1aSGkTEsgvs+k=;
	b=dpljx64FGCYlE8kUn0NI4YksurexJ4B+21CsvdUw6wHuhAQICNBVuJ+t+dDxZ8wD3k
	s+xsT+IfbiV+AhKVoiJYSLUNeuYfAfgciffaccTaiPDjZd/uzp7LrY1RvLW6w6a7QII9
	iUHdxcsZncV0O975bfGHMZEmJDXyQt8r+YxdniU+sYcGr8iOtuJaWPdRF5gG340kgti1
	SslQHDj6CpbJdMdaI9WIE/AVmyRrvlTXN05j4Fb1m5WBT1BOfTn1/V+z1zlXAtrWdUBB
	actqnIpFlsK3PruhpwUuA2COT8ECytVTi4zZitMa/+Cg7zQDjtPlBJtGJiBEQbjMWsUR
	b9IQ==
MIME-Version: 1.0
X-Received: by 10.107.15.156 with SMTP id 28mr36630118iop.57.1424182616538;
	Tue, 17 Feb 2015 06:16:56 -0800 (PST)
Received: by 10.36.52.75 with HTTP; Tue, 17 Feb 2015 06:16:56 -0800 (PST)
Date: Tue, 17 Feb 2015 22:16:56 +0800
Message-ID: <CAKGbVbujEzXZsTWZN0Zu1w1DkkBRFFMSqdA6jQCS6e7JouCDgw@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: ebutera@users.sourceforge.net, Sergey Lapin <slapin@ossfans.org>,
	aguirre.nicolas@gmail.com
Subject: [meta-sunxi] handle no soname shared library
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
X-List-Received-Date: Tue, 17 Feb 2015 14:17:01 -0000
Content-Type: multipart/alternative; boundary=001a113edadaf444f7050f495af7

--001a113edadaf444f7050f495af7
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm using meta-sunxi which provides binary libegl & libgles shared library
files. They all
link to a libMali.so file having no SONAME field in it. So it won't
register libegl & libgles
to shlib2 list when do_package, and other packages linking libegl & libgles
won't add
runtime dependent automatically at do_package.

Any ideas to solve this problem? Why can't yocto just use file name when
SONAME is
missing?

Regards,
Qiang

--001a113edadaf444f7050f495af7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using meta-sunxi which =
provides binary libegl &amp; libgles shared library files. They all</div><d=
iv>link to a libMali.so file having no SONAME field in it. So it won&#39;t =
register libegl &amp; libgles</div><div>to shlib2 list when do_package, and=
 other packages linking libegl &amp; libgles won&#39;t add</div><div>runtim=
e dependent automatically at do_package.</div><div><br></div><div>Any ideas=
 to solve this problem? Why can&#39;t yocto just use file name when SONAME =
is=C2=A0</div><div>missing?</div><div><br></div><div>Regards,</div><div>Qia=
ng</div></div>

--001a113edadaf444f7050f495af7--
