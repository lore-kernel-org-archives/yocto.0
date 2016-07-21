Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B15E00E0C; Thu, 21 Jul 2016 14:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A991CE00E00
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 14:59:43 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id q83so88896724iod.1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 14:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=B9EMmALpjAlvrwEEMi3JBmcVAtQRHxhtrKFl1DEDqRs=;
	b=C7i1GgnFaaE4V1SOoy5llcztIcqj9TJaPzrPOWKDUir3WlhbepFmovspMwoeTnpU8w
	+LmlJdH1REiRd4q6+5CusnhdmN1bFnrccInPNAJsMD+NqHphX8kvjnV63mwoDQjSrId9
	AtujEABX58iygw/AqvbHDn7ZeuC+25VQZtOsFGoMj6bfh9nI3cUr7YQOb8DlTWY12GR/
	a4MNj82JgO8TqR7beoMLne7ex9YB+fEtgOvrFheNHj6Cn2WG9NNvpcpioAKYz5f2sf92
	TN0SHpvI6bLY51IZ8/JyVmhMQY3FS8WASPPRvU6y617/ii2LYPZfyQ3PZxrQLFEtMyZ+
	XDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=B9EMmALpjAlvrwEEMi3JBmcVAtQRHxhtrKFl1DEDqRs=;
	b=TWsP0NFZ22HtsUnSrxgiHLnoawOamHQbwKUTZyiTuA1c0SBd8wkugKLx8E7vNmfPb9
	iaGmrZycCw+rNy0O1a8hYLOvYkY6OtmZEbA6tbDhmp0qjJrrCqEwQUPdWk5y1dK5+cSL
	HYTdF23Y+562468zcwe45Fv0JqCyq69vATsgKxzjnawsW/01D5tldspnS4UntSV0sjAW
	0/5EEdRBoH+i0UGK98KDWEiNkaTGKaf+URUQz51Pa000NsmW8bMW3LS5Z9XOiQYUf+xi
	dtU+qkhW11xQrDCzRB/YKfRj8wdEeiaO/EhEBan1gVkqKL8INPilceJqOWD2wpWsEVCW
	IVoQ==
X-Gm-Message-State: AEkoouvmeznqI5rEzg42RqijDjFh8VtCPYcuDWpJiTkZ7lsUZCgM51HqTqqRhk3AhsTymrccLXMvjP/W/Z56jfOJ
X-Received: by 10.107.135.142 with SMTP id r14mr714783ioi.133.1469138383054;
	Thu, 21 Jul 2016 14:59:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 21 Jul 2016 14:59:23 -0700 (PDT)
In-Reply-To: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Jul 2016 22:59:23 +0100
Message-ID: <CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Thu, 21 Jul 2016 21:59:46 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc72c2b005382c6f55

--001a113eccbc72c2b005382c6f55
Content-Type: text/plain; charset=UTF-8

On 21 July 2016 at 22:51, Vijayakumar Badiger <vijayakumarmb@gmail.com>
wrote:

> /local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24:
> fatal error: linux/sync.h: No such file or directory
> compilation terminated.
> make[2]: *** [libsync_la-sync.lo] Error 1
>

That's not a standard user-space kernel header and doesn't appear to be a
standard header at all, so the question is where do you expect that header
to come from?

Ross

--001a113eccbc72c2b005382c6f55
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 July 2016 at 22:51, Vijayakumar Badiger <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>/local/mnt/=
workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/system-c=
ore/git-r17/system/core/libsync/sync.c:24:24: fatal error: linux/sync.h: No=
 such file or directory</div><div>compilation terminated.</div><div>make[2]=
: *** [libsync_la-sync.lo] Error 1</div></blockquote></div><br>That&#39;s n=
ot a standard user-space kernel header and doesn&#39;t appear to be a stand=
ard header at all, so the question is where do you expect that header to co=
me from?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a113eccbc72c2b005382c6f55--
