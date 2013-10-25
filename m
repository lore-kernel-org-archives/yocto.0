Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 928F5E0176D
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:17:08 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id ar20so6562784iec.28
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=u5HitjorhlEJlkFJHIsT3AcvREreHL6VIfH8yzx6Gvo=;
	b=dwEASlHiEUs1frI58U1JzD5FWqE5FBC01B+HP0B45cn9ofDn2e+FX8EgoenEpCwmF+
	RONlWxyKhrVb15H8iQxBoQTVhBVFWCvrAZQujd2O+1s9uSfBOtPhF+eo69aA5qkVUVqI
	TUgT5xRk6dSN39Ix2pwdfSEhfErRDe4PhlsUWeRPZJ6PgYKz1bydADFRXx+8/T+QS+G7
	Ou4frp9q7VlcPqIYyOcENwzgUFmePI3pViDUiGmRPChGXZ35tm+HNwJ6vFC3s56jd0MX
	66d90Eg+61DEuSF5RM3efJ65JsJ7/oJRR/xUCbjDqSUwusuKE+rTLDv4mxIJEe3rPLh6
	7jTg==
X-Received: by 10.50.87.36 with SMTP id u4mr2152047igz.40.1382707027625; Fri,
	25 Oct 2013 06:17:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 25 Oct 2013 06:16:47 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 25 Oct 2013 11:16:47 -0200
Message-ID: <CAMCfZKHWyKwJ3BquFk=hpRx7nrJN_rzbCRZvTeAFTj5FU6X7zA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: BAD_RECOMMENDATIONS / BAD_RECOMMENDS not working
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
X-List-Received-Date: Fri, 25 Oct 2013 13:17:09 -0000
Content-Type: multipart/alternative; boundary=089e0111d0d836034b04e990911c

--089e0111d0d836034b04e990911c
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm using dylan branch and package management is ipk.

I'm trying to remove qt-demo-init package from my custom image with
both BAD_RECOMMENDATIONS and BAD_RECOMMENDS variables but it is still being
installed on rootfs.
I've already did a cleansstate on my image recipe but no success.


I can use the ROOTFS_POSTPROCESS_COMMAND to remove the initscript from
/etc/init.d but it seems to be an workaround to get this working.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e0111d0d836034b04e990911c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I&#39;m using dylan branch=
 and package management is ipk.</div><div style><br></div><div style>I&#39;=
m trying to remove qt-demo-init package from my custom image with both=A0BA=
D_RECOMMENDATIONS and BAD_RECOMMENDS variables but it is still being instal=
led on rootfs.</div>

<div style>I&#39;ve already did a cleansstate on my image recipe but no suc=
cess.</div><div style><br></div><div style><br></div><div style>I can use t=
he=A0ROOTFS_POSTPROCESS_COMMAND to remove the initscript from /etc/init.d b=
ut it seems to be an workaround to get this working.</div>

<div><br><div><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br=
>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div></div>

--089e0111d0d836034b04e990911c--
