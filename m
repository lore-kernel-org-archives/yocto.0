Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9C80E00305
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 06:02:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAFE27DU023114
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Nov 2011 06:02:07 -0800 (PST)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 15 Nov 2011 06:02:07 -0800
Message-ID: <4EC270DE.2030908@windriver.com>
Date: Tue, 15 Nov 2011 22:02:06 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Mike Tsukerman <miketsukerman@gmail.com>
References: <CALs2vtfm6ErrYJYwq_mCgSzRLyg-xHXW=nYDT62JkKVv90tLrQ@mail.gmail.com>
In-Reply-To: <CALs2vtfm6ErrYJYwq_mCgSzRLyg-xHXW=nYDT62JkKVv90tLrQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libtool problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Nov 2011 14:02:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Maybe "autoreconf -fi" helps, autoreconf will also run "libtool"
where appropriate.

// Robert

On 11/15/2011 08:02 PM, Mike Tsukerman wrote:
> Hello,
>
> I've found some problems with toolchain on target rootfs.
> It does not depends on what architecture i've building for.
>
> For example i want to build something on target rootfs.
> Downloading tar archive with sources and building it. Sometimes
> libtool says about old versions of package files. Upgrade of these files
> with
>
> libtoolize --copy --force and aclocal
>
> does not always solve problems.
> Sometimes it says that libXXX.la files have wrong format.
>
> I'll be very pleased if you help me solve this problems.
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

