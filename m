Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0557AE01431
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 06:54:06 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id h2so870051oag.38
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iExrylI12WAq/3usdseldmXjqmdeic13EB4AjQxvzPE=;
	b=xgOtQwaG5ZPbxnvd/O9aX1S8yfGe9murs+OcN21cigFS0p7sRD+OcL8Lx1LMSHjal6
	7TtxC3903R/JjOnVnLnYbjFR2k9/AFgR2V3K3n/fN7GvCquHWZDYNyPsn+BEUkdkpUAA
	jUMApY3lIYlTpiWh7qBj8bDA3BqdWsNeT3uvDu/AuOwblhOtaBX/6oCD9MVwAGP9Dw8Y
	baqgec/6YdN/dFfJ3Scd5FJ6F6jww9RAifK3HXdOq78hh5SJ6c2QnRWOvgU3m8dLULEd
	D3Kwdb/gzfFF0Lrgq4ScY7wkRg2XP1D6+E8bzqKFsWISIgyTX6bsXsXmPLK2q1g47R2+
	aNrA==
MIME-Version: 1.0
X-Received: by 10.60.52.165 with SMTP id u5mr57723572oeo.15.1375106045698;
	Mon, 29 Jul 2013 06:54:05 -0700 (PDT)
Received: by 10.182.221.5 with HTTP; Mon, 29 Jul 2013 06:54:05 -0700 (PDT)
Received: by 10.182.221.5 with HTTP; Mon, 29 Jul 2013 06:54:05 -0700 (PDT)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
Date: Mon, 29 Jul 2013 19:24:05 +0530
Message-ID: <CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Cleaning dependent package
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
X-List-Received-Date: Mon, 29 Jul 2013 13:54:07 -0000
Content-Type: multipart/alternative; boundary=001a11330af461e9df04e2a6d3d3

--001a11330af461e9df04e2a6d3d3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

Is it possible to clean any dependent package from some other recipe?

As an example-

=93bitbake core-image-minimal.bb=94 will build u-boot and linux package as =
a
part of dependent package. Is it possible to clean u-boot and linux by
making changes in core-image-minimal.bb recipe?

Thanks and Regards
Navani Kamal Srivastava

--001a11330af461e9df04e2a6d3d3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<p>Hi,=A0</p>
<p>Is it possible to clean any dependent package from some other recipe?</p=
>
<p>As an example-</p>
<p>=93bitbake <a href=3D"http://core-image-minimal.bb">core-image-minimal.b=
b</a>=94 will build u-boot and linux package as a part of dependent package=
. Is it possible to clean u-boot and linux by making changes in <a href=3D"=
http://core-image-minimal.bb">core-image-minimal.bb</a> recipe?</p>

<p>Thanks and Regards<br>
Navani Kamal Srivastava</p>

--001a11330af461e9df04e2a6d3d3--
