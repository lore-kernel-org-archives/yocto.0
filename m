Return-Path: <eha@dev.doredevelopment.dk>
Received: from mail.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id B518D4C800BA
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2011 15:02:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.doredevelopment.dk (Postfix) with ESMTP id 8CEB4CFC9;
	Sun, 19 Jun 2011 22:02:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from mail.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 7w+e6JflR4a1; Sun, 19 Jun 2011 22:02:11 +0200 (CEST)
Received: from [192.168.2.145] (unknown [94.18.139.21])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eha)
	by mail.doredevelopment.dk (Postfix) with ESMTPSA id 5C36756D3;
	Sun, 19 Jun 2011 22:02:10 +0200 (CEST)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
Organization: DoreDevelopment ApS
Date: Sun, 19 Jun 2011 22:02:08 +0200
Message-ID: <1308513728.2527.2.camel@eha.ulstruplund.dk>
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
X-List-Received-Date: Sun, 19 Jun 2011 20:02:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-15 at 18:28 -0700, Khem Raj wrote:
> On Wed, Jun 15, 2011 at 5:57 PM, Xu, Dongxiao <dongxiao.xu@intel.com> wrote:
> > Hi Richard,
> >
> > Recently I was doing the "configure optimization" feature and collecting data for it.
> >
> > The main logic of this feature is straight forward:
> >
> > 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before running autoreconf, while "SOURCE" is the directory after running autoreconf).
> > 2. Add SRC_URI checksum for all patches of the source code.
> > 3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum of source code and all patches.
> > 4. If the currently SRC_URI checksum matches the cached checksum, then we can patch the cache instead of running "autoreconf" stage.
> >
> 
> The autoconf'ing is sort of arbitrary at the moment. Depending on what
> is staged the results may vary.

Which can be properly fixed by using per-recipe (per-workdir) staging.

/Esben


