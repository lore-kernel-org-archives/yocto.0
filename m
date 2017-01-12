Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39BE7E0034A; Thu, 12 Jan 2017 08:21:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C37E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:21:20 -0800 (PST)
Received: by mail-yw0-f182.google.com with SMTP id l75so14991667ywb.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=CMvRrFznIrtk9dctFl70jDCoOE/UZ7vevwtfbyjsiXE=;
	b=Uo+30vL8zyNA3zXfcxUhhhJxHtujXvMpUOrUkO+x3vdZ6dz4QK7lD3KbcQDnFLkRYh
	8R5gxHCvJ4UH5Nug9w+nKJ98fT4C68Pq+YFLSYH3Vpp74FbV7DCcEB7k/b0oMiADNJCM
	Vwbp2aKCSTsX21rbmoVUXUjnljAXpNtNb5EyM5Cuvu42iFPSDQDaTbB9dHtQE+9wa2rO
	VV78MdmsRYCuvLmlk/t5y8u8OgQlI6fGd3v01rRqko30CUuayeUYh/oJo+7ij0iG6Utk
	+efyT6PnpYE+idjfSRxAG8yZx6T2JsOn8RBn8QLIiSnNzfeDH2Ln94S4/fhzlqhExUsV
	l3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=CMvRrFznIrtk9dctFl70jDCoOE/UZ7vevwtfbyjsiXE=;
	b=j9VtmtgbPVjG+aaXy5WKySYzTMbL3siBUkIFPnmGmwR0RBkkm8uiA2n7F9NlIqrHKH
	/SSV7gotIZQolv7H/+ocTpOwMfZ9Jgfs7OyRAH9+KCSCxlMCtkpjNVEUbBNshGji31BM
	bW5PKMrzu36o66PFRKGjhvQVEL+nWk7x3jkbp2ViQybdLIaOTFRAs/jLzLJLkn+5RhPh
	TPnoxfRcXaxUU9zvZsSLj0y3wgRFM7qUGluXPN7JZvpOF8EGoSP6MxmdFQW+9PTNdZkA
	mZ4GgICQyPws++7HTfc6HGW7b/ng8/V9WIgNxzI8gREXbmE5aXQbT6KmAgooc54vN0/b
	B3Lg==
X-Gm-Message-State: AIkVDXIy/8IYlJNA27QTldP2Yg4cE9ZDqXPGAewwzDDpZ3H0wpdvqLmCACR3nmDXJODDY4xoa3/Zo2DpNxvfaQ==
X-Received: by 10.129.158.144 with SMTP id v138mr10004469ywg.65.1484238079623; 
	Thu, 12 Jan 2017 08:21:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.66.23 with HTTP; Thu, 12 Jan 2017 08:21:19 -0800 (PST)
In-Reply-To: <990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 12 Jan 2017 17:21:19 +0100
Message-ID: <CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
To: Tim Orling <timothy.t.orling@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 16:21:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
<timothy.t.orling@linux.intel.com> wrote:
> You can also build using Docker containers:
> https://github.com/crops/docker-win-mac-docs/wiki
Well the re is other limitation about slow filesystem access from
docker on osx. There is workaround to use nfs but it's not possible to
use nfs for building yocto - so it's kind of chicken-egg problem ;)
>
> On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
>
> On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrote:
>>
>> Is there any documentation for running the Yocto build system on Mac OS =
X
>> or macOS as Apple now calls it? I am working with the Intel Aero board.
>> Before I go down the rabbit hole of fixing issues like this one (and I a=
m
>> using the bash shell), I=E2=80=99d like to know if anyone has build it o=
n os x
>> before.
>
>
> If you install all of the GNU tools using brew or similar and put them fi=
rst
> on $PATH then you can get bitbake started.  Then you need to stub out the
> linux-specific bits in bitbake.  I've previously started on this work
> already
> (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/dar=
win).
> The next step is figuring out how to configure OE to build and link nativ=
ely
> on OSX using LLVM instead of GCC.
>
> However all of this is mostly academic because in Sierra (iirc) onwards
> there is tighter security on processes, which means that pseudo won't wor=
k
> even if you port it to macOS.
>
> So unless you fancy some non-trivial engineering the short version is jus=
t
> use something like Docker to run a Linux system on your Mac.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

