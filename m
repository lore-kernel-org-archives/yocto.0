Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B3D9E00823; Thu, 26 Apr 2018 11:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67C2E005A9
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 11:30:01 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id b21so15073431wme.4
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 11:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=zCYAUXE8IaAtj9c50D5M+8xh7lLtz5PJ9wTvIf42UwM=;
	b=r5e++TcJTuT9ZEBYaGkdzDS1rP9HCF1HN9oCNRL3dL/A8vhvQSqD+SQyy8jOPDCH9L
	S/yvMAwtSf9flCHlf/6LoO/dsZqk1gRsbQ335arpaMPFnJmXaMPUiG2VMP9uy8Wv61an
	jCJVwOTasm4QaRje52KK2yEfV2UjAH2Ns2GMe1yi+7XfVQMryw/2Yy9ELueecof3NeQy
	BPD/58xX37LR0IYnh/nbMWaX5EYtABkM+uHaSHnnik6cDhszzzC2raqLbPq9puKDNQRm
	0xvdVTXPH8AAgNjjVsAdcA3cH4LqNxzgF8Spwr5g798Shpj8OmCOXAWirC6PDADsA4ql
	Qlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=zCYAUXE8IaAtj9c50D5M+8xh7lLtz5PJ9wTvIf42UwM=;
	b=TiasyyNPATq+sXao4T616ybh5VTOxPHyC8951m0cqjRGR4tYZr/7Y3E1kHWF5wKlfB
	b5GQcIvlyah7JCSUD7b3gVrqoWYyfh3AxZC732piwu+6evA4w+21GhKahiBy8O/mzSFu
	vPfnF8N8L77AhxKmWxicmfeoN4t1alR0WXYnAXiZXwGrL18vcORLWUlzFkROZLEx1jhs
	CRBeUT3NlGXdueFWPs/C7vLZZosMi94OzA1/4xKgntQGckmxqv8QtLCzLMwI/xA84kEJ
	Y52YUnkPRFVAS5bUdcWGrZReCAP+FFyOTeQIXhYpFUY2qNjaAdgoaVlBmoCYm1BKG3TU
	ZoRA==
X-Gm-Message-State: ALQs6tANj3T4nM8xFECQF6TWkWeuzUjQJ/8PIvpZNJnxH72G/xjuUhoE
	KzLkcK6Am1k2CHCrhWXlaU+g4t86MGphVA19KtQ=
X-Google-Smtp-Source: AB8JxZqNFSw4Q/1sOQBrkJHxtlJj+pnX66TnCd8CttjJCc9+PzQdPwE91GEM/u2cax6nXUovp0a3exDcmdif6UofmG8=
X-Received: by 10.28.63.148 with SMTP id m142mr20336955wma.153.1524767400504; 
	Thu, 26 Apr 2018 11:30:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.229.210 with HTTP; Thu, 26 Apr 2018 11:29:59 -0700 (PDT)
In-Reply-To: <3292C1BE-5786-4639-8EF8-9376A0FF00B2@cisco.com>
References: <3292C1BE-5786-4639-8EF8-9376A0FF00B2@cisco.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 26 Apr 2018 11:29:59 -0700
Message-ID: <CAJ86T=X1naDA79_0qBAnfttnLea956FBvgKYJzTesPze6KULTw@mail.gmail.com>
To: "Shakthi Pradeep (tpradeep)" <tpradeep@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New Recipe Integration Issue
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
X-List-Received-Date: Thu, 26 Apr 2018 18:30:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 26, 2018 at 11:03 AM, Shakthi Pradeep (tpradeep)
<tpradeep@cisco.com> wrote:
> Hello Folks,
>
> I am trying to integrate an SDK which is very simple and small. Building =
the
> SDK generates an executable and few .so libraries.
>
> =E2=80=9Cbitbake sdk=E2=80=9D command goes through fine but when I run =
=E2=80=9Cbitbake
> wrlinux-image-glibc-std=E2=80=9D to generate an ISO with SDK packages I a=
m get
> following error
>
> ...
>
>                 install -m 0755 ${S}/lib/libmvudrv.so
> ${D}/${libdir}/libmvudrv.so.1.0.1
>
>     ln -sf libmvudrv.so.1.0.1 ${D}/${libdir}/libmvudrv.so

Unfortunately, creating versioned libraries requires more than just
renaming and creating a symlink.

If the library is going to be renamed during installation, then the
soname (which is set within the library when the library is linked)
needs to match a name which will exist in the target rootfs at
runtime.

In this case, since "libmvudrv.so.1.0.1" is the name which will be
present at runtime, when the build creates libmvudrv.so, it needs to
set the soname to "libmvudrv.so.1.0.1". ie add the following to the
linker commandline:

  -Wl,-soname,libmvudrv.so.1.0.1

