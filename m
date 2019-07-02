Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34011E00D39; Tue,  2 Jul 2019 06:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CC5E00C09
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 06:00:40 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id i10so22908826iol.13
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 06:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fNoQYuilG1sehg+S3cZxGH/v97hLDgDcRLch6xqGbdg=;
	b=S1xnvztAZhANEHMIQBoxt5Sq0HIGi16/PgRRQkBQFFM7DuyD3pmO3R7UU8JKb9jpls
	0xG5vWo9bf5YJJtsqLiRIXI7z00nOGCC9rUcyC2PqqrFQehLPwjLRDOXgMYavSr1Crt/
	T+jekoT7DwmiJBZv4BFSbWBEtL69zSzjFneBqdVQvcx65kBJ1vGr+v2fok9kURIpyMJf
	KH12nD4u1pIjjoq7Aherkx0iHrgQRUoZfs10/sCbWD91h+QE3D4fvMs1x82gfuAhIq6I
	Ycnfv+y9WLhnTl209pCynej3jcQqlYzUJqipFE4ZgRIYwNdslApTNLGgd0VUpshV+4ER
	jzuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fNoQYuilG1sehg+S3cZxGH/v97hLDgDcRLch6xqGbdg=;
	b=Vm+9ej06tUHzGWS/sSan/xiwkEkBKcw3XT2iT1o86Hu+gG4dZjN/G7iiMMB17DdtvI
	OxkivLKaeN1mgfcgrmoAH6yTxVY/oXzJUXKttccRbWYgUm7RmTM8meveY4z4/IspcmMt
	asDBfFFtszKMyC/3PZcFn3fEGcbXH7xn8ecCFv3NvOD0/QbdAyv7ZYtG4X6aBdI/3MI0
	T91QFkCv0wooJXkzFJxISJu8Wl2xcGLnZsDJo0rmlfgooNT1RAFzwQXQUwri6Oz82gfU
	I/PdzhUg/DkmL7+DMaRO1rOhVHOXhRzkn3eo3NVNYujIbHVpkCn6g+C6p3sf+MsmjNdK
	B3Sg==
X-Gm-Message-State: APjAAAWWrgXWwNWffIfenioTBSVZjveidO5rh55DrQLIlHbAJM63B7GN
	zyOv94yLC6gO5UAeaa18/XzOkRILWaBLLZ8/IiYK/g==
X-Google-Smtp-Source: APXvYqxguRAOgXIVrMsYaQB7RaxjR45k/W2BjocQ/KRiEso50M8Mp2bVkkv/IMQOq3RyH+6Jeb/eiGjGPU0knDSj8Ds=
X-Received: by 2002:a05:6602:104:: with SMTP id
	s4mr24850119iot.200.1562072440503; 
	Tue, 02 Jul 2019 06:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
In-Reply-To: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Jul 2019 14:00:28 +0100
Message-ID: <CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Tue, 02 Jul 2019 13:00:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2 Jul 2019 at 13:53, Chad Gong <cgong@trijicon.com> wrote:
> WARNING: m4-native-1.4.18-r0 do_fetch: Failed to fetch URL http://ftp.gnu=
.org/gnu/m4/m4-1.4.18.tar.gz, attempting MIRRORS if available

$ wget http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
URL transformed to HTTPS due to an HSTS policy
--2019-07-02 13:59:34--  https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
Resolving ftp.gnu.org (ftp.gnu.org)... 209.51.188.20, 2001:470:142:3::b
Connecting to ftp.gnu.org (ftp.gnu.org)|209.51.188.20|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2006643 (1.9M) [application/x-gzip]
Saving to: =E2=80=98m4-1.4.18.tar.gz=E2=80=99

m4-1.4.18.tar.gz
100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D>]
  1.91M  1.38MB/s    in 1.4s

2019-07-02 13:59:36 (1.38 MB/s) - =E2=80=98m4-1.4.18.tar.gz=E2=80=99 saved =
[2006643/2006643]

Looks like you've got networking problems inside the virtual machine.
Verify using wget that you can download those files successfully.

Ross

