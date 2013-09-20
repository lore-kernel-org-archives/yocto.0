Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8535AE01481
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 08:49:16 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id bg4so868604pad.4
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 08:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=j78rfL9F0RQEbJ+9T08Ynk5cSkX1FwU+ZLSLg1wUuiw=;
	b=qQow881vn/W+uDyGSSCAazw2G8SouJUdXMMYsZn+w3yQ9eQcwgoPZ8ICV8N/7WugNm
	dPmBuEqBEIzzOa8S8cwrTvXtE0au6WiWqMO7JXzs63jJvuJ+7dMi+kkdPRcI09Rl27va
	ifqvLFhOT4Ow+F2fmFtMhUXIY7oxMCJUBZT25cKEw38zDwJiG5wWA98Q/dfhUEanWwuG
	6NJ6onzHKxR2e6H333nqamEguP2SjD2jiZHHHgJb9QpulBG8f4rJ8irdgeuW262u5mWB
	E46PO98WXaQwJE4EQXzL60nlaVu1qSrw65022FiKGprIkcviEX7HrcGpTULmh7iOEGfx
	XqxA==
X-Received: by 10.68.232.134 with SMTP id to6mr8682362pbc.163.1379692155774;
	Fri, 20 Sep 2013 08:49:15 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	f2sm16532987pbg.44.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 20 Sep 2013 08:49:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABG0-3yLMy5PCiMPvuTkbeeXhDL4Lm9SJOdegu0s6s9F9RbHdA@mail.gmail.com>
Date: Fri, 20 Sep 2013 08:49:12 -0700
Message-Id: <6D9E6E38-88DA-489D-A761-A74EC896708A@gmail.com>
References: <CABG0-3yLMy5PCiMPvuTkbeeXhDL4Lm9SJOdegu0s6s9F9RbHdA@mail.gmail.com>
To: arun kumar <arunkr.linux@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: yocto@yoctoproject.org
Subject: Re: running core-image-sato on the development host
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
X-List-Received-Date: Fri, 20 Sep 2013 15:49:16 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Sep 19, 2013, at 10:51 PM, arun kumar <arunkr.linux@gmail.com> wrote:

> can i run the image built using the quickstart guide on my x86 host, =
the machine was set to qemux86, is there a way to use the files =
generated in /tmp/deploy to boot on my host /

Execute
runqemu qemux86

with in a shell where you have sourced env script oe-init-build-env

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


