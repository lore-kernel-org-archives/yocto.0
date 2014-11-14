Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23159E0084F; Fri, 14 Nov 2014 00:13:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95135E00831
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 00:13:13 -0800 (PST)
Received: from comp-006-thk (unknown [46.170.72.194])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 918712DAD3D;
	Fri, 14 Nov 2014 09:13:11 +0100 (CET)
Message-ID: <1415952791.3565.1.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Edward Wingate <edwingate8@gmail.com>
Date: Fri, 14 Nov 2014 09:13:11 +0100
In-Reply-To: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>
References: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.12.5 (3.12.5-1.fc20) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Web frameworks on embedded linux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maciej.borzecki@open-rnd.pl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Nov 2014 08:13:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On czw, 2014-11-13 at 23:12 -0800, Edward Wingate wrote:
> I've been trying to get an existing python flask application running
> on an embedded linux distro (Poky).  The web app was originally
> deployed on a Debian distro.  I need to move the application to a less
> heftier board and wanted to try a distro created by Yocto, rather than
> try to pare down Debian.
> 
> I've been following the chain of dependencies for the web application
> and adding them to Yocto to try and get the app to work (nginx, uwsgi,
> python, pyserial, etc.), and hit a bump - Python's built-in logging
> and codecs modules are not provided by Yocto.  Maybe I can add them
> myself, or maybe I'll rip them out of the application, but I wanted to
> take a step back and see if maybe Python/Flask is not the best app
> framework to use in an embedded linux distro.  
Have you installed python-modules pacakge? This package pulls in all
standard python modules as dependencies.

I've used Tornado to provide a REST-ful API for an Android application
and some basic web pages with status information and so on. Worked quite
well.



-- 
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079

Niniejsza wiadomość wraz z załącznikami może zawierać chronione prawem
lub poufne informacje i została wysłana wyłącznie do wiadomości i
użytku osób, do których została zaadresowana. Jeśli wiadomość została
otrzymana przypadkowo zabrania się jej kopiowania lub rozsyłania do
osób trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o zaistniałej
sytuacji za pomocą wiadomości zwrotnej. Dziękujemy.

This message, including any attachments hereto, may contain privileged
or confidential information and is sent solely for the attention and
use of the intended addressee(s). If you are not an intended addressee,
you may neither use this message nor copy or deliver it to anyone. In
such case, you should immediately destroy this message and kindly notify
the sender by reply email. Thank you.



