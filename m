Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A35E0098A; Wed, 18 Jan 2017 01:51:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C33CEE00942
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:51:27 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 251F268A01C; Wed, 18 Jan 2017 09:51:26 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id AC8A368A019;
	Wed, 18 Jan 2017 09:51:25 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 20A0267402C9;
	Wed, 18 Jan 2017 10:51:25 +0100 (CET)
To: yocto@yoctoproject.org
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
	<CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
Date: Wed, 18 Jan 2017 10:51:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Jan 2017 09:51:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-18 10:35, Burton, Ross wrote:
>
> On 18 January 2017 at 09:13, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     * glib-2.0-native depends on ${DISTRO_FEATURES}
>       To me this seems silly as "native" should be "native" and
>       not depend on any distribution settings.  Here's the code
>       that's causing it (in do_install)
>
>             if [ -f ${D}${datadir}/installed-tests/glib/gdbus-serialization.test ]; then
>                     if ${@bb.utils.contains("DISTRO_FEATURES", "x11", "false", "true", d)}; then
>                             rm ${D}${datadir}/installed-tests/glib/gdbus-serialization.test
>                     fi
>             fi
>
>       Obviously this isn't important for a native package.  Any
>       suggestions on how I might keep this from creeping in?
>
>
> The tests are only installed for target builds anyway, so that do_install part could be target-specific.

How would one change the recipe to reflect that?  Is there an
override that effectively says "not -native"?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

