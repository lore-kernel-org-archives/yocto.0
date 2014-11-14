Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5804E007BA; Fri, 14 Nov 2014 09:18:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51EBDE005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 09:18:10 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E9B26F811E4; Fri, 14 Nov 2014 10:18:06 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7BE50F811E2;
	Fri, 14 Nov 2014 10:18:05 -0700 (MST)
Message-ID: <54663961.4020708@mlbassoc.com>
Date: Fri, 14 Nov 2014 10:18:25 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>	<1415952791.3565.1.camel@open-rnd.pl>
	<CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
In-Reply-To: <CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Nov 2014 17:18:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-14 10:10, Edward Wingate wrote:
> On Fri, Nov 14, 2014 at 12:13 AM, Maciek Borzecki <maciej.borzecki@open-rnd.pl <mailto:maciej.borzecki@open-rnd.pl>> wrote:
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
> No, I haven't.  I still have a lot to learn about Yocto and recipes.  I went ahead and pulled python-modules in and and got a lot further in making this app work.  Thanks, Maciek,
> for your help.
>
> The ramdisk image ballooned to 22MB though.  It's expected, but due to flash size constraints, Python may not be an option in this case.

You can always just bring in the packages you need (python-modules is a
pretty heavy hammer!)  Python is split into ~90 separate packages, each
with a [small] set of modules/functionality.

>     I've used Tornado to provide a REST-ful API for an Android application
>     and some basic web pages with status information and so on. Worked quite well.
>
>
> Do you remember what your final ramdisk image size was?
>
> I would still love to hear what web frameworks others here have used on embedded linux.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

