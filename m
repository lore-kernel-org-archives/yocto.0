Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C57E007D9
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:44:42 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F2DC7F811ED; Wed, 11 Dec 2013 11:44:41 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	WEIRD_PORT autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 52FEFF811EB;
	Wed, 11 Dec 2013 11:44:40 -0700 (MST)
Message-ID: <52A8B299.3000704@mlbassoc.com>
Date: Wed, 11 Dec 2013 11:44:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>
	<52A8AB88.8000107@mlbassoc.com>
	<CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
In-Reply-To: <CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux: Update to 3.12.3 (latest RPI upstream)
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
X-List-Received-Date: Wed, 11 Dec 2013 18:44:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-11 11:23, Andrei Gherzan wrote:
>
>
>
> On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2013-12-11 11:08, Andrei Gherzan wrote:
>
>
>
>
>         On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com <mailto:lists@philipp-wagner.com> <mailto:lists@philipp-wagner.__com <mailto:lists@philipp-wagner.com>>> wrote:
>
>              From: Philipp Wagner <mail@philipp-wagner.com <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com <mailto:mail@philipp-wagner.com>>>
>
>              Signed-off-by: Philipp Wagner <mail@philipp-wagner.com <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com <mailto:mail@philipp-wagner.com>>>
>              ---
>                recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb <http://linux-raspberrypi_3.12.0.bb>> |
>         6 ------
>                recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb <http://linux-raspberrypi_3.12.3.bb>> |
>         6 ++++++
>
>                2 files changed, 6 insertions(+), 6 deletions(-)
>                delete mode 100644 recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb
>         <http://linux-raspberrypi_3.12.0.bb>>
>                create mode 100644 recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb
>         <http://linux-raspberrypi_3.12.3.bb>>
>
>              diff --git a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb
>         <http://linux-raspberrypi_3.12.0.bb>> b/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb>
>              <http://linux-raspberrypi_3.__12.0.bb <http://linux-raspberrypi_3.12.0.bb>>
>
>              deleted file mode 100644
>              index 3631da5..0000000
>              --- a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb <http://linux-raspberrypi_3.12.0.bb> <http://linux-raspberrypi_3.__12.0.bb <http://linux-raspberrypi_3.12.0.bb>>
>
>              +++ /dev/null
>              @@ -1,6 +0,0 @@
>              -SRCREV = "__839f349b6ed2a63a2bff0b5f0d718a__7b07ca2316"
>              -SRC_URI = "git://github.com/raspberrypi/__linux.git;protocol=git;branch=__rpi-3.12.y <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y>
>         <http://github.com/__raspberrypi/linux.git;__protocol=git;branch=rpi-3.12.y <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y>__> \
>
>              -           file://__sl030raspberrypii2ckernel.__patch \
>              -          "
>              -
>              -require linux-raspberrypi.inc
>              diff --git a/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb
>         <http://linux-raspberrypi_3.12.3.bb>> b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb>
>              <http://linux-raspberrypi_3.__12.3.bb <http://linux-raspberrypi_3.12.3.bb>>
>
>              new file mode 100644
>              index 0000000..304c1ad
>              --- /dev/null
>              +++ b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb <http://linux-raspberrypi_3.12.3.bb> <http://linux-raspberrypi_3.__12.3.bb <http://linux-raspberrypi_3.12.3.bb>>
>
>              @@ -0,0 +1,6 @@
>              +SRCREV = "__7dac37b9865ab51f7a68b7703bf679__2b698fee1b"
>
>
>
>         As pointed in https://review.gherzan.ro:__8443/#/c/27/ <https://review.gherzan.ro:8443/#/c/27/>, it seems this SRCREV is invalid.
>
>
>     Since that note has little detail, are you sure that this is not
>     just a case where the desired SRCREV is on a branch other than 'master'?
>     With the latest bitbake master, you have to explicitly specify the branch
>     if the desired revision is on a different branch.
>
>
> I know. But the branch is already specified in SRC_URI. So most probably upstream sqashed the repo?

Indeed, I just checked the repo and it's not there.

Looks like the correct rev might be 9fbb114990c409406ae20c56871727ff8d4fa6ca
I may give this a go as it has V4L2 drivers for my camera which I'm anxious
to get going with Yocto :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

