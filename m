Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD96E01626
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 01:47:13 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.79.21) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 1 Oct 2013 10:47:10 +0200
Date: Tue, 1 Oct 2013 10:47:07 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20131001084706.GA6493@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: Re: Provide sftp-client support in yocto
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
X-List-Received-Date: Tue, 01 Oct 2013 08:47:14 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Amit Tomer <amittomer25@gmail.com> [131001 09:53]:

> I am new to OpenEmbedded Yocto project and have a requirement to provide
> sftp-client support on my target board.

> Sftp-server bins are already packed into final image and is installed at

> tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh/
> sftp-server

Yes, that's correct. The server should be installable by adding
openssh-sftp-server to your image. (Though, I guess you already figured
this one out).

> Now ,same way Do I have to install stfp client bins also or is there any other
> way to go about it??

It's already being installed to a package named openssh-sftp. Thus, it
should be enough to add openssh-sftp to your image.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

