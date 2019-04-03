Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF4EE00C49; Wed,  3 Apr 2019 03:07:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0CE3E00C1E
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 03:07:14 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id f18so14276599lja.10
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 03:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Jza/bjEpeboxXTJqqbjcvf+v7S8JYDsoMM1ahcqOy4U=;
	b=obUR62n1kZH5rf5raARTB2Ov8X1/ThHHH4j96cBWC+Pou3P8kSJn6UxQ2JMKFL2PFQ
	+XQMdq/ov7G5AxjVNxBKL+TCJ5y1SvJqu5Pm1McNLEUU9g95f67oOyegfJRuw/hvuvdm
	+xwZCaK5vdLcixkVq3kROUTT6C7f9revbehAKAnwMzlvvRJBAbn1n0vv3OTXK50PreuJ
	I4ayeIug5jFs/yAj1dbm1+FhZC7IHvrWql+lDkK7EQGZiCdOUo1RdYyajsSUeo2+dJO6
	cYHgqCAHj29F8Lm8VP/aoH9iUobIb76qJIX44F0b69aZQ0/LWMBrxd8vu0JSNx1Oi2oQ
	ej4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Jza/bjEpeboxXTJqqbjcvf+v7S8JYDsoMM1ahcqOy4U=;
	b=KxqlAMN14oYfOvqSBbf61jZFVms0vr/cq+pn7ZxemQ7Wj8IHXeCgmH1X1TMZb/uQTA
	+geNhqjgm35AJmJfbsCls3Dziscd2v+4Bmj3cDATANjcJ1WJ9XGh/qiLh+b5qFHW0Drg
	euG1rRxuomyPHFMmvFFD25oAR5Cgtfjnx1L2s81ulI6Scswp+R4n6ciC6KI+pk6Oyf8i
	/Vl5e9rPxUoLtFTZywc3AUDCGvqILLPYAZn2z5dV4jaWL1LQkZwK3Uiyn2JokVX/zbRf
	IUGrWQuTFjXuODP6TiMGh7g0dhivcvPcesrdOUNW8ahKG1rs3VRD7CxW21uEcjWJ+dny
	GzHg==
X-Gm-Message-State: APjAAAWJqUBBlwdOGGFq97NXkFm8q19V2V5PoFYNLJk0f8LyKXSvegNM
	ToCJVboAVUZX60VsWOu9jIJPLqfJ4sbcM9Ra73dJKrQ9
X-Google-Smtp-Source: APXvYqxT/zzueeKcFDquKhtlSl9rQwv9qhTgDCFR6upnCTs2vExwamr5Dqu40XOeVAQjaNtyigxvD144rmjNmuBS44s=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr8130126ljg.136.1554286033465; 
	Wed, 03 Apr 2019 03:07:13 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 3 Apr 2019 12:07:02 +0200
Message-ID: <CAAx3WaCdBQh-Thsn+YgBs8mCVU+ddF4SJQOXUJjsDveZTKcSiA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: shared cmake modules
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
X-List-Received-Date: Wed, 03 Apr 2019 10:07:15 -0000
Content-Type: multipart/alternative; boundary="000000000000e7767705859d6ad1"

--000000000000e7767705859d6ad1
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm setting up a layer that will compile our applications and libraries.
All the applications are based on cmake and they share modules. Before
using yocto I kept the modules in <workspace>/cmake (under version control)
alongside applications and libraries. With yocto I wrote a recipe that
checkout the module repo and install them in
"${STAGING_DATADIR}/cmake/Modules/". I took this path from
"meta/classes/cmake.bbclass". If i build the module target, I get the files
installed in the target recipe datadir. If I want to build a library (that
depends also on my modules recipe) the task do_configure fails because
cmake cannot find none of my include. Digging around I found that the
toolchain.cmake file points to a module location that doesn't exist in the
library workdir, but in module recipe (${STAGING_DATADIR}/cmake/Modules/).

The module recipe looks like as follow:

MODULES_DEST_PATH = "${STAGING_DATADIR}/cmake/Modules"
FILES_${PN}-dev = "${MODULES_DEST_PATH}/*"

do_install() {
    DEST_DIR=${MODULES_DEST_PATH}

    # Create the destination folder
    install -d $DEST_DIR
    install -m 0444 ${S}/my/module.cmake $DEST_DIR
    ......
}

So my question is: where should I install the shared modules
(MODULE_DEST_PATH int the above snippet)? and how to update the
CMAKE_MODULE_PATH properly to append that location?

Thanks,
Gabriele

--000000000000e7767705859d6ad1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><=
br></div><div>I&#39;m setting up a layer that will compile our applications=
 and libraries. All the applications are based on cmake and they share modu=
les. Before using yocto I kept the modules in &lt;workspace&gt;/cmake (unde=
r version control) alongside applications and libraries. With yocto I wrote=
 a recipe that checkout the module repo and install them in &quot;${STAGING=
_DATADIR}/cmake/Modules/&quot;. I took this path from &quot;meta/classes/cm=
ake.bbclass&quot;. If i build the module target, I get the files installed =
in the target recipe datadir. If I want to build a library (that depends al=
so on my modules recipe) the task do_configure fails because cmake cannot f=
ind none of my include. Digging around I found that the toolchain.cmake fil=
e points to a module location that doesn&#39;t exist in the library workdir=
, but in module recipe (${STAGING_DATADIR}/cmake/Modules/). <br></div><div>=
<br></div><div>The module recipe looks like as follow:</div><div><br></div>=
<div>MODULES_DEST_PATH =3D &quot;${STAGING_DATADIR}/cmake/Modules&quot;<br>=
FILES_${PN}-dev =3D &quot;${MODULES_DEST_PATH}/*&quot;<br><br>do_install() =
{<br>=C2=A0=C2=A0=C2=A0 DEST_DIR=3D${MODULES_DEST_PATH}<br><br>=C2=A0=C2=A0=
=C2=A0 # Create the destination folder<br>=C2=A0=C2=A0=C2=A0 install -d $DE=
ST_DIR<br></div><div>=C2=A0=C2=A0=C2=A0 install -m 0444 ${S}/my/module.cmak=
e $DEST_DIR</div><div>=C2=A0=C2=A0=C2=A0 ......</div><div>}<br></div><div>=
=C2=A0=C2=A0=C2=A0 <br></div><div>So my question is: where should I install=
 the shared modules (MODULE_DEST_PATH int the above snippet)? and how to up=
date the CMAKE_MODULE_PATH properly to append that location?</div><div><br>=
</div><div>Thanks, <br></div><div>Gabriele<br></div></div></div></div>

--000000000000e7767705859d6ad1--
