Return-Path: <jay@jay-tech.ru>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0C714C800A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 03:36:31 -0500 (CDT)
Received: by bwz8 with SMTP id 8so3237063bwz.35
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 01:36:30 -0700 (PDT)
Received: by 10.204.75.71 with SMTP id x7mr277948bkj.22.1308558990206; Mon, 20
	Jun 2011 01:36:30 -0700 (PDT)
MIME-Version: 1.0
Sender: jay@jay-tech.ru
Received: by 10.204.65.18 with HTTP; Mon, 20 Jun 2011 01:36:10 -0700 (PDT)
X-Originating-IP: [78.106.51.81]
In-Reply-To: <1308546370.1543.11.camel@localhost.localdomain>
References: <1308546370.1543.11.camel@localhost.localdomain>
From: Yury Bushmelev <jay4mail@gmail.com>
Date: Mon, 20 Jun 2011 12:36:10 +0400
X-Google-Sender-Auth: jPRYog7AEuqMa8oskse8FvcwPck
Message-ID: <BANLkTikbth7b0-vpZhkDrKmTa9PZnSzYaA@mail.gmail.com>
To: NiQingliang <niqingliang@insigma.com.cn>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: the yocto under archlinux
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
X-List-Received-Date: Mon, 20 Jun 2011 08:36:32 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 7bit

2011/6/20 NiQingliang <niqingliang@insigma.com.cn>:
> Hello,
>
> Is there someone using archlinux?
> Under archlinux, the "env python" is pointing to python3, which result
> in the bitbake's failure.
>
> What I can do?
>
> I want use "env python=python2", but it doesn't work.

I'm OpenEmbedded user but this case is similar.
OE wiki have solution on "OE and your distro" page, but seems OE
website is inaccessible now.

I'm just using lxc container with Debian 6.0 inside. This is more
stable solution :)

-- 
Yury Bushmelev

