Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F94E009AD; Thu, 12 Jan 2017 10:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601FCE003E4
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:43:30 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id r126so32489443wmr.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YdKnr+e7ktpPXg49AMueq6ahcIPscbIoC28CRV1XRqY=;
	b=uKrBckLe+BjITiTTpk7x301bK5YA3RMQparI7QCWbLr8pTpf5lI4VskemUlKgC6dBa
	ae1zQV6sp3CWfJvhEixjUS8+MOoyp8R3VJmzMJLr/h1Q9UZ/gf6h/sA3kNF13IuQq0hP
	rHWMwx9cm0XNi61TU+wEC5HizsH4Hqhh68dfhTywujA+mJ47N/3nyWu3gqf/lHO02knF
	do0gqHjqZ1P2ax9hroJRYZ+9Sja3gP64hp9Q4o/hb5d/mkgqIPzuM+iGIv4IZ4SPBa3j
	2WH9r5I6W8wL0SO5gMp3tUcK5U5NjN8C2EtO3jyzLSHU+UyYJeZRDAHWOCUs/VEhZb1O
	7SzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YdKnr+e7ktpPXg49AMueq6ahcIPscbIoC28CRV1XRqY=;
	b=RPdQV+hDrPe/D8zl6Q+g//YJtbHb8Cenr1EG9oNSAd0ajzG33GWTbGlzSxFnwET/T4
	E5URTvpbGu3lY4XGcS2MSRVnKaMcO4yiadrX6Q2mq0pDc+78aU1uIlSxmgjp2Z8dINF1
	hhIwmz5xoQp53gx4tRUXshUg8+fSUZ7wNOwWM41rN9FM4GH/pl3CmlmqeZFBKJSxrS2v
	ys19jGlehAorg31W7EO2l2pqY9h4JV57dcprQUlUYnw9QJaaOsUzwEInoCvQGX0ldatf
	tR/mOIKRGNZbNGpMzztG1sJQz7lGFGv+WttrZi5sMbO+sPFyYOkwMkWVm8Yl+c1oMdE0
	s9zg==
X-Gm-Message-State: AIkVDXJZzpLE8u1BR8TE1jkCupXYlbCNVM7M16Yljf5VRvJoJxba86Fnp26s/wYysIEIa5xazHM8R8s4F8UBJg==
X-Received: by 10.223.150.58 with SMTP id b55mr8238731wra.192.1484246609090;
	Thu, 12 Jan 2017 10:43:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.10.69 with HTTP; Thu, 12 Jan 2017 10:43:08 -0800 (PST)
In-Reply-To: <CAC+thW1osKnAEFqaDtQe-+9pE6JpSJUMeU86Yb+GE5oQ9XDZzg@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
	<CAC+thW1osKnAEFqaDtQe-+9pE6JpSJUMeU86Yb+GE5oQ9XDZzg@mail.gmail.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 12 Jan 2017 19:43:08 +0100
Message-ID: <CAD4b0_+qT-rdOWUjcx6FEkgHSg_8M+2=speaGxFUw=uUon8NTg@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 18:43:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 7:12 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> On Thu, Jan 12, 2017 at 6:55 PM, Maciej Borz=C4=99cki
> <maciej.borzecki@rndity.com> wrote:
>>
>> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
>> <timothy.t.orling@linux.intel.com> wrote:
>> > You can also build using Docker containers:
>> > https://github.com/crops/docker-win-mac-docs/wiki
>>
>> IIRC docker on mac relies on docker-machine, which in turn spins up a
>> virtualbox VM.
>
>
> Not anymore! There's a native implementation [1] but still a linux kernel
> around anyway! ;-)
>
> [1]
> https://www.docker.com/docker-news-and-press/docker-released-native-mac-a=
nd-windows-apps-optimize-developer-experience

Good to know. There is still hope for mac users after all :)

>>
>>
>>
>> >
>> > On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> wrot=
e:
>> >
>> >
>> > On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrot=
e:
>> >>
>> >> Is there any documentation for running the Yocto build system on Mac =
OS
>> >> X
>> >> or macOS as Apple now calls it? I am working with the Intel Aero boar=
d.
>> >> Before I go down the rabbit hole of fixing issues like this one (and =
I
>> >> am
>> >> using the bash shell), I=E2=80=99d like to know if anyone has build i=
t on os x
>> >> before.
>> >
>> >
>> > If you install all of the GNU tools using brew or similar and put them
>> > first
>> > on $PATH then you can get bitbake started.  Then you need to stub out
>> > the
>> > linux-specific bits in bitbake.  I've previously started on this work
>> > already
>> >
>> > (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/=
darwin).
>> > The next step is figuring out how to configure OE to build and link
>> > natively
>> > on OSX using LLVM instead of GCC.
>> >
>> > However all of this is mostly academic because in Sierra (iirc) onward=
s
>> > there is tighter security on processes, which means that pseudo won't
>> > work
>> > even if you port it to macOS.
>> >
>> > So unless you fancy some non-trivial engineering the short version is
>> > just
>> > use something like Docker to run a Linux system on your Mac.
>> >
>> > Ross
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>>
>>
>> --
>> Maciej Borzecki
>> RnDity
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>



--=20
Maciej Borzecki
RnDity

