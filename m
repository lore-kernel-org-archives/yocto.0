Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE180E00E47; Wed, 21 Feb 2018 07:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9776EE00B1A
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 07:50:05 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id l12so2580650ioc.10
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 07:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=QTLX2VZIbGEm9sLQdBRaYIx2fs2Jl7Iyx5zAGShIgjc=;
	b=ejQ22Lyqu3U5g9CjoiFLnd3csVHVxsiV10BgkPw+YWn6WydWoaaRwv8B0mnGj241IU
	OBuqkaeNFRIDoNwGZbxxHb+QfUztwRlbEHB8xoLXmRKuMsRQ5JwSrYRw5bcMLYcXSVMV
	OE7Co0CnA8yrtaGKvc5QGEkZ9MptkAiw9LbIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QTLX2VZIbGEm9sLQdBRaYIx2fs2Jl7Iyx5zAGShIgjc=;
	b=Bjt2DhzS/ulZBveyMcWoXQ6nrJJ0rOFdklK7tPitpe++RmisO0VMQscJr8u4F++/h1
	bZLZXzfPrwyt8VsaMObCFnNtPk7V/sRpb5TnWq5WbMJsmFBSXLgq3N2RNOS+ZUQXxpcH
	G5hSujDJxzG6Yk/t6UV5yrh4e75uJsdNH169I+xDIul+uZiAkH1s/HRdQQdqpKFLvyBW
	ctdUX/Ny4W9cPHDdBX4SbK5RQtNrPVSMVrKdGDT9EshoquFNsqn7H06z4mDvAreWbC89
	7MudC/9/g8uI1BCGg6HJy3ZtY4TgbSbl1MZ0h5csvcRdD+zAAOQyDhlDL3lv9CKxMuOK
	O7QQ==
X-Gm-Message-State: APf1xPA01APhYLBxxstNrt3NM5Dm14RTXISg6fG8qbRRtweVIzLxmUdq
	FVwqMx+6Pjr2R62VTBurmv277Qe+Dh2KINC9iiXJO4JM
X-Google-Smtp-Source: AH8x225XjIQkwjTRpFBhTdsmec1aQLDD2YBGSgcxda3xzDUJm9pydOZEmlcmWpQ9nrvb6RkszwAWb/XmMwAnBNoH8No=
X-Received: by 10.107.156.213 with SMTP id f204mr1068214ioe.229.1519228205317; 
	Wed, 21 Feb 2018 07:50:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Wed, 21 Feb 2018 07:50:04 -0800 (PST)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 21 Feb 2018 16:50:04 +0100
Message-ID: <CAALXFYwsMACwdPf+QQNTwROGeqXD_FiBo4o=9kw=bV4JKrJfaw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Expansion of variables inside do_package_prepend task
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
X-List-Received-Date: Wed, 21 Feb 2018 15:50:07 -0000
Content-Type: multipart/alternative; boundary="001a1140bd0482d6230565bae1d6"

--001a1140bd0482d6230565bae1d6
Content-Type: text/plain; charset="UTF-8"

Hello forum.

I have a question regarding the expansion of variables in a recipe. Suppose
I have a recipe with this "do_install" task defined:

    do_install() {
        BBB = ${WORKDIR}
    }

Variable BBB expands to the proper working directory.

    $ bitbake -e <myrecipe> | grep BBB
    BBB = /path/to/working/directory


However, suppose now I have a recipe with this "do_package_prepend" task
defined:

    do_package_prepend() {
        AAA = ${WORKDIR}
    }

Variable AAA doesn't expand to the expected working directory. In fact, it
generates an error:

    $ bitbake -e <myrecipe> | grep AAA
    AAA = ${WORKDIR}
          ^
    SyntaxError: invalid syntax


It seems the expansion of variables is not working inside the
do_package_prepend task.
What is going wrong with that?

Thank you in advance! :-)

--001a1140bd0482d6230565bae1d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum.<br></div><div><br></div><div>I have a qu=
estion regarding the expansion of variables in a recipe. Suppose I have a r=
ecipe with this &quot;do_install&quot; task defined:</div><div><br></div><d=
iv>=C2=A0 =C2=A0 do_install() {<br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
BB =3D ${WORKDIR}</div><div>=C2=A0 =C2=A0 }</div><div><br></div><div><div>V=
ariable BBB expands to the proper working directory.=C2=A0<br></div></div><=
div><br></div><div>=C2=A0 =C2=A0 $ bitbake -e &lt;myrecipe&gt; | grep BBB</=
div><div>=C2=A0 =C2=A0 BBB =3D /path/to/working/directory</div><div><br></d=
iv><div><br></div><div><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline">However, suppose now I hav=
e a recipe with this &quot;do_package_prepend&quot; task defined:</span></d=
iv><div><br></div><div><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><div style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-c=
olor:initial"><div>=C2=A0 =C2=A0 do_package_prepend() {<br></div></div><div=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration-style:ini=
tial;text-decoration-color:initial">=C2=A0 =C2=A0 =C2=A0 =C2=A0 AAA =3D ${W=
ORKDIR}<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration-style:initial;text-decoration-color:initial">=C2=A0 =C2=A0 }<br=
></div><br class=3D"gmail-Apple-interchange-newline">Variable AAA doesn&#39=
;t expand to the expected working directory. In fact, it generates an error=
:<br></span></div><div><br></div><div><span style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=
=A0 $ bitbake -e &lt;myrecipe&gt; | grep AAA</span><br></div><div><div>=C2=
=A0 =C2=A0 AAA =3D ${WORKDIR}</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
^</div><div>=C2=A0 =C2=A0 SyntaxError: invalid syntax</div></div><div><br><=
/div><div><br></div><div>It seems the expansion of variables is not working=
 inside the do_package_prepend task.=C2=A0</div><div>What is going wrong wi=
th that?<br></div><div><br></div><div>Thank you in advance! :-)</div><div><=
br></div>
</div>

--001a1140bd0482d6230565bae1d6--
