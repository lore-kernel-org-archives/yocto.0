Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1932BE00D0E; Thu, 24 Jan 2019 00:50:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5918E00D07
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 00:50:24 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id p197so3307904itp.0
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 00:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=R4vMWeb4HlA+xHOW18V9Ems1Gw9SP50aoova9s6Uv6s=;
	b=ZGsyEcMUVH1gaTcVu6lx0YDobdoOXC5IFMOqBQ0lse77CIIDsf3VaV7lRNSeMs2H4Y
	2sLBp5jyd+RwyB/xPFhzGhfpEKLH0/j+OHlhm2OQBQ1fFmaD8d1wgIq6Pft41pEX1Z3z
	+Ixe5yTiGlUaZHZyh0yAqnVaXKJR31/lxBMg9BMyi4JDRyov+NhDv/n6B0pDuHaNk2V9
	EezLZqq+J9rvhqe3AkqfD6JPFHoJgXeaJJHkFTWKKmWPJRCn7g1dZc4Oc8j268F4qTP5
	WBcny/jSE1aHWIDbkzrepiPltk5wFCB9ed2+E8m7aSzz5JB+YwxQpSACQy4rkuyMCIz2
	mWDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=R4vMWeb4HlA+xHOW18V9Ems1Gw9SP50aoova9s6Uv6s=;
	b=eklWmiE0WeYgjNm09AivuDksEJo2n2T0/D84Abfo7cx1hoeAaJQCJHGcbd2UHB3IjH
	NWBiUtKNIR3qhKBh7WtJagfzHnVsSUpl2RsaS4ivR+/aIGUityfYTB/heBEOUH0+bLk0
	SzR9N4LWTKb2nhozNemKUIGLw9RIHWfPxQOJTBAyN36WaVj2q+0iMMcX+aOrDSHv62gY
	SZrNkBgL1SpMhs3A+p2pM0v94k0CPfBwTQm91ltY7AEixRq3G7yr4lvH97yiEE7LH+mm
	5v7ywCfA74aN4WLSHTaESGh6SIokSVf/8aeTPZz6qsH+CmTfq6PA0VKKcMxmN72AZgKn
	nPiQ==
X-Gm-Message-State: AJcUukewkdGR7ovkkbYA/fD0J+UisVM9LOTeGb5IetENsv82Z1e1f5Pu
	LLbckhFrw6/QDAIxaetEdti3p1ElAwR2j3Fiu4EjbJSK3w==
X-Google-Smtp-Source: ALg8bN7xPHMCDcde0RSt31YDKI6GdEIr5wExu1C70TlfPwjpI6YmTwmwdlJVPPMfMS1wzoWYxciDcB7rsz7kmRhEfso=
X-Received: by 2002:a02:660f:: with SMTP id k15mr3927276jac.38.1548319824019; 
	Thu, 24 Jan 2019 00:50:24 -0800 (PST)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Thu, 24 Jan 2019 10:50:13 +0200
Message-ID: <CA+FhBv_-4+m1rxz2FDMx7O-d8Yu1EnDH-EdSWHntvfPAA9JxHg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: preferred version 6.% of gcc-sanitizers not available
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
X-List-Received-Date: Thu, 24 Jan 2019 08:50:26 -0000
Content-Type: multipart/alternative; boundary="0000000000001c05660580304dbf"

--0000000000001c05660580304dbf
Content-Type: text/plain; charset="UTF-8"

Hi,

I have updated my stack to sumo and the platform image builds fine.

Now I'm adding an application which builds against CUDA 9 and due to some
bugs with gcc 7, gcc 6 is highest supported version. The issues has been
fixed in CUDA 10, but I cannot upgrade at time point of time.

So I went to my distro config and added:
GCCVERSION = "6.%"

Then I noticed that poky sumo removed gcc 5 and 6. So I created and
overwrite layer to add back the older compilers. The layer.conf looks like
this

BBPATH .= ":${LAYERDIR}"
BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
            ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "stack-core"
BBFILE_PATTERN_stack-core = "^${LAYERDIR}/"
BBFILE_PRIORITY_stack-core = "10"

LAYERDEPENDS_stack-core = "core"

LAYERSERIES_COMPAT_stack-core = "sumo"

Then in meta-stack/poky/meta/recipes-devtools/gcc/ I copied the old
compiler recipes from pyro-17.0.4 tag.

I deleted the cache and temp folder.

After all of this I still get this build message and later the build fails.
NOTE: preferred version 6.% of gcc-sanitizers not available (for item
gcc-sanitizers)
NOTE: versions of gcc-sanitizers available: 7.3.0

What am I missing?

Thanks
-Damien

--0000000000001c05660580304dbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi,<div><br></div><div>I have updated my stack to sumo and the pl=
atform image builds fine.</div><div><br></div><div>Now I&#39;m adding an ap=
plication which builds against CUDA 9 and due to some bugs with gcc 7, gcc =
6 is highest supported version. The issues has been fixed in CUDA 10, but I=
 cannot upgrade at time point of time.</div><div><br></div><div>So I went t=
o my distro config and added:</div><div>GCCVERSION =3D &quot;6.%&quot;<br><=
/div><div><br></div><div>Then I noticed that poky sumo removed gcc 5 and 6.=
 So I created and overwrite layer to add back the older compilers. The laye=
r.conf looks like this</div><div><br></div><div><div>BBPATH .=3D &quot;:${L=
AYERDIR}&quot;<br></div><div>BBFILES +=3D &quot;${LAYERDIR}/recipes-*/*/*.b=
b \<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${LAYERDIR}/rec=
ipes-*/*/*.bbappend&quot;</div><div><br></div><div>BBFILE_COLLECTIONS +=3D =
&quot;stack-core&quot;</div><div>BBFILE_PATTERN_stack-core =3D &quot;^${LAY=
ERDIR}/&quot;</div><div>BBFILE_PRIORITY_stack-core =3D &quot;10&quot;</div>=
<div><br></div><div>LAYERDEPENDS_stack-core =3D &quot;core&quot;</div><div>=
<br></div><div>LAYERSERIES_COMPAT_stack-core =3D &quot;sumo&quot;</div></di=
v><div><br></div><div>Then in meta-stack/poky/meta/recipes-devtools/gcc/ I =
copied the old compiler recipes from pyro-17.0.4 tag.</div><div><br></div><=
div>I deleted the cache and temp folder.</div><div><br></div><div>After all=
 of this I still get this build message and later the build fails.</div><di=
v><div>NOTE: preferred version 6.% of gcc-sanitizers not available (for ite=
m gcc-sanitizers)</div><div>NOTE: versions of gcc-sanitizers available: 7.3=
.0</div></div><div><br></div><div>What am I missing?</div><div><br></div><d=
iv>Thanks</div><div>-Damien</div><div><br></div><div><br></div></div></div>=
</div></div></div>

--0000000000001c05660580304dbf--
