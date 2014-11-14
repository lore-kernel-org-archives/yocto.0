Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07724E007BA; Fri, 14 Nov 2014 10:40:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF4AE005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:40:00 -0800 (PST)
Received: from comp-006-thk (unknown [78.8.184.130])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id A10B62D631B;
	Fri, 14 Nov 2014 19:39:57 +0100 (CET)
Message-ID: <1415990396.3783.2.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Edward Wingate <edwingate8@gmail.com>
Date: Fri, 14 Nov 2014 19:39:56 +0100
In-Reply-To: <CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
References: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>
	<1415952791.3565.1.camel@open-rnd.pl>
	<CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Nov 2014 18:40:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On pią, 2014-11-14 at 09:10 -0800, Edward Wingate wrote:
> No, I haven't.  I still have a lot to learn about Yocto and recipes.
> I went ahead and pulled python-modules in and and got a lot further in
> making this app work.  Thanks, Maciek, for your help.
>
> The ramdisk image ballooned to 22MB though.  It's expected, but due to
> flash size constraints, Python may not be an option in this case.
>
>
>         I've used Tornado to provide a REST-ful API for an Android
>         application
>         and some basic web pages with status information and so on.
>         Worked quite well.
>
>
> Do you remember what your final ramdisk image size was?
It was a beefy application image, with lots of dependencies.

>
>
>
> I would still love to hear what web frameworks others here have used
> on embedded linux.

In yet another project we used lighttpd as request handler, while the
actual app was running as fastcgi service. HTML templates were handled
by Clearsilver, see http://www.clearsilver.net (really neat library, New BSD
license). IIRC, Clearsilver pulls in bdwgc as dependency, so there's no
hassle with memory management.

Quite recently we had yet another custom work where HTTP JSON-RPC
requests were handled using libsoup.

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




