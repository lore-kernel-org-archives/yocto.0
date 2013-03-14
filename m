Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A856CE01460
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 10:44:50 -0700 (PDT)
Received: by mail-qe0-f48.google.com with SMTP id 9so1403888qea.21
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 10:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=E04v/ZtRsUwOaiO7+4CHTDpNd7eyknQK3ODfXl/RVe8=;
	b=jL5jZPv1b7W6AtLpA/XcTlET88jb0wMbIaent0Od1hXba9Tl/qJBZt9E5zFucw20Rr
	TrVLbP+DdRq4ZnL1epzfkGCZcHyGykWxsJYcAyfeoJI7r/weXo7JBDRq67o7Jy/uoxLg
	WTDvoVd80vSORxqOZdFhjMWDtAtQkPTQHMJxvSFRp+M6cOciRGjQej4OATgx2uJpXSsr
	kZWc1RvIHZAx1gyW/iWy9V2yyFiG+vclNAIwcZGakQz3Zggr83b0lWGy4GF2zQbgP+IZ
	8iTBIzYL+WkGxLvdWyMQ+sN/XflX51TfvStlCGd/gAXQT/bKgGY9J4irrzW46qfFLLOx
	oOiQ==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr3603727qah.81.1363283090005;
	Thu, 14 Mar 2013 10:44:50 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Thu, 14 Mar 2013 10:44:49 -0700 (PDT)
Date: Thu, 14 Mar 2013 18:44:49 +0100
Message-ID: <CAFyqS9ppjD1m69VrUOZVeS+D5Pz=GB96erjLQ-7NyDZd=zVq3A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Using image_types_uboot.bbclass
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
X-List-Received-Date: Thu, 14 Mar 2013 17:44:50 -0000
Content-Type: multipart/alternative; boundary=20cf3074b4664ee4b204d7e6141d

--20cf3074b4664ee4b204d7e6141d
Content-Type: text/plain; charset=ISO-8859-1

Anyone that could explain how to take use of this excellent class ;)
I have a custom image recipe and I would like the resulting image to be
massaged by mkimage.
I can see that this class is exporting an oe_mkimage() function, but how
should I make sure it is called from my recipe?
I guess I need to inherit from it, but how to tell the image factory to
call oe_mkimage() after creating the .gz image file?

Hans

--20cf3074b4664ee4b204d7e6141d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Anyone that could explain how to take use of this excellent class ;)<br>I h=
ave a custom image recipe and I would like the resulting image to be massag=
ed by mkimage.<br>I can see that this class is exporting an oe_mkimage() fu=
nction, but how should I make sure it is called from my recipe?<br>
I guess I need to inherit from it, but how to tell the image factory to cal=
l oe_mkimage() after creating the .gz image file?<br><br>Hans<br>=A0 <br>

--20cf3074b4664ee4b204d7e6141d--
