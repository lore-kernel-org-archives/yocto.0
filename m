Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B3FDE00D00; Tue, 24 Sep 2019 02:36:13 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E73CE009E6
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 02:36:12 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id j31so1332244qta.5
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 02:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/DruQ9UYNy7VLnR//dq9v2CGjt+UCvgW3b4OFDAdH4c=;
	b=iZVRFHjcdMSPrKitglYXblIbqMKs/FnXA8NXDFaJzdaQHNBSvWXub+8Z0HJnpZPWKv
	yMUbPN9pOYpcb05k2VmvsF4d3Y7E1NyOCMSXBSbOrPbo9b+PfowXSrnSlLe5UlRdqM2R
	+xRTSZeSh6gMyJmO4jH/s0C47NPgGmqQYr+ArNoJLdtDbM6wAWzqK4lTYmuUH+LeVN/s
	vmrdh24BaIewvsbSUAr4bIGF3swgg1OV2B+PjXPLwZeM8XWXFzjIWqyZpK/T7JdWbXTv
	Gvm+e3r3vvtJ1fTSaeQlHWOtIVi7n8eaeYnXMi+91dnxP5t/jUikT0dJYSAXRxWIO9+W
	rwBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/DruQ9UYNy7VLnR//dq9v2CGjt+UCvgW3b4OFDAdH4c=;
	b=U8YHehz8/czGo/wKYATZpLeyyAsVQYQt+j17wsu8dRMRIcvXkmvC8ifOqJ8NqCpTp1
	ZHagXOR2FTHDLxaLGL5pCCfgdPD4RogqG57eBS9HxR13MVYwTlE3WqR3ryKOJXf244Pc
	TzShfgvJSi41eAZ2uBeKPSVh7zDxmssDbnE8Cd4Prk6bpqG+cFXwE5dicBNv1A8WFqh+
	zVBOGLatXY3z+pqjp/LIl0irJNAiOTAN+fgon3uLXlHamU7fBF1R5TUeFapjQ7xndG5p
	Ye+eqKxs8GqRFikQO7WnEWcOc+GHI89iQOOXTMRcPDtzElTGKP8Pzm90jmaqvxi98dh5
	4/OA==
X-Gm-Message-State: APjAAAUushUNhWoFDbNkaUxdKDgrz32yxpdtOmy5kAreCCnNrE0+rspd
	4KPq91dKL+6EEQSsVOw1j5z3dQkoXFbOEKrDwGUH/5g=
X-Google-Smtp-Source: APXvYqyTR511I/63JLy/QKvFCoqjlIh7ze0PgJbtrsD3Rjk4mr58tEimHmwx5VQNrV7oIRf1GUkvfmBV6wojd6ttGAc=
X-Received: by 2002:ac8:2fcb:: with SMTP id m11mr1808207qta.280.1569317771281; 
	Tue, 24 Sep 2019 02:36:11 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 24 Sep 2019 12:36:00 +0300
Message-ID: <CA+FhBv_p+063N=qs0Wzo32z1L_evbfP2FEntO=iNMGCwxZ0HSQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Nothing PROVIDES 'python3-dev'
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
X-List-Received-Date: Tue, 24 Sep 2019 09:36:13 -0000
Content-Type: multipart/alternative; boundary="0000000000004c06df059349448a"

--0000000000004c06df059349448a
Content-Type: text/plain; charset="UTF-8"

Hi,

Migrating from poky:pyro to poky:warrior.

It looks like the python3-dev package is generated from
python3-manifest.json:

    "dev": {
        "cached": [],
        "files": [
            "${base_libdir}/*.a",
            "${base_libdir}/*.o",
            "${bindir}/python*-config",
            "${datadir}/aclocal",
            "${datadir}/pkgconfig",
            "${includedir}",
            "${libdir}/*.a",
            "${libdir}/*.la",
            "${libdir}/*.o",
            "${libdir}/lib*${SOLIBSDEV}",
            "${libdir}/pkgconfig"
        ],
        "rdepends": [
            "core"
        ],
        "summary": "Python development package"
    },

and this is used in python3_3.7.2.bb.

Still I get this error: Nothing PROVIDES 'python3-dev'

python3 built successfully.

Any idea?

Thanks,
-Damien

--0000000000004c06df059349448a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Migrating from poky:pyro to poky:wa=
rrior.</div><div><br></div><div>It looks like the python3-dev package is ge=
nerated from python3-manifest.json:</div><div><br></div><div>=C2=A0 =C2=A0 =
&quot;dev&quot;: {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;cached&quot;: [],<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;files&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;${base_libdir}/*.a&quot;,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${base_libdir}/*.o&quot;,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${bindir}/python*-config&quot;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${datadir}/aclocal&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${datadir}/pkgconfig&quot;,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${includedir}&quot;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/*.a&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/*.la&quot;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/*.o&quot;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/lib*${SOLIBSDEV}&quot;,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${libdir}/pkgconfig&quo=
t;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;r=
depends&quot;: [<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;core&qu=
ot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;=
summary&quot;: &quot;Python development package&quot;<br>=C2=A0 =C2=A0 },<b=
r></div><div><br></div><div>and this is used in <a href=3D"http://python3_3=
.7.2.bb">python3_3.7.2.bb</a>.</div><div><br></div><div>Still I get this er=
ror: Nothing PROVIDES &#39;python3-dev&#39;</div><div><br></div><div>python=
3 built successfully.=C2=A0<br></div><div><br></div><div>Any idea?</div><di=
v><br></div><div>Thanks,</div><div>-Damien</div></div>

--0000000000004c06df059349448a--
