Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2263AE00509; Wed, 25 Jun 2014 04:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63C61E003C1
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 04:34:15 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id p9so1769286lbv.12
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 04:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=O3hVeZxTr7q7qxwI12ekZ4nmnBxk2YE0N8fjGSmySfk=;
	b=TP7bmSNGQAFxUCfGpWp8pC1JAdghNhdIaMuD05Mi1ZuP2mXMqCuZBDswubhyHBn7hI
	v0JGAMe7QgZgjgrH4n9bYNQUznWdh3dvrS3kz6R/rqvw4SihWOWO7EDPvkvzuDz+WZM0
	0eoMx/bqRXo6tbQ6juZFLGBoeEleCxh0Vi5HqSLDfVVHPQTDqEj2HVV3yE+Er7HyuygV
	PIEtgOrC1+GwPYUAuzo15r65PTHLChQsXT+uyqL/lQXPGQTmPe4la98HzbBWdodm2/PC
	Gf+u6e74emSEfMdks5mYBj3t/Bb1E6gWMTjcUJOwlnbq5oe9gzJJ0q7rfjk4JDpATUry
	YLTQ==
MIME-Version: 1.0
X-Received: by 10.152.29.66 with SMTP id i2mr505341lah.82.1403696053978; Wed,
	25 Jun 2014 04:34:13 -0700 (PDT)
Received: by 10.114.29.132 with HTTP; Wed, 25 Jun 2014 04:34:13 -0700 (PDT)
Date: Wed, 25 Jun 2014 17:04:13 +0530
Message-ID: <CANJXcUb_vRGoyoP-or_dNKgcY3hvY2pWuE=55vMopggbt0WrrA@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Unable to parse conf/bitbake.conf
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
X-List-Received-Date: Wed, 25 Jun 2014 11:34:18 -0000
Content-Type: multipart/alternative; boundary=089e0160bac0ab8c1604fca77443

--089e0160bac0ab8c1604fca77443
Content-Type: text/plain; charset=UTF-8

Trying to build Cross Compile toolchain

$ bitbake meta-ide-support


ERROR: Traceback (most recent call last):
  File "/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/cookerdata.py",
line 163, in wrapped
    return func(fn, *args)
  File "/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/cookerdata.py",
line 173, in parse_config_file
    return bb.parse.handle(fn, data, include)
  File "/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/parse/__init__.py",
line 99, in handle
    return h['handle'](fn, data, include)
  File
"/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/parse/parse_py/ConfHandler.py",
line 120, in handle
    abs_fn = resolve_file(fn, data)
  File "/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/parse/__init__.py",
line 117, in resolve_file
    raise IOError("file %s not found in %s" % (fn, bbpath))
IOError: file conf/bitbake.conf not found in
/home/kashyap/kashyap/yocto/poky/pi_1

ERROR: Unable to parse conf/bitbake.conf: file conf/bitbake.conf not found
in /home/kashyap/kashyap/yocto/poky/pi_1


any idea?

--089e0160bac0ab8c1604fca77443
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Trying to build Cross Compile toolchain</div><div><br=
></div><div>$ bitbake meta-ide-support</div><div><br></div><div><br></div><=
div>ERROR: Traceback (most recent call last):</div><div>=C2=A0 File &quot;/=
home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/cookerdata.py&quot;, line 16=
3, in wrapped</div>
<div>=C2=A0 =C2=A0 return func(fn, *args)</div><div>=C2=A0 File &quot;/home=
/kashyap/kashyap/yocto/poky/bitbake/lib/bb/cookerdata.py&quot;, line 173, i=
n parse_config_file</div><div>=C2=A0 =C2=A0 return bb.parse.handle(fn, data=
, include)</div><div>
=C2=A0 File &quot;/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/parse/__i=
nit__.py&quot;, line 99, in handle</div><div>=C2=A0 =C2=A0 return h[&#39;ha=
ndle&#39;](fn, data, include)</div><div>=C2=A0 File &quot;/home/kashyap/kas=
hyap/yocto/poky/bitbake/lib/bb/parse/parse_py/ConfHandler.py&quot;, line 12=
0, in handle</div>
<div>=C2=A0 =C2=A0 abs_fn =3D resolve_file(fn, data)</div><div>=C2=A0 File =
&quot;/home/kashyap/kashyap/yocto/poky/bitbake/lib/bb/parse/__init__.py&quo=
t;, line 117, in resolve_file</div><div>=C2=A0 =C2=A0 raise IOError(&quot;f=
ile %s not found in %s&quot; % (fn, bbpath))</div>
<div>IOError: file conf/bitbake.conf not found in /home/kashyap/kashyap/yoc=
to/poky/pi_1</div><div><br></div><div>ERROR: Unable to parse conf/bitbake.c=
onf: file conf/bitbake.conf not found in /home/kashyap/kashyap/yocto/poky/p=
i_1</div>
<div><br></div><div><br></div><div>any idea?</div></div>

--089e0160bac0ab8c1604fca77443--
