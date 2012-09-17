Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9953CE01351
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:55:50 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so5758406qcs.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 06:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EWf1Hs8MkdJ5yUljBRxWaqNlDkFoBsslz14Bo5GlG9g=;
	b=ar55lUTspx34pgF+1Hc0ygf9+Xi9ENX5lQqbtbMa35fPRLWV/g1amN4GiuGOcBNDoB
	tPZILVg/hdgQXl/hNdXpwcIszj5HTYeKiX4EldA/R5fAUTwvZZ/UW+P1xjMQ6ZVnY8d5
	kmtYQ9amLSjuS0A4d0eCU/z32pgO43NwdhKBBejLnw5ufhZMTLjvOlkQm6uOFQ93lL62
	KSMmTvhAT3APvCWb8+tdnTbIMWCbbG3rbHvjuvhHuU+zhYPnZFsR/CJOzwOdOqU0+2+E
	gF/pLEs6v7Q22KSjJJ2W4gCOKTc2iLahpOdqkbqAURB4CUEOAyInjsaD7yikPV84vIZp
	G6EQ==
MIME-Version: 1.0
Received: by 10.224.1.72 with SMTP id 8mr18626677qae.76.1347890147926; Mon, 17
	Sep 2012 06:55:47 -0700 (PDT)
Received: by 10.224.67.139 with HTTP; Mon, 17 Sep 2012 06:55:47 -0700 (PDT)
Date: Mon, 17 Sep 2012 14:55:47 +0100
Message-ID: <CAB3sqtYJJFxPFNZZ1iR+paQD-AHO37=3_RXAsbVmkBQWHobp_Q@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: Autotools CFLAGS & LDFLAGS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Sep 2012 13:55:50 -0000
Content-Type: multipart/alternative; boundary=20cf3074b15476a0c804c9e62177

--20cf3074b15476a0c804c9e62177
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

What is the easiest way to add nonstandard directory paths for libraries
and header files in a recipe that inherit autotools and pkgconfig?

Regards,
Tarek

--20cf3074b15476a0c804c9e62177
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<div><br></div><div>What is the easiest way to add=A0nonstandard dir=
ectory paths for libraries and header files in a recipe that inherit autoto=
ols and pkgconfig?</div><div><br></div><div>Regards,</div><div>Tarek</div>

--20cf3074b15476a0c804c9e62177--
