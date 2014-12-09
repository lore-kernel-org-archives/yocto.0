Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 988D7E0095D; Tue,  9 Dec 2014 09:59:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0E0E0083A
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 09:59:39 -0800 (PST)
Received: from localhost.localdomain (unknown [78.8.74.197])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 991A62D714C;
	Tue,  9 Dec 2014 18:59:36 +0100 (CET)
Message-ID: <1418147975.2572.3.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 09 Dec 2014 18:59:35 +0100
In-Reply-To: <54871A89.4020704@windriver.com>
References: <1418139871-21134-1-git-send-email-maciej.borzecki@open-rnd.pl>
	<54871A89.4020704@windriver.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.12.8 (3.12.8-1.fc21) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Tom Zanussi <tom.zanussi@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>
Subject: Re: [meta-yocto-bsp][PATCH] beaglebone.conf: update KERNEL_IMAGETYPE to match u-boot
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
X-List-Received-Date: Tue, 09 Dec 2014 17:59:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On wto, 2014-12-09 at 10:51 -0500, Bruce Ashfield wrote:
> On 12/09/2014 10:44 AM, Maciej Borzecki wrote:
> > U-boot 2014.07 in Poky expects a zImage kernel image, thus a build done with
> > current machien config will not be directly useable. Update machine config to
> > produce a zImage.
> 
> poky's README.hardware should be updated as well. When we wrote the 
> instructions
> (and tested on 3.14) the uImage worked, so that is what is referenced
> in the instructions :)

Actually README.hardware section about BBB can be updated with info
about wic. Starting with 1.7 working SD card images for BBB can be built
out of the box, without going through manual partitiong, untarring,
etc. 

AFAIK the same applies to x86 images, though Tom would be the best
person to comment here.


> Bruce
> 
> >
> > Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
> > Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
> > ---
> >   meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
> > index a316207..fb0189d 100644
> > --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> > +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> > @@ -24,7 +24,7 @@ SERIAL_CONSOLE = "115200 ttyO0"
> >   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> >   PREFERRED_VERSION_linux-yocto ?= "3.14%"
> >
> > -KERNEL_IMAGETYPE = "uImage"
> > +KERNEL_IMAGETYPE = "zImage"
> >   KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
> >   KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
> >
> >
> 


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



