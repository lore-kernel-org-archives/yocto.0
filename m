Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D5BE00AAB; Sun, 18 Dec 2016 22:46:35 -0800 (PST)
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
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3C1E00AAB
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 22:46:29 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id w33so138767360qtc.3
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 22:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u2OObhZpNuuYZFe45xR/bTK0eEVckctirjcG3P18vDw=;
	b=hkEGLaT7mDBCYU/TZfCSxMrk2HMgl/YgZxv62WDk/VaAdlpTCAhMTmFyo4LhmmVmLS
	mDvewzXfFsaTrefAEeoAbOd0WwfStI4tbNEVBvuozQBhG1I06hFr0Owsaumbm9aksEkD
	nluOaDrwvdrvlLENumZCN5oodmmlG+WLilW4/Zs2icZeBOAgGNGc3FsjuIVwRVXIrO9y
	IvlB2uq4zqk9i4eiUEkuKLlb7hlfLEK5qMgfkSZiwPW9K+sCU7v0qSUZ+VPrY3fUC3YA
	/UTItsV3U7jJkOOTBy6nf0PLAUbkygKsZuRpt61ReCp8cg6GG91DvUD6v7AeOKKwj4ci
	JiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u2OObhZpNuuYZFe45xR/bTK0eEVckctirjcG3P18vDw=;
	b=qfMZU4tZAaA5lIEv/J53nm/5RCL+wiLAdIeIz8m+X6B6rAEmS23L5aUXt64QDKACIP
	LWIz2Of+b4+5CemNanvRfA6RKPHnaQqasIIBE+5fzzSF+QJ6ly5hxJHjrT4tP6UhPV1c
	wZN9eG4jmcTgOPSHOG7hIq60sPiZkkv9MmsZB7g4L5AOhaRNhk2w0+OK+nwai23twtvK
	3+OThDY8kXsEjIMnnFj1RyPrGPTyLl8TS2ioG5oILMD/hAzpqe2vSK6TQjgB/KU8TUfm
	TnfCQvR7SqX7fcbNMHpdXCsrQHHLUIi7ug88bMth9TAA1nEoSmvjYuqAyqDjrAJubuZC
	rGOQ==
X-Gm-Message-State: AIkVDXKHE6rINHTP+KlEOcRvoqlcHuU/AhQ5F/W/vI0kjWWnx3PUP9h16n516ivXU9/DY4NgCSalH7xc1dLvIQ==
X-Received: by 10.200.55.69 with SMTP id p5mr15641387qtb.67.1482129989283;
	Sun, 18 Dec 2016 22:46:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Sun, 18 Dec 2016 22:46:28 -0800 (PST)
In-Reply-To: <CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 19 Dec 2016 07:46:28 +0100
Message-ID: <CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
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
X-List-Received-Date: Mon, 19 Dec 2016 06:46:35 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-19 4:33 GMT+01:00 Bill Randle <bill.randle@gmail.com>:
> On Sun, Dec 18, 2016 at 8:25 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>> On Sun, 18 Dec 2016 15:46:19 +0100
>> Mirza Krak <mirza.krak@gmail.com> wrote:
>>
>>> Hi.
>>>
>>> I have been looking in to the possibility to utilize yocto autobuilder
>>> for one of my own projects.
>>>
>>> But I am having some problems setting this up and hopefully someone
>>> here can provide some pointers.
>>>
>>> I did the "quickstart part":
>>>
>>> git clone git://git.yoctoproject.org/yocto-autobuilder
>>> cd yocto-autobuilder
>>> . ./yocto-autobuilder-setup
>>> yocto-start-autobuilder both
>>>
>>> Above succeeds without any issues. But now what? :)
>>>
>>> I went to https://localhost:8010. I tried to login using the
>>> information that is in the .htpasswd file but that did not work. Where
>>> are the credentials to login setup?
>>
>> You'll need to create the .htpasswd file yourself. I think the
>> "htpasswd" tool can do this for you, I can't remember the exact
>> commands I used to make mine though sorry.
>>
>>>
>>> I also made an attempt to remove all un-wanted buildsets and now
>>> buildset-config contains (all other directories are removed)
>>>
>>> nightly-mender-rpi.conf  yoctoAB.conf
>>>
>>> Above is parsed correctly on start-up but build is never triggered. I
>>> probably removed to much :). Looking in to nigthly.conf it seem that
>>> is the one that trigger all other nightly builds?
>>>
>>> My fork can be found at [1].
>>>
>>> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi
>>
>> This looks good, you just need to setup the scheduler with something
>> like this in nightly-mender-rpi.conf:
>>
>>     scheduler:
>>     [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]
>>
>> You should only need a separate nightly.conf when you want that to
>> trigger multiple builds.
>>
>> I've recently setup an autobuilder for meta-raspberrypi which I'll be
>> publishing once I've got the last bits of setup done. If you're still
>> struggling to get the nightly triggering working let me know and I'll
>> put up the configurations I've used as a git repository.
>
> There is also additional helpful information on the Yocto Autobuilder
> wiki page here:
> https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder. Some of the
> information applies to the Yocto Project build cluster, but is still
> applicable to local autobuilders. I followed the same instructions to
> setup a local AB. Be sure to use the htpasswd command that's in the
> autobuilder git tree (in one of the bin directories, as I recall),
> rather than a native system one. The AB version defaults to the
> shorter crypto scheme that buildbot requires.

Thank you for your fast responses. Generating the htpasswd file my
self did the trick. Now I can login. The full command was (as you
suggested I used the one in autobuilder git repo under ./bin):

    ./htpasswd -b -c <path to htpasswd file> <user name> <secret password>

Forced a build of my configuration now and hoping for the best :).

Best Regards
Mirza

