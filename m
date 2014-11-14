Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BCDDE007BA; Fri, 14 Nov 2014 09:39:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.201.172.117 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 359 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Nov 2014 09:39:20 PST
Received: from mx1.mail.bg (mx1.mail.bg [193.201.172.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC16E005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 09:39:20 -0800 (PST)
Received: from [192.168.0.41] (unknown [93.152.132.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.mail.bg (Postfix) with ESMTPSA id 03B726000E9D;
	Fri, 14 Nov 2014 19:33:19 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1415986400; bh=86Dc8d5G2c3JdziUcQi7VVSKPPapM37OTMzGrotx2pQ=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=ynE4ZYiNK183lyZIeemgRXL4Hu8zLoi2xkqpR5w/lyKdbQu3nPVzTfBf4gfuQmxyw
	n0VjbBPms6/T2UoHb2Hjiv64WK3KtiHhYI4jTk14ZHmhXy2Ect2DRu5PX8NNEMWPNf
	3QCTGFO8ENun96bee7EwyKrM9XG3NljrhBP++vOo=
Message-ID: <54663CDF.8060604@mail.bg>
Date: Fri, 14 Nov 2014 19:33:19 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.2.0
MIME-Version: 1.0
To: Edward Wingate <edwingate8@gmail.com>
References: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>	<1415952791.3565.1.camel@open-rnd.pl>
	<CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
In-Reply-To: <CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Web frameworks on embedded linux
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
X-List-Received-Date: Fri, 14 Nov 2014 17:39:30 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Edward,

On 11/14/2014 07:10 PM, Edward Wingate wrote:
> On Fri, Nov 14, 2014 at 12:13 AM, Maciek Borzecki
> <maciej.borzecki@open-rnd.pl <mailto:maciej.borzecki@open-rnd.pl>> wrote:
>
>     On czw, 2014-11-13 at 23:12 -0800, Edward Wingate wrote:
>     > I've been trying to get an existing python flask application running
>     > on an embedded linux distro (Poky).  The web app was originally
>     > deployed on a Debian distro.  I need to move the application to a less
>     > heftier board and wanted to try a distro created by Yocto, rather than
>     > try to pare down Debian.
>     >
>     > I've been following the chain of dependencies for the web application
>     > and adding them to Yocto to try and get the app to work (nginx, uwsgi,
>     > python, pyserial, etc.), and hit a bump - Python's built-in logging
>     > and codecs modules are not provided by Yocto.  Maybe I can add them
>     > myself, or maybe I'll rip them out of the application, but I wanted to
>     > take a step back and see if maybe Python/Flask is not the best app
>     > framework to use in an embedded linux distro.
>     Have you installed python-modules pacakge? This package pulls in all
>     standard python modules as dependencies.
>
>
> No, I haven't.  I still have a lot to learn about Yocto and recipes.  I
> went ahead and pulled python-modules in and and got a lot further in
> making this app work.  Thanks, Maciek, for your help.
>
> The ramdisk image ballooned to 22MB though.  It's expected, but due to
> flash size constraints, Python may not be an option in this case.
>
>     I've used Tornado to provide a REST-ful API for an Android application
>     and some basic web pages with status information and so on. Worked
>     quite well.
>
>
> Do you remember what your final ramdisk image size was?
>
> I would still love to hear what web frameworks others here have used on
> embedded linux.

I remember that before several years we worked on a prototype, that had
to deliver dynamic content over ethernet. It had to run on ARM board,
first with QNX and later with Linux. We then found a small web-server,
Mongoose (https://code.google.com/p/mongoose/), which had good license,
was lightweight, with very few dependencies, and had very clean
interface for extending (actually looking at the license, its now GPL,
but I remember that the older versions were licensed under MIT or BSD).

As far as I rememer, the whole thing boils down to registering a
callback, which is called each time you have to service a HTTP request.
We used this to write multiple small extensions in C that generated the
dynamic content, each plugins was responsible for a separate domain of
functionality. It sounds strange to do this in C instead of
higher-level language, but once you start seeing your memory usage to
be in KBytes instead of MBytes range, you start to like this little
component :D.

You can give it a spin, it builds easily for x86 and arm.

Regards,
Nikolay

