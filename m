Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA655C3ABC3
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 03:42:49 +0000 (UTC)
Subject: Re: [yocto] Size of production os image
To: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
From: "Ashish Mishra" <emailaddress.ashish@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (106.222.201.197)
X-Originating-Platform: Linux Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 May 2025 20:42:43 -0700
References: <CAPJWBngDN4qT+9mXVdiDLQfZn+-fQ7YkWfdDp28g+DBLRpD85w@mail.gmail.com>
In-Reply-To: <CAPJWBngDN4qT+9mXVdiDLQfZn+-fQ7YkWfdDp28g+DBLRpD85w@mail.gmail.com>
Message-ID: <1013.1747107763159555423@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QL3cSJDAtzVTcFmPDN3s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 03:42:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65319

--QL3cSJDAtzVTcFmPDN3s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi ,

1) How much should be the size of RFS is not standard answer but depends on=
 packages you want to add on RFS

2) Consider RFS as bucket. The size of bucket will be based on whats inside=
 the bucket .
Hence two team can have very different size as their use case will be diffe=
rent

3) Just to give you an context , i just completed an project for Montavista=
 where
i was able to bring the RFS size from 800MB to 250+MB i.e around 70% size r=
eduction

4) How you do is depending upon what package you are adding , whats the alt=
ernate to existing package
then you go in deep of specific module to reduce their size

5) The good starting point will be to enable "buildhistory" in your custom =
build

6) An quick vies of the file you shared below are few starting points to he=
lp
You can evaluate them :
a) IMAGE_FEATURES:remove =3D " dbg-pkgs dev-pkgs "
b) Seems you are adding bash & zip both , you can shave only one on target
c) Remove VIM it can give you good saving
d) You can remove alsa from Machine & Distro feature if you don't want audi=
o
e) Do you really require cpp ,cpio , cmake on target
f) mariadb could be heavy
g) Looks like many file system tools are being added in RFS , you can look =
at them

It would be helpful to others if you share your image & installed-package f=
iles as that gives clear idea as to what is going in RFS

Thanks ,
Ashish

--QL3cSJDAtzVTcFmPDN3s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi ,</div>
<div>&nbsp;</div>
<div>1) How much should be the size of RFS is not standard answer but depen=
ds on packages you want to add on RFS &nbsp;</div>
<div><br />2) Consider RFS as bucket. The size of bucket will be based on w=
hats inside the bucket .<br />&nbsp; &nbsp;Hence two team can have very dif=
ferent size as their use case will be different&nbsp;</div>
<div><br />3) Just to give you an context , i just completed an project for=
 Montavista where <br />&nbsp; &nbsp;&nbsp; i was able to bring the RFS siz=
e from 800MB to 250+MB i.e around 70% size reduction&nbsp;</div>
<div><br />4) How you do is depending upon what package you are adding , wh=
ats the alternate to existing package&nbsp;<br />&nbsp; &nbsp;then you go i=
n deep of specific module to reduce their size</div>
<div><br />5) The good starting point will be to enable "buildhistory" in y=
our custom build&nbsp;</div>
<div><br />6) An quick vies of the file you shared below are few starting p=
oints to help&nbsp;<br />&nbsp; &nbsp;You can evaluate them :<br />&nbsp; &=
nbsp;a) IMAGE_FEATURES:remove =3D " dbg-pkgs dev-pkgs "<br />&nbsp; &nbsp;b=
) Seems you are adding bash &amp; zip both , you can shave only one on targ=
et&nbsp;<br />&nbsp; &nbsp;c) Remove VIM it can give you good saving&nbsp;<=
br />&nbsp; &nbsp;d) You can remove alsa from Machine &amp; Distro feature =
if you don't want audio&nbsp;<br />&nbsp; &nbsp;e) Do you really require cp=
p ,cpio , cmake on target&nbsp;<br />&nbsp; &nbsp;f) mariadb could be heavy=
&nbsp;<br />&nbsp; &nbsp;g) Looks like many file system tools are being add=
ed in RFS , you can look at them&nbsp;<br />&nbsp; &nbsp;</div>
<div>It would be helpful to others if you share your image &amp; installed-=
package files as that gives clear idea as to what is going in RFS </div>
<div>&nbsp;</div>
<div>Thanks , </div>
<div>Ashish <br />&nbsp; &nbsp;&nbsp;</div>

--QL3cSJDAtzVTcFmPDN3s--

