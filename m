Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AFC0E00CC2; Fri, 15 Sep 2017 07:35:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE76E00CAE
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 07:35:49 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id h66so8817071ioh.11
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 07:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=i5fpMN2t6hL6e2SipW6zyh7hAmH8J+5n7De6wGyarJA=;
	b=RkdgDwBalISUZfe2k8BrGBOUmGm9wH79/jf1A2A79pnApawIDWa6xYwc1rX2w2zzZq
	k76yfSqb+cA2Mh9M1Lv67otCbbNkNDOQSdRFfn43O81Fp0j23qDNFdtjshfcm5nnFU1m
	uYN9aCyjx9zVTaI21oCRe8c5lFNXHB6C0JShaefqDmjJbqG3azLAYYRzdyeoAcb2dHAd
	LEHiwN6UD07huLFf+NSzTjws+Vr5wb4bHmhfuEpTcY14E1AaLf7VUPPx2YMt+Q3rkr8r
	S6l6jHliZ3ODCKCUdiDh4oKRVlQOoebsmEiWvJHzjOQCgm/+MUCHtXi/coJUjKqmzMI6
	/73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=i5fpMN2t6hL6e2SipW6zyh7hAmH8J+5n7De6wGyarJA=;
	b=fuz2atV0u5iEwnD57ZwPqoiCCPWf7jdiHnm34cDbBDYC56xf5rjHrVWK4RA2iiKqsF
	3C6TDmtpGwTzEM+JZGI8ErZzvRJJHeLLvRpje0AYzTncWAr0/d+KOq2x8SVTI0iHczFa
	om1bCXUjBaGqTBxGQ8zEoTjDJoC7SkxXPjx+wtlYsLZOjFVsAOyrNK0mg9Ii9Qal59J9
	OdLCHz6X3BbPf3dpaTA1FxzjryQZs+EeJiABm5s8OxruZe1fIDM7+h3hP5Wdo+KPyg2u
	NRDNJ9PDbV5q4/l2+z6XdA+Ew9rx0NKa/86LgWwyM6viy9GCX9p56qD5w+fH8v7l8hcB
	5gGA==
X-Gm-Message-State: AHPjjUhRdcUHq4ifjCHctUQIGzDBZM2LFg6l2uGJirp1B4PzVx3JKxwJ
	Coi9+OGSoKq0l6j/
X-Google-Smtp-Source: AOwi7QD1yY6+1h0p0JqI5OOvqbQYioZqVid/kPIgnnk+I49e5G90hqrC7jWTcJT0qZEVMLe2qI0SaQ==
X-Received: by 10.202.0.204 with SMTP id 195mr28438013oia.271.1505486148827;
	Fri, 15 Sep 2017 07:35:48 -0700 (PDT)
Received: from [172.20.3.38] ([209.116.245.4])
	by smtp.gmail.com with ESMTPSA id
	n139sm1349678oig.10.2017.09.15.07.35.48
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Sep 2017 07:35:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
Date: Fri, 15 Sep 2017 07:35:48 -0700
Message-Id: <D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
	<CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Fri, 15 Sep 2017 14:35:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 15, 2017, at 6:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> =
wrote:
>> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into =
the following compiler error when
>> compiling an application using the SDK:
>>=20
>> internal compiler error: Max. number of generated reload insns per =
insn is achieved (90)
>>=20
>> It turns out that a patch was submitted for g++ early last year for =
the above problem,
>=20
> We need to backport the patch to 6.3.0 and regenerate SDK. If you can
> point to patch that will be helpful.

Thanks Khem, here's a link to the commit:

=
https://github.com/gcc-mirror/gcc/commit/4fe01ba94e99e792ebe9da2ccb3b071aa=
1bac388#diff-af18d9175d034b2b3726f1ddc05fae55

>=20
> but apparently that
>> patch is not in the 6.3.0 version within the SDK. When I try to =
specify a newer version,
>> (by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake reports =
that only 5.4.0 or 6.3.0
>> are available. Any suggestions on how to resolve this? (i.e. is there =
some way to use a newer g++ or to
>> apply the patch?)
>>=20
>> Thanks,
>> Bill
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


