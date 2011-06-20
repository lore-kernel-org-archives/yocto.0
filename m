Return-Path: <eha@dev.doredevelopment.dk>
Received: from mail.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id E58F94C800BA
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2011 23:53:43 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.doredevelopment.dk (Postfix) with ESMTP id D670FCFCD;
	Mon, 20 Jun 2011 06:53:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from mail.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id G4+JbDfnmwGz; Mon, 20 Jun 2011 06:53:40 +0200 (CEST)
Received: from [192.168.2.145] (unknown [94.18.139.21])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eha)
	by mail.doredevelopment.dk (Postfix) with ESMTPSA id 30FB44472;
	Mon, 20 Jun 2011 06:53:39 +0200 (CEST)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BANLkTi=taLE4t=1WDxEGoW-DsKRUrB04cQ@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
	<1308513728.2527.2.camel@eha.ulstruplund.dk>
	<BANLkTi=taLE4t=1WDxEGoW-DsKRUrB04cQ@mail.gmail.com>
Organization: DoreDevelopment ApS
Date: Mon, 20 Jun 2011 06:53:37 +0200
Message-ID: <1308545617.2527.10.camel@eha.ulstruplund.dk>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Jun 2011 04:53:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-06-19 at 16:49 -0700, Khem Raj wrote:
> On Sun, Jun 19, 2011 at 1:02 PM, Esben Haabendal
> <eha@dev.doredevelopment.dk> wrote:
> > On Wed, 2011-06-15 at 18:28 -0700, Khem Raj wrote:
> >> On Wed, Jun 15, 2011 at 5:57 PM, Xu, Dongxiao <dongxiao.xu@intel.com> wrote:
> >> > Hi Richard,
> >> >
> >> > Recently I was doing the "configure optimization" feature and collecting data for it.
> >> >
> >> > The main logic of this feature is straight forward:
> >> >
> >> > 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before running autoreconf, while "SOURCE" is the directory after running autoreconf).
> >> > 2. Add SRC_URI checksum for all patches of the source code.
> >> > 3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum of source code and all patches.
> >> > 4. If the currently SRC_URI checksum matches the cached checksum, then we can patch the cache instead of running "autoreconf" stage.
> >> >
> >>
> >> The autoconf'ing is sort of arbitrary at the moment. Depending on what
> >> is staged the results may vary.
> >
> > Which can be properly fixed by using per-recipe (per-workdir) staging.
> >
> 
>  you seem to be stuck in this tight while(1) loop
>  per recipe staging is not panacea

Well, panacea is a very strong work.  But per recipe staging does
improve build reproducability and reliability quite a bit.  As for what
it is not, I think you might want to try it before speaking to strongly
against it.

>  Do you have some prototypes ?

Yes. OE-lite: http://oe-lite.org

And it works so well, that I cannot understand why OE do not have a plan
for how to achieve the same.  I hope you are able to accept this
pointers to when per-recipe staging would help you in a positive manner.
But if OE community and YP as a whole would rather not hear anymore
about it, just say so.

> where you can control what staging is presented
> and its like beaning coffee when it comes to autoconf options.

I am not sure about the coffee part, but as it specifically creates a
staging dir in each workdir, autoconf results is not influenced by
anything else than the recipe meta-data and it's dependencies.  There is
no shared "state" between recipes/builds.

/Esben


