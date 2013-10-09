Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B65F0E00718;
	Wed,  9 Oct 2013 09:24:22 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id er20so891695lab.7
	for <multiple recipients>; Wed, 09 Oct 2013 09:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qmCfLn+toGXMhOI4gd2Txp0Om60ISgjGpEuu7TY0EzM=;
	b=DMB+e8lDpkX2RSCV5qERAlW/5KcKFkxmY7hmmQk0qSgBqoABD22Myq8dDtSDqRIWNo
	AfzOeOt0m/8bw+OMK1yLhjLBS0CKxO82LzfAsevrij/XNOURmtsPaKv7E64Q/ruRp1F9
	iUIcycDY3ciDz4yavATrQ/zU7JWCpqsyv4zikcq/Pjb8HxLHUfMSKshoFGqH1V5xEUKL
	4EGtwXseqOtaUtkOcyRutVGEnN4t/1b3BoyVo7SulYjwgnNiXLc0UeirmfJNCRHN451A
	AwbFbBLkmcX7uLTxO/N1XX9yZjYDXfjS7UKDdSGvoU60JRkOP57gEgvUc3q6SZDfUk6m
	WWrQ==
X-Received: by 10.152.120.5 with SMTP id ky5mr7132803lab.18.1381335861868;
	Wed, 09 Oct 2013 09:24:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Wed, 9 Oct 2013 09:24:01 -0700 (PDT)
In-Reply-To: <CABHD4K92=qtjaCzmvRV9yAMhWk_uZjz60is1UomcoWn0qz5V1A@mail.gmail.com>
References: <CABHD4K92=qtjaCzmvRV9yAMhWk_uZjz60is1UomcoWn0qz5V1A@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 9 Oct 2013 09:24:01 -0700
X-Google-Sender-Auth: vYZVmIKph4ZUaa2YyolYQ2OpOME
Message-ID: <CABcZAN=dk1xOtBAm=+z340+ZXLFkMsT8hBXDNhLeqgCKBkSZKA@mail.gmail.com>
To: Amit Tomer <amittomer25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: Re: Is there anything like FILES_${PN}_append??
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
X-List-Received-Date: Wed, 09 Oct 2013 16:24:26 -0000
Content-Type: multipart/alternative; boundary=089e01227ca45cbcb504e8515136

--089e01227ca45cbcb504e8515136
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 9, 2013 at 1:24 AM, Amit Tomer <amittomer25@gmail.com> wrote:

> Now for variable SRC_URI ,I can do something like SRC_URI_append_xyz where
> xyz is my platform where changes should be reflected.
>

This isn't specific to SRC_URI, it's general bitbake syntax that works for
any variable.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01227ca45cbcb504e8515136
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div class="gmail_extra"><br><div class="gmail_quote">On Wed, Oct 9, 2013 at 1:24 AM, Amit Tomer <span dir="ltr">&lt;<a href="mailto:amittomer25@gmail.com" target="_blank">amittomer25@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=":ez" style="overflow:hidden">Now for variable SRC_URI ,I can do something like SRC_URI_append_xyz where<br>
xyz is my platform where changes should be reflected.</div></blockquote></div><br>This isn&#39;t specific to SRC_URI, it&#39;s general bitbake syntax that works for any variable.<br>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>

Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--089e01227ca45cbcb504e8515136--
