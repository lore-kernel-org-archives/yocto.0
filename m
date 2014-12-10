Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36824E0082F; Wed, 10 Dec 2014 11:28:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FEF6E00461
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:27:54 -0800 (PST)
Received: from localhost.localdomain (unknown [78.8.74.197])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id C49A1235B02;
	Wed, 10 Dec 2014 20:27:51 +0100 (CET)
Message-ID: <1418239670.8014.3.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 10 Dec 2014 20:27:50 +0100
In-Reply-To: <FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
References: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>
	<FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.12.8 (3.12.8-1.fc21) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Koehler,
	Yannick \(HP Networking\)" <yannick.koehler@hp.com>
Subject: Re: parallel build of multiple machine/os?
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
X-List-Received-Date: Wed, 10 Dec 2014 19:28:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On śro, 2014-12-10 at 11:00 -0800, Khem Raj wrote:
> > On Dec 10, 2014, at 10:52 AM, Koehler, Yannick (HP Networking)
> <yannick.koehler@hp.com> wrote: > > Can Yocto build for example in a
> single bitbake call an image for x86, ppc, arm, others?  Or is the call
> to bitbake limited to a single architecture?  And if so, how? > > I see
> that lots of *-native package are built, and I guess is that for each
> machine/os those would be reused, as such, it appears it would be a
> benefit to be able to build multiple package version for different
> architecture/distro/machine in a single invocation of bitbake. > 
> 
> parallel multi-machine builds have been discussed but not thought of
> worth doing. you could however share lot of common packages among
> machines sequentially.

Out of curiosity, are parallel builds using the same SSTATE_DIR and
DL_DIR, but all other *_DIR variables distinct, considered safe?


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



