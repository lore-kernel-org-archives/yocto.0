Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FEF9E00777; Wed,  5 Apr 2017 05:16:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462A9E00655
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 05:16:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id AB12A26569A
Message-ID: <1491394580.25991.22.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: "Maier, Chris" <C.Maier@geze.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 05 Apr 2017 14:16:20 +0200
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCE0DB@gcxdb1.corp.geze.com>
References: <2AA7D088591C49498E92D6491C58159334CCE0DB@gcxdb1.corp.geze.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Wed, 05 Apr 2017 12:16:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-04-05 at 11:21 +0000, Maier, Chris wrote:
> Hi,
>  
> I want to create a deployable SD card image. My board (beaglebone based) boots from SD card and
> runs a script which copies the rootfs.tar.bz2 to the flash memory.
> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
> A rootfs in the rootfs, does that make sense?

I don't think it is good if both rootfs are based on the same image.

>  
> Any help is appreciated.
> 

My first idea will be to create an install image for sd card depending on your image rootfs tarball.

$ cat installer-image.bb
...
do_rootfs[depends] += "original-image"

ROOTFS_POSTPROCESS_COMMAND = my-copy-image-to-installer-rootfs

my-copy-image-to-installer-rootfs() {
  cp ??.tar.bz2 ${D}/home/root
}

But maybe it is not the best solution.

You can look at meta/classes/image-live.bbclass which provides a similar mechanism.

>  
> Chris
> 	i.A. CHRIS MAIER 
> Software-Entwicklungsingenieur 
> 
> Phone: +49 7152 203 6741 | Fax: +49 7152 203 76741 | C.Maier@geze.com 
> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg | www.geze.com 
> 
>    SAVE PAPER - THINK BEFORE YOU PRINT
>               	Geschäftsführung: Brigitte Vöster-Alber (Vorsitzende), Andrea Alexandra
> Alber, Marc Alber, Florian Birkenmayer 
> Vorsitzender des Aufsichtsrates: Prof. Dr. Dr. Ulli Arnold, Amtsgericht Stuttgart HRB 250329, Tel:
> +49 7152 203 0 
> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg, Germany
> 

