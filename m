Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE9EE00D14; Thu,  9 Nov 2017 22:44:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C754EE00C59
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 22:44:56 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id z3so537772wme.5
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 22:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YzAY/CH1xP3ngBN6S3/ZryBJEd/7T0v16V/Dt16I+MA=;
	b=Lp7PUHQpFq9gIXneh28c6D4mvPiyZNeEabSJWHYXJ18WY5TnhS0/geKv3BMetVhtQr
	c6GM7L19A4/EcC86LmG3EjrbcD/XCOwZRruqLlml94Y9DDxGgnJwmVfpmPXdNvKt/pDX
	p9RCia+Nh+gUGQ0jB920qw0ccZRzBq5W4y+AL26knpVdZZh9CiEuMi5XBsuBQAuLRRP0
	NW1ytmIZxcu+DfeB3z74uojRp7BPn7+zlGe8aHe7wPNPTWyrx26NQhP4OnM3LzlSd1yY
	Ng+fp7DcTl3fOXGAYqiLFHtXYZTiCw3f4OqLJQQ1dO+PG3B78HDQxGg3oYh9Z7kOeSlv
	+QhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YzAY/CH1xP3ngBN6S3/ZryBJEd/7T0v16V/Dt16I+MA=;
	b=EKnvP0sieI8tWlizgWG2HYLsqdF+LlarfpXWEBJzZVR+e5vFvaCyEAdI95NWtyKA6Z
	DsKgXSqguBMfQah+U8kkZFIjEeuO9tbjMrY8WEn4JW/OuyDq2OI/99Nb0Yi7K8rVDh+i
	8DB5Op4AqNqeELQnIYe/4fI6TM1QBljs958WVcBZBFjJ0MBSoqPlCFXqq1KbOxa+EwwE
	NHzwqJbEzmUI5BZD+iHk8I+4d5p0CGK5OW1MOSUyyrnuSIr90A+mMAJXEi1AtFn95mcf
	LKxlPBsIo5oWDLwA+D4eN2hgztmc0L9K/3wvunT80xTMuHS9kdqqblaeq6K4lhkTExwb
	WL/g==
X-Gm-Message-State: AJaThX4oQrm6gR3TsQz8dZsZM56i0vhdxttsaqqt8lOxycaLdCbeWniZ
	AHsa/S3W64cP4JMnawy8UFPK24qUbj/Ye+sK9wysWg==
X-Google-Smtp-Source: AGs4zMb9GsI32T9ym+SRPgqbyJXdPqIL+olWU9bkCNWEVlfMf9hSVBjQMHlhMubLfYczTnxD4yNq/FZQhOp1JwGF2eY=
X-Received: by 10.28.218.14 with SMTP id r14mr261105wmg.14.1510296295389; Thu,
	09 Nov 2017 22:44:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Thu, 9 Nov 2017 22:44:54 -0800 (PST)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 Nov 2017 07:44:54 +0100
Message-ID: <CAGAf8LwHndPmYzEZ7kbZ6cG0iVrJqnMxU-uq7Y3WaoEYNLv7Ug@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: export command in bitbake
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
X-List-Received-Date: Fri, 10 Nov 2017 06:44:58 -0000
Content-Type: multipart/alternative; boundary="001a1145b662313f70055d9b421f"

--001a1145b662313f70055d9b421f
Content-Type: text/plain; charset="UTF-8"

Hello to all YOCTO users,

I have one (I should say naive) question considering/querying environment
variables, initially set with bitbake scripts.

I have both python (2.7.14) and python3.6 (3.6.2). But, as far as I can
see/say, both interpreters do NOT support export declaration (supported
with /bin/bash). In other words, every child shell will (with export
declaration on certain variables) inherit parent's environment.

[user@192 conf]$ python
Python 2.7.14 (default, Nov  2 2017, 18:42:05)
[GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>>
[user@192 conf]$ python3.6
Python 3.6.2 (default, Oct  2 2017, 16:51:32)
[GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
[user@192 conf]$

Now, I see that bitbake (written in python language) supports export. From
here:
...poky/meta/conf/bitbake.conf

Excerpt from the file:
# Path prefixes
export base_prefix = ""
export prefix = "/usr"
export exec_prefix = "${prefix}"

root_prefix = "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge',
'${exec_prefix}', '${base_prefix}', d)}"

# Base paths
export base_bindir = "${root_prefix}/bin"
export base_sbindir = "${root_prefix}/sbin"
export base_libdir = "${root_prefix}/${baselib}"
export nonarch_base_libdir = "${root_prefix}/lib"

I assume this file: ...poky/meta/conf/bitbake.conf mandatory executes when
I source the oe-init-build-env file. Command: . oe-init-build-env

After that I would like to access these environment variables from the
/bin/bash, and query them, but it seems that this is NOT possible?!

I need advise here: how I can query bitbake environment variables set by .
oe-init-build-env, using /bin/bash? Or should I use some special written
python procedure to do this?

Help required/needed!?

I hope what I write here does make sense, does'n it?

Thank you,
Zoran

--001a1145b662313f70055d9b421f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all YOCTO users,</div><div><br></div><div>I =
have one (I should say naive) question considering/querying environment var=
iables, initially set with bitbake scripts.</div><div><br></div><div>I have=
 both python (2.7.14) and python3.6 (3.6.2). But, as far as I can see/say, =
both interpreters do NOT support export declaration (supported with /bin/ba=
sh). In other words, every child shell will (with export declaration on cer=
tain variables) inherit parent&#39;s environment.</div><div><br></div><div>=
[user@192 conf]$ python</div><div>Python 2.7.14 (default, Nov=C2=A0 2 2017,=
 18:42:05)=C2=A0</div><div>[GCC 7.2.1 20170915 (Red Hat 7.2.1-2)] on linux2=
</div><div>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot=
; or &quot;license&quot; for more information.</div><div>&gt;&gt;&gt;=C2=A0=
</div><div>[user@192 conf]$ python3.6</div><div>Python 3.6.2 (default, Oct=
=C2=A0 2 2017, 16:51:32)=C2=A0</div><div>[GCC 7.2.1 20170915 (Red Hat 7.2.1=
-2)] on linux</div><div>Type &quot;help&quot;, &quot;copyright&quot;, &quot=
;credits&quot; or &quot;license&quot; for more information.</div><div>&gt;&=
gt;&gt;=C2=A0</div><div>[user@192 conf]$<br></div><div><br></div><div>Now, =
I see that bitbake (written in python language) supports export. From here:=
</div><div>...poky/meta/conf/bitbake.conf<br></div><div><br></div><div>Exce=
rpt from the file:</div><div><div># Path prefixes</div><div>export base_pre=
fix =3D &quot;&quot;</div><div>export prefix =3D &quot;/usr&quot;</div><div=
>export exec_prefix =3D &quot;${prefix}&quot;</div><div><br></div><div>root=
_prefix =3D &quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;usrm=
erge&#39;, &#39;${exec_prefix}&#39;, &#39;${base_prefix}&#39;, d)}&quot;</d=
iv><div><br></div><div># Base paths</div><div>export base_bindir =3D &quot;=
${root_prefix}/bin&quot;</div><div>export base_sbindir =3D &quot;${root_pre=
fix}/sbin&quot;</div><div>export base_libdir =3D &quot;${root_prefix}/${bas=
elib}&quot;</div><div>export nonarch_base_libdir =3D &quot;${root_prefix}/l=
ib&quot;</div></div><div><br></div><div>I assume this file: ...poky/meta/co=
nf/bitbake.conf mandatory executes when I source the=C2=A0oe-init-build-env=
 file. Command: . oe-init-build-env</div><div><br></div><div>After that I w=
ould like to access these environment variables from the /bin/bash, and que=
ry them, but it seems that this is NOT possible?!<br></div><div><br></div><=
div>I need advise here: how I can query bitbake environment variables set b=
y . oe-init-build-env, using /bin/bash? Or should I use some special writte=
n python procedure to do this?</div><div><br></div><div>Help required/neede=
d!?</div><div><br></div><div>I hope what I write here does make sense, does=
&#39;n it?</div><div><br></div><div>Thank you,</div><div>Zoran</div><div><b=
r></div><div><br></div></div>

--001a1145b662313f70055d9b421f--
