Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD46BE00B67; Fri, 20 Nov 2015 15:35:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43C0E00B5E
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 15:35:32 -0800 (PST)
Received: by ioir85 with SMTP id r85so139514631ioi.1
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 15:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=kTVcy3YwNZhsXc+neEUZapUxqa9+R6w2IPnrY3SAmz4=;
	b=rsNRY/OX+x1cvKEsZEQIHC8AYaLQRzig590C5PaSVtStFIzObS35Fetfp4ayvanO8X
	sB6HRd82fgveGnAjeHRwZMr5CvAh0irbH1miIGhiXuYMFqHT4pBgjGiKwvAl9NV7w6dM
	ECGkd0gSA7tScCk8n8RKddSlTsiDzf/dlcvz+gXPFAKIFRZOYJXvfcXgeOHz5gaSzL8x
	l1c9Nbzn/+3GwuPiJ+6ivAoEU7sS5CpWHfAa4mWbPAqtia9yrHWGDj+ZiZzJQltlfH2X
	HSnpX8wVeFfL1I52Lysqd4xiV4FAnf8CmDllsWfq1HaGXiSj54Iy/5HNCdmh8NB+/q/A
	2Dnw==
X-Received: by 10.107.4.213 with SMTP id 204mr18517691ioe.195.1448062532213;
	Fri, 20 Nov 2015 15:35:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Fri, 20 Nov 2015 15:35:02 -0800 (PST)
In-Reply-To: <D274DD0C.1BCB7%jonathan.p.schaaf@ge.com>
References: <D274DD0C.1BCB7%jonathan.p.schaaf@ge.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Nov 2015 15:35:02 -0800
Message-ID: <CAMKF1sq3Ei5MqtuPXCaSjjPjmNDWW9Z1g0U+p8hLM7Sz4OdyEw@mail.gmail.com>
To: "Schaaf, Jonathan P (GE Healthcare)" <jonathan.P.schaaf@ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Application Whitelisting on Yocto?
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
X-List-Received-Date: Fri, 20 Nov 2015 23:35:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 20, 2015 at 12:22 PM, Schaaf, Jonathan P (GE Healthcare)
<jonathan.P.schaaf@ge.com> wrote:
> Hi Everyone,
>
> I'm relatively new to Yocto, and am starting to work on a project that is=
 pretty minimalistic.  Other than busybox, there will only be a handful of =
running services and executables.  I'd like to use some sort of application=
 whitelisting technology to help keep the system secure.  My google-foo is =
insufficient to reveal any options that are "simple."  Does anyone on the l=
ist have suggestions?  I'd strongly prefer to avoid experimental kernel pat=
ches, and I'd also prefer to avoid trying to create an selinux policy from =
scratch...  unless that's a lot easier to do than I think it would be.

what do you mean when you say minimalistic and application
whitelisting in one go. If you control the metadata then they would be
same every time you build them and if you don't change your image once
put together lets say ( core-image-minimal) then it stays what it
assemble's together. So may be you should refine your question if you
need more info

>
> Thoughts?
>
> Jonathan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

