Return-Path: <galasso.maurizio@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98A75E00B31; Fri, 21 Jul 2017 07:00:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (galasso.maurizio[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.43 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F046E00B1B
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 07:00:17 -0700 (PDT)
Received: by mail-lf0-f43.google.com with SMTP id p2so8053541lfg.0
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 07:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jfQF51U+UBrggLtocwwGlQD9mFD8py7OjekiJAwex4E=;
	b=cO8CNM4Xn5WLGvMC95V0HwzgPt+7mRaaKhXVKoNjYhD7hSmncZSY90fMME2oUfPLwZ
	fO5KUnxPz0Tjero5B9pCWgf0PhPqN7qvS7dM9+DsQIhw35AURWicZkh8OYa7FBdPLafJ
	ZSwBl24adp1VSaPBFxc9UtdyooVURxceMggSZgfL/mS+QEUALRocPzD39EIZPddU03TT
	R3PgZyRz467IidVCd9KRei1Sue3wBtQ+E/Ytsgmrw7oLN3bFRkVk9aGQjXoin6GzSaEB
	a+Z3S7SwpeOQHFKEqgsj1hIhKeTYSYuPy3C9HGm2OpaFm1ClyhCsTJaB/0rUHyj9WH6R
	wtaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jfQF51U+UBrggLtocwwGlQD9mFD8py7OjekiJAwex4E=;
	b=EhfiKNP1B2qLRwWZnISBSA0b686xa0WIrn8SfysX4dewI8nccZIFtNEy6z3QLuUsR1
	mHdTGXMOMwGnGXJVcIrydu1prvJNAvZDmQ03q8O4SLzWbzWE7c6HkE0X55IC6GU22Zxe
	E8Mv3/U2Rh4KirIKd236qQoMl4O3gfOT0z27No7SuyWHoSBLTTsv53JfX7UJWu+vJTOM
	C97G9tK2c3mi5m0exBbUDKKaDvkn/DprhWcbjgXnb+SJ1Ut52+uU5WZQ+vJ+tOVmc7OJ
	ZDeYQuBwJJHITMeUaQGAqPSfDhsh9ITg8hxKfCJrI+S9ThYXF1OqWdx7HvPQdwj3mQOv
	lJiw==
X-Gm-Message-State: AIVw110I0HFiAuXa7+97GeQLU+U3OMDpBmNEWwEsJK2A2CJSd9gWUjbo
	T/Rjm/ekBZHXP1HT9TgW+B9PwNHUe1TL
X-Received: by 10.46.82.88 with SMTP id g85mr2692601ljb.123.1500645616171;
	Fri, 21 Jul 2017 07:00:16 -0700 (PDT)
MIME-Version: 1.0
From: Maurizio Galasso <galasso.maurizio@gmail.com>
Date: Fri, 21 Jul 2017 14:00:05 +0000
Message-ID: <CAGbeqampN7-BHbkTTDK5EtKzWLQVu0Ziv3whu2BSt-+thj1s3A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 25 Jul 2017 11:19:05 -0700
Subject: information on cedarview support for Yocto Poky
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
X-List-Received-Date: Fri, 21 Jul 2017 14:00:18 -0000
Content-Type: multipart/alternative; boundary="001a113e0322e2c34d0554d448c8"

--001a113e0322e2c34d0554d448c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,



I am about to work in a cedarview Machine. From what I seeing online it
seems that the only available support is for yocto danny.

It is the cedarview supported and I=E2=80=99m missing the reference or the =
system
is no longer supported? Can I consider some possible patch on poky?

My target is to work on an implementation where the sw will be updated in
the future and to receive further kernel update.


did you have any feedback on this topic?


thank you very much for your support

--001a113e0322e2c34d0554d448c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal">Hello,</p>

<p class=3D"MsoNormal">=C2=A0</p>

<p class=3D"MsoNormal">I am about to work in a cedarview Machine. From what=
 I seeing
online it seems that the only available support is for yocto danny.</p>

<p class=3D"MsoNormal">It is the cedarview supported and I<span style=3D"fo=
nt-family:&quot;Times New Roman&quot;,serif">=E2=80=99</span>m missing the =
reference or the system is no longer
supported? Can I consider some possible patch on poky? </p>

<p class=3D"MsoNormal">My target is to work on an implementation where the =
sw will
be updated in the future and to receive further kernel update.</p><p class=
=3D"MsoNormal"><br></p><p class=3D"MsoNormal">did you have any feedback on =
this topic?</p><p class=3D"MsoNormal"><br></p><p class=3D"MsoNormal">thank =
you very much for your support</p></div>

--001a113e0322e2c34d0554d448c8--
