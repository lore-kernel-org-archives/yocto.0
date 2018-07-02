Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76969E010F4; Mon,  2 Jul 2018 04:57:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EB9E010D0
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 04:57:48 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id p11-v6so8396811wmc.4
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2018 04:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AMSVL4jz3yn7gQUU47aGCQ8JNwtlNumHdOKbfMpVaWY=;
	b=Rhy9TkJ1yQssr2tDTrU/qFbli1bYCpYqj6uslvSlq9pJBoe+wFh/MiegKRXHcM/2Gv
	k99j7/HKvPCnTN7QEx83sqDYC8bfWPpK0bvumWQ6ZFWBO9ZZqytSwpW3WUsiSaJXcS7d
	E2LefyTulDYpUmj/HWAiSmDdJasUL8IA5bz9x3rdyXddM8LgsbnHz9bkuYBTIlBWCQDO
	i4IZnjMubo18QoGk8X3JOmNWnFn/a8Q3s84BGe5tazNimWV951lLUv3lHgzpSqHrcCwb
	Bg83VM0A/bJ+FT8IQh9B1roxcmqhojwvJaf7ybHN+Fn8L2LdyH9nT+lxsVDGqb1Dyvy5
	TBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AMSVL4jz3yn7gQUU47aGCQ8JNwtlNumHdOKbfMpVaWY=;
	b=Jp2qARPdG95jiTWPazZ4TDyt3A5C5obWkRMTNBfZ/yvFDQgYVryhCwqLLBHxmpVb0M
	4X/lHVDH50p+8zJzb/HQciqY2qE8WYRe0OOeJ0BJksCNELWHrX2dAVovVO4owO2XurpW
	uiQXqYqCe+YgaGRYK620EkE9XAshic5sbtv9dsCzJPAg9ZM3HK5NlnZ0M1vzS1iGvC7z
	yaIL2UdaPPiFlg8k1C0xrkwq0Cqv/PMadGfLr33OatZ5HTZcpd+ERDF0qWzcExZbfXGY
	MtO6qAn2uCifMyIMgUJn65PQOFdkaxWkeOdhK9HBsH3u3ohTMmGKeOy2hnVn+6WiiB5U
	BJKg==
X-Gm-Message-State: APt69E1A/zF/1tBNp3Vz0TOZ7KaX78fweU/HR8L6WA4tqweWuaC+fMHz
	ohEx7tCb/B9S8E55dBdJJBT2t4U9xFhtoVYqNA==
X-Google-Smtp-Source: AAOMgpdlebgCAfeo03xfJeBexCCmJaMesp+hlIsV16Og5YBEua5Ix8HN1as74LFbNijTxZdqjp50rOBp7enPy5BJRXY=
X-Received: by 2002:a1c:ab02:: with SMTP id u2-v6mr8160304wme.10.1530532667338;
	Mon, 02 Jul 2018 04:57:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e719:0:0:0:0:0 with HTTP;
	Mon, 2 Jul 2018 04:57:46 -0700 (PDT)
In-Reply-To: <CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
	<CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Mon, 2 Jul 2018 13:57:46 +0200
Message-ID: <CAJO0J4i-ZRFBkrr5Lpr4uZ8DxFEmO-H0h_RCN6Ps+cFkaujPgQ@mail.gmail.com>
To: techi eth <techieth@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Basehash value changed issue
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
X-List-Received-Date: Mon, 02 Jul 2018 11:57:50 -0000
Content-Type: text/plain; charset="UTF-8"

Does this happen always or only sometimes? If only sometimes you
probably made changes to the recipe or dependent recipes while
building. You cannot do that.

On Mon, Jul 2, 2018 at 7:27 AM, techi eth <techieth@gmail.com> wrote:
> Hi,
>
> Can anybody give me hint over below issue.
>
> Thanks
>
> ---------- Forwarded message ----------
> From: techi eth <techieth@gmail.com>
> Date: Thu, Jun 21, 2018 at 6:30 PM
> Subject: Basehash value changed issue
> To: yocto@yoctoproject.org
>
>
> Hi,
>
> I am facing issue with basehash value changed while building image on one of
> my test board (Ref of beagle bone) on morty branch.
>
> Error :
> gateway.bb.do_rootfs, the basehash value changed from
> e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f. The
> metadata is not deterministic and this needs to be fixed
>
> When i run bitbake-diffsigs -t gateway do_rootfs
> I found below O/P.
> basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to
> 3f98a102f48ea8722835ad0d65bfbc1f
> Variable TIME value changed from '112854' to '115745'
>
> After googling I found that TIME need's to be added in vardepsexclude list.
> I added below in conf/distro/machine.conf but error persist.
> do_rootfs[vardepsexclude] = "TIME DATE DATETIME"
>
> Please suggest me where & what has to be added to come out of issue.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

