Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1008BE00EBD; Thu, 12 Jul 2018 19:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96BB9E00972
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 19:49:12 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id 125-v6so17467240vke.11
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 19:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+3IMYqu9Q7qEHg5TgvsxstZysvYj7Q9HlaNl5yGRFZc=;
	b=HMh/a8lWda8esQur0ofM7dZf+5FBd/N0HbvIqtF9iP+s1UEDeaFMSdfS4794RarlHS
	BKgaWxZmjqWFhFvnHcbgzcRScLY51xeNZ1jZ5T7aXbtK8Lvibik8TVL9m7+Ogez/y9/q
	c3kcptdUeR5XBpoYWXLSylxMhulCluq/qwWJ5p9TN4aBK75vghBpfKKVw50kOSSTTpWW
	EkQPvOWotWO8ABGmy71OwRdijX97nbjj1bdZFlN4A0NCvN0i7oo4/IVeKyFgNwKT4OqO
	kzvVNUTsN7U67xv4jNJ5waECnpqkr754TlknE5aQrRIlohYt4xNc0FZDekVZnE3lNxsq
	ZBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+3IMYqu9Q7qEHg5TgvsxstZysvYj7Q9HlaNl5yGRFZc=;
	b=VS54mdi8DsxMbBzEaJJMBTMffn2VURprjXHXiS3NJoGjxAAVBr4b7L8qt5pOpS/144
	x9yZia4kg9exq4to7u7iZ3mY9PCmy/m/8p01u8oYkDQU7cm3NkG1wLvTT0EjSur9VVtG
	q8+jJYL7YC0rtNosxsNAAgP/e6riIsE/NWUFXRVdgURymntnddb7antp/Lw1B1xVCgiz
	DPQ0V1oklDa7OkSrXVwqPonnFQtpeCTwdv2aBMjHFCaJJa99i81KL8wS/8xAiSAhfqz/
	6SiNIg86CSPJ7NwpLLAi1NtWZZCo2fUKhL+APK9ZKLO038xceavWq0LNAuqhvgUknZ+c
	kaWw==
X-Gm-Message-State: AOUpUlEBNBDQmcVqNVYkCU0eyYYFN4LrZnRvv04i4rabpl7DrNdsNEva
	Mu/wWQm4/fq213VHn9binYXlWV4WwfXcrXnRQ00=
X-Google-Smtp-Source: AAOMgpfJnfCZLIH1/6e+MVAp1fJA4rkaHBWgTO4Lsio1FdRBW+I5FnsYsbUbJIHyPyOFeO4F6964UOQTO1SW6VazMdE=
X-Received: by 2002:a1f:b04c:: with SMTP id
	z73-v6mr2691018vke.194.1531450151825; 
	Thu, 12 Jul 2018 19:49:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Thu, 12 Jul 2018 19:49:11 -0700 (PDT)
In-Reply-To: <CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
References: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
	<CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
	<CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 12 Jul 2018 19:49:11 -0700
Message-ID: <CAJ86T=W6e02FV2Dh8OxUWWNi2zMfxDgaB6oFqZkcCK567cG_BQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Fri, 13 Jul 2018 02:49:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 12, 2018 at 3:12 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi Ross,
>
> Thanks. I saw that but the documentation doesn't explicitly mentioned
> EXTRA_OEMAKE. Is that the same as EXTRA_OECONF?

No, EXTRA_OEMAKE and EXTRA_OECONF are different.

Config options derived from PACKAGECONFIG are automatically appended
to EXTRA_OECONF (by autotools.bbclass), EXTRA_OECMAKE (by
cmake.bbclass) and EXTRA_OEMESON (by meson.bbclass) but never
automatically appended to EXTRA_OEMAKE. If you want to add
PACKAGECONFIG derived options to EXTRA_OEMAKE then you can manually
add PACKAGECONFIG_CONFARGS to EXTRA_OEMAKE from within a recipe, for
example see:

  http://git.openembedded.org/openembedded-core/tree/meta/recipes-graphics/glew/glew_2.1.0.bb

Note that your original example was based around EXTRA_OECMAKE though,
not EXTRA_OEMAKE.

> On Thu, Jul 12, 2018 at 5:08 PM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> > I'm wondering how I can make it so that I can have a user allow for
>> > additional configuration to enable crypto/krb5 which requires extra
>> > depends
>> > and changing the oemake flags. Is this something Yocto can do, or is it
>> > better to have users provide a bbappend file to update this recipe?
>>
>> Yes, PACKAGECONFIG is exactly what you want.
>>
>> https://www.yoctoproject.org/docs/2.4.2/ref-manual/ref-manual.html#var-PACKAGECONFIG
>>

