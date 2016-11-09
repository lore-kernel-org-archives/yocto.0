Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6554E009B1; Tue,  8 Nov 2016 16:50:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A74E008BA
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 16:50:30 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id n21so128009994qka.3
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 16:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jyc2TwKAH16UHcCJW75VyIY2xmOgf4i52OUio/jikr8=;
	b=ZPx9TJMIQJ2SCGcwZ77YeRP8xtGc/2ea0GzMrnODAGh5I9njr0KCqRgpUIT9TFNxRO
	iZPES8Vlpz/KfWicGFsbqpLdToO5fegJjOeZbzb4M2KJBeUnlVS45dcJBFlYxkXK9EBQ
	yJbsZcn9O87IBbuNCqqpWdK9AjVo1BZbRa9lcu0bKK3QJ5afEQiVpPmq6Jy90Y21ckRW
	MSMXovmJdoedex6ERROh/Gj7g1RHzbqBVx1hsbod9vYlxm5Y7qsnaB2pvadxclV6jwdo
	FV8NTfQvVMHbHiM0Hgk8PlJgibPfjJTV5OOY8yUB0EHcl9Ex3y9YUqUXQlj8RbNTCla6
	AN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jyc2TwKAH16UHcCJW75VyIY2xmOgf4i52OUio/jikr8=;
	b=FNoDl8+0coDDFbc0xUHVfr24FepIo1DNMyqtYpSdnAEKHAevwdYOLJhh9sFMOuJ4Ak
	3bA9ZTjTxkLGu0SevVj7tp5xhFSV0z278INogcO7yoFaT6Ktm2ICTUyodqPebvXB4YPa
	2s4PEDI3fQEVgIRuH9Egn8v6P32DtJTFZCjOmELoBFub+uV3ni6ZVgSPha6ZSc8+FwB6
	Az2kwQuZ/A+l7tn3gYsQqXwNi3GoYUujaAtIEvYcH6Ud5Y+dCGhey3Ze0NZgifebsexD
	S1oLtC8VAf9R/A2uLkX+cAG/4cifvyLBxqNXopKJS5ymtqZIQqO1Gw4Phwo3CSgAmFj8
	4+IQ==
X-Gm-Message-State: ABUngvfWAknd8oyT3Fa+KyKJ8cl6OUCi2IBX2fVJV59+4IyYaSWXAAq/91TDvtJERHjEMfM5fGdyuXCQMO+I3TCR
X-Received: by 10.55.8.20 with SMTP id 20mr17412367qki.3.1478652630253; Tue,
	08 Nov 2016 16:50:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Tue, 8 Nov 2016 16:50:09 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Nov 2016 00:50:09 +0000
Message-ID: <CAJTo0LZq-7=bGpx+vgMZazHz1Gh49uXTCqQvzABHuS6+9mdMsQ@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Postinsts question
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
X-List-Received-Date: Wed, 09 Nov 2016 00:50:31 -0000
Content-Type: multipart/alternative; boundary=001a114c9d60c5f8f40540d3a46d

--001a114c9d60c5f8f40540d3a46d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 November 2016 at 23:23, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> Is there a way to fail the build for any postinsts that can=E2=80=99t
>
> be performed during the build and have to be deferred?
>
>
Sadly not that I'm aware of currently.  If you're using a sufficiently
recent release (and by that I mean 2.2 / morty) then there is integrated
support for image QA tests (added in oe-core c9bef2ec if you want to
backport it) which lets you write an image QA function that could verify
that there are no delayed postinsts present in the image.

This would be a sensible addition for read-only rootfs, would you mind
filing a bug?

Ross

--001a114c9d60c5f8f40540d3a46d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2016 at 23:23, Vuille, Martin (Martin) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Is there a way to fail the build for any postinsts that can=E2=
=80=99t<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">be performed during the build a=
nd have to be deferred?<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Sadly not that I&#39;m aw=
are of currently.=C2=A0 If you&#39;re using a sufficiently recent release (=
and by that I mean 2.2 / morty) then there is integrated support for image =
QA tests (added in oe-core=C2=A0c9bef2ec if you want to backport it) which =
lets you write an image QA function that could verify that there are no del=
ayed postinsts present in the image.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">This would be a sensible addition for read-o=
nly rootfs, would you mind filing a bug?</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra">Ross</div></div>

--001a114c9d60c5f8f40540d3a46d--
