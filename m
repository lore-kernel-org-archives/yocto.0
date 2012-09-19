Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C92D5E002AB
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 22:35:28 -0700 (PDT)
Received: by wibhq12 with SMTP id hq12so599285wib.11
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 22:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sMB5LwLs43HBBIX92owqyEhhLoB3quyuKHWO2yyu9O4=;
	b=okjWAXUVn2KOoVhetE92m9OXhwd6fQ/EeSAXPqmpzbnHIJC1O8iiZJCbqwCDXuOqdN
	nT4kgMjkfNqYJzg4zAVYCHU/KIi4+MaIAJBsVIl8BtlohwNw8r4l4tWp0IDGFMeAk7MI
	2Lth7J/M85cA82ziKW2bVH2t9ue0D0jhT5RTlclfY4fKrM5yQOX9V6uyryR9MjNFG3v6
	rk0VQ38W765XPnFMQovq3jgah2Xr60oty0nHnckSht/5DEDvQWT7t8yurFxAsF+fCGFy
	VNnXiaOIPtffprtmTmg3TXS+GNmC7/RE1loJVLnm0Fe57UxXVmjhQebSlN59RJDmsY/X
	Vmvw==
Received: by 10.180.84.169 with SMTP id a9mr4216244wiz.8.1348032925699; Tue,
	18 Sep 2012 22:35:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.42.197 with HTTP; Tue, 18 Sep 2012 22:34:55 -0700 (PDT)
In-Reply-To: <tencent_7FE315F821B5993B36CB513B@qq.com>
References: <tencent_7FE315F821B5993B36CB513B@qq.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Sep 2012 22:34:55 -0700
Message-ID: <CAMKF1srzMjicRKOA8FbwzxiDNtn3KvCdMJyiFyMXY05oaXK8aw@mail.gmail.com>
To: Liu <treebody@embedstudy.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: how to use makefile in bitbake
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
X-List-Received-Date: Wed, 19 Sep 2012 05:35:29 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 18, 2012 at 12:51 AM, Liu <treebody@embedstudy.com> wrote:
> Hi all,
>     I have a project which is built by buildroot,so it uses a set of
> makefiles to build image.But  I want to use bitbake instead of buildroot to
> build the project.Now I am faced with some difficulties :
> 1) How can I use the variables and rules in makefile ? I know bitbake can
> not parse files like makefile.
>

bitbake drives the build using recipes which are set of rules similar
to makefiles. I would suggest to read the bitbake reference manual and
see the OE metadata especially the .bb files
on examples of recipes.

> Is there any example like this problem? Can anyone give me some good ideas?
>
>    Best wishes,
> ---------------Liu
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

