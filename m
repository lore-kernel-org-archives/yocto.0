Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3258E00956; Fri,  4 Dec 2015 12:57:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0B7E0090E
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 12:57:42 -0800 (PST)
Received: by lfs39 with SMTP id 39so116701511lfs.3
	for <yocto@yoctoproject.org>; Fri, 04 Dec 2015 12:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pdHcuQvlHJUmAyUF9zHSfYy67XH4CB+oHWHpfZ5Y5hY=;
	b=GyL3WQNWaSbTO0r5Ml3c4SpKVzcAe+Tz/UDhLxq0MZFrIqpo4TzkbURRaa3IC0OA5m
	nmNEx2kPciBptZgEpqr3KTNfmk2bQoYiLKsYb14P+i0bmJSHFCaWEyKI4CD7BHiLmVv7
	mw3orCY78ckxPMqiGJfnwoScYWkWKxodx+cJIen/nMcNiORzDgy9EfW99i9NNKpIkGSn
	Odxuwg9MtSs6hlJUaZBtyOE6nRZ8Awvnu0mEMquTk971IsfrEudpWoBxX/8EL/4IJLl5
	z6VfVG/3/pt5lqH9sKMM6So7qDKswREOML/blFnJCJ4LagktxqEFOYGRGZfSKdHg7HZ0
	65UA==
MIME-Version: 1.0
X-Received: by 10.25.7.8 with SMTP id 8mr8854348lfh.111.1449262661568; Fri, 04
	Dec 2015 12:57:41 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Fri, 4 Dec 2015 12:57:41 -0800 (PST)
Date: Fri, 4 Dec 2015 14:57:41 -0600
Message-ID: <CAOsp8o-xWdxp5_izm7QGt3aTErAmZcWwZZkaAgb42kient26VA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Wilcard/recursing for SRC_URI file fetcher?
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
X-List-Received-Date: Fri, 04 Dec 2015 20:57:47 -0000
Content-Type: multipart/alternative; boundary=001a113ea93a210fbf052618c216

--001a113ea93a210fbf052618c216
Content-Type: text/plain; charset=UTF-8

As far as I can tell, there is no way to point to a directory or match
based on file type, for example:

SRC_URI = "file://*.c \
                   file://*.h"
or

SRC_URI = "file://directory/;recurse=true" # include all files under
'directory'

Instead, files must be individually selected with the SRC_URI command. I
kind of assume this is intentional, to explicitly name files to prevent
error-prone operations. However, in my environment it may actually be
beneficial for something like the above.

Has it been considered already? Is it "taboo" or "off-limits", or will the
project welcome the enhancement if it were done?

Michael

P.S. This is of course assuming the feature isn't already there, but I
couldn't find this behavior in the reference docs. I could be mistaken!

--001a113ea93a210fbf052618c216
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As far as I can tell, there is no way to point to a direct=
ory or match based on file type, for example:<div><br></div><div>SRC_URI =
=3D &quot;file://*.c \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0file://*.h&quot;</div><div>or</div><div><br></di=
v><div>SRC_URI =3D &quot;file://directory/;recurse=3Dtrue&quot; # include a=
ll files under &#39;directory&#39;</div><div><br></div><div>Instead, files =
must be individually selected with the SRC_URI command. I kind of assume th=
is is intentional, to explicitly name files to prevent error-prone operatio=
ns. However, in my environment it may actually be beneficial for something =
like the above.</div><div><br></div><div>Has it been considered already? Is=
 it &quot;taboo&quot; or &quot;off-limits&quot;, or will the project welcom=
e the enhancement if it were done?</div><div><br></div><div>Michael</div><d=
iv><br></div><div>P.S. This is of course assuming the feature isn&#39;t alr=
eady there, but I couldn&#39;t find this behavior in the reference docs. I =
could be mistaken!</div></div>

--001a113ea93a210fbf052618c216--
