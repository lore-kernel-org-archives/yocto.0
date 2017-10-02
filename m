Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FE11E00D14; Mon,  2 Oct 2017 15:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C913E00D03
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 15:58:03 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id z50so4887934qtj.4
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 15:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yiSukZeBVGfoolSzrz4c48JwWtIwJDH8TbePmn2PqdA=;
	b=hSmKFgkJySsxzJQhrLgflrabkHi8+eTFHd/xrhgGpG6roF1embbAoe+T6wBkf3K9B2
	TWQXnrjSUFEZAUGmMldyHTRkvUfxBT+BK1N3JjNxnhxOKNBWxBa1a6MezX5nCRtwmPFt
	Dgiznk8zAiP7hv3nHy8UVQ2lKoWoBo/ymatzKVzzLZNCF0JOdk38FekoFSX5tRk+L5J3
	D3npgAU1RUJz9IKyslUOCLtWYUrvhvlSOqw9n4ClqslFB988eY6MEkdcOrPtkUlwpUN8
	1M393g9RpN3PWEqStkMNjv/j1An+UNk9QiOjOCj4zz9VPcxRH81Vzq6Pv3/vcAvaMeZU
	MtGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yiSukZeBVGfoolSzrz4c48JwWtIwJDH8TbePmn2PqdA=;
	b=lhZsn90VW7Coytl70ZYggDQ7PcSUxl9tEsvhhX0ezmBoryg8MPkD1IBBjMMNOdLejE
	aG9SN1VAzO+vDo4qIEOjx0u3zSaMrODpeqR0ZQmCYySJ47JKBVaB+ILnlsn+KYt3HOic
	vzo8evH1dyNfrCJWGsYrsj4uQzVb1QGu7Nrg50iHRCWMiYi/TuXXtJCOdwJliadSUi1a
	F58aR8TBYkKDGjTHHR6NZntogWVQ7csaa5NOzIEgukmmygdoQx6FC9P1c3nmdbBdyxge
	vAx6n1ImMnTgYyhQFMaTOlf4+TQIofNGzqELHLhPTZOXwmckB3j/1pcHQd+c3MswVBTV
	BfxA==
X-Gm-Message-State: AMCzsaXvgpVuFsyNjd0EmVunn7/AwXnwPueJm+KeneMzG2mw0UDXWBRU
	m3Ywoz6kcs/ICIo9R+VU40zGCDw6KejIAwMOqIyVIQ==
X-Google-Smtp-Source: AOwi7QBgtDtieQ1oaEYaKgrQoXiZciVrdNrcy2dL337Gc3h6pexsYBbAmIPaeI08GbuXkskmTda7XFhEKEYh/iP9ugM=
X-Received: by 10.237.49.35 with SMTP id 32mr4019143qtg.33.1506985082629; Mon,
	02 Oct 2017 15:58:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.70 with HTTP; Mon, 2 Oct 2017 15:58:02 -0700 (PDT)
From: Mark Hieber <hieberm@gmail.com>
Date: Mon, 2 Oct 2017 15:58:02 -0700
Message-ID: <CAPxJQ9Fw53QT_3m2mNmro4Cfe-uGARgGkjC6zC0oZV4Z+1uiuQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: problem adding first layer to yocto
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
X-List-Received-Date: Mon, 02 Oct 2017 22:58:04 -0000
Content-Type: multipart/alternative; boundary="94eb2c0cb536883102055a984edc"

--94eb2c0cb536883102055a984edc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am just starting out with yocto, and I have an issue. I followed the
steps in
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creatin=
g-a-general-layer-using-the-yocto-layer-script,

create meta-mylayer (in the /yocto/poky directory),

#/yocto/poky tree meta-mylayer/

meta-mylayer/

=E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf

=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT

=E2=94=9C=E2=94=80=E2=94=80 README

=E2=94=94=E2=94=80=E2=94=80 recipes-example

    =E2=94=94=E2=94=80=E2=94=80 example

        =E2=94=9C=E2=94=80=E2=94=80 example-0.1

        =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 example.patch

        =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 helloworld.c

        =E2=94=94=E2=94=80=E2=94=80 example_0.1.bb

--94eb2c0cb536883102055a984edc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I am just starting out with yocto, and I have an issue=
. I followed the steps in <a href=3D"http://www.yoctoproject.org/docs/2.3.2=
/mega-manual/mega-manual.html#creating-a-general-layer-using-the-yocto-laye=
r-script">http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.ht=
ml#creating-a-general-layer-using-the-yocto-layer-script</a>, <br>create me=
ta-mylayer (in the /yocto/poky directory),<br><br>#/yocto/poky tree meta-my=
layer/<br><br>meta-mylayer/<br><br>=E2=94=9C=E2=94=80=E2=94=80 conf<br><br>=
=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf<br><br>=E2=94=9C=E2=
=94=80=E2=94=80 COPYING.MIT<br><br>=E2=94=9C=E2=94=80=E2=94=80 README<br><b=
r>=E2=94=94=E2=94=80=E2=94=80 recipes-example<br><br>=C2=A0 =C2=A0 =E2=94=
=94=E2=94=80=E2=94=80 example<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 example-0.1<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82=
 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 example.patch<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 helloworld.c<br><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://=
example_0.1.bb">example_0.1.bb</a><br><div><br></div></div>

--94eb2c0cb536883102055a984edc--
