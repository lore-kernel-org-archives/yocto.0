Return-Path: <vickylinuxer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7225BE00C7B; Thu, 14 Sep 2017 13:25:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vickylinuxer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB06E00C45
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:25:42 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id c80so498777lfh.0
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 13:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9f2dOGuWvQqpczPGdUgYpJi7OKPSxgg7qELeaJRpPmk=;
	b=fdN/GfjiVMSGrRVl/0VpJhh+FenamChLV5f1yxaLrsFGm6kRQEyICf3NyILGcar0Zi
	XeAp79Wb0B8MomAWhCVSRXYQS6Dok1Wr2BwliY/UpItNjBNSFgcZwhD8oykxUqPO7lYY
	aTV1btU99OyaW4svD5TxbFPekCexSpqGBT5wIBTHHjcRr7ZaEGQaWXBPY3+YWGsr5G/Y
	4NHCOj/17cEyrd0O1/SLqXA/FuIzHgkDkNCmrrlo8CN5YCAcQDKQyjzWM+l7yhON19mt
	K55fwAuZJv5h4vC5bt7mjYAVD76aYzvgXbAYRJ72VbkiQ98ELsFcvspmCNcisWSVQEgr
	T5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9f2dOGuWvQqpczPGdUgYpJi7OKPSxgg7qELeaJRpPmk=;
	b=AS9kufIrv6TC/DcdFg7ppUwspVbfBY7O61yVgq7iGbkltPVen+bHBcwnqJLQjlb5+r
	tRrlTy4M82zPPEJ3A1zihhH1pn+6bIqolyXx5IpKr//d+tf6+wRPRgJCmQ1BGwJQcAD/
	8Gdgwls7y4x4mYa1svqKnRW+NCmSbacK9/KXDugM1r4EECKq/8yhbn/UQk/I5WkLbH3g
	rRlh2ljeEiVFhLvQJAeuuvMFezNmlpmGnVMh+rj1+6iOiJKcG4pEvrn0eMKn5PxgVlIm
	bG3Iur/FUcVp5dVTpgiQ5YoxXHc3Y1ygokWkBoqhZVc8Tw0EaJlloVDpvKFJsL0g0vPE
	4VJw==
X-Gm-Message-State: AHPjjUioehqdfkuKktHFW0faEONsja7fYdhuESGXDqZIMp9rZEF7hn3P
	M7mTS7J8BB9TWpgKrPFgN3sTF3S3FT4VrujYy4M9kA==
X-Google-Smtp-Source: ADKCNb7OgvebSp5Bmy4E/LZFeYYzVI22cPKdH+uHdp2zYCGxhzD4kc1MrB4lsT6qMfbuHUTf/nTj0W9ZYhirhWOV9vs=
X-Received: by 10.46.18.211 with SMTP id 80mr7260069ljs.194.1505420741571;
	Thu, 14 Sep 2017 13:25:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.221.202 with HTTP; Thu, 14 Sep 2017 13:25:41 -0700 (PDT)
From: Vignesh Rajendran <vickylinuxer@gmail.com>
Date: Fri, 15 Sep 2017 01:55:41 +0530
Message-ID: <CALoDM-H_J78BT92JOgR-rasf5WgNHB8+r7=XVO-OBYoTYeMoGA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 14 Sep 2017 13:41:14 -0700
Subject: externalsrc sstate
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
X-List-Received-Date: Thu, 14 Sep 2017 20:25:43 -0000
Content-Type: multipart/alternative; boundary="001a1148e14489f80a05592c149a"

--001a1148e14489f80a05592c149a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto,

While using externalsrc for the recipes, sstate is not working for the
recipes.

Is it possible to enable setscene tasks, if srctree_hash_files reports
nothing has changed?

my environment is using makefile based sources in git.

Can you please provide your feedback? Or do i need to consider some other
constraints too?

Regards

Vignesh Rajendran





*=E2=80=9C Learning never exhausts the mind =E2=80=9D                   -- =
Leonardo da
Vinci --*

--001a1148e14489f80a05592c149a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_signature">Dear Yocto,<br><br>While us=
ing externalsrc for the recipes, sstate is not working for the recipes.<br>=
<br>Is it possible to enable setscene tasks, if srctree_hash_files reports=
=C2=A0 nothing has changed?<br><br>my environment is using makefile based s=
ources in git.<br><br>Can you please provide your feedback? Or do i need to=
 consider some other constraints too?<br><font size=3D"2"><span style=3D"fo=
nt-family:verdana,sans-serif"><font size=3D"1"><br></font></span></font></d=
iv><div class=3D"gmail_signature"><font size=3D"2"><span style=3D"font-fami=
ly:verdana,sans-serif"><font size=3D"1">Regards<br><br>Vignesh Rajendran</f=
ont></span></font><b><font size=3D"2"><span style=3D"font-family:verdana,sa=
ns-serif"><font size=3D"1"><br><br></font></span></font></b><font size=3D"1=
"><b><span style=3D"font-family:comic sans ms,sans-serif">=E2=80=9C Learnin=
g never exhausts the mind =E2=80=9D=C2=A0 <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 -- Leonardo da Vinci --<br><br><span=
></span><span></span><br></span></b></font></div>
</div>

--001a1148e14489f80a05592c149a--
