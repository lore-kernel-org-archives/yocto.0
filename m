Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F32B5E00C80; Mon, 28 Nov 2016 17:37:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99F6CE00C59
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:37:12 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id h133so26479471ioe.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 17:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=taaqP9ruB6VD377dsi4rDKG5TozRp9RfShufXGDqlgs=;
	b=eBbI4zBtbqglRLh0SFQMXNc2IG/UhpTy+127Gh78KJUHF2XhIWcLCbTElABP5E+cEe
	tfmg2ud4bNMpNvxlF6xnQEtADT2cyhzxELt7ax4H636A11s1HN/zR6BULMOHS8/S2zwJ
	IDif/cUCJAUw27zN6o1BE4pLZak2YOpugeTVdAyUAUPvclfsvFhxJX9FsscwxPZGGtFE
	82smFCQ7EBEDinDF4dVD3h7YrTmEEq7A4fFouBZvOlNJeIo3e93i4tBBSpMUW9VRHNea
	WJMwyly7koWf+ek4de7vvGU7xuDJ2R8ZJASZ66rAbIvSndOXNvPtvuVTmc/QFQQz0Uxr
	ff0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=taaqP9ruB6VD377dsi4rDKG5TozRp9RfShufXGDqlgs=;
	b=ZjLmx4h57cI1WH/O5oK2N5a3amAnlGvj9F9roOa73txrMl7LaGcny56OEADNNhV2ub
	tipSeJSwzE6QjkWun1Cg2Ugd4QJjWvslDegAJbxfPL9AmNMZ0OO85F+9JcS2N8dZCa79
	fsPVF5s4qKDopvwJKfJMKXwOduJn5J9chv82fxwxeflf2sn0Rqo7u5e4RLBO2zoMrXPA
	PoIUR2uMTHVck22iAqvYc9ogg/b/nqx9zKC3E37z5343BVrqyzgo1Oxz/ieiFn3exWE6
	KMoZP2KipGhw+Z3OpeNtHV2plOlsD4t05cUwAQ1OXw4tVxR/yUjhkJI9D5qlQ5ahRpXW
	4N4g==
X-Gm-Message-State: AKaTC03BFk1ZIGkiijquaYQcuwtEU8YWExIocn9wJUnvqPJ5zmpysGo6lDTda7UReObmNA==
X-Received: by 10.107.59.88 with SMTP id i85mr21960631ioa.198.1480383432246;
	Mon, 28 Nov 2016 17:37:12 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	m83sm6153258ioi.11.2016.11.28.17.37.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 17:37:11 -0800 (PST)
Date: Mon, 28 Nov 2016 20:37:09 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161129013709.GA30326@openSUSE-i7.site>
References: <20161128190745.18053-1-twoerner@gmail.com>
	<2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Tue, 29 Nov 2016 01:37:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2016-11-28 @ 03:16:11 PM, Khem Raj wrote:
> 
> > On Nov 28, 2016, at 11:07 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > 
> > If the PREEMPT_RT patch is applied, the kernel version becomes, say,
> > 4.4.32-rt43 (instead of 4.4.32). This confuses the version handling code in
> > this class. Update how the version string is processed so that trailing rt-
> > strings are properly handled, in addition to handling the existing cases.
> > 
> 
> This probably will solve the issue I see with 4.9-rcX recipes that are in my tree on kraj/master

I'm not familiar with the issue you're seeing, but the existing and new code
are looking for 3 int()s separated by periods. If your recipes have the string
"4.9-rcX" then I'm guessing there might still be an issue since the third
int() will be "-rcX" in your case. If this is true, you'll need to take a look
at where "int(min_ver[2])" is used further down in that bbclass file.

> 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> > classes/linux-raspberrypi-base.bbclass | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
> > index 3a6e33d..fecac30 100644
> > --- a/classes/linux-raspberrypi-base.bbclass
> > +++ b/classes/linux-raspberrypi-base.bbclass
> > @@ -15,7 +15,7 @@ def get_dts(d, ver=None):
> >         ver = get_kernelversion_file(staging_dir)
> > 
> >     if ver is not None:
> > -        min_ver = ver.split('.', 3)
> > +        min_ver = re.split(r'[.-]+', ver, maxsplit=3)
> >     else:
> >         return dts
> > 
> > -- 
> > 2.10.2
> > 
> > -- 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 

