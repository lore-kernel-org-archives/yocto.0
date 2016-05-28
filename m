Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8059BE00EAF; Fri, 27 May 2016 23:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FADE00EA4
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 23:08:31 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id 65so10243543lfq.1
	for <yocto@yoctoproject.org>; Fri, 27 May 2016 23:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xnrKJUxjYJDiZyi2lR87PrhwTa7FkR7G2D8FWpvklbk=;
	b=shwQ4azQA7F4OKWHcgGYDIxtyFR4M+zJUWxhhOr9STQ7hL6AGkk2YzyAWUPlOqVoLS
	j9Mpnlz1cc1wM4Zk/+5GPCuEud9HswKu1aeYQVBVFptvXcpug4bpVv5s8H6eYc7CHyhQ
	UnnayF703baD8FDjRdxyWSuX9Woa8Q/A6onnNWf3xCJa0wvBBmKApj0ZHkcSyeyMQITU
	O12KO4xmxy4E5dWxERTmNojV39zvU+FvjdhdqsVdMoe+hBtby9u2lXIsHzMCLWIlYOGd
	we5mjiDbwcoTJOoKfC4sEM5jS/HnQpsdQI1yPEikR2Y0OjAjvCixJpjVyNst1/Duv6VR
	SeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xnrKJUxjYJDiZyi2lR87PrhwTa7FkR7G2D8FWpvklbk=;
	b=I+g7Cn89U83X8+be1RDtIbIf7QqDuvuEbfKHd6rgAHm1nMcbiL31aJEzNJfnDBfiGd
	hfTmsfNL91+Lrf4DIqHT1h4FUhgAvLxOrKVhBYHswA9eE8OvtIMYrBy7RQX8ITLB0iM4
	GtYEaU9irojLHRpShxwBALGZ7WPwWVvWc3Oo9eV9EZ9hGsN+XP/1QGbPzeX3MhNOLCTG
	9HpE9JYJ/yE8qJvrJ/RQt3Uoh7e703XoIMtBl2zJN+0JR0LbRFvDY0JOd2Zf2r3E1oWN
	r/AmxKFGpjw4kYC4Gxk539P60inFBpqtEdB4OV0bhoKENKPiKW6iF4zOBp0LWliM+nIU
	zLxQ==
X-Gm-Message-State: ALyK8tL6ICnjO9ZzVYpu4TXASpxfC8wKxmiz68aWYA4IBi7XAUAKg8Gr1Wv6lMJfykylvl8f+YQXw6jhx9W2ig==
X-Received: by 10.25.208.137 with SMTP id h131mr5676531lfg.215.1464415709140; 
	Fri, 27 May 2016 23:08:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.42.132 with HTTP; Fri, 27 May 2016 23:07:59 -0700 (PDT)
In-Reply-To: <a153850802674ed7beeb5ed23ff56369@nalasexr02c.na.qualcomm.com>
References: <402820becd8447d1a6740c206eeab042@nalasexr02c.na.qualcomm.com>
	<CAMKF1sqt2QLtiesu7A7Q8XXxNDWZywwFFb+-yvsXbYYZa_iG9w@mail.gmail.com>
	<a153850802674ed7beeb5ed23ff56369@nalasexr02c.na.qualcomm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 May 2016 09:07:59 +0300
Message-ID: <CAMKF1soJo3dYv5rAG6PguiVmyMkj2JS=TjBtOp=S46qvJ==LAQ@mail.gmail.com>
To: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: On target gdb support for multiple architectures?
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
X-List-Received-Date: Sat, 28 May 2016 06:08:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, May 28, 2016 at 1:33 AM, Stroz, Glenn <gstroz@qti.qualcomm.com> wro=
te:
> In this case there is not. It appears as if the aarch64 binary gets
> priority.
>
>
>
> root@qcom-bsp:/# find -name gdb
>
> find: ./proc/7639: No such file or directory
>
> ./usr/share/gdb
>
> ./usr/bin/gdb
>
> find: ./sys/kernel/slab/L2TP/IPv6: No such file or directory
>
> find: ./sys/kernel/slab/L2TP/IP: No such file or directory
>
> root@qcom-bsp:/#
>
>
>
> /usr/share/gdb is a folder
>
>
>
>
>
> The image file has the following:
>
>
>
> IMAGE_INSTALL +=3D "gdb"
>
> IMAGE_INSTALL +=3D "lib32-gdb"
>
>
>
> Ideally we would like one binary that is capable of debugging both

Keep in mind that mutlilib was a adhoc solution to keep running 32bit softw=
are
on 64bit arches. So minimally all you get is a 32bit runtime which is capab=
le of
doing the same. Since these programs are debugged well and are supposed to =
run
out of box due to there legacy, to have multllib tools has less value.

having said that, you can add --enable-targets=3D<options> for gdb and
binutils as well
to get some capabilities to debug the system.

> architectures, but two binaries would be a short term workaround.
>
>
>
> -Glenn
>
>
>
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Friday, May 27, 2016 12:20 AM
> To: Stroz, Glenn <gstroz@qti.qualcomm.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] On target gdb support for multiple architectures?
>
>
>
> There should be two gdb executables on your target.
>
> On May 26, 2016 3:34 PM, "Stroz, Glenn" <gstroz@qti.qualcomm.com> wrote:
>
> Hello,
>
>
>
> We=E2=80=99re trying to setup our target for onboard debugging. We have m=
ultiple
> architectures being built with multilib. An armv7 variant which is 32 bit
> and an armv8 variant which is 64 bit. We would like the gdb installed in =
the
> image to support both architectures. Right now, even when adding both gdb
> and lib32-gdb to the image we see it only supports aarch64.
>
>
>
> #
>
> # Multilib configuration
>
> #
>
> # This sets any packages preprended with lib32- to be built with
>
> # the armv7a tuning (32 bit) instead of 64 bit aarch.
>
> #
>
> require conf/multilib.conf
>
> MULTILIBS =3D "multilib:lib32"
>
> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a-neon"
>
>
>
> When adding lib32-gdb and gdb to image:
>
> (gdb) set architecture
>
> Requires an argument. Valid arguments are aarch64, aarch64:ilp32, auto.
>
>
>
> When adding only lib32-gdb to image:
>
> (gdb) set architecture
>
> Requires an argument. Valid arguments are arm, armv2, armv2a, armv3, armv=
3m,
> armv4, armv4t, armv5, armv5t, armv5te, xscale, ep9312, iwmmxt, iwmmxt2,
> auto.
>
>
>
> Is there any method of getting the build system to combine the two lists =
of
> architectures into one binary that supports them all?
>
>
>
> Thanks,
>
> Glenn
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

