Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51A53E0172B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:30:23 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id n12so7685455wgh.23
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LLg8+68Z10HkYzYotUwFHANAUzLcsZ9CmssUJuQ5s4g=;
	b=K2kYndktfaWj/r32tFSp+fhteqhHXTfS9D+LwF8mPP4cla/JEnSuAjkQWsVm3kecg6
	Pdinv/KTWwgqxOL0yox7FJvCZhheAvvqBKL4csr2zxPSBlHA+19DnIc5ZnBwcnD4Sr2D
	4aPEChifSbwMyVVoxm3BkSEJ2PDgXAt+yv32PMf7/9mLdGKwVmsKOQ82W8LyUjKS56Jr
	gmPu4LCn8qE4BC7oPFvFO7QbWZTnQG1HZ8MEHhUgi+oGe+xFanhVI34qsfav9VQfy3oo
	8TIxe4ezqrLomFs9uACNI3mPwodhNpaT/e0zgiA+FFiSNDi0tzz/z0sFQIc0GSecWRWq
	nPZQ==
MIME-Version: 1.0
X-Received: by 10.194.82.33 with SMTP id f1mr120009wjy.83.1382430622385; Tue,
	22 Oct 2013 01:30:22 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Tue, 22 Oct 2013 01:30:22 -0700 (PDT)
Date: Tue, 22 Oct 2013 14:00:22 +0530
Message-ID: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How Do I add users in /etc/passwd in Yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 08:30:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

For some requirement I wante to add some new users in /etc/passwd .

I tried doing it in couple of way but none of it worked out well

I tried to patcth the /etc/passwd file but getting few errors while
bitbaking my image.

Paul Eggleton suggests me that patching /etc/passwd  file won't work

Then I tried doing it in below way

SRC_URI += "file://passwd"

do_install_append() {
install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd

                    install -m 0644 ${WORKDIR}/passwd ${D}${sysconfdir}/passwd
}

 With above method I am able to add new user to /etc/passwd file

but testing this image gives me trouble and now when I login to board
it is asking password.

Now would like to know what are the ways to add new users in
/etc/passwd file in yocto.

Thanks
Amit

