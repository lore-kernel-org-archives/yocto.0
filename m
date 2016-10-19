Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCF4AE00E70; Wed, 19 Oct 2016 00:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B4F5E00E6E
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 00:19:32 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id q126so19284223vkd.2
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 00:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=hLocff5S3PCrjNQ1Ok/klErg779g+O6DCBAxSf+T3g4=;
	b=mSiRM8N34MXD6OxBDY6UUmIdVC6tS+Dz1MhM2GDZggC7smmuLDw2PSef7iWuGKkPOF
	zB5uOtthfHrbGy1J+eYtPqB0FgaEJ6znFoqLsIKA+ffuiT2aPxCEl7aG8tkbvXPGIqYr
	kuT9RrDqGfzw7yn5hTMdj25hC9CAfWGphBSSsv/ESfJbBW5CtMERvzbpd90ULZVH4ltW
	m/TN7qVvpxSLQakL26UHni7rMZoFftstLlSmuLsEuYbJPnu+FIPFTZHLFzoSjEv+C6Bk
	I7hrlwbnyHuGcZuHPw128VFguj94H+/w2JsGOZlEd/ST5Ou4eXRtP9pV+r3cpFUz1qju
	HTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hLocff5S3PCrjNQ1Ok/klErg779g+O6DCBAxSf+T3g4=;
	b=fHK4qcUr6kYJoTLM9cywbX05sJn2q45qv8tclkGYtVZY8at+aRSrUiqJVi2XxobTFS
	4wUcwJR44qQ59qx8FvO4xDbWj50QofH6syojiVFRg/tPzSpp5i33dskh3GVwS7UMne2E
	wGAvtwI8Wf/Gs3gjIJdQx64I5JoEd991/VzfeRLAW2vepacrhGFFk4JNX/DzzHNzrZup
	N6F8tYAaGmwwkYDdFzRHU1loK97ROvJ6hxrnMFGUXrwFZtySScC5VCzG7th7Wai1D9T9
	v5SsWAl8WSO9ZakvBfSfdroorgPeUmFNBzSM8axxKSJyTf7E780oVNMd7yrDN+i3XbKE
	6nHA==
X-Gm-Message-State: AA6/9RnFqkK/pp0uE05RVQXAiTB43gtZ37RC88NtCIxNWNDpDfJdGXogYYPkaz3l/WFMZGpbp0M0rFofimtq/Q==
X-Received: by 10.31.171.75 with SMTP id u72mr4258669vke.22.1476861571817;
	Wed, 19 Oct 2016 00:19:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.107.203 with HTTP; Wed, 19 Oct 2016 00:19:31 -0700 (PDT)
From: Vivek Per <pervivek@gmail.com>
Date: Wed, 19 Oct 2016 12:49:31 +0530
Message-ID: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: libtomcrypt libtomfastmath recipe
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
X-List-Received-Date: Wed, 19 Oct 2016 07:19:38 -0000
Content-Type: multipart/alternative; boundary=001a1143fdba5f0a11053f32a1ed

--001a1143fdba5f0a11053f32a1ed
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to build tomfastmath and tomcrypt shared libraries using yocto,
I couldn't get recipes for libtomcrypt and tomfastmath in web. So started
to write one but i am failing to write correct recipe every time.

the skeleton   i used is both the recipes

S = "${WORKDIR}/git"
inherit autotools
EXTRA_OEMAKE = " 'CFLAGS=${CFLAGS} "-I${S}/src/headers" -DTFM_ARM '
 'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'LD={LD}'   'BUILDDIR=${S}'
'D=${DEST_DIR}' "
do_compile() {
make -f ${S}/makefile  libtfm.a DESTDIR=${D} SBINDIR=${sbindir}
MANDIR=${mandir}
}

Can any one help  please help me in creating tomcrypt and tomfastmath
recipes. or any point our if recipes already exist.


Thanks and Regards,
      Vivek

--001a1143fdba5f0a11053f32a1ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to build tomfastmath an=
d tomcrypt shared libraries using yocto, I couldn&#39;t get recipes for lib=
tomcrypt and tomfastmath in web. So started to write one but i am failing t=
o write correct recipe every time.</div><div><br></div><div>the skeleton =
=C2=A0 i used is both the recipes=C2=A0</div><div><br></div><div><div>S =3D=
 &quot;${WORKDIR}/git&quot;</div><div>inherit autotools</div></div><div>EXT=
RA_OEMAKE =3D &quot; &#39;CFLAGS=3D${CFLAGS} &quot;-I${S}/src/headers&quot;=
 -DTFM_ARM &#39; =C2=A0&#39;CC=3D${CC}&#39; &#39;RANLIB=3D${RANLIB}&#39; &#=
39;AR=3D${AR}&#39; &#39;LD=3D{LD}&#39; =C2=A0 &#39;BUILDDIR=3D${S}&#39; &#3=
9;D=3D${DEST_DIR}&#39; &quot;<br></div><div>do_compile() {<br></div><div>ma=
ke -f ${S}/makefile =C2=A0libtfm.a DESTDIR=3D${D} SBINDIR=3D${sbindir} MAND=
IR=3D${mandir}<br></div><div>}</div><div><br></div><div>Can any one help =
=C2=A0please help me in creating tomcrypt and tomfastmath recipes. or any p=
oint our if recipes already exist.</div><div><br></div><div><br></div><div>=
Thanks and Regards,</div><div>=C2=A0 =C2=A0 =C2=A0 Vivek =C2=A0</div><div><=
br></div><div>=C2=A0</div></div>

--001a1143fdba5f0a11053f32a1ed--
