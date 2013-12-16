Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (turboconrad.planet-school.de
	[194.116.187.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D27FE00798
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 12:44:09 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 2B955B6A080
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 21:44:03 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-100.9 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE,WEIRD_PORT autolearn=unavailable version=3.3.2
Received: from [192.168.178.21] (ppp-188-174-106-60.dynamic.mnet-online.de
	[188.174.106.60])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id EDB40B6A055
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 21:44:02 +0100 (CET)
Message-ID: <52AF6610.9040102@philipp-wagner.com>
Date: Mon, 16 Dec 2013 21:44:00 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1386505062-7542-1-git-send-email-lists@philipp-wagner.com>	<CAK18fxE+VpnV_qnCSpOsWH9H3fo630WbRVmbibPfKmz+3=yazA@mail.gmail.com>	<52A8AB88.8000107@mlbassoc.com>	<CAK18fxEFcHRCdtKTggES7Tkhx58+B4iYVkGtaAwMCWRV9h-5wQ@mail.gmail.com>
	<52A8B299.3000704@mlbassoc.com>
In-Reply-To: <52A8B299.3000704@mlbassoc.com>
X-Virus-Scanned: ClamAV using ClamSMTP
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
X-List-Received-Date: Mon, 16 Dec 2013 20:44:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 11.12.2013 19:44, Gary Thomas wrote:
> On 2013-12-11 11:23, Andrei Gherzan wrote:
>>
>>
>>
>> On Wed, Dec 11, 2013 at 8:14 PM, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>
>>     On 2013-12-11 11:08, Andrei Gherzan wrote:
>>
>>
>>
>>
>>         On Sun, Dec 8, 2013 at 2:17 PM, <lists@philipp-wagner.com
>> <mailto:lists@philipp-wagner.com> <mailto:lists@philipp-wagner.__com
>> <mailto:lists@philipp-wagner.com>>> wrote:
>>
>>              From: Philipp Wagner <mail@philipp-wagner.com
>> <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com
>> <mailto:mail@philipp-wagner.com>>>
>>
>>              Signed-off-by: Philipp Wagner <mail@philipp-wagner.com
>> <mailto:mail@philipp-wagner.com> <mailto:mail@philipp-wagner.__com
>> <mailto:mail@philipp-wagner.com>>>
>>              ---
>>                recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>
>> <http://linux-raspberrypi_3.__12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>> |
>>         6 ------
>>                recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>
>> <http://linux-raspberrypi_3.__12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>> |
>>         6 ++++++
>>
>>                2 files changed, 6 insertions(+), 6 deletions(-)
>>                delete mode 100644
>> recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>
>> <http://linux-raspberrypi_3.__12.0.bb
>>         <http://linux-raspberrypi_3.12.0.bb>>
>>                create mode 100644
>> recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>
>> <http://linux-raspberrypi_3.__12.3.bb
>>         <http://linux-raspberrypi_3.12.3.bb>>
>>
>>              diff --git
>> a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>
>> <http://linux-raspberrypi_3.__12.0.bb
>>         <http://linux-raspberrypi_3.12.0.bb>>
>> b/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>
>>              <http://linux-raspberrypi_3.__12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>>
>>
>>              deleted file mode 100644
>>              index 3631da5..0000000
>>              --- a/recipes-kernel/linux/linux-__raspberrypi_3.12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>
>> <http://linux-raspberrypi_3.__12.0.bb
>> <http://linux-raspberrypi_3.12.0.bb>>
>>
>>              +++ /dev/null
>>              @@ -1,6 +0,0 @@
>>              -SRCREV = "__839f349b6ed2a63a2bff0b5f0d718a__7b07ca2316"
>>              -SRC_URI =
>> "git://github.com/raspberrypi/__linux.git;protocol=git;branch=__rpi-3.12.y
>> <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y>
>>        
>> <http://github.com/__raspberrypi/linux.git;__protocol=git;branch=rpi-3.12.y
>> <http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y>__>
>> \
>>
>>              -           file://__sl030raspberrypii2ckernel.__patch \
>>              -          "
>>              -
>>              -require linux-raspberrypi.inc
>>              diff --git
>> a/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>
>> <http://linux-raspberrypi_3.__12.3.bb
>>         <http://linux-raspberrypi_3.12.3.bb>>
>> b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>
>>              <http://linux-raspberrypi_3.__12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>>
>>
>>              new file mode 100644
>>              index 0000000..304c1ad
>>              --- /dev/null
>>              +++ b/recipes-kernel/linux/linux-__raspberrypi_3.12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>
>> <http://linux-raspberrypi_3.__12.3.bb
>> <http://linux-raspberrypi_3.12.3.bb>>
>>
>>              @@ -0,0 +1,6 @@
>>              +SRCREV = "__7dac37b9865ab51f7a68b7703bf679__2b698fee1b"
>>
>>
>>
>>         As pointed in https://review.gherzan.ro:__8443/#/c/27/
>> <https://review.gherzan.ro:8443/#/c/27/>, it seems this SRCREV is
>> invalid.
>>
>>
>>     Since that note has little detail, are you sure that this is not
>>     just a case where the desired SRCREV is on a branch other than
>> 'master'?
>>     With the latest bitbake master, you have to explicitly specify the
>> branch
>>     if the desired revision is on a different branch.
>>
>>
>> I know. But the branch is already specified in SRC_URI. So most
>> probably upstream sqashed the repo?
> 
> Indeed, I just checked the repo and it's not there.
> 
> Looks like the correct rev might be
> 9fbb114990c409406ae20c56871727ff8d4fa6ca
> I may give this a go as it has V4L2 drivers for my camera which I'm anxious
> to get going with Yocto :-)

Oops, I totally forgot to reply. Yes, the revision existed but upstream
seems to be great at modifying a published repository (this has happened
before). [Maybe someone could give them an introduction how to handle
published git repositories ... argh]

To go forward, just drop this patch and go with the one Gary posted today.

Philipp

