Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B298DE00BC0; Tue, 25 Jul 2017 07:57:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513C3E00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:57:44 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id g13so56567431ioj.5
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qOgTD4z12weRiyU2gIkaMJTsi7wQfm7iDtQvGHNfXpw=;
	b=OX6KjV6O1dzfGHtNUTbLJ2FRmrACOXupTcj4q53iIW+o70prkXry2l1VoBAZFSrot2
	Pbu5UUg+7YYuDodKz1rOyZqOuG5iMazyXgwSdWLAqA4Pa3lGrp/BvYYRjaEpFa2fgyLo
	TH6r+dhik/OiqEQDAGtUhYOdEb4PVcOiTOpnbBkS8YTeq0S9cInDB/0/z/2u8DDaYaoa
	u61CQR0x6JbL3HfW36sq/oauSHcqtkDmxBjJO0fzwBaX3OU2DzfY3AclaAQ4iuZhrs3+
	75bN0conlpiOAheqSOYQ1oF2Mcp7kXTkjcqyXSFOT6RmrjoqclOSMtNQQMmNTqwMfd5x
	r1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qOgTD4z12weRiyU2gIkaMJTsi7wQfm7iDtQvGHNfXpw=;
	b=MBcd0QtuO67zMHZWFDAqirKQstJjZka50mGE1AHuHiKSweND/8plisvIERtB8MpZpd
	dYi9aDSEDdstQbbD9luKVnM8+EqlPLfCEKulNLUf1r7QqjIKsggSNAbbF+zRrZRM00KM
	I5fq5I6Mc8h5MT+SZTWB0My/oMsaBDxLJxw2ZO6M5BmQT9G50wtNAT9Yu8qdCI0l7fh2
	99qqcYfl6yBujJUjI0VxHKO8zp+xMaQN+GEpgP0Io5N8c66d8iWAN3uLUsNt7k2bvT4a
	TLx1YRbUmS++iS3+YKLCJuhX2x5n+UdALVpENwr4+FFiT4/C+NZxkEdpua8zn8y0SLTj
	0jaw==
X-Gm-Message-State: AIVw110EbJYSOwHtSb8ZSM3hqHtXODXRHibtHNi6eqL1YGDkE8kwd+Cr
	NWlsNQDXPhlcOykW0ivZitOmN9SvhpIS
X-Received: by 10.107.132.33 with SMTP id g33mr18630655iod.300.1500994664533; 
	Tue, 25 Jul 2017 07:57:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Tue, 25 Jul 2017 07:57:24 -0700 (PDT)
In-Reply-To: <838512139.316467.1500993599795@email.1and1.co.uk>
References: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
	<CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
	<838512139.316467.1500993599795@email.1and1.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Jul 2017 15:57:24 +0100
Message-ID: <CAJTo0LYTp4j9kGBqtPXT6X+Z1JZUWJRrYmgUe8GU8DtPKcPNkg@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with 'configure' on own recipe [after moving to morty]
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
X-List-Received-Date: Tue, 25 Jul 2017 14:57:45 -0000
Content-Type: multipart/alternative; boundary="001a113ed2e8ca24e40555258dd8"

--001a113ed2e8ca24e40555258dd8
Content-Type: text/plain; charset="UTF-8"

On 25 July 2017 at 15:39, Colin Helliwell <colin.helliwell@ln-systems.com>
wrote:

> That is in fact what I blagged as the starting point for 'my' recipe, but
> then evolved it so as to use the github head. For my particular [embedded]
> platform I also need to switch off some of the configure options.


Sounds like a bbappend should be able to fiddle SRC_URI and some
PACKAGECONFIGs right?

Ross

--001a113ed2e8ca24e40555258dd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 25 July 2017 at 15:39, Colin Helliwell <span dir=3D"ltr=
">&lt;<a href=3D"mailto:colin.helliwell@ln-systems.com" target=3D"_blank">c=
olin.helliwell@ln-systems.com</a>&gt;</span> wrote:<br><div class=3D"gmail_=
extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">That is =
in fact what I blagged as the starting point for &#39;my&#39; recipe, but t=
hen evolved it so as to use the github head. For my particular [embedded] p=
latform I also need to switch off some of the configure options.</blockquot=
e><div><br></div><div>Sounds like a bbappend should be able to fiddle SRC_U=
RI and some PACKAGECONFIGs right?</div><div><br></div><div>Ross</div></div>=
</div></div>

--001a113ed2e8ca24e40555258dd8--
