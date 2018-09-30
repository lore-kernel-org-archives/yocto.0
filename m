Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B1DEE00ADF; Sun, 30 Sep 2018 04:50:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.46 listed in list.dnswl.org]
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC786E0093B
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2018 04:50:21 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id m26-v6so3872240uap.2
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2018 04:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Hys/I/3912KbqV3iCr1EreH/khF+19WlwMDZqPPAgic=;
	b=P0Ci3n83ac7uiXvGZzSR6CPKXtQNHc0a9gfEWsB6A9bVZ6GaM+3NI3AmoPe2kNCarW
	/leJT7rmm34r06rX9Vl4pG+O3IIgmkUNvvAHzXCR5Kve2qqr3JY9KBaf/ZQbdZwRJDjN
	e1mYHPNdIrpBYUCWOQpKIvR+k8tJ2+oBFTCXOHGQETAPEnQ8anVTfIeg34g3S38QpyHq
	pLkbSxZC9Ne1YLvhiGJYIRENdFCURBw4yUFydMPgwNqAnR/e8FyzHe8D3j3qtiwA++xf
	3Os2ouAVxqXdlyesA5HU0AyEFIodHrGfYHleuVE8z1Bxh6qT8+PlfZwvl4KX8/fmaSDL
	rxlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Hys/I/3912KbqV3iCr1EreH/khF+19WlwMDZqPPAgic=;
	b=lhhorj7TI4V6ZHyB9/Q6ZVgNAOPsbOZHSSpzoNf6IfHn240xogK+bYITFp2V5lKXnN
	pL0fYCVvEWicRlz4PjGY+nsyrNUWiXBbYYE+XZTRc9XJXhhhKL6i/y7cpjfXd6y4VkRn
	AcBD8Op051NMUvj5ak4WHc4htFKWovvwKEpuEuqsO88tLwK1k2KMvFJ/8k3E+TqmnULb
	1VB4XNETtMOT7btWstm04Fe/vIc6xtRIjnO10ER/d9DLTncPB98F6ds9LdGaItmjEWfF
	vVJPWJgIQlep8HHKytV3D3zViTKkzkMfyPbZRCjF3KlWaQQRL9rpVqz8bp4HYc3RlfYp
	vOzw==
X-Gm-Message-State: ABuFfogToqktibOOSDhUKDKNv3xcFQ2AgkLvDzV/BFa4nLESkkST68+9
	W7+L1W9aEvJpuRZFhamIh6PLU5JFXGJjHLhL2ShVzQ==
X-Google-Smtp-Source: ACcGV63AyM1Zj3qY3EgmmVW460jdN7NXY0DnxAgukUwoCqA5B9/Zjkx1N6Ac7bvG/9k53i3QQdZcTmHxj2qk2fdpONM=
X-Received: by 2002:ab0:4d50:: with SMTP id
	k16-v6mr2798739uag.67.1538308220841; 
	Sun, 30 Sep 2018 04:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy2F4xXcjdHpLJxW2WW5qWz_seO37DJNuS4qtzuTQpSmA@mail.gmail.com>
In-Reply-To: <CAKRytNy2F4xXcjdHpLJxW2WW5qWz_seO37DJNuS4qtzuTQpSmA@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 30 Sep 2018 13:50:06 +0200
Message-ID: <CAKRytNz-WV0=+hUz-dmT+R25QFZDqPX368s6fCE_5=H7CKaR7A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] cannot apply misc_create_inode.c-label_rootfs.patch from e2fsprogs
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
X-List-Received-Date: Sun, 30 Sep 2018 11:50:23 -0000
Content-Type: multipart/alternative; boundary="0000000000000ef46a0577154b58"

--0000000000000ef46a0577154b58
Content-Type: text/plain; charset="UTF-8"

I'm still having the same issue. I really don't know if I can remove this
patch safely or not.
Is it required for selinux? If yes, why isn't working for my board imx6
with linux-imx?

Please help :(

thank you.

Il giorno gio 20 set 2018 alle ore 00:32 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> I have an iMX6 board with meta-freescale.
> I'm using yocto sumo with meta-security and I want to try to add
> meta-selinux (without meta-virtualization) to do some experiments.
>
> However, while building I receive this error:
>
> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt
> --quiltrc
> /home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/recipe-sysroot-native/etc/quiltrc
> push' exited with 0  Output:
> Applying patch misc_create_inode.c-label_rootfs.patch
> patching file misc/create_inode.c
> Hunk #1 FAILED at 979.
> frHunk #2 FAILED at 987.
> 2 out of 2 hunks FAILED -- rejects in file misc/create_inode.c
> Patch misc_create_inode.c-label_rootfs.patch does not apply (enforce with
> -f)
> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /home/ks89/git/poky/build/tmp/work/x86_64-linux/e2fsprogs-native/1.43.8-r0/temp/log.do_patch.62867
> ERROR: Task
> (virtual:native:/home/ks89/git/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_patch)
> failed with exit code '1'
>
> Is it safe to remove misc_create_inode.c-label_rootfs.patch without issues?
>

--0000000000000ef46a0577154b58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m still having the same issue. I really don&#39;t kn=
ow if I can remove this patch safely or not.<div>Is it required for selinux=
? If yes, why isn&#39;t working for my board imx6 with linux-imx?</div><div=
><br></div><div>Please help :(</div><div><br></div><div>thank you.</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">Il giorno gio 20 set 201=
8 alle ore 00:32 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gma=
il.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">I have an iMX6 board with meta-frees=
cale.<div>I&#39;m using yocto sumo with meta-security and I want to try to =
add meta-selinux (without meta-virtualization) to do some experiments.</div=
><div><br></div><div>However, while building I receive this error:</div><di=
v><div><br></div><div>ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command E=
rror: &#39;quilt --quiltrc /home/ks89/git/poky/build/tmp/work/x86_64-linux/=
e2fsprogs-native/1.43.8-r0/recipe-sysroot-native/etc/quiltrc push&#39; exit=
ed with 0=C2=A0 Output:</div><div>Applying patch misc_create_inode.c-label_=
rootfs.patch</div><div>patching file misc/create_inode.c</div><div>Hunk #1 =
FAILED at 979.</div><div>frHunk #2 FAILED at 987.</div><div>2 out of 2 hunk=
s FAILED -- rejects in file misc/create_inode.c</div><div>Patch misc_create=
_inode.c-label_rootfs.patch does not apply (enforce with -f)</div><div>ERRO=
R: e2fsprogs-native-1.43.8-r0 do_patch: Function failed: patch_do_patch</di=
v><div>ERROR: Logfile of failure stored in: /home/ks89/git/poky/build/tmp/w=
ork/x86_64-linux/e2fsprogs-native/1.43.8-r0/temp/log.do_patch.62867</div><d=
iv>ERROR: Task (virtual:native:/home/ks89/git/poky/meta/recipes-devtools/e2=
fsprogs/e2fsprogs_1.43.8.bb:do_patch) failed with exit code &#39;1&#39;</di=
v></div><div><br></div><div>Is it safe to remove misc_create_inode.c-label_=
rootfs.patch=C2=A0without issues?</div></div>
</blockquote></div>

--0000000000000ef46a0577154b58--
