Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3968BE00994; Thu, 18 Oct 2018 14:18:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE6C5E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:18:41 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id 12-v6so19748475qkj.10
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 14:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RMonT61Fj5xu8dhdsoZPDY/LocuOy+nn71nfuHzaxaQ=;
	b=vXJgvxv0fG21fRcUO58RDgYOWX369dgT0CBpF2f576LNV5gBs2tuYO19UaF6qRu911
	F78m4jw9rUg/JRNzeG6wLpJzGpoYAg6ydIONHTCAa3kQY0xyLRxBybIm4CDvnYR0lMQE
	3YLtcaZ98kwlHY2GHVSmolZ7Hs0xIfXMJ6sQFwAUb7VZS8lBNZR9wi+3MlSL8J4HRbZL
	9NNas0MHETHcLHkdZFyo4KvidJ+bFqhDN6AahIT2WuNxsnhhk/xsFHHx4TljjOEGbgIB
	vdKqUqgma6MB40e6UPrcaU2wcM9PD4+ITzSCR7q0nqApV8iXd+wsoswjMe6pjyvIRZBK
	50Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RMonT61Fj5xu8dhdsoZPDY/LocuOy+nn71nfuHzaxaQ=;
	b=UQFsj47U9oGm1BUGBJ+ojF4c4V4J58jhoHCFyzs4N/FqpGeYUS/bBrEbkKUqD++Q2t
	z8XPppl5QAX0TgoWVNVdBWi9T31OIqROrIXDzOL9tEIcap61WpUhgF05L92YqrbqMhT8
	EiJ78ASoT6wKsenSU6OqYiuxipHyNGgx1yTNW0ZYfyCxjE7+hWxDD11hZmURi2o50WI6
	yQOodSedkQkWcW+PYntG/itKcd9Drj06Jh4hQKYcnuyH2SnNW/wjPMfIQ1z7YJ9AWxoJ
	PuGJ1baw71+CJGtf/IiYSilFx1HrtJ0IvQUJ7MBPdfAKkgWDYzPvjRl/OvFWOm/9ZJ9M
	l2CA==
X-Gm-Message-State: ABuFfoiphXi66zi/dnoJEhosNU1MMThR1NcxQ0z5XR22o6HQPGhvF19P
	abEFhujuIcm5PBLdEebWw5EpKbNPo7Zh/Jjbh6DMryxpVVI=
X-Google-Smtp-Source: ACcGV636A3sUb1p9+pDevSGIUni4/2D5ACZAY+YKBLP/HBZPuejLmKpcpWdhU/43AICiljd6loVKmiOQOAWPqR/oees=
X-Received: by 2002:a37:9d55:: with SMTP id
	g82-v6mr30341774qke.315.1539897520809; 
	Thu, 18 Oct 2018 14:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2n4wcXKfFz4a5_3kD68B7OCsY1qOf5N5vMAsPa_P4CB0Q@mail.gmail.com>
In-Reply-To: <CAK4Yt2n4wcXKfFz4a5_3kD68B7OCsY1qOf5N5vMAsPa_P4CB0Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 18 Oct 2018 14:18:14 -0700
Message-ID: <CAMKF1spSOwQrENtecNGpBO8czUHH28Upc=-f3zbT0pjcv8K-dA@mail.gmail.com>
To: zoleelikesdebian@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: modify a recipe file - proftpd
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
X-List-Received-Date: Thu, 18 Oct 2018 21:18:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 18, 2018 at 2:10 PM Zolee K <zoleelikesdebian@gmail.com> wrote:
>
> Hehttp://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-daemons/proftpd/proftpd_1.3.6.bb?h=master#n99llo,
>
> I'm very new to the Yocto Project and I got a Barix module that is to be developped with Yocto.
> I managed to insert the desired programs into the linux image (nano, rsync, mc, proftpd, vlc) by modifying a recipe file but now I'd like to make some changes. I thought I would start with modifying the proftpd.conf file.
>
> As I read the manuals it is clear to me that the best way to do this to make .append files.
>
> I created my own proftpd.conf file, modified it a bit, example I only renamed the default server name. After that I modified the bb recipe file's sources section this way:
>
> SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${BPN}-${PV}.tar.gz \
> file://proftpd.conf \
> file://basic.conf.patch \
> file://proftpd-basic.init \
> file://default \
> file://close-RequireValidShell-check.patch \
> file://contrib.patch \
> file://build_fixup.patch \
> file://proftpd.service \
> "
> The red one is a new file among the other patch files however my slight changes will not bitbake. The proftpd is going to be in the image, but with a its default proftpd.conf file. It looks like my config file never gets inserted in the target.
>
> Could you please help me out how should I start with this proftpd customisation?
>

so you can have sed ops to do the needed tweaks in existing conf flile
in the bbappend e.g.
do_install_append () {

sed .....
}

see here

http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-daemons/proftpd/proftpd_1.3.6.bb?h=master#n99



> Thanks,
>
> Zoli
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

