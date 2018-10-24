Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8045E00901; Wed, 24 Oct 2018 06:36:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B576E003DB
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 06:36:43 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id b7-v6so5063838edd.9
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 06:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=EIlMwMjPxgHKHvM8cY4Dng6wGBjOSALy/UoU+MmISEw=;
	b=C1/zyVrjXJyYjlmEGupfjkPQx84F7JTDadL5r6IyUH96nWqlJoBQonaSGYttOQYoC0
	9l2WgBjJpp4P5m5WsoJQTUZXaGan7ByFj53aF0d3Z3tL7OTt5UWeHiLYPkK6n0O6WfN4
	Cnh/s+UTJ3aIpvAzSP7gQs8D2rGCWH44ezs1y4EzYdOl2nlyg69hrkQVEygmZglvTaiM
	KAJkwTu6CCy0K4advquuqkyfOuhjdWctTkxTilN/UzJwEwSi/yWuSOHsszEpktdCKI8Y
	1Hm1KYmyD2KLZ+guMd57p1/S8HZKq7WT5S2T+0kx06rlusWU5VJizdGnqmgzniPeNoPi
	raSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EIlMwMjPxgHKHvM8cY4Dng6wGBjOSALy/UoU+MmISEw=;
	b=g0/MmSXMcBzla+fxMynt5t1NnmAQsb0KW/7LTNqe3KZ222XoKb/DXxfu+9q8Q+CoaB
	Mg3gkxQjorIG/F8cuerNs6ttcfmfTNn2xJRyx+TkoXX4IOAV1h3tjIu1G86Zyez8FI1w
	0ObIlVdnNudfzA08PjkQ/hzbm9QMRivjjd39FJRGKiQ3W44ygmiahDARGeiAB/t+iS7i
	J4v9Sb4Pkkcbrw7MeQrw5ggE1qsrLI6MFLkO/La4kw87KDoM+zDiJoN3Wc7ZjdJsPbu8
	TVo9txn3Mgs7LOr0Gb4OkfpD+olQedxfslo/am5X+y1tJ+BvWUsYfQrtS/SN1GBS2oNN
	qasA==
X-Gm-Message-State: AGRZ1gKV2TP8DvXVay+npZdY3cYTHzeXTg1dbekkjfVnoPN2p6Y9B8NI
	aEkuLedC50uW1D0sT5l20Q2LSwxOfbU4OVr6if5LmyS/6A==
X-Google-Smtp-Source: AJdET5diI3b5vs3P26kOokH+NfXjtU+s9KeXo4u0xxX0tYGzTLGs+gIddA4P7oUHpMpDVPF9xvhxfOqrKMekeGS51gY=
X-Received: by 2002:a17:906:b819:: with SMTP id
	dv25-v6mr1432538ejb.70.1540388202318; 
	Wed, 24 Oct 2018 06:36:42 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Wed, 24 Oct 2018 15:36:31 +0200
Message-ID: <CAK4Yt2=yFrCDFbuCGAz9=a5nt_gDw8U4VPJ20Y4zbkMF4vL_Qw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: adding new layer
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
X-List-Received-Date: Wed, 24 Oct 2018 13:36:44 -0000
Content-Type: multipart/alternative; boundary="0000000000009d8fd40578f99334"

--0000000000009d8fd40578f99334
Content-Type: text/plain; charset="UTF-8"

Hi,

I created a new layer, modified the conf file content according to the
decumentation:
# We have a conf and classes directory, add to BBPATH
BBPATH .= ":${LAYERDIR}"

# We have recipes-* directories, add to BBFILES
BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
            ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS += "saxo"
BBFILE_PATTERN_saxo = "^${LAYERDIR}/"
BBFILE_PRIORITY_saxo = "4"

I copied the proftpd folder with a working bbappend file into the meta-saxo
folder. But during bitbake I got an error massage:
Warning: No bb files matched BBFILE_PATTERN_saxo
'^/home/kz/oe-core/build/../stuff/meta-saxo/'

I played around with the priority without success.

Do you have any idea what am I doing wrong? I'd like to collect all my
modifications in 1 layer.

Thanks,

Zoli

--0000000000009d8fd40578f99334
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I created a new layer, modified the conf file content according t=
o the decumentation:</div><div># We have a conf and classes directory, add =
to BBPATH<br><font size=3D"1">BBPATH .=3D &quot;:${LAYERDIR}&quot;<br><br>#=
 We have recipes-* directories, add to BBFILES<br>BBFILES +=3D &quot;${LAYE=
RDIR}/recipes-*/*/*.bb \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ${LAYERDIR}/recipes-*/*/*.bbappend&quot;<br><br>BBFIL=
E_COLLECTIONS +=3D &quot;saxo&quot;<br>BBFILE_PATTERN_saxo =3D &quot;^${LAY=
ERDIR}/&quot;<br>BBFILE_PRIORITY_saxo =3D &quot;4&quot;</font></div><div><f=
ont size=3D"1"><br></font></div><div><font size=3D"2">I copied the proftpd =
folder with a working bbappend file into the meta-saxo folder. But during b=
itbake I got an error massage:</font><br></div><div><font size=3D"1">Warnin=
g: No bb files matched BBFILE_PATTERN_saxo &#39;^/home/kz/oe-core/build/../=
stuff/meta-saxo/&#39;</font></div><div><font size=3D"1"><br></font></div><d=
iv><font size=3D"2">I played around with the priority without success.</fon=
t></div><div><font size=3D"2"><br></font></div><div><font size=3D"2">Do you=
 have any idea what am I doing wrong? I&#39;d like to collect all my modifi=
cations in 1 layer.</font></div><div><font size=3D"2"><br></font></div><div=
><font size=3D"2">Thanks,</font></div><div><font size=3D"2"><br></font></di=
v><div><font size=3D"2">Zoli</font><br></div></div></div></div>

--0000000000009d8fd40578f99334--
