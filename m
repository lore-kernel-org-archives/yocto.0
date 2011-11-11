Return-Path: <js333031@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D2F3E0030B
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2011 11:37:19 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfk14 with SMTP id fk14so6527579vcb.35
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2011 11:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KOAhzbF/XuvlE/9Gxn9f4m1Zpajrgv9GAqfqz0ArRcY=;
	b=uMeEtjqrNMwaCIKfPXTr5iewHR+MtxdjXLxp+dsFXIqP94qXhfPj7rYbu4g057HJbc
	oRFgru63i1fUZYOzNUNnjJysjni0BaCkPQ+Q3hGSONW/DAb4a48YJGxxl+AbJXT1IG3p
	Xy2xINV5ydyOISVGGT6xoXVnMDeaJTtNu3W2E=
MIME-Version: 1.0
Received: by 10.52.22.226 with SMTP id h2mr23312023vdf.46.1321040239261; Fri,
	11 Nov 2011 11:37:19 -0800 (PST)
Received: by 10.220.205.138 with HTTP; Fri, 11 Nov 2011 11:37:19 -0800 (PST)
Date: Fri, 11 Nov 2011 14:37:19 -0500
Message-ID: <CAF6CgHwhhBJ05zK2A4YdddTDNZVeZ_is7G0V-09jMYMADLFeOQ@mail.gmail.com>
From: Jitendra Shekhawat <js333031@gmail.com>
To: yocto@yoctoproject.org
Subject: changing kernel config on a project built by Hob
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
X-List-Received-Date: Fri, 11 Nov 2011 19:37:20 -0000
Content-Type: multipart/alternative; boundary=bcaec501c53e31f75e04b17aa602

--bcaec501c53e31f75e04b17aa602
Content-Type: text/plain; charset=ISO-8859-1

Newbie here. I think I've looked at the relevant documents and couldn't
find how to do this.

What is the procedure for doing a kernel 'make menuconfig' on hob assisted
projects?

I created a simple project using following steps:
1. source poky-edison-6.0/oe-init-build-env
2. hob
3. configuration under hob:
 - Machine: atom-pc
 - Base image: core-image-minimal
 - Added openssh
4. save the image as test.bb
5. Baked the image in hob
6. Booted the result in Virtualbox after creating a bootable disk image,
etc.

I need to now modify the kernel by adding CP210x USB/Serial converter
driver.

What is the procedure for doing a 'make menuconfig' on this hob assisted
project?

Thanks.

--bcaec501c53e31f75e04b17aa602
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Newbie here. I think I&#39;ve looked at the relevant documents and couldn&#=
39;t find how to do this.<div><br></div><div>What is the procedure for doin=
g a kernel &#39;make menuconfig&#39; on hob assisted projects?</div><div>
<br></div><div>I created a simple project using following steps:</div><div>=
1. source poky-edison-6.0/oe-init-build-env</div><div>2. hob</div><div>3. c=
onfiguration under hob:</div><div>=A0- Machine: atom-pc</div><div>=A0- Base=
 image: core-image-minimal=A0</div>
<div>=A0- Added openssh</div><div>4. save the image as <a href=3D"http://te=
st.bb">test.bb</a></div><div>5. Baked the image in hob</div><div>6. Booted =
the result in Virtualbox after creating a bootable disk image, etc.</div><d=
iv>
<br></div><div>I need to now modify the kernel by adding CP210x USB/Serial =
converter driver.</div><div><br></div><div>What is the procedure for doing =
a &#39;make menuconfig&#39; on this hob assisted project?</div><div><br>
</div><div>Thanks.</div>

--bcaec501c53e31f75e04b17aa602--
