Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A75DDE00C2E; Wed,  3 Feb 2016 03:05:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5723FE00C2A
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 03:05:16 -0800 (PST)
Received: from comp-006-thk (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id DCC4F1A7269;
	Wed,  3 Feb 2016 12:05:13 +0100 (CET)
Message-ID: <1454497513.3990.6.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>, 
	yocto@yoctoproject.org
Date: Wed, 03 Feb 2016 12:05:13 +0100
In-Reply-To: <56B1D2D1.5010508@nokia.com>
References: <56B1D2D1.5010508@nokia.com>
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
X-List-Received-Date: Wed, 03 Feb 2016 11:05:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On śro, 2016-02-03 at 11:13 +0100, Woronicz, Bartosz ( NSN - PL/Wroclaw) wrote:
> Let's say I have my package at
> 
>      host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/
> 
> I would like to have symlink created
> 
>      host-64/tmp/work/x86_64-poky-linux/mypackage/latest -> 1.2.3-r4/
> 
> each time the new version is fetched and unpacked. How can I achieve 
> that ? Which class, task should I append, extend ?
> 
> Optionally, I would like to have that for all packages or at least 
> packages in my meta.
> 
> 
> P.S. I asked the same question here: 
> http://stackoverflow.com/questions/35158764/where-should-i-append-yocto-bitbake-task-to-
> create-work-folder-symlink
> 

Put that into a class in your layer, ex. latest-link.bbclass (untested):

do_latest_link() {
	if [ -n "${WORKDIR}" ]; then
		linkname="$(dirname ${WORKDIR})/latest"
		rm -f $linkname
		ln -s ${WORKDIR} $linkname
	fi
}
addtask latest_link after do_unpack


If you want that applied to all the recipes then add INHERIT += "latest-link" in your
local.conf. The other way is just to 'inherit latest-link' in individual recipes.


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




