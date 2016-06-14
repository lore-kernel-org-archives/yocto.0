Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1204CE00B1A; Tue, 14 Jun 2016 07:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE563E00AF2
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 07:29:06 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id z189so78723131itg.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 07:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+4An16SVgz6RYOd0fK+mgYTQDajkaCHZtRAtS8Sq70M=;
	b=Ea4wRiELu0Tq3tWewelou71iQeCi1c/x6CkzspanP5j+DB3Rc3opD7ImBth4OxoW2q
	GNwc0CTpyFm0i3dt0TjbikG+MDdLUnm659YwdC0zR5ihl45fz9FqxkRvsOgmR+evQ3fv
	T0g1GpWLKCtRMXHCWz96+AxCgRek2APB0EN5uAFdbOtsZhSFmO0j/wf0BtJBayBIT7aG
	VlqF89PcfTFGTvi7qVMVmELbwJwZtosyt3nkruFyfjAsF5/eGKwhLqfjISCUiEuHmTbq
	SB4kQ7Y8WYyS1RdBHxkGJk96YmwnnrJbUNeoK8VBU7LhDhprN+87a72RF7mAJVtjmllP
	zHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+4An16SVgz6RYOd0fK+mgYTQDajkaCHZtRAtS8Sq70M=;
	b=UX5hiFxvlFyVTJOq02PVn4soxN5A/FtH86Ci4lj9DuHtD333jF5EfkgLfNWmf7E2eK
	0TnP2DoSJpC0IZbseqL4jlBuBp/JFTEoRyeSBnyh3PqyyDXqySJhqXvYTpUQKRAQHnzA
	3GK8usfYwS8jKCNFuhVun5n/IHKriTHsgXS/BiQIHkX/9NJ6A8z9oylWlyGBnntE5Yrd
	Q1+pz5UfeQAUpPoFOKWePuOVf6Cqb7XAoafn2Vou33+TShe7AQ8KXe5MOcgODqp6sPFE
	FrhzvwHmTijJv6nGhP9S3rkcsb+TyFYqYnq5W5FMejKyaDMbmuj04Nn2miPX2Aluubai
	8Nfw==
X-Gm-Message-State: ALyK8tKB4iHTaYa6nZBP23B52h6BfH4XYs0NCiShEcpq3Jxvh13BRNAnDp85pKjVvxYGT2NI4mbRCDB2JQKMe4oD
X-Received: by 10.36.120.193 with SMTP id p184mr8863609itc.22.1465914545787;
	Tue, 14 Jun 2016 07:29:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 14 Jun 2016 07:28:46 -0700 (PDT)
In-Reply-To: <ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
	<5760041E.1010809@topic.nl>
	<ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jun 2016 15:28:46 +0100
Message-ID: <CAJTo0LanVXcMNzpcaeA45L2+1Y1PGDYJt6hxgcJ-Q7k_LV0rbA@mail.gmail.com>
To: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Tue, 14 Jun 2016 14:29:12 -0000
Content-Type: multipart/alternative; boundary=001a114aa428c5fcf605353dd3c6

--001a114aa428c5fcf605353dd3c6
Content-Type: text/plain; charset=UTF-8

On 14 June 2016 at 14:48, Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com> wrote:

> FYI, I'm running 3.14 kernel.  Is this a job for aufs?  If so, how would I
> go about configuring it?
>

If you want to support arbitrary mounts then it's probably simplest to
either change /media to be a symlink to /run/media, or put a tmpfs on
/media.

Ross

--001a114aa428c5fcf605353dd3c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 June 2016 at 14:48, Jeffrey D Boyer <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Jeffrey.D.Boyer@jci.com" target=3D"_blank">Jeffrey.D.Boyer@jci.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4p8" cla=
ss=3D"a3s aXjCH m1554f461afd070c7">FYI, I&#39;m running 3.14 kernel.=C2=A0 =
Is this a job for aufs?=C2=A0 If so, how would I go about configuring it?<b=
r></div></blockquote></div><br>If you want to support arbitrary mounts then=
 it&#39;s probably simplest to either change /media to be a symlink to /run=
/media, or put a tmpfs on /media.</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a114aa428c5fcf605353dd3c6--
