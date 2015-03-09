Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C0BCE0076F; Mon,  9 Mar 2015 13:58:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19A1BE006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 13:58:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4094DF811EC; Mon,  9 Mar 2015 14:58:42 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D7890F811EC;
	Mon,  9 Mar 2015 14:58:41 -0600 (MDT)
Message-ID: <54FE098E.5020701@mlbassoc.com>
Date: Mon, 09 Mar 2015 14:58:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1424450237.git.petter@technux.se>	<20150301001450.GC22308@gmail.com>
	<CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
In-Reply-To: <CALbNGRSMJXxRsUM-Nbp1YJh1oqEE9V4-Lxib_9y6Ch77TtG=Cw@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Mon, 09 Mar 2015 20:58:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-09 14:50, Andreas Müller wrote:
> On Sun, Mar 1, 2015 at 1:14 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Hello,
>>
>> On Fri, Feb 20, 2015 at 05:40:21PM +0100, Petter Mabäcker wrote:
>>> The following changes since commit d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc:
>>>
>>>    README: Github repo changed (2015-02-14 02:00:57 +0100)
>>>
>>> are available in the git repository at:
>>>
>>>    git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
>>>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_layer_prio
>>>
>>> Petter Mabäcker (1):
>>>    layer.conf: set high layer priority
>>>
>>>   conf/layer.conf | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> Patch merged to master. Thanks Petter.
>>
>> --
>> Andrei Gherzan
>> --
>
> This one breaks xserver-xf86-config for me
>
> | Function failed: Fetcher failure for URL:
> 'file://xorg.conf.d/10-evdev.conf'. Unable to fetch URL from any
> source.

Are you trying to build for the RaspberryPi2?

I [temporarily] fixed this by copying the missing files.  In
the meta-raspberrypi layer, do
   % rsync -a recipes-graphics/xorg-xserver/xserver-xf86-config/raspberrypi{/,2}

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

