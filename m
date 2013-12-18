Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42436E00803
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 15:56:39 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id ar20so515598iec.2
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 15:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/NC4iwcpqTUYASwDgxxmnhqjE0RY2vZXS2PA0Y1bgnQ=;
	b=Zbw38QLtjoeupAt+1cpjCDgORI2es9H38DTjD4Ppq2xZakE33WpGONHGNhxoCtBlC0
	5DOSZujqQJJUnE05mkhokeY5REGJbZ83Z9xNWeoIgL8wafURe6y3YKuq2Xqu7vZIrfJ6
	TLSZO+9kcmpg2XUls8qHJCgX2CVRtTXmZ7L+oh1eHDY3XN9WMhwAsqlXNn4fKfrtmwWO
	KnXNwk61F98MNB0QRe/FThcFqK6a88rMi5jziCjbWnOpZ+R3hRrywOltv5PIMp9Xt6zE
	AzmiNwOuV9riGMBWFuR0pIHhl2AGC3xPmXU76eWCDZqmWT108+a+AuN8dtwyu/xSkM27
	nVPQ==
MIME-Version: 1.0
X-Received: by 10.50.66.195 with SMTP id h3mr153358igt.41.1387410999358; Wed,
	18 Dec 2013 15:56:39 -0800 (PST)
Received: by 10.64.228.199 with HTTP; Wed, 18 Dec 2013 15:56:39 -0800 (PST)
In-Reply-To: <CAJGS5=HtGV8Fs08F3NQMmHbxUOqcGrH7OveP5CvOg9EPZj4GoA@mail.gmail.com>
References: <CAJGS5=HtGV8Fs08F3NQMmHbxUOqcGrH7OveP5CvOg9EPZj4GoA@mail.gmail.com>
Date: Wed, 18 Dec 2013 15:56:39 -0800
Message-ID: <CAJGS5=H3_JFrkXt5knk7cz5m4L-L5FcZsz6Sz=MeQn_74Ez6dQ@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Kontron CONFIG_I2C_KEMPLD support in Fish River Island 2? Or Crownbay?
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
X-List-Received-Date: Wed, 18 Dec 2013 23:56:40 -0000
Content-Type: multipart/alternative; boundary=047d7bdc10f2c63bc904edd7cb62

--047d7bdc10f2c63bc904edd7cb62
Content-Type: text/plain; charset=ISO-8859-1

Hit the send too early. My questions are: What kernel versions and what
BSPs of Yocto support the CONFIG_I2C_KEMPLD? We are using Linux Kernel
3.8.4 but we found a link saying KEMPLD is supported in a Linux kernel
version as high as 3.1.2.

Anyone out there know about this? (see below for first part)

---------- Forwarded message ----------
From: Bill Martin <billmartin544@gmail.com>
Date: Wed, Dec 18, 2013 at 3:54 PM
Subject: Kontron CONFIG_I2C_KEMPLD support in Fish River Island 2? Or
Crownbay?
To: yocto@yoctoproject.org


We are in need of enabling the CONFIG_I2C_KEMPLD  for a build for our
Kontron (architecture is x86).

We have been using the Crownbay BSP. But of course I did a google search
and found patches in the Linux kernel for allowing i2c_kempld. Also these
patches were associated with Fish River Island II.

I was under the impression that these names "Crownbay," "Fish River Island
II" and such were all part of Yocto. The patches I encountered were dated
earlier this year and I was assuming the Fish River Island II BSP for our
Dylan (9.0.2) build would support I2C

--047d7bdc10f2c63bc904edd7cb62
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hit the send too early. My questions are: What kernel vers=
ions and what BSPs of Yocto support the CONFIG_I2C_KEMPLD? We are using Lin=
ux Kernel 3.8.4 but we found a link saying KEMPLD is supported in a Linux k=
ernel version as high as 3.1.2.<div>
<br></div><div>Anyone out there know about this? (see below for first part)=
<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Bill Martin</b> <span dir=3D"ltr">&l=
t;<a href=3D"mailto:billmartin544@gmail.com">billmartin544@gmail.com</a>&gt=
;</span><br>
Date: Wed, Dec 18, 2013 at 3:54 PM<br>Subject: Kontron CONFIG_I2C_KEMPLD su=
pport in Fish River Island 2? Or Crownbay?<br>To: <a href=3D"mailto:yocto@y=
octoproject.org">yocto@yoctoproject.org</a><br><br><br><div dir=3D"ltr">We =
are in need of enabling the CONFIG_I2C_KEMPLD =A0for a build for our Kontro=
n (architecture is x86).=A0<div>
<br></div><div>We have been using the Crownbay BSP. But of course I did a g=
oogle search and found patches in the Linux kernel for allowing i2c_kempld.=
 Also these patches were associated with Fish River Island II.</div>
<div><br></div><div>I was under the impression that these names &quot;Crown=
bay,&quot; &quot;Fish River Island II&quot; and such were all part of Yocto=
. The patches I encountered were dated earlier this year and I was assuming=
 the Fish River Island II BSP for our Dylan (9.0.2) build would support I2C=
=A0</div>

</div>
</div><br></div></div>

--047d7bdc10f2c63bc904edd7cb62--
