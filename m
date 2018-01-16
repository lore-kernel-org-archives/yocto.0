Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F98EE00DF2; Tue, 16 Jan 2018 03:19:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76EC7E00A9C
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 03:19:43 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id m11so11212735iti.1
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 03:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7N5h/94CGdi16dIWVpCly2+qWNv6AUhWfb9f44VIBKk=;
	b=Ha8Y1bpBur7pDEXdFybj9MfUetzVtQwKtCs3tPK5NT+GZ2plsVtO0MQIcAI4YKHl3E
	6zHnOvQRKZDMClbhhAMAs2++oPGUEYfwkjWk6ezMp8WXILrGyAU4gn+GlFP6Tw9RTfzC
	OX2FuRFSBRZWl0pymkhubriZGEgHNgxQUFSRQFUxU0pDJhwGO3n52n3yLvbsoFkGRozy
	jvdoxiJPaOPmieFHexUG/39bgADYAdH3A4I+PpUq7YGGkkgptd60QYm6oI+cgPIgPle7
	EuEAxNHzwFdz/dDjOBbV/mAxZOC52oUIR1Qw2+bnPnRkflOW6/QM6VO5nNtylv0Jh7RX
	DL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7N5h/94CGdi16dIWVpCly2+qWNv6AUhWfb9f44VIBKk=;
	b=HnNXZXHJjZiBpcNDx7SbYiUrEhY6BsZAIHtZCMmd9/zweCiXAZga2CKl4DRiD9IfKH
	RBAJz5dZ5us6gZ6UaIBB8HF0AbkD8SixOdtPZuh+7ACezQITF1i0P/qHU/1JEGmEe89r
	zBSYKXDqwg8vg+KipiUjyLtwg3XHbbil/APxqFNnV76/aCuu+UqdAzRdH3BoP7em7/br
	PHgIB9PrqnsK2hUdYAU6twkMH3qBgKDL9t0z690NynX9QczRAPtTG2t+GUO3WkH52U+L
	QnfYcbqsaTrAEzUyxX/9r9Qz18e9k9OsKF0L9J13GcwD4pVIbPzwDOU15IToikwLUAWJ
	o6Ag==
X-Gm-Message-State: AKwxytd9JA05jshuSP3KvxX42kaz0ffjVIWFo3v29v/dpoXYrTWTcBmb
	dWQpR7s08+JILg8no3vMqSI0Mhr8Oze7AmME1jlHwQ==
X-Google-Smtp-Source: ACJfBouCbh+QRmiWyK2KjtQhZuNzBBXorkUDoa5VoEm0T/W4Kr67DYYJVaz1n904xTACAr3/8yIDzBJCuYoY0e8xnG0=
X-Received: by 10.36.228.79 with SMTP id o76mr13580647ith.85.1516101582664;
	Tue, 16 Jan 2018 03:19:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.157.202 with HTTP; Tue, 16 Jan 2018 03:19:22 -0800 (PST)
In-Reply-To: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
References: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jan 2018 11:19:22 +0000
Message-ID: <CAJTo0LarrFUQ8cmNNDsJ826YWXKd3T70RpAsndY9bQy7hMB69A@mail.gmail.com>
To: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWp?= <ngthanh.vu94@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Remove libjpeg.so (default built even in core-image-minimal) from the rootfs when build yocto
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
X-List-Received-Date: Tue, 16 Jan 2018 11:19:44 -0000
Content-Type: multipart/alternative; boundary="94eb2c1246da4749790562e2e816"

--94eb2c1246da4749790562e2e816
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 16 January 2018 at 04:28, Nguy=E1=BB=85n Thanh V=C5=A9 <ngthanh.vu94@gma=
il.com> wrote:

> I have statically linked the libjpeg of my own to the exe file, so I do
> not need the libjpeg.so default built in the /lib of rootfs. How can I
> modify or specify in the local.conf file so that I can remove that
> component? It takes quite a lot of space.
>
>
Find out what installs it, and stop installing that.  Possibly your exe
isn't actually statically linking at all.

Ross

--94eb2c1246da4749790562e2e816
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 16 January 2018 at 04:28, Nguy=E1=BB=85n Thanh V=C5=A9 =
<span dir=3D"ltr">&lt;<a href=3D"mailto:ngthanh.vu94@gmail.com" target=3D"_=
blank">ngthanh.vu94@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_=
extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">I have statically linked the libjpeg of my own to the exe file, so=
 I do not need the libjpeg.so default built in the /lib of rootfs. How can =
I modify or specify in the local.conf file so that I can remove that compon=
ent? It takes quite a lot of space.<div><br></div></div></blockquote><div><=
br></div><div>Find out what installs it, and stop installing that.=C2=A0 Po=
ssibly your exe isn&#39;t actually statically linking at all.</div><div><br=
></div><div>Ross=C2=A0</div></div></div></div>

--94eb2c1246da4749790562e2e816--
