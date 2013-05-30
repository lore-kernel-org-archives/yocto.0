Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF9CE01439
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:54:46 -0700 (PDT)
Received: by mail-ea0-f176.google.com with SMTP id k11so6157869eaj.21
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TAZxqAGZSSkfQRAHpP2zn5tP2dZA1LtubNCA7Udygrs=;
	b=MkeAp68IOJHAOOZX657cIaVd/YvLS2GI6YrwqRLcJdvbzcg6r5tZO7boywiuo11dpy
	VGL9pSa+4GHiheCqmHy90z2S+uk9pzQvoYMs6HdgQLitkd/UUf6sJQYj5rgCKImxKife
	WhhX/uVziQ2XHB5iUPGKfFGtS/hzHS+ngO0tM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=TAZxqAGZSSkfQRAHpP2zn5tP2dZA1LtubNCA7Udygrs=;
	b=KbkZDxZzvmvUEGuu1IUVpmO8W9Hh+bGE9e1HkVf1ycQRnn4SVIixP/6Hda9mKM//5A
	bP9/obd38Z6+xAqOwKhTS+rT/YxcTiNgMZivBv/oF1V1hhJmCi9E9juOgiGfvUn89TLO
	ajkxgj9A8dGZIPLp9FdYzaYgxDzbR2QGpfQoempw52mgTstr9lH4IuatsvF1XSef9l7E
	uqmgJZYKx2moHtmgLlCGRT/8BPdkJ0TC+RmQeHNX1PRtMdp94lh9ZhgypqhXLDrhkj1I
	eYJlAO5VyaDxUkXUOA8T1J1nyZEx6i7LjY/VPE8c7EPey5DHSNO+cTSB9JfRMT4AOTMe
	/MsA==
MIME-Version: 1.0
X-Received: by 10.14.207.131 with SMTP id n3mr8876860eeo.27.1369900484867;
	Thu, 30 May 2013 00:54:44 -0700 (PDT)
Received: by 10.223.85.153 with HTTP; Thu, 30 May 2013 00:54:44 -0700 (PDT)
In-Reply-To: <519CFF76.5020302@gmail.com>
References: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
	<CA+gsK-qmFq2NLcd4-AO=aRBC7q3W8fwRarLpnv9-WtS2TWFLtg@mail.gmail.com>
	<CAN0nBNisz3mG5mx3JAWHdGCuDmE7yYekdZgNXu4rH6dvJ9qp8g@mail.gmail.com>
	<519CFF76.5020302@gmail.com>
Date: Thu, 30 May 2013 00:54:44 -0700
Message-ID: <CA+gsK-qVMA-Fqzkp=aObzMoawmQtWJJiS6143Ose+wZu+MZLjQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "precipice.development" <precipice.development@gmail.com>
X-Gm-Message-State: ALoCoQnJoiq5yb+FWs+57SLyMct+SVJUxQHD9cLS0chnZOgDHDKer8hX83M8POwwwrfOjiS4S+sC
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT Install Issues
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
X-List-Received-Date: Thu, 30 May 2013 07:54:46 -0000
Content-Type: multipart/alternative; boundary=047d7b343926c76c8504ddeacf93

--047d7b343926c76c8504ddeacf93
Content-Type: text/plain; charset=ISO-8859-1

Jerry,

Sorry for the delayed response. I am catching up with my email while
traveling.

The minimal-dev images should not be giving you the error that you
mentioned in your original e-mail. They did not with the 1.2 Denzil
release, at least not for i586 and ARM (I did not try PPC or MIPS).
However, with the 1.3 Danny release the minimal-dev image for i586
exhibited that problem but it did not for ARM (again I did not try PPC or
MIPS).

I wanted to track the root cause a while ago but did not get around it.
Unfortunately, I do not have a solution at this point.

Rudi

--047d7b343926c76c8504ddeacf93
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Jerry,<div><br></div><div style>Sorry for the delayed resp=
onse. I am catching up with my email while traveling.</div><div style><br><=
/div><div style>The minimal-dev images should not be giving you the error t=
hat you mentioned in your original e-mail. They did not with the 1.2 Denzil=
 release, at least not for i586 and ARM (I did not try PPC or MIPS). Howeve=
r, with the 1.3 Danny release the minimal-dev image for i586 exhibited that=
 problem but it did not for ARM (again I did not try PPC or MIPS). </div>
<div style><br></div><div style>I wanted to track the root cause a while ag=
o but did not get around it. Unfortunately, I do not have a solution at thi=
s point.</div><div style><br></div><div style>Rudi</div><div class=3D"gmail=
_extra">
<br><br><div class=3D"gmail_quote"><br></div>
</div></div>

--047d7b343926c76c8504ddeacf93--
