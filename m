Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331D4E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 07:30:36 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id k10so3040532eaj.11
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 07:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VG5rSSo86eChLiFZiNhgLecag7I6yBmolEmZiWRMMHM=;
	b=FfXIOYpodg7QpfmMTqtYFWcIVMoMsufuJ/8BtH7UAFlbJB4rGBqV1JEEQDiAgLOpgu
	UCbW80LzN5mnKR/2u/j76kViZ/qPBtIa2Qz5vPYVEXPrCx2kYqo/XmZC6nT+HNNf9HY2
	H+CO76N1cJGzOlL5yYRC8hYdWtwvxy0sluGP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=VG5rSSo86eChLiFZiNhgLecag7I6yBmolEmZiWRMMHM=;
	b=OC4CUFSVXmnHEtQA5yXDk4hefCKJ5Ebc5CwKT1p+ZRXMDQ+eWixY57yZ4ZMMq30PlI
	H+TRcK2Hp6HrPmANVKs1m5glVtMeSYcDZKUVocDnrTV4PdvVVUak/toRSTgPUVACzNbm
	rudNyyUOzn1bKDKXH1F1kImMbyFPTe88MlUAm0MxV01MxoeO7r+vqhZeHIqbpbw6sOqI
	kKkViolmQLdRRH6IA7PqB9tXZOml2rJirFOJzpBGUGKZ9EH53EtJSPNJ1D2IkF/ipAhT
	tjwDnx4tmq4zRoqKC2K3Io2eleFJiExe3W/DRgFFw8mMgmJHIs/Zn2i535txt5t8AsNB
	FU3w==
MIME-Version: 1.0
X-Received: by 10.15.45.194 with SMTP id b42mr25512818eew.51.1373293834991;
	Mon, 08 Jul 2013 07:30:34 -0700 (PDT)
Received: by 10.223.143.202 with HTTP; Mon, 8 Jul 2013 07:30:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1307071507120.30670@oneiric>
References: <alpine.DEB.2.02.1307071507120.30670@oneiric>
Date: Mon, 8 Jul 2013 07:30:34 -0700
Message-ID: <CA+gsK-quhsGwZ3LqpqbfHUVKxoXZ9-GHukBXtxORiatycxNR1Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmNCJGYX4DOtuHQbLqqb2NG3G/duPkDx5V9QxQxUKhRhV8yymJCCYULNsMQUf395jxn1fEf
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: possible variations on building bootable SD card for BBB?
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
X-List-Received-Date: Mon, 08 Jul 2013 14:30:37 -0000
Content-Type: multipart/alternative; boundary=089e0160d0e235284d04e100e35a

--089e0160d0e235284d04e100e35a
Content-Type: text/plain; charset=ISO-8859-1

>   so -- short form of the question -- how many ways are there to build
> a bootable SD card for the BBB using different layers?



There are many ways to skin a cat. I created my own BeagleBone BSP layer
that builds u-boot and a 3.2 kernel. The idea being to demonstrate how to
create a BSP layer. The recipes pull the sources from the Arago Project git
repository and apply some patches. That may not be necessary anymore
because patches for the am33x may be upstreamed to respective projects by
now.

Rudi

--089e0160d0e235284d04e100e35a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
=A0 so -- short form of the question -- how many ways are there to build<br=
>
a bootable SD card for the BBB using different layers?</blockquote><div><br=
></div><div><br></div><div>There are many ways to skin a cat. I created my =
own BeagleBone BSP layer that builds u-boot and a 3.2 kernel. The idea bein=
g to demonstrate how to create a BSP layer. The recipes pull the sources fr=
om the Arago Project git repository and apply some patches. That may not be=
 necessary anymore because patches for the am33x may be upstreamed to respe=
ctive projects by now.</div>
<div><br></div><div>Rudi</div></div>
</div></div>

--089e0160d0e235284d04e100e35a--
