Return-Path: <ashish.dalela@gmail.com>
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06885E0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 01:20:31 -0800 (PST)
Received: by mail-yk0-f176.google.com with SMTP id 131so20409875ykp.7
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 01:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=V0xn/oxaoAPKsJXUcQ+A2vkTy3F3kyP0wVfVgPxAMXA=;
	b=avzNpnfCLp6KRHfrz+5inmwgLb0ELp40qoyJR9DFg2BfdPfhf5GvovwkMlhQtNgfgI
	a1X+f9yoX1VDHMbv0se0PY8hfFLM4YarG+0hgcsuwxNlLOaTsOaLUoxLd2o9QMxmPjwu
	uUTJ5TeH4fjzFArFdetaT3PnpJD79OpUpZF/l215ghEDJuIYYesYLlVSv56VIdp/IG6Q
	vAbqsJby6CibgCOqbU9Yy7tRtBxqb245YVcQMq7f/6z9yoVjeAhqKsQrBuYEUl+mniP8
	+m3OrDdbNQh2mFvfJ0nAHttFvnSAxMryK1ZZYFEyChWv0RZHGEBxiuTRvLkruJqSRbM3
	eAhw==
MIME-Version: 1.0
X-Received: by 10.236.134.46 with SMTP id r34mr9915839yhi.62.1391505629238;
	Tue, 04 Feb 2014 01:20:29 -0800 (PST)
Received: by 10.170.169.66 with HTTP; Tue, 4 Feb 2014 01:20:29 -0800 (PST)
Date: Tue, 4 Feb 2014 14:50:29 +0530
Message-ID: <CABhkJRd8K90o9_oiaTQ82uvGzoxBhC_qgK15k+XyTKLmVDoc_g@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Python recipe question
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
X-List-Received-Date: Tue, 04 Feb 2014 09:20:35 -0000
Content-Type: multipart/alternative; boundary=20cf30363785bbdb8704f19126f2

--20cf30363785bbdb8704f19126f2
Content-Type: text/plain; charset=ISO-8859-1

HI,

I notice that many  python standard modules (e.g. cgi.py) are not getting
packaged with the core-image-basic. I can't find a specific package that
includes this although I can see the file being a part of the source
archive. Any suggestion on how I can include all standard libraries?

Thanks
-Ashish

--20cf30363785bbdb8704f19126f2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI,<div><br></div><div>I notice that many =A0python standa=
rd modules (e.g. cgi.py) are not getting packaged with the core-image-basic=
. I can&#39;t find a specific package that includes this although I can see=
 the file being a part of the source archive. Any suggestion on how I can i=
nclude all standard libraries?</div>
<div><br></div><div>Thanks</div><div>-Ashish</div></div>

--20cf30363785bbdb8704f19126f2--
