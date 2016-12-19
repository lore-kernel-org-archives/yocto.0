Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD323E004E5; Mon, 19 Dec 2016 10:49:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86789E0034A
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 10:49:15 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id u25so14075172qki.2
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 10:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ByrEOYdXKZHmQ7UPZGlQTuyt0suo9T7emjw3dz8vpxk=;
	b=QeNC4o8zoLzQQw1Zm421886qwTGbpjzAB3+pYIc39haTgTFaaVewIrsopQt+CdsJMC
	Bl/UmfGjbX+dYuXfVDstMjBne2bgOHCJa9rfyo8lJA9p7z/9onzUPtqBfemZepu63Bex
	3M7rG/0Zfdfk6XabaeaFLcW34c0NDWKYcinwTXN04fV3FzdaK886BKB7tKlrzTM6mabE
	tsgR34wSyIwFnbBCrnOkiuiwFJn8CbHIc7FS0UHNTWVHvwnAKlbghns4QLqoaoXw6g/D
	Ntqq9gubAfpUH8qpr2gYIW209pbRpObUIvIehyx+TW+/ZFeAfd1nB/RsO7TKoRbZPUzt
	RbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ByrEOYdXKZHmQ7UPZGlQTuyt0suo9T7emjw3dz8vpxk=;
	b=gomqukmaIXRJqaNe+p22LqySiagIVeg5vxUujJoG2h4yx7RpLHv2Ql0dpsntNPx34c
	RWOKGLLwpMRXjLRVJHHIBfjq2Msjz6Sb8Kwz3YZhzZZ6xXB4/h/Fb1oRxSv1YxmmCNG9
	wP5VDlhNxrGRMZR5ljreUKsr1bUeXuTYmLAQrnOYt2UxiNnS0+6m8mPrtruf+uhAk7zG
	kzOinf53YozLTWikDrAxTKyrCqgeMI4l5ejkUkmVUz9Z36hdQIh7Uyl7boDfv81TSSpm
	lbkvLXhM9RYTQJLJC6e9bcfbNQ0oQR93X+MunZXoBv+1/PothVE6C24tmwxg9WyG4ggj
	k5gQ==
X-Gm-Message-State: AIkVDXLR321C1glA1FJZ8DziR1UsbBJRoqAjwltu/2MO/bVlJKwIxTPJjcCLTrIAC1EAsgIKdCote53ra0P+Uw==
X-Received: by 10.55.132.67 with SMTP id g64mr1013794qkd.8.1482173354571; Mon,
	19 Dec 2016 10:49:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 19 Dec 2016 10:49:14 -0800 (PST)
In-Reply-To: <BN6PR05MB294630B36FA4868C016C5FEBBB910@BN6PR05MB2946.namprd05.prod.outlook.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
	<CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
	<CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
	<BN6PR05MB294630B36FA4868C016C5FEBBB910@BN6PR05MB2946.namprd05.prod.outlook.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 19 Dec 2016 19:49:14 +0100
Message-ID: <CALw8SCUsoHgpkiuDcoe36=XmG64CQ7nYMrZTRhBkeMOsO=mJ6Q@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting up autobuilder on local machine
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
X-List-Received-Date: Mon, 19 Dec 2016 18:49:16 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-19 16:48 GMT+01:00 Bryan Evenson <bevenson@melinkcorp.com>:
> Mirza,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Mirza Krak
>> Sent: Monday, December 19, 2016 8:28 AM
>> To: Bill Randle <bill.randle@gmail.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] setting up autobuilder on local machine
>>
>> 2016-12-19 7:46 GMT+01:00 Mirza Krak <mirza.krak@gmail.com>:
>> > 2016-12-19 4:33 GMT+01:00 Bill Randle <bill.randle@gmail.com>:
>> >> On Sun, Dec 18, 2016 at 8:25 AM, Paul Barker <paul@paulbarker.me.uk>
>> wrote:
>> >>> On Sun, 18 Dec 2016 15:46:19 +0100
>> >>> Mirza Krak <mirza.krak@gmail.com> wrote:
>> >>>
>> >>>> Hi.
>> >>>>
>> >>>> I have been looking in to the possibility to utilize yocto autobuilder
>> >>>> for one of my own projects.
>> >>>>
>> >>>> But I am having some problems setting this up and hopefully someone
>> >>>> here can provide some pointers.
>> >>>>
>> >>>> I did the "quickstart part":
>> >>>>
>> >>>> git clone git://git.yoctoproject.org/yocto-autobuilder
>> >>>> cd yocto-autobuilder
>> >>>> . ./yocto-autobuilder-setup
>> >>>> yocto-start-autobuilder both
>> >>>>
>> >>>> Above succeeds without any issues. But now what? :)
>> >>>>
>> >>>> I went to https://localhost:8010. I tried to login using the
>> >>>> information that is in the .htpasswd file but that did not work. Where
>> >>>> are the credentials to login setup?
>> >>>
>> >>> You'll need to create the .htpasswd file yourself. I think the
>> >>> "htpasswd" tool can do this for you, I can't remember the exact
>> >>> commands I used to make mine though sorry.
>> >>>
>> >>>>
>> >>>> I also made an attempt to remove all un-wanted buildsets and now
>> >>>> buildset-config contains (all other directories are removed)
>> >>>>
>> >>>> nightly-mender-rpi.conf  yoctoAB.conf
>> >>>>
>> >>>> Above is parsed correctly on start-up but build is never triggered. I
>> >>>> probably removed to much :). Looking in to nigthly.conf it seem that
>> >>>> is the one that trigger all other nightly builds?
>> >>>>
>> >>>> My fork can be found at [1].
>> >>>>
>> >>>> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi
>> >>>
>> >>> This looks good, you just need to setup the scheduler with something
>> >>> like this in nightly-mender-rpi.conf:
>> >>>
>> >>>     scheduler:
>> >>>     [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]
>> >>>
>> >>> You should only need a separate nightly.conf when you want that to
>> >>> trigger multiple builds.
>> >>>
>> >>> I've recently setup an autobuilder for meta-raspberrypi which I'll be
>> >>> publishing once I've got the last bits of setup done. If you're still
>> >>> struggling to get the nightly triggering working let me know and I'll
>> >>> put up the configurations I've used as a git repository.
>> >>
>> >> There is also additional helpful information on the Yocto Autobuilder
>> >> wiki page here:
>> >> https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder. Some of the
>> >> information applies to the Yocto Project build cluster, but is still
>> >> applicable to local autobuilders. I followed the same instructions to
>> >> setup a local AB. Be sure to use the htpasswd command that's in the
>> >> autobuilder git tree (in one of the bin directories, as I recall),
>> >> rather than a native system one. The AB version defaults to the
>> >> shorter crypto scheme that buildbot requires.
>> >
>> > Thank you for your fast responses. Generating the htpasswd file my
>> > self did the trick. Now I can login. The full command was (as you
>> > suggested I used the one in autobuilder git repo under ./bin):
>> >
>> >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
>> password>
>> >
>> > Forced a build of my configuration now and hoping for the best :).
>>
>> And it was not green all the way.
>>
>> I get an error that I do not get how to get around. The error message is:
>>
>> ERROR: Unable to parse
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf:
>> [Errno 2] file /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
>> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
>> mender/conf/layer.conf
>> not found
>>
>> The error message I understand. But I do not understand why it adds
>> meta-mender to bblayers files. I did not tell it to do that, because
>> meta-mender contains layers that I want to include. Similar to
>> meta-openembedded (which is also added to bblayers).
>>
>> Here is the bblayers.conf also for reference:
>> mirzak@debian:~/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/build/conf$
>> cat bblayers.conf
>> POKY_BBLAYERS_CONF_VERSION =  "2"
>> BBPATH = "${TOPDIR}"
>> BBFILES ?=""
>> BBLAYERS += " \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-poky
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto-bsp
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/oe-meta-go
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-raspberrypi
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-
>> core
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-
>> raspberrypi
>> \
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
>> rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded/meta-oe
>> \
>> "
>>
>> Can I disable the "magic" that added meta-mender and meta-
>> openembedded?
>
> Yes, you can.  I just ran into this problem the other week when I updated my autobuilder.  Add 'autoinclude':False to your layer definition in the "repos" section in your build configuration file.  For example, in one of my build configurations I have:
>
>         {'meta-openembedded':
>             {'autoinclude':False, 'repourl':'git://git.openembedded.org/meta-openembedded',
>              'branch':'fido'}},
>
> Here's the patch description further describing what the autoinclude option does: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?id=1599d458ec078378438aeb011ed706a4474b10a6.

Thanks a lot Bryan. This is exactly what I was looking for.

Best Regards
Mirza

