Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4E42E00D89; Mon,  8 Feb 2016 05:44:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DBBDE00D86
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 05:44:42 -0800 (PST)
Received: from comp-006-thk (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 04AA3609E60;
	Mon,  8 Feb 2016 14:44:38 +0100 (CET)
Message-ID: <1454939078.3938.18.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>, 
	yocto@yoctoproject.org
Date: Mon, 08 Feb 2016 14:44:38 +0100
In-Reply-To: <56B89638.9060905@nokia.com>
References: <56B1D2D1.5010508@nokia.com>
	<1454497513.3990.6.camel@open-rnd.pl> <56B33100.9020903@nokia.com>
	<56B89638.9060905@nokia.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.18.4 (3.18.4-1.fc23) 
Mime-Version: 1.0
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Mon, 08 Feb 2016 13:44:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On pon, 2016-02-08 at 14:20 +0100, Woronicz, Bartosz ( NSN - PL/Wroclaw) wrote:
> The problem is, it doesn't doit delirebately,
> 
> when I run
> 
> bitbake -f -c latest_link myrecipe , it works
> 
> when the process is in the tasks batch running
> bitbake myrecipe
> it doesn't
> What am I doing wrong ?

Try adding:

do_latest_link[nostamp] = "1"

This should cause the task to be run each time.

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




