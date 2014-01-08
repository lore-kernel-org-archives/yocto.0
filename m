Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0251E00804
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 04:52:42 -0800 (PST)
Received: by mail-qc0-f169.google.com with SMTP id r5so1371732qcx.28
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 04:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CoZguBts+5qvkpUpKxZjRxIYva+nSdMLY4cky5mSq+o=;
	b=YcoWO+uG6zOxstQF0kXIUk9d8voZybe2fYsnaOGw15U/BUM0NrgLKprwxi7Rwj+9M2
	NrhCB40q14SQBMGzrBRF2q5a81tg0bniPQZgATnnSE0q0CtXoXruj2MHXkW5IX0pK/IJ
	mY0+oCZI3/dI98YdUg7puWNuCHA9uXtv048qJwrVX6Kok2o87C5iZRdbFdvqHGeoTeAc
	yUfCtRioMrLTRySSl1L5RBEu7dhafAN18kploedBiolw/YWcQ2WkQNHXqwyCC4Yk9J/9
	f7iFT6w+jvQN13HQerQNz48G2WtGFRIuZ7Dl9XXQKWWfubkKNCQEF+JRHqd5AklLCTYq
	Kutw==
MIME-Version: 1.0
X-Received: by 10.49.72.193 with SMTP id f1mr211705377qev.58.1389185562153;
	Wed, 08 Jan 2014 04:52:42 -0800 (PST)
Received: by 10.96.81.104 with HTTP; Wed, 8 Jan 2014 04:52:42 -0800 (PST)
Date: Wed, 8 Jan 2014 12:52:42 +0000
Message-ID: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: Smart PM for upgrade the full image
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
X-List-Received-Date: Wed, 08 Jan 2014 12:52:43 -0000
Content-Type: multipart/alternative; boundary=047d7b676af2f5b19404ef74f7b0

--047d7b676af2f5b19404ef74f7b0
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I have several targets deployed in multiple sites. Each target might  be
running  a different version of the product rootfs image. When I release a
new rootfs image I would like to use the smart command on each target at
the customer site to upgrade the software to the latest image. Going
through each package and install it separately is inefficient way of
handling the upgrade and I don't expect the customer to have the knowledge
for doing so.

What we really need is a smart command to compare the latest rootfs image
and install, remove or un-change packages based on what is currently
installed.

Can the smart command achieve that or do I need to write my own script?

Thanks,
-- 
*Tarek*

--047d7b676af2f5b19404ef74f7b0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I have several targets deployed=
 in multiple sites. Each target might =A0be running =A0a different version =
of the product rootfs image. When I release a new rootfs image I would like=
 to use the smart command on each target at the customer site to upgrade th=
e software to the latest image. Going through each package and install it s=
eparately is inefficient way of handling the upgrade and I don&#39;t expect=
 the customer to have the knowledge for doing so.</div>
<div><br></div><div>What we really need is a smart command to compare the l=
atest rootfs image and install, remove or un-change packages based on what =
is currently installed.</div><div><br></div><div>Can the smart command achi=
eve that or do I need to write my own script?</div>
<div><br></div><div>Thanks,</div><div>-- <br><div dir=3D"ltr"><i><font colo=
r=3D"#666666" face=3D"arial, helvetica, sans-serif">Tarek</font></i></div>
</div></div>

--047d7b676af2f5b19404ef74f7b0--
