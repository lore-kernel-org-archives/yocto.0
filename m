Return-Path: <ron@ron-oakes.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD8EAE00DC7; Thu, 15 Dec 2016 12:50:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88977E00DC7
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 12:50:11 -0800 (PST)
Received: by mail-yb0-f176.google.com with SMTP id d59so33432228ybi.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 12:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ron-oakes-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=DRKx17izhLiOKBJ+LQqj5H1bPdTvEMmKIpw2yRrQ9jY=;
	b=vnlNjYjAQhAQs24FxLLvv9COmZ5Fe8QXNj68MYvpFhhgA0Uv7zimUfXsyJy1cdmz1L
	KXdrXchihqglWNhVHGdbXH2cHDxVTsHxCgZSgt+lnVil37l/QHH4goko6xf3zXB8Djkz
	xe2SGfZSPqhD5bv3yl8x6JrQ1eNUOkslqGSIALw67mhO5cavXtUoGDts3k2lfm3eKtlj
	xxjsrKmr0VJLbJs7zR20BHrNznCzrCb1cIE7GjtcaETaHPEBAbeF0g/XRXBNJVr185rt
	sgN2PW8MrzgDrnb9TlFXm6Qy4HeBTmRHUw7dsJ1hL2aa/1mzH83ZLPwiSnvly2wwdDEa
	VW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DRKx17izhLiOKBJ+LQqj5H1bPdTvEMmKIpw2yRrQ9jY=;
	b=tRGkTul6U+yEKIuPS0WeDGUldtmEf+JSx8Qy6ifVAKjxexXBn1sIjqEgjj943vNrOy
	XgIGqp1Hf472hof9AEiotgl2SbqjasxZDtFFrvtz6dz3bqGIAz55TxSnM/fyIeuNZYRf
	j/8++VDpSF49KOC6T4PrlgirhmCk/9zzRh4H/GtK24QIgdRC6znZfIr0ztwU1I1qvpix
	swmZz2b3W1l8pAZQR1gWuoyVDGxszS9idZScW24NMWvqFuVOyqRcSt7HjuV6qYpQ5znq
	fm/zmQygu6UmPHkj85Uo4e8OHmxHR9OeGKpeLy32zKuKYedlPl/sNmVm1TmoWYOx1NNp
	XKyQ==
X-Gm-Message-State: AIkVDXIIU6t5g+wXwohpF0bXlnigRhnQEAgMHw9+pP4DmrH4KoEheoa+5+BCznU+gifOxkElPcTtaDeub9sHzg==
X-Received: by 10.37.111.84 with SMTP id k81mr2881620ybc.141.1481835010253;
	Thu, 15 Dec 2016 12:50:10 -0800 (PST)
MIME-Version: 1.0
From: Ronald Oakes <ron@ron-oakes.us>
Date: Thu, 15 Dec 2016 20:49:59 +0000
Message-ID: <CADh9ykGqNjxchZcRF2K8ikgnk-q4w7n0wk0cMwTaF38oVdz+pw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Multiple Projects from the same build directory
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
X-List-Received-Date: Thu, 15 Dec 2016 20:50:15 -0000
Content-Type: multipart/alternative; boundary=001a11488ef6673b8b0543b899cf

--001a11488ef6673b8b0543b899cf
Content-Type: text/plain; charset=UTF-8

I'll admit I'm being a bit lazy. I have two related projects, will call
them A and B. B is dependent on A's layers and adds its own. So far, there
have been no issues with just building them in the same directory since
they have separate image recepies.

However, I'm shortly going to be needing to create different fstab files
for each, as the two will have different disk configurations. But, if I
have two conflicting .bbappend files each specifying a fstab, only one will
get used.

So, is there a way to either specify in the image recepie or elsewhere
which should be used, or do I need to just create a new build direcory with
 the different set of layers for project A.

Ron O

--001a11488ef6673b8b0543b899cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I&#39;ll admit I&#39;m being a bit lazy. I have two related projects, will =
call them A and B. B is dependent on A&#39;s layers and adds its own. So fa=
r, there have been no issues with just building them in the same directory =
since they have separate image recepies.=C2=A0<div><br></div><div>However, =
I&#39;m shortly going to be needing to create different fstab files for eac=
h, as the two will have different disk configurations. But, if I have two c=
onflicting .bbappend files each specifying a fstab, only one will get used.=
=C2=A0</div><div><br></div><div>So, is there a way to either specify in the=
 image recepie or elsewhere which should be used, or do I need to just crea=
te a new build direcory with =C2=A0the different set of layers for project =
A.=C2=A0</div><div><br></div><div>Ron O</div>

--001a11488ef6673b8b0543b899cf--
