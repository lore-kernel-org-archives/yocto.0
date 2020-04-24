Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2425.1587770247590443491
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 16:17:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QGBKtsjy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: easmith5555@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 317AAE01A65; Fri, 24 Apr 2020 16:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72651E01A63
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 16:17:26 -0700 (PDT)
Received: by mail-il1-f195.google.com with SMTP id f82so10852607ilh.8
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 16:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MGM/EI0ApMBFvHOg9iknWx5hlR1BOIw398r6wPo+ito=;
        b=QGBKtsjyXra8VdzD2KtQv1LGIAV+EVg8RvbYnXTPpTJ7pV+6GoY90kBZAXMhXjS+kv
         c2CBsQgrYN/LYr0U10pDo+7+/mYLHfGZUmlJ3Y+mmlH37OdQA9Ts62/Y5OlGKkmW0Euk
         AZScLtoyOWKCG9RPR/IgrRYtIYYSdSeMYaGLamVtx4DXNYXlv/vrpCQZAYqEOYLVQEss
         7em7KnA/1WQs1api5BrgoaDTbXsD65LDnjSJ+O4U/Dvhk0sShWXJ8Z3/crk+K1CXDixE
         MiRDjDbzS3u/RkXUY8P+WVahXqW5oJDeWmGc1KidghRVxO6FXynSCqHy8SdWHUUQq+L7
         4rCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MGM/EI0ApMBFvHOg9iknWx5hlR1BOIw398r6wPo+ito=;
        b=IRb3pt18q6/88ux6IParvX5+nvp5SvE8HoR6k1NfCQfjG/H0hsjp6ohSHrnwNlIXBJ
         DU9LEmEoWXQfGZlDS2mSU9eCqFMlhLoIrDD3UXNBBp2Gt4wfVnfx9fS63F/4sjZkFEEA
         2WcaNMJmECEN0qcA1ayHpmMG+vlW3P+VLDmK41cYRGSyJe9iGcZ4AaYiQBYASVuegu3i
         O0vvY2ovqRC8hCsZMyL3+MjAXtYcfm3hhBAlXk991luwZ/nW7GcYKhUaKJYrWNPcrFSY
         +PKbH0yJExMHH2ynyF1W+bdB/UNPLI8W2K+rN9tzQQaQaecCzmqeOxru6KwaB5qzw3pI
         Rmcw==
X-Gm-Message-State: AGi0Pub03eXkTe2YMhSglrdVND1fhXNBtd3WGfNwCZV0tG30XDkG2nwL
	gGmyiVac882TCOtoLig3d5HYOdhfvqTqHmMVD7O2tSVi
X-Google-Smtp-Source: APiQypLhp5nVQ3Aa/fgfhrR2SAJRpAHK5Dmeu+WOQSblc+SChGob1JBeFuqExx4ZZMLgCP9I52YHYc67prHWKS/qEyU=
X-Received: by 2002:a92:cbd1:: with SMTP id s17mr10221886ilq.154.1587770245298;
 Fri, 24 Apr 2020 16:17:25 -0700 (PDT)
MIME-Version: 1.0
From: "Emily" <easmith5555@gmail.com>
Date: Fri, 24 Apr 2020 18:17:12 -0500
Message-ID: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
Subject: Can't find pyconfig.h with python3
To: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000074c15105a4119101"

--00000000000074c15105a4119101
Content-Type: text/plain; charset="UTF-8"

Hi all -

I'm trying to build an OS with a custom recipe (
https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb).
I can build it as-is in the link above, but when actually trying to use the
output of the recipe (Poverty.so) I get the below error in python3:

>>> import Poverty Traceback (most recent call last): File "<stdin>", line 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol: _ZN5boost6python6detail11init_moduleEPKcPFvvE


I think that's because I built against python2 in some places. So I
replaced essentially all of the python dependencies with their
corresponding python3 dependencies, but that gives a build error in bitbake
like:

| /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/boost/python/detail/wrap_python.hpp:50:11:
fatal error: pyconfig.h: No such file or directory
|  # include <pyconfig.h>
|            ^~~~~~~~~~~~
| compilation terminated.


However, I checked and the offending file pyconfig.h is actually present at
|
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/python3.5m/.
When I build with python2 dependencies the file is in the same location,
just /python2.7/.

I can't quite tell if this is a yocto problem, or a problem with my recipe
and/or build files for that recipe. If anyone has suggestions they would be
much appreciated!

Thanks!
Emily Smith

--00000000000074c15105a4119101
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I&#39;m trying to build =
an OS with a custom recipe (<a href=3D"https://github.com/kratsg/meta-l1cal=
o/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb">https:/=
/github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-u=
a-server-gfex_git.bb</a>). I can build it as-is in the link above, but when=
 actually trying to use the output of the recipe (Poverty.so) I get the bel=
ow error in python3:=C2=A0</div><div><pre class=3D"gmail-code-java" style=
=3D"margin-top:0px;margin-bottom:0px;padding:0px;max-height:30em;overflow:a=
uto;white-space:pre-wrap;color:rgb(23,43,77);font-size:12px;background-colo=
r:rgb(244,245,247)">&gt;&gt;&gt; <span class=3D"gmail-code-keyword" style=
=3D"color:rgb(145,0,145)">import</span> Poverty Traceback (most recent call=
 last): File <span class=3D"gmail-code-quote" style=3D"color:rgb(0,145,0)">=
&quot;&lt;stdin&gt;&quot;</span>, line 1, in &lt;module&gt; ImportError: /u=
sr/bin/Poverty.so: undefined symbol: _ZN5boost6python6detail11init_moduleEP=
KcPFvvE</pre></div><div><br></div><div>I think that&#39;s because I built a=
gainst python2 in some places. So I replaced essentially all of the python =
dependencies=C2=A0with their corresponding python3 dependencies, but that g=
ives a build error in bitbake like:=C2=A0=C2=A0</div><div><pre class=3D"gma=
il-code-java" style=3D"margin-top:0px;margin-bottom:0px;padding:0px;max-hei=
ght:30em;overflow:auto;white-space:pre-wrap;color:rgb(23,43,77);font-size:1=
2px;background-color:rgb(244,245,247)">| /local/d6/easmith5/rocko_bitbake/p=
oky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921=
c563309-r0/recipe-sysroot/usr/include/boost/python/detail/wrap_python.hpp:5=
0:11: fatal error: pyconfig.h: No such file or directory<br>| =C2=A0# inclu=
de &lt;pyconfig.h&gt;<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~=
~~~~~<br>| compilation terminated.<br></pre></div><div><br></div><div>Howev=
er, I checked and the offending file pyconfig.h is actually present at | /l=
ocal/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-u=
a-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/pytho=
n3.5m/. When I build with python2 dependencies the file is in the same loca=
tion, just /python2.7/.</div><div><br></div><div>I can&#39;t quite tell if =
this is a yocto problem, or a problem with my recipe and/or build files for=
 that recipe. If anyone has suggestions they would be much appreciated!=C2=
=A0</div><div><br></div><div>Thanks!</div><div>Emily Smith</div><div><br></=
div></div>

--00000000000074c15105a4119101--
