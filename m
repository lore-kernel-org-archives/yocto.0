Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF72CE00D01; Thu,  2 Nov 2017 07:58:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D7B9E00CFF
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 07:58:45 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id f20so14599209ioj.9
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 07:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JizAFeXtNw//htSjdVFChPyhKR7J5+pvPb76irZoFNw=;
	b=ffU9Zhjb1W+u8DOgqwzy/qHyhkacQ4GmKPx9qgf1oahwf3ExLKeRAEXDIY20+xpWwV
	PwH5m99om4roYRPczeYuOAVUEK7ynRWb2RhZX1aHHlUG8gE/atWqVsdXLEt4+4eY4h/M
	1aVPFrjzeX+MlnMpllmRlU3Bgtjo196blyT0ygiMCDLs1dsMjxOoeEfylOM46Ytp+iGC
	ecMf/odksc2DbTMWlAx+oiw+uamyW+BHa+1BPWg8aDLILeqJpD3GZosZLWHV+GjifaIt
	37ilDnDeXRV8wDeKypJFqPy0nVAhYJ+lGuWECAKXgxe88BeD33QzA/jCm0kEmZ7mEeia
	1hDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JizAFeXtNw//htSjdVFChPyhKR7J5+pvPb76irZoFNw=;
	b=DFb2JBwFfFkzvLOB0iqJa3SqE/I/JV6dNd6mgqt4RPx8uMA+gO9ExxuVIgRFd8xPy/
	tGcTHJNHNxdOR7J5X1MtfCMjPuwgu6Qkr4ejQHoMwVYDjhB310TyFPUWrB8MyNTrl5o+
	ghCbwQPcxYXxaQNDz4j427W8ziteJ6J+iGYxc+KEZYQ+G+YVXRlaK9e73S/+Z9CtD4Kr
	g4IPeaXdgByh6vM2wlRDRQ6RQtO0G6PY+YhVyeGHlJ3+K5zz3uXxJZqq5ukg/Hoto07/
	P9KKC8wG7OoYK+uyZodSdTPe0PYUh3WW+rs1DVU0SaGD9RQ8tboWv21Q4Q2MzTAlKGhH
	q6CA==
X-Gm-Message-State: AMCzsaUigvKUBIWLCiWeLWngUnPGrXkzgM9hcnxzl8QXInmmF7I2t5WX
	1pUEPx5Y4BBtg75yAqb1swZMm5YdlKcBBSvMvOmYtA==
X-Google-Smtp-Source: ABhQp+SA0BVN23jTKLYCs5+ig2RFWlXmWUz5gqYuNfCdQsz+FbadmN2q6mPwMtqagYOLM8dHkBHPLyGEukeIDhMvA9s=
X-Received: by 10.36.87.207 with SMTP id u198mr2985119ita.108.1509634724784;
	Thu, 02 Nov 2017 07:58:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 2 Nov 2017 07:58:24 -0700 (PDT)
In-Reply-To: <CAOT_U5b8m+Tp6OBrtqSO30Kn2At4akXxK_AEUUCeg=z2sc4LHw@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
	<CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
	<CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
	<CAOT_U5ZY+UWe-69XuS_m+D5LKE0OyxkrabPcHgOB3p226aiZdA@mail.gmail.com>
	<CAOT_U5b8m+Tp6OBrtqSO30Kn2At4akXxK_AEUUCeg=z2sc4LHw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Nov 2017 14:58:24 +0000
Message-ID: <CAJTo0Lb0f+34B5icJt3W1oTfAnA_+-G5OgGfOWbpKO+WJnGWTg@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Thu, 02 Nov 2017 14:58:47 -0000
Content-Type: multipart/alternative; boundary="001a1143a75c82fffe055d01398c"

--001a1143a75c82fffe055d01398c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 2 November 2017 at 13:31, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Found what I was asking for with:
>
> bitbake -e <package>
>
> going through the output, there are mentions of patch_do_patch().
> I've traced it to meta/classes/patch.bbclass.
>
> However, trying to execute just the patching for the recipe doesn't work.
>
> build=E2=9F=AB bitbake -c patch u-boot-fw-utils-senic
> ...
> ERROR: Task do_patch does not exist for target u-boot-fw-utils-senic
> (/home/alan/senic-os-update/oe/../meta-senic/recipes-bsp/
> u-boot/u-boot-fw-utils-senic_2017.03.bb:do_patch). Close matches:
>   do_fetch
>   do_unpack
> ERROR: Command execution failed: 1
>

Whhhaaaaat.

Can your paste the output of this please:

$ bitbake u-boot-fw-utils-senic -c listtasks

Ross

--001a1143a75c82fffe055d01398c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 November 2017 at 13:31, Alan Martinovic <span dir=3D"=
ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">ala=
n.martinovic@senic.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
Found what I was asking for with:<div><br></div><div>bitbake -e &lt;package=
&gt;</div><div><br></div><div>going through the output, there are mentions =
of patch_do_patch().</div><div>I&#39;ve traced it to meta/classes/patch.bbc=
lass.</div><div><br></div><div>However, trying to execute just the patching=
 for the recipe doesn&#39;t work.</div><div><br></div><div>build=E2=9F=AB b=
itbake -c patch u-boot-fw-utils-senic<br></div><div>...</div><div><div>ERRO=
R: Task do_patch does not exist for target u-boot-fw-utils-senic (/home/ala=
n/senic-os-update/<wbr>oe/../meta-senic/recipes-bsp/<wbr>u-boot/u-boot-fw-u=
tils-senic_<wbr>2017.03.bb:do_patch). Close matches:</div><div>=C2=A0 do_fe=
tch</div><div>=C2=A0 do_unpack</div><div>ERROR: Command execution failed: 1=
</div></div></div></blockquote><div><br></div><div>Whhhaaaaat.</div><div><b=
r></div><div>Can your paste the output of this please:</div><div><br></div>=
<div>$ bitbake u-boot-fw-utils-senic -c listtasks</div><div><br></div><div>=
Ross</div></div></div></div>

--001a1143a75c82fffe055d01398c--
