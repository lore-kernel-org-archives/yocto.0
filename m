Return-Path: <ross.burton@intel.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C4EE007BB
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 06:44:41 -0800 (PST)
Received: by mail-qe0-f47.google.com with SMTP id t7so6652915qeb.34
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 06:44:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=DcRQzZGVm0nSeuNjzKoqwmlBMDiGxQeTKJEt6ffZofI=;
	b=EJWWWTRPsYwib5BDJwMPa3WQLNXsx6frvL4F1bXv8pZVwOIQRgHDdPkEQA7Eu/lj2z
	LLhC/6aAq4Zfl1Y7/oanTafajWJ6bQtc/rDUeS2fMzi1FqeeLzueR2rRZDuOHk+L+brx
	WQNnpBkgw7FtJVhR3WpDyXAqt1CIG5YK2tsleNcWrKoYiT2TGFRYMYCrTqESAHtvdAvF
	hbjap9YYJlCJLBpttV+Fyt1YERmoOQybC72C8ZA95tJv7czjKDSTbThanTxX+87VANxj
	Bzoj0LH8DzOfpx9j16bUT8Qriai19L0XkOl1PY6Xc3RPCxfk4U76j4fVBjJAk4Od3wBW
	e2Jw==
X-Gm-Message-State: ALoCoQmm1g5X/8pUzfIQ3N+k4wcLyb1YUvgeYE6OWk/Efs8RnRsfQ0yvR+6NePFjabUB/nWc/Ku7
X-Received: by 10.224.12.69 with SMTP id w5mr54382506qaw.76.1387377880779;
	Wed, 18 Dec 2013 06:44:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Wed, 18 Dec 2013 06:44:20 -0800 (PST)
In-Reply-To: <CAOJdAdVH7rqVRagMf7p2TxyWcbqpdfoSOpvjmqf2p=ewEuF+fw@mail.gmail.com>
References: <CAOJdAdUOjV56ZBDAp6YhKU2x4cVrmLz=7Ku76WHcu33Oc3g3Mw@mail.gmail.com>
	<CAJTo0LYy9NGjGckfGZN4KN7MhriKtSdzxJTVPU8e0j7m+f-SzQ@mail.gmail.com>
	<CAOJdAdVH7rqVRagMf7p2TxyWcbqpdfoSOpvjmqf2p=ewEuF+fw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Dec 2013 14:44:20 +0000
Message-ID: <CAJTo0LZFeYgPBs0Dphys6=HgNkto2DF8=fx7VfOSDueerUnKrg@mail.gmail.com>
To: wuteng wu <wutengss@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libxml2 error
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
X-List-Received-Date: Wed, 18 Dec 2013 14:44:46 -0000
Content-Type: text/plain; charset=UTF-8

Please don't take conversations off the list, so that others can help/learn.

On 18 December 2013 14:22, wuteng wu <wutengss@gmail.com> wrote:
> I'm newbie to Yocto, could u tell me more details?
> I found some info under the dir:
> /home/teng/poky/meta/recipes-core/libxml/libxml2.inc as below:
>
> EXTRA_OECONF = "--without-python --without-debug --without-legacy
> --without-catalog --without-docbook --with-c14n --without-lzma
> --with-fexceptions"
> EXTRA_OECONF_class-native = "--with-python=${STAGING_BINDIR}/python
> --without-legacy --with-catalog --without-docbook --with-c14n
> --without-lzma"
> EXTRA_OECONF_class-nativesdk = "--with-python=${STAGING_BINDIR}/python
> --without-legacy --with-catalog --without-docbook --with-c14n
> --without-lzma"
> EXTRA_OECONF_linuxstdbase = "--without-python --with-debug --with-legacy
> --with-catalog --with-docbook --with-c14n --without-lzma"
>
> Is the --without-python option that i need to modify?

Yes, apologies I got the option name wrong when writing the mail.

Ross

