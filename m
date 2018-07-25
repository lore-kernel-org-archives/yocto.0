Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF887E00CE7; Wed, 25 Jul 2018 11:17:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F05E00CC8
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 11:17:34 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id t5-v6so8587478qtn.3
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 11:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=AxaeBxgGOp6i9AzMNtzLHYbqqoRAeIkJn6KOJ2KaxxE=;
	b=EamJMzLVJePRJASfRdGjwFIZjH3mIiX8MzuRvto8/MD/QCBT8HBQySvyeDwZQ/xgH8
	M6lus27Mat7awvHokGrSe88HbY1P7gO8YLe27MEDtQZuIaAR1W6S448iz5QSCVFuXBGr
	KIekyZJ1YCv35HbHAfRS1mqPaOcrah/7Omkrnp+XKqdklTCHeS3i52uFhy0QxOCW7XIC
	sawQMF+VJ12rBFgh7/uQkCB5/yUWlnQlPwIl/Dpk4KB2XhHM5kDJwxZbRlgODVsuKSIv
	onfeWjEH3v0Fv01LqvM+Om1Q3NTtme5XS6FXyAcg5sPmMKsvJe+896nwU3j8iAF7G88c
	tZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AxaeBxgGOp6i9AzMNtzLHYbqqoRAeIkJn6KOJ2KaxxE=;
	b=KcfWyiS3pJ7EqVdJ7dG7+UcALRl2+SemaRji5JcNYYCYINC82gRgo23cexK4RZ8VZd
	xAzWcraFs8uHu7ywDZxtNnbMagV70zA3fxSP0k1OWXPSu0GboU92b+2qu+oK21CW62KY
	lpvEV6f7Wp61lfIFXvolvg2tb9rYOD88jL4lvh/pdli+3ebZS+pFx3MhQ4qGSapJGf6B
	vvMXUkLCxE/z7+1rmJXB7OyQ+v0YfYfds+kl0eRFC39OCDQasfLgDJVouuMlzg63t86o
	vtnTP/M2r5jJ8ITfUSrXslnEcJqP1J+UY+pbmRawAO/MI5eNV6Fqgj3CpsQ6G3ykYQg1
	hiYA==
X-Gm-Message-State: AOUpUlGUJ8rqIdnn9vU/ih/jeCtmZC1oTkqW9HozOU7ZzpNZuY2U1/DD
	/p6q5XZo2AWDZjTbugkr11QeX4ISWen1cBqzpxdTxdOdqbunMQ==
X-Google-Smtp-Source: AAOMgpd9Z0cOhl27wWaIQIEowb7nZ832VwDeOGfyp5p06kQpHv3X+cTbdulxp4I0KwW2n7liRyTc967/GklkLRdGd5g=
X-Received: by 2002:a0c:c70d:: with SMTP id
	w13-v6mr20189043qvi.205.1532542654180; 
	Wed, 25 Jul 2018 11:17:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:2907:0:0:0:0:0 with HTTP; Wed, 25 Jul 2018 11:17:33
	-0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 25 Jul 2018 14:17:33 -0400
Message-ID: <CANmTPBb=YUAtLAqXz89GTbcpxt=o1uSRzaRhXVei8Dh6BtYEFg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to enable http2 for Apache?
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
X-List-Received-Date: Wed, 25 Jul 2018 18:17:36 -0000
Content-Type: multipart/alternative; boundary="0000000000008185e50571d6e4d1"

--0000000000008185e50571d6e4d1
Content-Type: text/plain; charset="UTF-8"

Hi,


What is the best way to enable http2 for Apache?

Do I add

COMMON_EXTRA_OECONF_append_pn-apache2 = "--enable-http2"

in local.conf ?

Thanks,
S

--0000000000008185e50571d6e4d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div><br></div><div>What is t=
he best way to enable http2 for Apache?</div><div><br></div><div>Do I add</=
div><div><br></div><div style=3D"margin-left:40px"><span style=3D"font-fami=
ly:monospace,monospace">COMMON_EXTRA_OECONF_append_pn-apache2 =3D &quot;--e=
nable-http2&quot;</span></div><div><br></div><div>in local.conf ?<br></div>=
<div><br></div><div>Thanks,</div><div>S<br><br></div></div>

--0000000000008185e50571d6e4d1--
