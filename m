Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D87E0152B
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:45:01 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id md4so781010pbc.7
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=U8EboSieawxKJUMOhsAc8R2czY9swQsfpO+0/maxANw=;
	b=fzZa3xTaqOzV6c4f96rXemBSgGyj5umvzbb9sPsNI1M5/elboMnAu+gzgLXm+rkd96
	bo4mZzoEQIUtzg1wliUPQdx95PGhNsWc+90vcRUTSo5n0NPr3U1vyRjenXnUtkmEA5ab
	7xAfoiggM2N+5yMVVr6gM1S7Y5nowx0Iw+gnUjOpCvjTWRRH6UUeLGTj0CCmgK4riWv/
	KUvJU3Sa3FDs/YtR74qQ1fCWnLEcmgtZ0vWQruS9WWp6wl8KGC7YqxlH0v4J5pFKMTtM
	YyI5eusN5/s5DxbK3sSdvyUs3Cu6QbJhPVnQiMAVJT0maJhOEz+7BoJvre7sbCx76QAH
	P/Ag==
X-Received: by 10.68.131.133 with SMTP id om5mr37972868pbb.148.1374601501412; 
	Tue, 23 Jul 2013 10:45:01 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	bs3sm42919718pbc.42.2013.07.23.10.44.58 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 10:44:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1406887.iQETxedpIY@helios>
Date: Tue, 23 Jul 2013 10:44:56 -0700
Message-Id: <D8BD52D3-76F0-4835-BA78-3672272531B3@gmail.com>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<4860044.KltMD8WHhS@helios>
	<CAFZh4h_PG+MAFjgyq-RyTRs-NX9DqJ46hggBqbrN8m1K=J-bog@mail.gmail.com>
	<1406887.iQETxedpIY@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 17:45:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 23, 2013, at 10:35 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

>=20
> OK, so I can see what's happening here. The package name does not =
change=20
> depending on what SDKMACHINE is set to and thus it sees two =
"different" writes=20
> to the same file.
>=20
> I'd need to verify in the case of where you switched back and rebuilt =
meta-
> toolchain again for x86-64, but I think in this instance you'll find =
that it=20
> isn't a problem since it should build (or restore from shared state) =
the=20
> appropriate version of  nativesdk-packagegroup-sdk-host.

if the package is same despite the sdk host being different then issue =
is to make sure
that shared state reuses the is packages irrespective of SDK host then =
the issue should disappear too


