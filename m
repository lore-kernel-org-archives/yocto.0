Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6605E00DFF; Fri,  6 Sep 2019 09:14:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 070EDE00D1C
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2019 09:14:03 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id l11so5516159lfk.6
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2019 09:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hULVmivIq5JXTlqa54qvxipn4Pj5plnONmarYqRiSSA=;
	b=Z/H7Fes0gIIGbAeA4q9qRpn1iPoI0acDTA7laAIlAsJ59rJ138jYEMQXYsuymV8mKd
	tHBT3Y7MkoYEOAo0RS6HPlmMNKNAk9zmGQ6pfu52+k/PPHIt3B15CKPIs5vTDoZiQ0aE
	PX8cFZcmYEqld5YnDwzM0t0+j6S1DHE4tU2mtZ05oWsAqn0vnbxkkCWmrBJlwN2wxBAv
	XPzoQuQghmFaOibTmWU+oa/UERzKRgQ0GSDB2CcyOdfmWrojT7rha+LBv02ci5r6X5WF
	bgtYHqge3qDQfNdggv43cLFoaxuI62cPlmdFk/f//V6OWnRLQZdp+G4C3b/4dhj8Dii9
	omyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hULVmivIq5JXTlqa54qvxipn4Pj5plnONmarYqRiSSA=;
	b=lWQ2AN3FyscdetWJ+EYDxuJxV6oNYuL7ZjF87xQ1eUTCsJGLnc6sKiIbwe/1ohqYsi
	00MkLJfpOF2zjVOcsIbvsiIqtvGXZUMUPwPqksRAjRr57SKzzd32lPLl57b0kMkuIYmF
	xHkrnO39RGKhQALMB9MQEfl0DXXiz00xZHxi1t1OkTgS6MfY0PET9pnkga6iJ63ogQCb
	/d6Mgu6nnJL1w7qjMqKPj/JZz1DqvCjiFH9NX4PgXgG6dj82JoYfKpRFT1pY478RXjMz
	2mqfdw3YeFYCH4WFDq6aEJZMcJ1GVgYYy4Yys2F50QZVXDM9D9Qcq78PgDhMVRv13ETP
	IvPw==
X-Gm-Message-State: APjAAAXBH6/7G2A89CoddnWuuIC5pMFahNOaDrHL/fw+J2ESfRuuWt9d
	ew+JE+Aq213pQ1/T7o/RbWNJO/agotihNIKkxc/Q+2y9
X-Google-Smtp-Source: APXvYqw4TCTRsHeR1Qf3hT4e2nb/Bd7OwVCyQaqGRgaM9TjeWPpdnWMcCXippy4pd4r9zdpaPDcL4d+sH5k8vw7XlxM=
X-Received: by 2002:ac2:52b6:: with SMTP id r22mr7121143lfm.19.1567786442638; 
	Fri, 06 Sep 2019 09:14:02 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Biver <aaron.biver@gmail.com>
Date: Fri, 6 Sep 2019 12:13:51 -0400
Message-ID: <CAMd7AX9n2nG1wSb-8tLfwMBkV9-U6Gz5EDb0reqo50i_i=SODw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Working with symbolic links in recipes?
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
X-List-Received-Date: Fri, 06 Sep 2019 16:14:04 -0000
Content-Type: multipart/alternative; boundary="000000000000ff49af0591e4b9c3"

--000000000000ff49af0591e4b9c3
Content-Type: text/plain; charset="UTF-8"

In short, I'd like to have my recipe know the name of a file that is a
symbolic link, as in "readlink" and the linux prompt.- preferably before
populating SRC_URI, but this is not working (so I guess random shell
scripts are not doable in recipes):
LINK_TARGET=`readlink -f ${LATEST_VER}`
SRC_URI = "file://${LINK_TARGET}"

Reasoning, if it matters, and in case there is a better way to do what I am
doing:

I have a bitbake recipe that includes a subproject that contains a binary
that I want to "wrap".  the binaries change occasionally, with the revision
reflected in the name.
So, one version might include "myfile-00-00-01.bin" and the subsequent
version is "myfile-00-00-02.bin"

In the past, I have edited my bitbake recipe to contain the substring of
the most recent version of the binary file... so updating the subproject
that has these binaries necessitates updating the substring, say updating a
variable from "00-00-01" to "00-00-02".

I'd prefer to have this done automatically, BUT STILL HAVE THE VERSION
SUBSTRING IN THE BITBAKE RECIPE.  This is because I want my recipe to
create a wrapped file that has thversion substring in it.

I'd really like to have the subproject have a "myfile-latest.bin" which is
a link to "myfile-00-00-02.bin", and have the recipe use readlink to get
the target of the link before it populates SRC_URI, so it can know the link
target's "real" name.

Right now, including the name of the link in SRC_URI causes a file to get
copied over the build area that is not a link.

--000000000000ff49af0591e4b9c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In short, I&#39;d like to have my recipe know the nam=
e of a file that is a symbolic link, as in &quot;readlink&quot; and the lin=
ux prompt.- preferably before populating SRC_URI, but this is not working (=
so I guess random shell scripts are not doable in recipes):<br></div><div>L=
INK_TARGET=3D`readlink -f ${LATEST_VER}`</div><div>SRC_URI =3D &quot;file:/=
/${LINK_TARGET}&quot;</div><div><br></div><div>Reasoning, if it matters, an=
d in case there is a better way to do what I am doing:</div><div><br></div>=
<div>I have a bitbake recipe that includes a subproject that contains a bin=
ary that I want to &quot;wrap&quot;.=C2=A0 the binaries change occasionally=
, with the revision reflected in the name.=C2=A0 <br></div><div>So, one ver=
sion might include &quot;myfile-00-00-01.bin&quot; and the subsequent versi=
on is=20
&quot;myfile-00-00-02.bin&quot; <br></div><div><br></div><div>In the past, =
I have edited my bitbake recipe to contain the substring of the most recent=
 version of the binary file... so updating the subproject that has these bi=
naries necessitates updating the substring, say updating a variable from &q=
uot;00-00-01&quot; to &quot;00-00-02&quot;.</div><div><br></div><div>I&#39;=
d prefer to have this done automatically, BUT STILL HAVE THE VERSION SUBSTR=
ING IN THE BITBAKE RECIPE.=C2=A0 This is because I want my recipe to create=
 a wrapped file that has thversion substring in it.</div><div><br></div><di=
v>I&#39;d really like to have the subproject have a &quot;myfile-latest.bin=
&quot; which is a link to &quot;myfile-00-00-02.bin&quot;, and have the rec=
ipe use readlink to get the target of the link before it populates SRC_URI,=
 so it can know the link target&#39;s &quot;real&quot; name.</div><div>=C2=
=A0 <br></div><div>Right now, including the name of the link in SRC_URI cau=
ses a file to get copied over the build area that is not a link.<br></div><=
/div>

--000000000000ff49af0591e4b9c3--
