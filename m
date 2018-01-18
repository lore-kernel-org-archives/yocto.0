Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80FDDE00E00; Thu, 18 Jan 2018 02:00:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44B8E00D92
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 02:00:53 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id b141so20858183wme.1
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 02:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kYaMdeDj9Yh7mXIDuKViEtu1zulIlQiH99+LR47MKRA=;
	b=lY3/g/UaIR/+dcthPtmTpalxY7y8Dw1qomGI0rxHSXe1lwxhMkZXzyMPoEeLR5LuOn
	ErYm6h5U0ZDsWGeXCyR4jUz6jC8LqyjQ29TIDIK6iZXPrlf4uCtGwJH7+Z8ve9q8pzwx
	Affv2+14zTiMSNTJ74olxhqs9yt0Jhv6MuVQ78dxRrdwFvBU6pZLSa5wDGkN5UTrK3ED
	X6/Akt966apqjNK2tdGzvn/sIDud4dWc5pdiFhtMcgioJsHOFqLDkRYtu3wLsmo7Gtxe
	qzStr/ACt+piADO3Ct5KB/RRkBDplN8La+qqnQOj8uvjQMT+e611TQO1fz59/muhVW/m
	PQ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kYaMdeDj9Yh7mXIDuKViEtu1zulIlQiH99+LR47MKRA=;
	b=TerPx5jq7dcKBsmfTsHqsWSlNgJz9GgPu8xdD5/ibIK9+vRd1ATHRlECTSj5Y8jkDn
	RjY1TzKHMpuRjMO3RY4DW91QQB0lWRMAx2oUYggPb7F4ANAzX6AAuelHVcCORrUdJdWA
	1wY9wjKqWobR5ZfFDA6SP9tzpSrlCi8A0nfXB5ri/Zfz0a2kIn2qPG+9fpV/S05aR5bH
	kldNL1k+QgdohZ/aKGK9zMgGcLAJG57nZpFDcAea36u9CT9W3Jb/YrNkORh1xcgJc4BJ
	Pg97tvs1FgiwCErT+Ozg0wzfmn8MipLlVPqsiOci2+GjinwiEcqr+4zU7qXsYveCp5oT
	P2Ig==
X-Gm-Message-State: AKwxyteaWHs4w9jfufBrQ+w0Hdbo5XTINo5x81PSIGa0Wf/ob5YTgPl2
	OgtBmJoGfpiHKva8hghHjJw7WdS/DNuPca6U8tA=
X-Google-Smtp-Source: ACJfBos3mRpODEyeTO7Iu2PDpHCnUvL39BHYRpvk9+tQq9PsFQThmytye7qavpzWa0fMhMrF2xpIRWNagWZ2Vi/9Ta0=
X-Received: by 10.28.191.19 with SMTP id p19mr842051wmf.142.1516269652641;
	Thu, 18 Jan 2018 02:00:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.122.19 with HTTP; Thu, 18 Jan 2018 02:00:52 -0800 (PST)
In-Reply-To: <20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 18 Jan 2018 11:00:52 +0100
Message-ID: <CA+chaQdV65g_JiV9kzbaF7e-O7cx6LxkJ7eY9J_tOP3PuHN06w@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 10:00:54 -0000
Content-Type: multipart/alternative; boundary="001a114e2782078d7905630a0afd"

--001a114e2782078d7905630a0afd
Content-Type: text/plain; charset="UTF-8"

FWIW: here nativesdk-libepoxy fails in do_configure already since meson
conversion

FileNotFoundError: [Errno 2] No such file or directory:
'TOPDIR/tmp-glibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-libepoxy/1.4.3-r0/build/meson-private/sanitycheckc.exe'

http://errors.yoctoproject.org/Errors/Details/164799/

libepoxy in master doesn't support nativesdk yet (it's part of my changes
to support virtglrenderer and spice in qemu). Is there some magic
combination of settings meson needs to work for nativesdk?

On Thu, Jan 18, 2018 at 10:05 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 01/18/2018 10:58 AM, Andrea Galbusera wrote:
>
>>
>> Looks like my first guess was not that bad. Reverting below commit,
>> which switched to meson build system brought my build back to green.
>> Also CC-ing the patch author who might suggest further investigations.
>>
>>      libepoxy: convert to meson build
>>
>>
> There's probably a missing header include - carefully compare do_compile
> logs in both cases and see how they differ for the failing file. Also
> inspect the file for any conditional define macros and see if they're
> enabled or not in both cases.
>
>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114e2782078d7905630a0afd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FWIW: here nativesdk-libepoxy fails in do_configure alread=
y since meson conversion<div><br></div><div>FileNotFoundError: [Errno 2] No=
 such file or directory: &#39;TOPDIR/tmp-glibc/work/x86_64-nativesdk-oesdk-=
linux/nativesdk-libepoxy/1.4.3-r0/build/meson-private/sanitycheckc.exe&#39;=
<br><div><br></div><div><a href=3D"http://errors.yoctoproject.org/Errors/De=
tails/164799/">http://errors.yoctoproject.org/Errors/Details/164799/</a><br=
></div></div><div><br></div><div>libepoxy in master doesn&#39;t support nat=
ivesdk yet (it&#39;s part of my changes to support virtglrenderer and spice=
 in qemu). Is there some magic combination of settings meson needs to work =
for nativesdk?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Thu, Jan 18, 2018 at 10:05 AM, Alexander Kanavin <span dir=3D"l=
tr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_bla=
nk">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"">On 01/18/2018 10:58 AM, Andrea Galbuser=
a wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
<br>
Looks like my first guess was not that bad. Reverting below commit,<br>
which switched to meson build system brought my build back to green.<br>
Also CC-ing the patch author who might suggest further investigations.<br>
<br></span><span class=3D"">
=C2=A0 =C2=A0 =C2=A0libepoxy: convert to meson build<br>
<br>
</span></blockquote>
<br>
There&#39;s probably a missing header include - carefully compare do_compil=
e logs in both cases and see how they differ for the failing file. Also ins=
pect the file for any conditional define macros and see if they&#39;re enab=
led or not in both cases.<br>
<br>
<br>
Alex<div class=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114e2782078d7905630a0afd--
