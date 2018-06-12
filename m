Return-Path: <pandapravaskumar97@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B13D3E02001; Tue, 12 Jun 2018 00:16:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pandapravaskumar97[at]gmail.com)
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
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1AECE00CCC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 00:16:56 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id j13-v6so34360554lfb.13
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 00:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nMq5ybyLj5Tt4aRWN6FZqc+34NsYDU+rjR9DiJ/NVP4=;
	b=pB1xkWAtx2tBdsiz7MngPkf1D8KMbsF2XSRG+RsiM3qQ2AMsY5Ibj9kxbxgN/2uszL
	2Pr5hfpKesn6XYN60VblaP+YJoNuKKWdoicYWoR0emr1Jbu+/zPPgme+5AG3G7f21Kp5
	wNN1Fl2gdJNi6cEVNhknrgwNW3ZnuCZgEfpB9C/bdVtJQDpglYfixrHohAVi41VeV3xw
	fQlzbb6b5vMbyYIsMocYauXa8/a5bkVSprY9kxm0OakqAURIiExtyxpDd5Ps4i3HQLB0
	S6fzG2fM2ECKN/IUHaDHZb+Idd2GC6HFGZ1dechbfy3lH+H5ZYBRwagmT+CQlquB5OrY
	h1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nMq5ybyLj5Tt4aRWN6FZqc+34NsYDU+rjR9DiJ/NVP4=;
	b=UYgVj4HpmVjuCCKaU4pLXylimtlh9cTA7ZcQjV5dQf6ex355fY3cFKoHbEVXXphYMR
	bwO6AEb7vqom62pMdDWU49gvcEY72n4XVqqKHOecvgS5dIy3Axax3cb0dU7xGQp3Q/AQ
	V21C/D3k5ZjdbkqUhFNEiuVozaQlCzo3TGT0xi85ztzxhebLvrs4lveuVVkX2OYH4xNa
	6bWuDzf76E84rxpNtSYMJ723oeKqYFNWa0OVkTTxnIzTy2xLjzVvmHl/uAFRCHSbgu4+
	ha0B10K2jpT2HXRNCjyMGSy2ZHIiURNnJyVW1aQS4ZLsRJ0/Ap9ELlPrKaE2+gMpRkC5
	cp7g==
X-Gm-Message-State: APt69E0SkaBW0FK1Wxa4w2JLJlSjBLvZtJKIIoqUxFzJ1tXbCTA2ByWJ
	m6W9ZN6UEfh7Ny+m3C+aQdjrSRMFKeYe6CY1Pw==
X-Google-Smtp-Source: ADUXVKI+CMPeKZa40htbcT7652OAGOPmHxeVxWO8Hf4+El6sJ9ofI5+caECrwbMfGx+FvTVRhCU+bqFpmoQ0bRu16uk=
X-Received: by 2002:a2e:5687:: with SMTP id
	k7-v6mr1548758lje.140.1528787815664; 
	Tue, 12 Jun 2018 00:16:55 -0700 (PDT)
MIME-Version: 1.0
From: pravas kumar Panda <pandapravaskumar97@gmail.com>
Date: Tue, 12 Jun 2018 12:46:42 +0530
Message-ID: <CAMrvBPP=9vaErzvHjjxNrg674N+Hm3YE-La9ouxL+5DHkqW2TA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding kernel module to yocto core-image-base
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
X-List-Received-Date: Tue, 12 Jun 2018 07:16:57 -0000
Content-Type: multipart/alternative; boundary="000000000000b0936e056e6ca6f8"

--000000000000b0936e056e6ca6f8
Content-Type: text/plain; charset="UTF-8"

Hi all,

I want to know how to add a kernel module using my own layer and recipe in
yocto.
Can someone suggest me the step by step process how to do it. how to edit
or add
new files so that i could build my image and the module should
automatically loaded
at the time of boot.please reply me with the step by step procedure.

Thanks in advance.

Regards,
Pravas Kumar Panda

--000000000000b0936e056e6ca6f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-family:arial,helvetica,sans-serif;font=
-size:16px" dir=3D"auto"><br>Hi all,<br></div><br style=3D"font-family:aria=
l,helvetica,sans-serif;font-size:16px"><div style=3D"font-family:arial,helv=
etica,sans-serif;font-size:16px" dir=3D"auto">I want to know how to add a k=
ernel module using my own layer and recipe in yocto.<br></div><div style=3D=
"font-family:arial,helvetica,sans-serif;font-size:16px" dir=3D"auto">Can so=
meone suggest me the step by step process how to do it. how to edit or add<=
/div><div style=3D"font-family:arial,helvetica,sans-serif;font-size:16px" d=
ir=3D"auto">new files so that i could build my image and the module should =
automatically loaded</div><div style=3D"font-family:arial,helvetica,sans-se=
rif;font-size:16px" dir=3D"auto">at the time of boot.please reply me with t=
he step by step procedure.<br></div><br style=3D"font-family:arial,helvetic=
a,sans-serif;font-size:16px"><div style=3D"font-family:arial,helvetica,sans=
-serif;font-size:16px" dir=3D"auto">Thanks in advance.<br></div><br style=
=3D"font-family:arial,helvetica,sans-serif;font-size:16px"><div style=3D"fo=
nt-family:arial,helvetica,sans-serif;font-size:16px" dir=3D"auto">Regards,<=
br></div><div style=3D"font-family:arial,helvetica,sans-serif;font-size:16p=
x" dir=3D"auto">Pravas Kumar Panda</div></div>

--000000000000b0936e056e6ca6f8--
