Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF4F1E01064; Mon, 19 Dec 2016 05:28:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1A8DE00EE7
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 05:28:09 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id n6so146745863qtd.1
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 05:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iypdAE4McHs5TLLz6fPdzv7EOeV+3Nvwj727viuLdRE=;
	b=vOuaRkVOxCAnUZhLvB2zZ3wijZAiv0SEDYhf8NCaQ9JatN2fGUjjnIxUCC++AhQWhr
	KI5SACkC8w4yn1+6JImMDmod4mazF7u/t/pl6q2YyWr9bM3K+bNTsrVCch+pw18I4SDk
	qDeU8Ci8WKhssKhG0wYzAKRwGkZWIkeWl+sb4GOwaZw40v7V9VGHnVrCyuiW6uEv4YBl
	Jk4xtjOEWZfKa8KugRu572rJwPzd8GCSfmuv4gLy8TkcGoVmXQkT9EPz7cM7BEI4sUrE
	y7GCo/Y/ha58vDIYjw+RiJaOtPL+IZWs6V5vBT8eNWIeR1ziXiolYF2OWg4BKnbS8Bzm
	UXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iypdAE4McHs5TLLz6fPdzv7EOeV+3Nvwj727viuLdRE=;
	b=XPkjq/t2znOQGW+r0ke368SaGbIjMYSP0cLU5dUtnLeL8feiw5U/MavDv9ETDJ0kO/
	DpKjVk3MMxDZmz3DSQ9PPP4GU+MvrEHHst5b01T8IlHBw80l6ox4JN6JywAXA3rgHiVg
	MQqyvJMWzh6b4P7uXguYY+7kk0g6gIDumCGJGXj653VipAkN8JDhOqjQnhELAZScxMwv
	3Jwzul1KMlYxYdevoDsq4KIN7YNM8VQxcaGFVbbkOdj0LKvFPTiZZ5CyYxEcGT4v/dAu
	ki/y0NYPyYid+k3SXT4XJAR9D1u3nKIukOfKZRqsk0MGBrKO73WGq/6HbIaY8Jf1TLP2
	PEzg==
X-Gm-Message-State: AIkVDXJ8Wj/YShkQyfNljVmcD/IYRA8hFlUu3eLDfFA81bxkBA10UAEoEwCqXxeuxcRx8D9SRUllzWNKVT+UzA==
X-Received: by 10.237.37.72 with SMTP id w8mr16588994qtc.80.1482154088877;
	Mon, 19 Dec 2016 05:28:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 19 Dec 2016 05:28:08 -0800 (PST)
In-Reply-To: <CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
	<CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 19 Dec 2016 14:28:08 +0100
Message-ID: <CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
To: Bill Randle <bill.randle@gmail.com>
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
X-List-Received-Date: Mon, 19 Dec 2016 13:28:30 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-19 7:46 GMT+01:00 Mirza Krak <mirza.krak@gmail.com>:
> 2016-12-19 4:33 GMT+01:00 Bill Randle <bill.randle@gmail.com>:
>> On Sun, Dec 18, 2016 at 8:25 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>> On Sun, 18 Dec 2016 15:46:19 +0100
>>> Mirza Krak <mirza.krak@gmail.com> wrote:
>>>
>>>> Hi.
>>>>
>>>> I have been looking in to the possibility to utilize yocto autobuilder
>>>> for one of my own projects.
>>>>
>>>> But I am having some problems setting this up and hopefully someone
>>>> here can provide some pointers.
>>>>
>>>> I did the "quickstart part":
>>>>
>>>> git clone git://git.yoctoproject.org/yocto-autobuilder
>>>> cd yocto-autobuilder
>>>> . ./yocto-autobuilder-setup
>>>> yocto-start-autobuilder both
>>>>
>>>> Above succeeds without any issues. But now what? :)
>>>>
>>>> I went to https://localhost:8010. I tried to login using the
>>>> information that is in the .htpasswd file but that did not work. Where
>>>> are the credentials to login setup?
>>>
>>> You'll need to create the .htpasswd file yourself. I think the
>>> "htpasswd" tool can do this for you, I can't remember the exact
>>> commands I used to make mine though sorry.
>>>
>>>>
>>>> I also made an attempt to remove all un-wanted buildsets and now
>>>> buildset-config contains (all other directories are removed)
>>>>
>>>> nightly-mender-rpi.conf  yoctoAB.conf
>>>>
>>>> Above is parsed correctly on start-up but build is never triggered. I
>>>> probably removed to much :). Looking in to nigthly.conf it seem that
>>>> is the one that trigger all other nightly builds?
>>>>
>>>> My fork can be found at [1].
>>>>
>>>> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi
>>>
>>> This looks good, you just need to setup the scheduler with something
>>> like this in nightly-mender-rpi.conf:
>>>
>>>     scheduler:
>>>     [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]
>>>
>>> You should only need a separate nightly.conf when you want that to
>>> trigger multiple builds.
>>>
>>> I've recently setup an autobuilder for meta-raspberrypi which I'll be
>>> publishing once I've got the last bits of setup done. If you're still
>>> struggling to get the nightly triggering working let me know and I'll
>>> put up the configurations I've used as a git repository.
>>
>> There is also additional helpful information on the Yocto Autobuilder
>> wiki page here:
>> https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder. Some of the
>> information applies to the Yocto Project build cluster, but is still
>> applicable to local autobuilders. I followed the same instructions to
>> setup a local AB. Be sure to use the htpasswd command that's in the
>> autobuilder git tree (in one of the bin directories, as I recall),
>> rather than a native system one. The AB version defaults to the
>> shorter crypto scheme that buildbot requires.
>
> Thank you for your fast responses. Generating the htpasswd file my
> self did the trick. Now I can login. The full command was (as you
> suggested I used the one in autobuilder git repo under ./bin):
>
>     ./htpasswd -b -c <path to htpasswd file> <user name> <secret password>
>
> Forced a build of my configuration now and hoping for the best :).

And it was not green all the way.

I get an error that I do not get how to get around. The error message is:

ERROR: Unable to parse
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf:
[Errno 2] file /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf
not found

The error message I understand. But I do not understand why it adds
meta-mender to bblayers files. I did not tell it to do that, because
meta-mender contains layers that I want to include. Similar to
meta-openembedded (which is also added to bblayers).

Here is the bblayers.conf also for reference:
mirzak@debian:~/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/build/conf$
cat bblayers.conf
POKY_BBLAYERS_CONF_VERSION =  "2"
BBPATH = "${TOPDIR}"
BBFILES ?=""
BBLAYERS += " \
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-poky
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto-bsp
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/oe-meta-go
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-raspberrypi
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-core
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-raspberrypi
\
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded/meta-oe
\
"

Can I disable the "magic" that added meta-mender and meta-openembedded?

Best Regards
Mirza

