Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59FC8E00CD1; Thu, 12 Oct 2017 21:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.86.89.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 379B2E00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 21:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507869920; bh=rEJr7eF7AVb8kAPIppmtvga5S0NoKTBD8a2W
	po+P9lI=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=U
	k1nsl5xo+NfdF/I019Ihuxfxx5XioyHJilL/ewiGXuq2/A6qZeZEBYw/Ajrt0ChU/dh
	EEh7oQlVFMw29sSV9A6ySZL1SSMSjASR9DC57617TqSJOzjNIRxBh+FrQLAbKRzQ2UR
	yfh00zgJq8gFPJKLh21NpHMD58kTllYA6gPE8oL57vSXUJLe4H4Aor0bUO1qraf31WU
	boMlziGFSlJKXPX0q3jYiiuyuZIcNeeGQgxd7oZAHhKxaOxeBx5D1i5OuPglCgvCoov
	Iv3WkH6UVjurQlDSBZOsrnTQQYzSpj0uOA+M5H0mr0S+iPc8qJbsc77czdQaoEXm6g/
	Y3VrZQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=G6vDSNvKWc4y0IrdD29/KYTJvoZkFtb4haNKXvz38AWEaRPQqEgjnB1bJSf25GJsCIHXJ5vmn8ewkMn6bJ68rilgdA0QnhS/hWJBaVFlgcWDHFmTZakmTpJF+zsltDoi/OG4gmGf6y90RpaUgVqevsKM1BXD2sV28Bq1wTNutTYTxlkgz1xA93X5qTWmLtD+wF/oGAYsGfUrPgFBrcAziHrA/ECOF71a3P6wTNKB/rZye6qibZnfwhUHtMwljsV2jWh2eWC7vazTseNHGbAla7DHsky0ibB4phe19+vPLNYW1LKjICqsfjVUlgV4UAIEiGKsLvE5kiaxp+ANmBCDGA==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1e2rqY-000GwP-P6; Fri, 13 Oct 2017 00:45:18 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
	<20171013033200.vkrdd6jiq2lqaooj@apollo>
	<88F50DD804AA49FF97B3133B16A414D3@PAULD>
	<CAMKF1soB4OfYhQ7=OuQ64LD7kLyyGBXLcs2pkzs3KGna8cp1-w@mail.gmail.com>
In-Reply-To: <CAMKF1soB4OfYhQ7=OuQ64LD7kLyyGBXLcs2pkzs3KGna8cp1-w@mail.gmail.com>
Date: Thu, 12 Oct 2017 21:45:15 -0700
Message-ID: <88DA99542F9F4644AC94C7121BA1EBE9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdND12LjgZyk2LrRQ/eojl4c1K0xfwABJlmg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606888fdca7d0b4fde47c161d343a9467f7de350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 04:45:21 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Khem Raj [mailto:raj.khem@gmail.com]=20
>=20
> you can just make 1 patch download
>=20
> https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;a=3Dcom
mitdiff_plain;h=3D> =
39865a7f420ab4ca4dec6ed27339618a5d5dc366;hp=3Dfe22022617a7122491aa83c893a=
10a8d861cde73
>=20
> and delete the hunk which contains changeslog entry and rest=20
> should apply
> cleanly. And add it to SRC_URI in binutils-2.29.inc

That didn't change anything. (Pyro is using 2.28, BTW.)

The crosssdk recipe is built in =
x86_64-linux/binutils-crosssdk-x86_64-pokysdk-linux/2.28-r0/git. All I =
see in there are a couple of quilt directories containing my patch =
files, no source files. So I decided to run a devshell. Since that =
doesn't happen until after the patches are supplied, that failed, too. =
So I removed the .bbappend and ran the devshell. There they were, a =
half-bazillion nice source files, including the gas directory. So I put =
the .bbappend back and ran the devshell again, and the first thing it =
did was clean that directory, after which the patches failed again.

I have no clue how this build system works. Is the source directory =
supposed to be where the files are patched? What cleans the source =
directory? I notice that after any build, there never seem to be any =
source files hanging around.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


