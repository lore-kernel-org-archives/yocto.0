Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D82FFE00524; Tue, 22 Jul 2014 13:15:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1FCE00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 13:15:30 -0700 (PDT)
Received: from localhost.localdomain (unknown [78.8.205.122])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 31306116AC5F;
	Tue, 22 Jul 2014 22:15:28 +0200 (CEST)
Message-ID: <1406060127.5135.0.camel@localhost.localdomain>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Christopher Larson <clarson@kergoth.com>
Date: Tue, 22 Jul 2014 22:15:27 +0200
In-Reply-To: <CABcZANk2U6p4RzqNF8WptVgpZ63MVDTLsgHY36__W4bB2vK-RQ@mail.gmail.com>
References: <1406029381.16746.16.camel@localhost.localdomain>
	<CABcZANk2U6p4RzqNF8WptVgpZ63MVDTLsgHY36__W4bB2vK-RQ@mail.gmail.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.12.3 (3.12.3-1.fc20) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: read only rootfs & systemd
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
X-List-Received-Date: Tue, 22 Jul 2014 20:15:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On wto, 2014-07-22 at 08:44 -0700, Christopher Larson wrote:
> 
> On Tue, Jul 22, 2014 at 4:43 AM, Maciek Borzecki
> <maciej.borzecki@open-rnd.pl> wrote:
>         Is read-only-rootfs supported on systemd setups?
>         
>         The current dev manual is not clear about this. Also in
>         image.bbclass
>         there are comments that read_only_rootfs_hook supports only
>         sysvinit
>         setups.
> 
> 
> Not in oe-core, no. https://github.com/MentorEmbedded/meta-ro-rootfs
> is how we're handling it at mentor today, we haven't gotten around to
> pursuing an upstream solution, whether integration of this or
> something else, as of yet. If you follow the instructions at
> https://github.com/MentorEmbedded/meta-ro-rootfs#usage it should work
> fine for you.
> 
Thanks, very useful.


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



