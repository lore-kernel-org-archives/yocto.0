Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8DC9E006EE; Mon, 10 Aug 2015 04:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B0CE00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:19:48 -0700 (PDT)
Received: by qkfj126 with SMTP id j126so5385245qkf.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6zMsQ/0pK68qAKQ4uGCzbL5QuGsznLzTf2FAm7y3OyQ=;
	b=WDzoZ23bC5GvcbAXYkFW2V1J0IUG8891MiCDbokcA3X1NKlV1iRXj525XRV1LC0dY2
	aoFTDS4zgM/GkBTtvXMKCJGY24iYlsoX9pwA4W+Bq47lNE9Q8QU6AUf6qKoG2lPuGhl7
	mRZNwEs615L5lrIthLpo1IgxZxjcKFfZ6m3K/JUK9NGyXw2tGKwvwVMA52bvdE22yM7t
	Phg4aXzlzosiypaXB565jvQQm+TDS/UwwhI8jgCsNU/d5l0JaDVjnwchHEZfAKQttiy/
	ulcmNuL3GyIjxYP6JAun5YXXX6bNJen6T2yu1Yrlw8V0FqWwaqrvHmjwJodjjHSH4ZW2
	1Tqw==
MIME-Version: 1.0
X-Received: by 10.55.17.168 with SMTP id 40mr35642192qkr.83.1439205588345;
	Mon, 10 Aug 2015 04:19:48 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Mon, 10 Aug 2015 04:19:48 -0700 (PDT)
Date: Mon, 10 Aug 2015 13:19:48 +0200
Message-ID: <CACTu1LiQvOk76S+QiO=e+5h0gGosOySd_Ntf-grWEWfPr-7P-w@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: yocto@yoctoproject.org
Subject: Disable "Warning: X, set to be excluded, is excluded [...]"
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
X-List-Received-Date: Mon, 10 Aug 2015 11:19:51 -0000
Content-Type: multipart/alternative; boundary=001a1136ea66da26df051cf329b6

--001a1136ea66da26df051cf329b6
Content-Type: text/plain; charset=UTF-8

I am building my own yocto image based on the intel edison image. For that
reason i created my own layer so that I do not have to touch the official
intel sources. Each change is done in my own layer.

Hence, to remove packages that are added within the intel edison
configuration I use PACKAGE_EXCLUDE in my own "layer.conf".

E.g.:
PACKAGE_EXCLUDE = "pwr-button-handler"

Result:

"Warning: Package pwr-button-handler, set to be excluded, is in myown-image
PACKAGE_INSTALL (*here follows a list with all recipes included*)."

So this warning is 100% correct: I am removing a package which has been
added before. But is it possible to avoid this warning? I only found this:

"PACKAGE_EXCLUDE is a mechanism for preventing packages from being
installed at all.  If the package is in the PACKAGE_INSTALL or
 ACKAGE_INSTALL_ATTEMPTONLY it will be filtered out, and a warning issued."
(http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/41490)

--001a1136ea66da26df051cf329b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am building my own yocto image based on the intel edison=
 image. For that reason i created my own layer so that I do not have to tou=
ch the official intel sources. Each change is done in my own layer.<div><br=
></div><div>Hence, to remove packages that are added within the intel ediso=
n configuration I use=C2=A0PACKAGE_EXCLUDE in my own &quot;layer.conf&quot;=
.</div><div><br></div><div>E.g.:</div><div><div>PACKAGE_EXCLUDE =3D &quot;p=
wr-button-handler&quot;</div></div><div><br></div><div>Result:</div><div><b=
r></div><div>&quot;Warning: Package pwr-button-handler, set to be excluded,=
 is in myown-image PACKAGE_INSTALL (*here follows a list with all recipes i=
ncluded*).&quot;</div><div><br></div><div>So this warning is 100% correct: =
I am removing a package which has been added before. But is it possible to =
avoid this warning? I only found this:</div><div><br></div><div>&quot;PACKA=
GE_EXCLUDE is a mechanism for preventing packages from being installed at a=
ll.=C2=A0 If the package is in the PACKAGE_INSTALL or =C2=A0ACKAGE_INSTALL_=
ATTEMPTONLY it will be filtered out, and a warning issued.&quot;</div><div>=
(<a href=3D"http://comments.gmane.org/gmane.comp.handhelds.openembedded.cor=
e/41490">http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/4=
1490</a>)</div></div>

--001a1136ea66da26df051cf329b6--
