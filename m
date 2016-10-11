Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85EEFE00D34; Tue, 11 Oct 2016 02:31:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F889E00CF5
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 02:31:30 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id r30so18904808ioi.1
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 02:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zIX8TPrajRncm+llug3/t2/oj2h5M2qJTp+2448BUKA=;
	b=JVwTOuR2tFBeGj66aP13K7ogG9c4gsZ1p9WGpyIfEk+0L1dp1CKQnlHfwQKCONxJL8
	V/lrfJqxvb7PBh+6/FUb1I5KR9BjWVAAVqoMSb0stRgphGqIDNrxMQsWM+e2HCr33ruG
	1AS1parxk48E/4sErPiS+WPzlM8sK+P+orvu836bPSiRalKGf3blE48kKQMo/7JKWZlh
	sEL+gA6fUJg+Trv4/AbYIeaSCUPTLC5tJLPL+wydyZjNkYcwRC8mNMAIfju+DCLy28vE
	z1vLzSxSGmr9q0r9u4yREmEOSnqnl5Exw/1nXEhh1UVdbpWAuXwNU8b3P6UadJhSQaZI
	fDzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zIX8TPrajRncm+llug3/t2/oj2h5M2qJTp+2448BUKA=;
	b=LJ91Mfy1Z8QOCmczUmylyymNjhH8U0oNpslX1Phj2IuUfqT5BnSLojS5k4MPTnp18+
	MF8X24STaAPpVhSrB0EAMcm4O3+Dx2/u6cwnrQX4prAIlfM24pUG2v/ueenzzVhD7Umd
	Gxdp6Bxi4gFK0jE3bu+460hlCQJNVTiBbAVHOjxein0Uf5OhZS/vx0Q50z8coyTFDKqH
	nelz0DVniZImEjrjfRf8DkhP/iO8Hwb6Z7/sclRLoclcJwpoVUo7TaaSqTjmuiiXqy8N
	rh4stPW9AiWAQprm2nKEmeSsqp73L/7jHs4BRAcECwr+tUnd1jy9/7XMjuRXlAUDD9lH
	Mpow==
X-Gm-Message-State: AA6/9RnnA8KGhAB/kDphKeCitJE8VX54KDVQvRzjCUlTAjfaYuevh2R77SoL+sX3NIMURIN3wnvWAZ4ijg1ibmvm
X-Received: by 10.107.138.15 with SMTP id m15mr4712507iod.127.1476178289586;
	Tue, 11 Oct 2016 02:31:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Tue, 11 Oct 2016 02:31:09 -0700 (PDT)
In-Reply-To: <0FEED60D-5F00-48D2-A68B-C1BC46DB78E4@cisco.com>
References: <0FEED60D-5F00-48D2-A68B-C1BC46DB78E4@cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 11 Oct 2016 10:31:09 +0100
Message-ID: <CAJTo0LadEdzQ3Uya_XUu0ZDxiZX_0fO4LYaP5GSDYwzS_pLVbg@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross platform compiling/build issue: "Yocto - QA Issue: Architecture did not match (20 to 62) "
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
X-List-Received-Date: Tue, 11 Oct 2016 09:31:34 -0000
Content-Type: multipart/alternative; boundary=001a113feb3c937fa2053e938ab6

--001a113feb3c937fa2053e938ab6
Content-Type: text/plain; charset=UTF-8

On 11 October 2016 at 06:18, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> ERROR: QA Issue: Architecture did not match (20 to 62) on
> /work/ppce500v2-poky-linux-gnuspe/c-mlib/1.1-r0/packages-split/c-mlib/usr/bin/xxx
>  [arch]
>

You can look up the architectures at
https://en.wikipedia.org/wiki/Executable_and_Linkable_Format to discover
that indeed it has detected that your binary is compiled as x86-64 (62 or
0x3E) but target executes should be PPC (20 or 0x14).

This is usually caused by your recipe build using 'gcc' directly and not
using the cross-compiler, so you'll need to look at the makefiles and see
if you can tell it to use a different compiler.

Ross

--001a113feb3c937fa2053e938ab6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 October 2016 at 06:18, Dinh Nguyen (dinhn) <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:dinhn@cisco.com" target=3D"_blank">dinhn@cisco.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div>ERROR:=C2=A0<font color=3D"#ff0000">QA=
 Issue: Architecture did not match</font>=C2=A0(20 to 62) on /work/ppce500v=
2-poky-linux-<wbr>gnuspe/c-mlib/1.1-r0/packages-<wbr>split/c-mlib/usr/bin/x=
xx =C2=A0[arch]</div>
<div>
<div></div></div></blockquote></div><br>You can look up the architectures a=
t <a href=3D"https://en.wikipedia.org/wiki/Executable_and_Linkable_Format">=
https://en.wikipedia.org/wiki/Executable_and_Linkable_Format</a> to discove=
r that indeed it has detected that your binary is compiled as x86-64 (62 or=
 0x3E) but target executes should be PPC (20 or 0x14).</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">This is usually caused by =
your recipe build using &#39;gcc&#39; directly and not using the cross-comp=
iler, so you&#39;ll need to look at the makefiles and see if you can tell i=
t to use a different compiler.</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--001a113feb3c937fa2053e938ab6--
