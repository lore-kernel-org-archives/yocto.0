Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF90AE00BB3; Wed, 19 Sep 2018 15:32:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
	[209.85.222.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 232D0E00B4C
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 15:32:17 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id i4-v6so3562168uak.0
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 15:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=S48WgVjV+5FeHcUq8EDOvb+eDtUJw7vEkXD2STHu8YI=;
	b=SBjtrzJ71ih8nnz/WIkO4/GNCiDjKYXZnrCrz9ZSAd9CjAdt0jsOijDN2+9+TegC7f
	+WEf/JawvcMxRCdrx7Y+kuuTjG3W4eE6RRdl3N+yf29puUrZdIGKRUsLFio3fc7nh4Fz
	HFhcg2XXEO7BNwaHC5F/OKDIBU47IomemlTObvAFCYJa9mAIErRLmLjPmFbTaV9WP80/
	Z1HC/j0DpTItilERjtSVSXOo6xs+OR1U+R9YRjKUt8xyT8CvT3Vx7AjlhXzU4MceRWHe
	74GSbsXlkIrqkwuM6ZlfckXoBK8VEZEJe2lTtWyGvDyECnUCrMB+wGYKSeiWL8KrJC11
	b18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=S48WgVjV+5FeHcUq8EDOvb+eDtUJw7vEkXD2STHu8YI=;
	b=DN7yUzHZI/HP4tCKvlWdRcFtmVP357RbyEU3mQ8CY9QSzgmhgERQ4RuaySx4QpjWL/
	wPX37tTvDUiya8zOFc9g9WmE6TM0jGBcY/60kJiAeoAC8Nw1LTa2pbWsyFCcaW61zIMp
	r8adqNI4qr/qstimW2uqSyR29jQRG7DItcxqWyfDdkNMvIRk1Revb0gcutpL+rz03nqU
	sKvqIU5uL/fixBTZJoRC748jPUDenMGWInsOeJOIG9E+lkuiqQJpd7TwFNd8/BB3PYjx
	G2/1a7XgioVwMcaJtVNpbygSCr25taBVI6A9QYVXg5aOvQE94lvRuUVYeH3fSjAEPXPU
	8wMQ==
X-Gm-Message-State: APzg51BdFegbHQazGBOXHPTRt76N6p/E8zd8W0Zs+ZIQnuTiWaWEw3tg
	To3iLpUfeKKA/SnENheHsKytoB9aiuLl/uNQ3oxiwQ==
X-Google-Smtp-Source: ANB0VdaACQuZuiiFPb446K+hJxO4dLVuYRD9iMOy2YAEh3nDrIicBqkFSvZcflL08Hski9Md5rZYEYoM6XGPMzUyLOg=
X-Received: by 2002:ab0:590d:: with SMTP id
	n13-v6mr12664092uad.123.1537396335835; 
	Wed, 19 Sep 2018 15:32:15 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 20 Sep 2018 00:32:04 +0200
Message-ID: <CAKRytNy2F4xXcjdHpLJxW2WW5qWz_seO37DJNuS4qtzuTQpSmA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-selinux] cannot apply misc_create_inode.c-label_rootfs.patch from e2fsprogs
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
X-List-Received-Date: Wed, 19 Sep 2018 22:32:17 -0000
Content-Type: multipart/alternative; boundary="00000000000079fe6c057640fa73"

--00000000000079fe6c057640fa73
Content-Type: text/plain; charset="UTF-8"

I have an iMX6 board with meta-freescale.
I'm using yocto sumo with meta-security and I want to try to add
meta-selinux (without meta-virtualization) to do some experiments.

However, while building I receive this error:

ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt --quiltrc
/home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch misc_create_inode.c-label_rootfs.patch
patching file misc/create_inode.c
Hunk #1 FAILED at 979.
frHunk #2 FAILED at 987.
2 out of 2 hunks FAILED -- rejects in file misc/create_inode.c
Patch misc_create_inode.c-label_rootfs.patch does not apply (enforce with
-f)
ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/temp/log.do_patch.62867
ERROR: Task
(virtual:native:/home/ks89/git/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
failed with exit code '1'

Is it safe to remove misc_create_inode.c-label_rootfs.patch without issues?

--00000000000079fe6c057640fa73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have an iMX6 board with meta-freescale.<div>I&#39;m usin=
g yocto sumo with meta-security and I want to try to add meta-selinux (with=
out meta-virtualization) to do some experiments.</div><div><br></div><div>H=
owever, while building I receive this error:</div><div><div><br></div><div>=
ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: &#39;quilt --qui=
ltrc /home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.=
8-r0/recipe-sysroot-native/etc/quiltrc push&#39; exited with 0=C2=A0 Output=
:</div><div>Applying patch misc_create_inode.c-label_rootfs.patch</div><div=
>patching file misc/create_inode.c</div><div>Hunk #1 FAILED at 979.</div><d=
iv>frHunk #2 FAILED at 987.</div><div>2 out of 2 hunks FAILED -- rejects in=
 file misc/create_inode.c</div><div>Patch misc_create_inode.c-label_rootfs.=
patch does not apply (enforce with -f)</div><div>ERROR: e2fsprogs-native-1.=
43.8-r0 do_patch: Function failed: patch_do_patch</div><div>ERROR: Logfile =
of failure stored in: /home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsp=
rogs-native/1.43.8-r0/temp/log.do_patch.62867</div><div>ERROR: Task (virtua=
l:native:/home/ks89/git/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43=
.8.bb:do_patch) failed with exit code &#39;1&#39;</div></div><div><br></div=
><div>Is it safe to remove misc_create_inode.c-label_rootfs.patch=C2=A0with=
out issues?</div></div>

--00000000000079fe6c057640fa73--
