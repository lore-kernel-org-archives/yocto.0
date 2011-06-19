Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC91A4C800A9
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2011 18:50:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so4248196pzk.35
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2011 16:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VvvkBz3Wzk8e3+L76GqfQ8UupD+1QMnnhuhibVopGfM=;
	b=JQMS/8dVa9MS6DYali4i3t8knUxLJMab9BUVxKBnP6C35yaxocAYiI8jt7GvPWe69M
	6NLucCDA1GHG5+CUsnnOdfUI6ERYqrmnq9CsD++BQuwabhAzzo4Mmm2pspPPeBBDsmCE
	RDRNFMqflAmZPES2HN5o06DUWpfi+VLO6zRAc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=svmh3hNNoaI74ZK+ELNcBt+S2yuy9ltOtoC+O3wv3gVDrHVmOxR9t4jDaZTFHRNclo
	KdFGBq2aVjciXWYlIeT5ifad3sMoIEbp5j+Ya6cnUtXYzVStCAWQjQtFnGlW7qceP8oS
	uGVCnqKrGinv/G1dQpdQWnIH4bGGLlrvbDcIo=
Received: by 10.68.32.66 with SMTP id g2mr2104552pbi.26.1308527417215; Sun, 19
	Jun 2011 16:50:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.55.195 with HTTP; Sun, 19 Jun 2011 16:49:47 -0700 (PDT)
In-Reply-To: <1308513728.2527.2.camel@eha.ulstruplund.dk>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
	<1308513728.2527.2.camel@eha.ulstruplund.dk>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 19 Jun 2011 16:49:47 -0700
Message-ID: <BANLkTi=taLE4t=1WDxEGoW-DsKRUrB04cQ@mail.gmail.com>
To: Esben Haabendal <eha@dev.doredevelopment.dk>
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
X-List-Received-Date: Sun, 19 Jun 2011 23:50:18 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jun 19, 2011 at 1:02 PM, Esben Haabendal
<eha@dev.doredevelopment.dk> wrote:
> On Wed, 2011-06-15 at 18:28 -0700, Khem Raj wrote:
>> On Wed, Jun 15, 2011 at 5:57 PM, Xu, Dongxiao <dongxiao.xu@intel.com> wrote:
>> > Hi Richard,
>> >
>> > Recently I was doing the "configure optimization" feature and collecting data for it.
>> >
>> > The main logic of this feature is straight forward:
>> >
>> > 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before running autoreconf, while "SOURCE" is the directory after running autoreconf).
>> > 2. Add SRC_URI checksum for all patches of the source code.
>> > 3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum of source code and all patches.
>> > 4. If the currently SRC_URI checksum matches the cached checksum, then we can patch the cache instead of running "autoreconf" stage.
>> >
>>
>> The autoconf'ing is sort of arbitrary at the moment. Depending on what
>> is staged the results may vary.
>
> Which can be properly fixed by using per-recipe (per-workdir) staging.
>

you seem to be stuck in this tight while(1) loop per recipe staging is
not panacea
Do you have some prototypes ? where you can control what staging is presented
and its like beaning coffee when it comes to autoconf options.


> /Esben
>
>

