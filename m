Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52207E009CE; Wed, 18 Jan 2017 01:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEAC6E00BB3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:29:51 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C415068A01C; Wed, 18 Jan 2017 09:29:50 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 65D8368A019;
	Wed, 18 Jan 2017 09:29:50 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0BEED67402AC;
	Wed, 18 Jan 2017 10:29:50 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <2d26ac4b-64e5-dadc-ba9c-a58a41ff6908@mlbassoc.com>
Date: Wed, 18 Jan 2017 10:29:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Wed, 18 Jan 2017 09:30:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-18 10:13, Gary Thomas wrote:
> I've been trying to understand (as was recently posted here by
> another user) why native recipes are not being well shared/reused
> by the sstate-cache mechanism.  I have a build machine where I
> do lots of builds for various targets.  I would think (hope!)
> that xxx-native packages would be the same for every build and
> if I have the sstate mirror set up correctly, be shared appropriately.
> To this end, I have one "master" build that I always run first
> whenever the metadata changes, then point all the other builds
> at that tree.
>
> For the most part, this works pretty well, but there are still
> some places where it doesn't.  Here are a couple of examples
> which I've investigated:
>
> * glib-2.0-native depends on ${DISTRO_FEATURES}
>   To me this seems silly as "native" should be "native" and
>   not depend on any distribution settings.  Here's the code
>   that's causing it (in do_install)
>
>         if [ -f ${D}${datadir}/installed-tests/glib/gdbus-serialization.test ]; then
>                 if ${@bb.utils.contains("DISTRO_FEATURES", "x11", "false", "true", d)}; then
>                         rm ${D}${datadir}/installed-tests/glib/gdbus-serialization.test
>                 fi
>         fi
>
>   Obviously this isn't important for a native package.  Any
>   suggestions on how I might keep this from creeping in?

BTW, once glib-2.0-native can't be shared, a number of other native
packages will also have to be rebuilt because of build dependencies.
I discovered this when qemu-native was being rebuilt on almost all
of my targets...

>
> * xxx-native packages are not shared if ${DISTRO} is different.
>   Again, this seems wrong as "native" packages should really only
>   depend on the build ${HOST}, not ${DISTRO}
>
> I'm looking at this for the sole purpose of reducing the load on my
> build machine.  Any package that can be shared and not have to be
> rebuilt just makes it more productive :-)
>
> Thanks for any ideas or comments
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

