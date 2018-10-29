Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBF3E00A0C; Mon, 29 Oct 2018 02:50:46 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8864EE008E3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 02:50:45 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id t10-v6so6671081eds.12
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 02:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IChkeUn31gUI4bQiKKGeyDc1fbqUYqvCqtjh+e5dSyE=;
	b=CMhPl+mtyPeRM6A50RGiApsv5yLyGe0ZSzikPPwDkUdEm3o8JDkFO+pv2lN9w/PTfj
	28RMQ37txYwCDLtYWKxIGrw/ckeS1iAZpSpqza7d4+OoBsE7JuCbuMZg+RI76QJ7OJt0
	tZPDyAbfLExS1DFFRf29bdnURFOdTE1U9frlMqAQWEF0eKTED506j9npvAGy9kY2rR/E
	xioEQn0qUwnRDK1Pd/WASfzA106woVAXI0L6OsgiQN3OKh6Mgppwn6SpxhKWk/fEco0g
	QfZwbXe8+izOH8YwonF441b0eAXKjDqKSf4k9bOMWfw5IS1CP8fpaCiAZmpj2TgofZ3z
	hTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IChkeUn31gUI4bQiKKGeyDc1fbqUYqvCqtjh+e5dSyE=;
	b=Dyv/HhxI4VX9AKImQl0hyJ+lIYBsF16hCkTuWkTmldfIh4XA1O45TxW8mwM/ajCfrX
	fNfMc4wfSgS4xOjDZttQihhMwi6IulbUX0wuXkG6X21DZLCkZ3Xyna21Fd4hzx2zCjO1
	PKtCxRT4d+2rmB+bIsrMA6zsiusM7Hblghq63Yp7F9WYlf49X4yF/Y/2lfZ5pK/+tLIi
	4Yw4Z0itnuUyrAkdpQbA3FZylUZy27zQWJ+KtPiE++v1f0ZW8EWuDI3G0K6oupQvj3It
	WUyPf+Z3z3dqGXAId3EUfVsDv2uUBnvkHM0QImzmbGMoeTXdyzxWUoWbBAoDX/JLgO1O
	RKrg==
X-Gm-Message-State: AGRZ1gLf4Sa9ZmLUg1cXoe6c/3xPvYRgy67EHoGBSaTtKx1OY0pHajXL
	rDhhzekfyze45nzroEnfo4CuqKkyyHnR4ltSjespBuwreg==
X-Google-Smtp-Source: AJdET5fa4wdaQO/hBqtPDtlUQs98n92PCu8jYSKacPQ7C7XYnAHCFkQqWFsaHBNhtZ90LJ1gVICWlQRwu+LnGjOEhbo=
X-Received: by 2002:a50:9f6f:: with SMTP id
	b102-v6mr12220691edf.235.1540806644348; 
	Mon, 29 Oct 2018 02:50:44 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Mon, 29 Oct 2018 10:50:33 +0100
Message-ID: <CAK4Yt2m7sqkaedLj4_hdsLn+WuDHaWZkUkZF6cJBijBrZLOZmQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: adding own shell script
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
X-List-Received-Date: Mon, 29 Oct 2018 09:50:46 -0000
Content-Type: multipart/alternative; boundary="000000000000b4449305795b00b0"

--000000000000b4449305795b00b0
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'd like to install my own test.sh script into the image, I created this
recipe file, however I dont know how to have bitbake put the my test.sh
into /etc folder

SUMMARY = "test.sh"
LICENSE = "Z"

SRC_URI = "\
        file://test.sh \
"

do_configure(){
  :
}

do_compile() {
  :
}


do_install() {
    install -d ${D}${sysconfdir}
    install -m 0770 ${WORKDIR}/test.sh ${D}${sysconfdir}/test.sh
}

--000000000000b4449305795b00b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#=
39;d like to install my own test.sh script into the image, I created this r=
ecipe file, however I dont know how to have bitbake put the my test.sh into=
 /etc folder</div><div><br></div><div><font size=3D"1">SUMMARY =3D &quot;te=
st.sh&quot;<br>LICENSE =3D &quot;Z&quot;<br><br>SRC_URI =3D &quot;\<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://test.sh \<br>&quot;<br><br>d=
o_configure(){<br>=C2=A0 :<br>}<br><br>do_compile() {<br>=C2=A0 :<br>}<br><=
br><br>do_install() {<br>=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}<br=
>=C2=A0=C2=A0=C2=A0 install -m 0770 ${WORKDIR}/test.sh ${D}${sysconfdir}/te=
st.sh<br>}</font></div><div><font size=3D"1"><br></font></div><div><br></di=
v></div></div>

--000000000000b4449305795b00b0--
