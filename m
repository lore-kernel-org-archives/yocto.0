Return-Path: <motic.mail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AB70E00EFA; Wed, 20 Apr 2016 10:18:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (motic.mail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D29E00EF4
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 10:18:44 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id b1so11609864lbi.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 10:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=5cJO4vu9ZecJVt4liGQsFR3zEcnHyIda+wBOK79e3Mk=;
	b=ZIt8puoB9uX+iNvL//dEGv3pBds3m3VdZceE1YvEOWLxfDDQxjjoQXHiIvMIbr+YpR
	WDL5dBBN74WI4fP7oFpMP9v+5bZ9+oSA7U1jR6TnIFn4NpZN56D4qvF1UhmKgarM0Ute
	j/HqaJc1fuZHtgF0WmulVKqLi0U8dYfrEewgyzFrvFO3XvXzCF0+O+3GHqZTehqfMv0c
	0/4VNcnuDiDynmdm+MC4b4X9tcvHysJwxOzlqHSZ7dixe2LTggx5G/LacHWObf/QMsO0
	b+Glgx51nOm2Ow3xyISgH9rUfUys048He9kJLUmIhsaYjWIHCBDdvZsjB6l8aLAGEDwy
	24sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=5cJO4vu9ZecJVt4liGQsFR3zEcnHyIda+wBOK79e3Mk=;
	b=bSFn4V8qPplS8PqcyhXm/eK7OvjtzNyxFxtE/h/g6X2Nv0NakrxlIOIrJaqsVI6SKX
	DVeMbDZcjgj9Hyfvq6lg2jodar/HkOb5tl+AqZ4tsNksPqMsFgemB6ucWpiagWtWgGo2
	/E5j7CtZCcgIk1+b7Q4/6ujwWY5/Ie97u+3ULVVU2DZ3jhgQZ360x+P5PcA4McJzUozT
	hPYw9CeYfqN+85GwnybDLDIFpvrPeoxSw49UiMnGRBMd28s5gmeTV/97h1zLrah1Zddh
	X1LsL9gxkw4AX2LOrf/1Ulp+ki2AY3790DqO9rnKoE42p0kmEZD0Kwe5xv3jInFMvXs+
	sNrg==
X-Gm-Message-State: AOPr4FWnd4GG2qmLs85F8WP0581yceUuCQC3s0HmXZc5Wu/Es8bObZ1HFe6SWmWWJNZIJa6TL6I9+NtRUWhWUw==
MIME-Version: 1.0
X-Received: by 10.112.28.75 with SMTP id z11mr4145980lbg.40.1461172723096;
	Wed, 20 Apr 2016 10:18:43 -0700 (PDT)
Received: by 10.25.160.17 with HTTP; Wed, 20 Apr 2016 10:18:43 -0700 (PDT)
Date: Wed, 20 Apr 2016 20:18:43 +0300
Message-ID: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
From: Moti Cohen <motic.mail@gmail.com>
To: yocto@yoctoproject.org
Subject: MySQL recipe for yocto
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
X-List-Received-Date: Wed, 20 Apr 2016 17:18:47 -0000
Content-Type: multipart/alternative; boundary=001a1133eca61da1b80530edc9cc

--001a1133eca61da1b80530edc9cc
Content-Type: text/plain; charset=UTF-8

Hi all,
this is my 1'st post to this list so I hope I'm doing it right :)

I need to add MySQL for my yocto build.
Looking online for a recipe - i found that there is one for MySQL under:
/meta-openembedded/meta-oe/recipes-support/mysql/..
The thing is that instead of MySQL, the recipe reffers to MariaDB which is
a kind of a drop-in replacemnet and since I need to have the "real" MySQL
in my build - I cannot use it.
looking into history log of mysql in the meta-openembedded git, it can be
seen the the switch between MySQL and MariaDB was made at 2013 and from
then onwards it's MariaDB.

http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-support/mysql?id=72e23c12296fbc77193898c38426add58d0c2d71

Now to the question, do you know how can I add the "real" MySQL to my build
?
looking before 2013 at the meta-openembedded git i can find a recipe for
MySQL which seems to support a "real" MySQL however, it's very old version
(5.1) and I'm not sure how and if I can update it to one of the latest
(e.g. MySQL 5.6).

Will appriciate any feedback on this.
Thanks in advance,
Motico

--001a1133eca61da1b80530edc9cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>this is my 1&#39;st post to this list so I hop=
e I&#39;m doing it right :)</div><div><br></div><div>I need to add MySQL fo=
r my yocto build.</div><div>Looking online for a recipe - i found that ther=
e is one for MySQL under:</div><div>/meta-openembedded/meta-oe/recipes-supp=
ort/mysql/..<br></div><div>The thing is that instead of MySQL, the=C2=A0rec=
ipe=C2=A0reffers to MariaDB which is a kind of a drop-in replacemnet and si=
nce I need to have the &quot;real&quot; MySQL in my build - I cannot use it=
.</div><div>looking into history log of mysql in the meta-openembedded git,=
 it can be seen the the switch between MySQL and MariaDB was made at 2013 a=
nd from then onwards it&#39;s MariaDB.</div><div><br></div><div><a href=3D"=
http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-suppo=
rt/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71">http://cgit.openemb=
edded.org/meta-openembedded/commit/meta-oe/recipes-support/mysql?id=3D72e23=
c12296fbc77193898c38426add58d0c2d71</a><br></div><div><br></div><div>Now to=
 the question, do you know how can I add the &quot;real&quot; MySQL to my b=
uild ?=C2=A0</div><div>looking before 2013 at the meta-openembedded git i c=
an find a recipe for MySQL which seems to support a &quot;real&quot; MySQL =
however, it&#39;s very old version (5.1) and I&#39;m not sure how and if I =
can update it to one of the latest (e.g. MySQL 5.6).=C2=A0</div><div><br></=
div><div>Will appriciate any feedback on this.</div><div>Thanks in advance,=
</div><div>Motico</div></div>

--001a1133eca61da1b80530edc9cc--
