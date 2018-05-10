Return-Path: <piotr.piwko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86C0BE00E23; Thu, 10 May 2018 04:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (piotr.piwko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB18E009F8
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 04:29:24 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id b18-v6so1759833lfa.9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 04:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=P9HMkOJjzKRgoKvU4NTTuacjbrZF849q0RKXKlr6r0g=;
	b=pq2cbICChLc7ri+9xj672TOrY+7l9aKLLoTYUQggezyuVSMaT1VOETfBg0bLJ/L5D0
	dYSaMqpx/1ZMLrksa8UUctOlA4uCbjGaAaPsL2kkENM5W2wM2SxshzHBp6D3rtAWMmgG
	SVCI2u5BbKHBB2Xn3ADXZF53lYVuhXRc75O8FzPFvfEnxsJZQ6SHQRfaiRp6Ni+avpg2
	8JdQZHnLCCE3nAKFcoNLqwxjyEd1/P7ClttRotH3Szj4i+k/hkQwGB8oq2esbHjseLQ5
	qUF+f5hsiBDUySyiEDTLN34/p6146EGWgPC9XjO7rldxa8Vx+liD4AJyOuCm0/jgMCcJ
	NwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=P9HMkOJjzKRgoKvU4NTTuacjbrZF849q0RKXKlr6r0g=;
	b=lPt9Pwh54Xn7TJxUjMv7lWRsoGKQ/S6kP7myHSn27fqbIY0xnli2s7Gm/6G3Fmo6C0
	VNp61WP/8dglaoMsc36ILKMAzP9b3o17PHabh9GYbbyKkgNE42H0cxuAg79QDot9+6cP
	AwmoOnvQLZ7uYwZ4+S2CMnO6gVeoEfo/JPUO4kWBR+pVzB4kD28Vk4zFkGSItZJSz5Qw
	+XB4441GMIui083mxPVs0AqssUGRHGtwLR32fUgELkKcLO6tnD26LBe+CsYzXAmcHHxw
	PVBSuKAzatA3lPxXTUsvaFnk9JHnZ2jOXobs9lgFh/ZNKi9LUyH+TG7tfjpmkH9NbwVF
	10iA==
X-Gm-Message-State: ALKqPwcIM1aK9hf23FiCDVr5hVnSohOMExW/tyQN7Chy9fGQwnTmtFpc
	kuius5kpcrv/W5sW7x3qAPmtmlWE2ZQ4CBo437M=
X-Google-Smtp-Source: AB8JxZr+/gTKRjJEdowUReA/c2YBEnmYc9AQ56kcotSOvb0lTcRJresWXl36pN5Sj+V/5IdySKqCO9uPkgAHVT5vPXM=
X-Received: by 2002:a2e:8518:: with SMTP id j24-v6mr967159lji.12.1525951763736;
	Thu, 10 May 2018 04:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
	<CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
	<c50b3475-6012-0010-c1d7-6d7df557b396@linux.intel.com>
In-Reply-To: <c50b3475-6012-0010-c1d7-6d7df557b396@linux.intel.com>
From: Piotr Piwko <piotr.piwko@gmail.com>
Date: Thu, 10 May 2018 11:29:13 +0000
Message-ID: <CAMTWR-M365CRjg+0cthYhCF5i-PG+wh8C+Y-YMEZ01zTO_v4kQ@mail.gmail.com>
To: alexander.kanavin@linux.intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 11:29:25 -0000
Content-Type: multipart/alternative; boundary="000000000000d26cf5056bd85468"

--000000000000d26cf5056bd85468
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

czw., 10 maj 2018 o 13:02 Alexander Kanavin <
alexander.kanavin@linux.intel.com> napisa=C5=82(a):

> You should be able to move the contents of the pkg_postinst to the hook.
> Actually two hooks: one for read only rootfs, another for read-write.
> Add this to your image recipe:
>
> ROOTFS_POSTPROCESS_COMMAND +=3D '${@bb.utils.contains("IMAGE_FEATURES",
> "read-only-rootfs", "piotrs_ro_rootfs_hook; ", "piotrs_rw_rootfs_hook;
> ",d)}'
>

Actually, I don't create my own recipe but I try to extend the existing one
(busybox), so your propose may be not so easy as it sounds :). Anyway I
understand the problem and proposed solution.

Thank you all for help!.

--=20
Piotr Piwko
http://www.embedded-engineering.pl/

--000000000000d26cf5056bd85468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">czw., 10 maj 2=
018 o 13:02=C2=A0Alexander Kanavin &lt;<a href=3D"mailto:alexander.kanavin@=
linux.intel.com">alexander.kanavin@linux.intel.com</a>&gt; napisa=C5=82(a):=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">You should be able to move the con=
tents of the pkg_postinst to the hook. <br>
Actually two hooks: one for read only rootfs, another for read-write. <br>
Add this to your image recipe:<br>
<br>
ROOTFS_POSTPROCESS_COMMAND +=3D &#39;${@bb.utils.contains(&quot;IMAGE_FEATU=
RES&quot;, <br>
&quot;read-only-rootfs&quot;, &quot;piotrs_ro_rootfs_hook; &quot;, &quot;pi=
otrs_rw_rootfs_hook; <br>
&quot;,d)}&#39;<br>
</blockquote></div><div><br></div>Actually, I don&#39;t create my own recip=
e but I try to extend the existing one (busybox), so your propose may be no=
t so easy as it sounds :). Anyway I understand the problem and proposed sol=
ution.<div><br></div><div>Thank you all for help!.<br clear=3D"all"><div><b=
r></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature">Piotr Piwko<br><a href=3D"http://www.embedded-engineering=
.pl/" target=3D"_blank">http://www.embedded-engineering.pl/</a></div></div>=
</div>

--000000000000d26cf5056bd85468--
