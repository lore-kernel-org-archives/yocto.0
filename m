Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DC5E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:24:04 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 27C4A68A01C; Wed, 12 Jun 2013 09:24:02 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id 948E968A019;
	Wed, 12 Jun 2013 09:24:01 +0100 (BST)
Message-ID: <51B83021.8010905@mlbassoc.com>
Date: Wed, 12 Jun 2013 09:24:01 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAP71Wjz-_omLGprC9xkBaZ6cbp=JmZrgGJy=UjtJCdrZiTfpEg@mail.gmail.com>
In-Reply-To: <CAP71Wjz-_omLGprC9xkBaZ6cbp=JmZrgGJy=UjtJCdrZiTfpEg@mail.gmail.com>
Subject: Re: question about packagegroups
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
X-List-Received-Date: Wed, 12 Jun 2013 08:24:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-12 09:08, Nicolas Dechesne wrote:
> hello,
>
> i am creating a packagegroup to organize better my image/recipes. i am
> doing something along these lines:
>
>      DESCRIPTION = "My Custom Package Groups"
>
>       inherit packagegroup
>
>       PACKAGES = "\
>           packagegroup-custom-apps \
>           packagegroup-custom-tools \
>           "
>
>       RDEPENDS_packagegroup-custom-apps = "\
>           dropbear \
>           portmap \
>           psplash"
>
>       RDEPENDS_packagegroup-custom-tools = "\
>           oprofile \
>           oprofileui-server \
>           lttng-control \
>           lttng-viewer"
>
> and in my imageA i am pulling *only* packagegroup-custom-tools with
> IMAGE_INSTALL.
>
> What I notice is that all packages listed in my packagegroup even the
> ones from packagegroup-custom-apps which isn't pulled in my image are
> built when building my image. Of course they are not installed, but
> why are they built? it is wasting a large amount of time, while it's
> not even needed. is that really expected or am i doing something wrong
> here?

The problem is that bitbake runs recipes, not packages.  So in order to
get the package 'packagegroup-custom-tools', you have to build your main
recipe which will also build 'packagegroup-custom-apps'

I've run across this myself and what I did was to split my package groups
(then called tasks) into separate recipes.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

