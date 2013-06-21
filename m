Return-Path: <vishal284@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7BCE005B3
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:25:22 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id eg20so7065687lab.5
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KzlxcsJca9CZeC7vYtF9IA22dXNtWuxmBjjBJWbjKE4=;
	b=GkcPWWnEXAVFB6QJB2W/ScCulaQHgDq3FcJdhdsWb1jbf31wx8m+eJwigqVHWKY/No
	KWDf8mMMWvaIcaLLtMh8EF1p3FMNDy1IlJ1G1jXALnOfsrXmoeJ77qrfnR9RoMmf7Lr7
	QgYwB1U43tS1rK9nlN3jdBwLCcEAcnn0ldN22I/UU1MVqJQ1YZuQMkmqlTT+m/k7DCBx
	64Eyw78/9p9cYQ1Di1ayeSin5XNj3gDOvtygWCC7ehcDDrArtssDKumwOuiMVlTwF4td
	+n5t7Zf+Th5Y0o6P8up8J343QtSY7PkYObjmpenbQ2zIau4qG4SHRHmyAV7A78Pf9Z7e
	C8Vg==
MIME-Version: 1.0
X-Received: by 10.112.135.99 with SMTP id pr3mr7471749lbb.23.1371817521468;
	Fri, 21 Jun 2013 05:25:21 -0700 (PDT)
Received: by 10.112.69.33 with HTTP; Fri, 21 Jun 2013 05:25:21 -0700 (PDT)
Date: Fri, 21 Jun 2013 08:25:21 -0400
Message-ID: <CAMCr30FeRyQG4wHJuN-=VTK8DyNSg9x7MFA9aJCU3Ng1eWHJBA@mail.gmail.com>
From: Vishal Jain <vishal284@gmail.com>
To: yocto@yoctoproject.org
Subject: Permission denied while accessing qmake of meta-toolchain-qte
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
X-List-Received-Date: Fri, 21 Jun 2013 12:25:24 -0000
Content-Type: multipart/alternative; boundary=089e01182dee105c4804dfa9288e

--089e01182dee105c4804dfa9288e
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I need to compile Qt Code for Yocto image.
I have installed meta toolchain using

bitbake meta-toolchain-qte

It has created the SDK in

../meta-toolchain-qte-1.0-r7/sdk/image/poky/1.3.2/sysroots .....

Now i am trying to build qt code for my Yocto image as :

source ..../poky/1.3.2/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi
qmake

but for qmake, it throws me error as:
qmake - permission denied

I tried both from user and root. Could you please let me know if there is
some permissions to be changed.


-- 
Thanks & Regards,
Vishal Jain

--089e01182dee105c4804dfa9288e
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi,<div><br></div><div>I need to compile Qt Code for Yocto image.</div><div>I have installed meta toolchain using</div><div><br></div><div>bitbake meta-toolchain-qte</div><div><br></div><div>It has created the SDK in</div>
<div><br></div><div style>../meta-toolchain-qte-1.0-r7/sdk/image/poky/1.3.2/sysroots .....</div><div style><br></div><div style>Now i am trying to build qt code for my Yocto image as :</div><div style><br></div><div style>
source ..../poky/1.3.2/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi</div><div style>qmake</div><div style><br></div><div style>but for qmake, it throws me error as:</div><div style>qmake - permission denied</div><div style>
<br></div><div style>I tried both from user and root. Could you please let me know if there is some permissions to be changed.</div><div><br clear="all"><div><br></div>-- <br>Thanks &amp; Regards,<br>Vishal Jain
</div></div>

--089e01182dee105c4804dfa9288e--
