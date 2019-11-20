Return-Path: <a.manache@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F369E00E2F; Wed, 20 Nov 2019 02:50:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (a.manache[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6283E00E24
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 02:50:51 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id f7so19888199edq.3
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 02:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=gZ/7EQybn6LmjtWOJi10xNBvr+LQEDWEitwTThHuJtU=;
	b=tI+SgGu2BH5nZrkG9b3VCnmw8RsadhvZhioPsjGKwE8MDQZASTrTh3TOCYg4XEt7bn
	0r9MRz0l7gFYmVxhYlhFosX9J8JeffChkjujn7fm6IKpOJ2nnufpA3VX8UBMvpBgH696
	l3s5Z+9XS88NceQh2EtLBQbRqtcqSWt0gKX0sN+k36kj+gSXuzYU/CexVPmvju3ZpZ5/
	bWQLu33PGtGl6/BKa/gaPM6bZmQ1dA1YTAOJMYSBArHw+2QJTzIpwGPeGomqCsBuK2Us
	acLQsszQAm+xAa0dn9+/BCDQbgrHOAz1nAGjnpuf1oF0WVhMxSHe/0P3YTdJ1K7UcM45
	5N4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=gZ/7EQybn6LmjtWOJi10xNBvr+LQEDWEitwTThHuJtU=;
	b=givkn67C3MZgKYpRGD7XjESu5cZc8TBD/HNfPbhVlWRmN0OB+0FTDP9Pb/KvsLcMnF
	FPdzAF4GvbsA84byY72LTpLWvKmcPkgjaBEzPIJ0BZLS1WoPP4F0atOXxUeR+5uWkV3X
	UMG8hYGNZJdbIF1HfWvTJgrWVYdFGu/eI6KcK7HJEZHrgbjQBzWeS9KWkPbGVLMXBR3W
	oSsmj8CH7nj7Mqkqq/OxcNBezc+XPM87TjW3bHrT5mcxNJbezQfT8z4W+93pFJGDPqDK
	gBS2sisk+vmZbUEBF99DP+H5usK+v/vMEEB9UGaaaVJ95oLu9djyayV/99feqWZGzoLl
	4Jrw==
X-Gm-Message-State: APjAAAXa4diu8sk+S9MHzQpwRwT1ECfsScyZqEsMMliQoSPaPMANnk5y
	W+oyc5sVkoaJukV+0OQN2Wc1OWWdbQQZ8HxoZCGNuQ==
X-Google-Smtp-Source: APXvYqwpcSFquC7Qn5KQTaRYeWPd6nKe//47z1XvPTOUXL782Z2mEKR5EsuGlVzqWsjbrwV72RM6jUzOZVQh78cfIV4=
X-Received: by 2002:a17:906:a989:: with SMTP id
	jr9mr4481026ejb.160.1574247050946; 
	Wed, 20 Nov 2019 02:50:50 -0800 (PST)
MIME-Version: 1.0
References: <1574246555578.70096@safrangroup.com>
In-Reply-To: <1574246555578.70096@safrangroup.com>
From: Antoine MANACHE <a.manache@gmail.com>
Date: Wed, 20 Nov 2019 11:50:38 +0100
Message-ID: <CAMu9SpJ1O7j6OhkaV3p+XdWzCmELZnu4WmrPVo+a=OGGs4jaGw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [musl] CC option -mmusl in SDK env script but not in default do_compile task
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
X-List-Received-Date: Wed, 20 Nov 2019 10:50:54 -0000
Content-Type: multipart/alternative; boundary="00000000000042aa6e0597c4f40b"

--00000000000042aa6e0597c4f40b
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've recently noticed a mismatch between CC options

- set by the SDK environment script

- set by the do_compile task for any 'target' class recipes when the
DISTRO is configured with TCLIBC = "musl"

The SDK env script adds "-mmusl" when exporting CC while do_compile doesn't.

We can see TARGET_CC_ARCH_append_libc-musl = " -mmusl" in file
meta/classes/toolchain-scripts.bbclass, this class is inherited when
building the meta-environment-<MACHINE> recipe (dependancy of the
populate_sdk task of core images).

Can anyone explain what is the aim of this -mmusl option and if required
why this option is not set on both sides ?

I fear this could lead to some situations where applications built from the
SDK and then built with the full Yocto stack don't behave exactly the same.

Thanks

Antoine

--00000000000042aa6e0597c4f40b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" style=3D=
"font-size:12pt;color:#000000;background-color:#ffffff;font-family:Calibri,=
Arial,Helvetica,sans-serif"><p>Hi all,</p>
<p>I&#39;ve recently noticed a mismatch between CC options </p>
<p>- set by the SDK environment script </p>
<p>- set by the do_compile task for any &#39;target&#39; class recipes when=
 the DISTRO=C2=A0is configured=C2=A0with=C2=A0TCLIBC =3D &quot;musl&quot;</=
p>
<p>The SDK env script adds &quot;-mmusl&quot; when exporting CC while do_co=
mpile doesn&#39;t.</p>
<p>We can see TARGET_CC_ARCH_append_libc-musl =3D &quot; -mmusl&quot; in fi=
le meta/classes/toolchain-scripts.bbclass, this class is inherited when bui=
lding the meta-environment-&lt;MACHINE&gt; recipe (dependancy of the popula=
te_sdk task of core images).</p>
<p>Can anyone explain what is the aim of this -mmusl option and if required=
 why this option is not set on both sides ?</p>
<p>I fear this could lead to some situations where applications built from =
the SDK and then built with the full Yocto stack don&#39;t behave exactly t=
he same.</p>
<p>Thanks</p>
<p>Antoine</p></div>

</div></div></div>

--00000000000042aa6e0597c4f40b--
