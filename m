Return-Path: <mitch.skiba@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70378E0078A; Sun, 19 Oct 2014 11:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mitch.skiba[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4CF1E006EF
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 11:09:25 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id a1so3949409wgh.35
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 11:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=9UbAj+at194rZ/wIfkBIUrOpRbEZiJktYtm+FWLjc4M=;
	b=C6PAgpFMeyKooy1p4vFreNsSNBEIKv1PfcdfwOx1V2t3WZYRyL79B2jIhEU9ZEHlxz
	AU3VikH6qH0uPBCPcVGDyVQJ0rP+omMlfsRI2HYCAEoDQdDkgy57drUUuM25VOasCTmz
	uFtOaVO8YFH0OuFEOFlw1ztjEdRe0FhzFqBsyG+iroPZ93MjeUDjZIrrCoUiJG05fkvz
	SJbEjmXoQPuP8bkg70n/86WzmZHq03KFlXGJ2kl4SQZhecEVKT7r4P7lnih08EGmv64p
	dBnAdwGxV/CkUM0KP6LICUHmBWjwOkkrG8L2rYKXh7NatvmyCA/P99r1vA7um32iOWc4
	/FIQ==
MIME-Version: 1.0
X-Received: by 10.180.101.102 with SMTP id ff6mr14582048wib.34.1413742164309; 
	Sun, 19 Oct 2014 11:09:24 -0700 (PDT)
Received: by 10.217.5.7 with HTTP; Sun, 19 Oct 2014 11:09:24 -0700 (PDT)
Date: Sun, 19 Oct 2014 11:09:24 -0700
Message-ID: <CAP3LV0OBfM_S7cwr7tt9qae=m-iF6mvk-E65oromXk9EFnELQA@mail.gmail.com>
From: Mitchell Skiba <mitch.skiba@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 20 Oct 2014 08:11:05 -0700
Subject: Issues creating /dev/ nodes in an initramfs
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
X-List-Received-Date: Sun, 19 Oct 2014 18:09:29 -0000
Content-Type: multipart/alternative; boundary=f46d0418262081feb50505ca7f10

--f46d0418262081feb50505ca7f10
Content-Type: text/plain; charset=UTF-8

I've been building a kernel with an initramfs, by using INITRAMFS_IMAGE to
specify a recipe that generates an image as a .cpio.gz archive. I've been
having issues creating /dev/console (or any other device file) in the
image. (The 3.14 kernel panics if /dev/console is not a character device.)

It seems there is already a way to create dev nodes via the
IMAGE_DEVICE_TABLE and IMAGE_DEVICE_TABLES variables. However this
mechanism, through the makedevs utility, appears to require the building
user to have permission to call mknod. (Makedevs ignores the return code
from the mknod call, so it doesn't outright fail on the permissions error,
but device files will not be created.)

I've hacked around it in my image recipe by appending a step onto
do_rootfs, but I'm not too happy with the way I did it. It seems like the
proper way to fix this is to change the image commands in
image_types.bbclass. However, each image type would need a different way of
adding in the special files. (At this point I only care about cpio archives
for the initramfs.)


Does anyone have the current IMAGE_DEVICE_TABLE implementation working? (As
in, is there something that I have missed?)

I'm considering fixing this by changing the IMAGE_COMMAND_cpio function in
image_typyes.bbclass to generate a cpio archive with only the contents
described in IMAGE_DEIVCE_TABLE(S), then use the cpio utility's append mode
to add in the rootfs contents. (It is simpler to create a new archive with
a script than it is to append to an existing one, so I thought I'd let the
cpio utility handle the archive appending.)
Does this sound like a reasonable approach, and the correct place to fix it?

--f46d0418262081feb50505ca7f10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-family:arial,sans-serif;font-size=
:13px">I&#39;ve been building a kernel with an initramfs, by using INITRAMF=
S_IMAGE to specify a recipe that generates an image as a .cpio.gz archive. =
I&#39;ve been having issues creating /dev/console (or any other device file=
) in the image. (The 3.14 kernel panics if /dev/console is not a character =
device.)</span></div><span style=3D"font-family:arial,sans-serif;font-size:=
13px"><div><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div>It seems there is already a way to create dev nodes via the IM=
AGE_DEVICE_TABLE and IMAGE_DEVICE_TABLES variables. However this mechanism,=
 through the makedevs utility, appears to require the building user to have=
 permission to call mknod. (Makedevs ignores the return code from the mknod=
 call, so it doesn&#39;t outright fail on the permissions error, but device=
 files will not be created.)</span><div style=3D"font-family:arial,sans-ser=
if;font-size:13px"><br></div><div style=3D"font-family:arial,sans-serif;fon=
t-size:13px">I&#39;ve hacked around it in my image recipe by appending a st=
ep onto do_rootfs, but I&#39;m not too happy with the way I did it. It seem=
s like the proper way to fix this is to change the image commands in image_=
types.bbclass. However, each image type would need a different way of addin=
g in the special files. (At this point I only care about cpio archives for =
the initramfs.)</div><div style=3D"font-family:arial,sans-serif;font-size:1=
3px"><br></div><div style=3D"font-family:arial,sans-serif;font-size:13px"><=
br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Does an=
yone have the current IMAGE_DEVICE_TABLE implementation working? (As in, is=
 there something that I have missed?)</div><div style=3D"font-family:arial,=
sans-serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-s=
erif;font-size:13px">I&#39;m considering fixing this by changing the IMAGE_=
COMMAND_cpio function in image_typyes.bbclass to generate a cpio archive wi=
th only the contents described in IMAGE_DEIVCE_TABLE(S), then use the cpio =
utility&#39;s append mode to add in the rootfs contents. (It is simpler to =
create a new archive with a script than it is to append to an existing one,=
 so I thought I&#39;d let the cpio utility handle the archive appending.)</=
div><div style=3D"font-family:arial,sans-serif;font-size:13px">Does this so=
und like a reasonable approach, and the correct place to fix it?</div></div=
>

--f46d0418262081feb50505ca7f10--
