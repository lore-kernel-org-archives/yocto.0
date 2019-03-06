Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EC07E00C71; Wed,  6 Mar 2019 10:22:30 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A367E0096F
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 10:22:29 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id p48so13961837qtk.2
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 10:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ok+k3fer/VphsNesWl9gGaGhZDyxlW1UR0utnB/gDRY=;
	b=jigqHuZdiqfqxbd8htxk0agTEsGsQWT3BPcRoyrHrFOqfCcuQUI0gCwWtgtSihWuUu
	hBhKuPjHdX1GkR/dJ2DZL3TOScPoEF8iIQMFFjKtbxmLSUVFC1C8KAADNDRCvgnlYP9g
	b0D0549LR0PnMfkQxLAkyKJFxNRibzs77RdPXHT8XIaaH8/XmC0yz9G8vyTWAdWLju7O
	ZEs/VEVVoAr4/UDHLAXzoeCANAVjECjTd/TchR9ULDKjP12cxDQbV7gSJ+IE2+hDAqKC
	ymJoSXpXdBzLqA6ZnN62wGCt3XYKAX2IRIkGBWCJI32XJmoJmlASKl4aSDEeUNylCc07
	LamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ok+k3fer/VphsNesWl9gGaGhZDyxlW1UR0utnB/gDRY=;
	b=UkJlJXS7BE0ygYCizsKNwKWyW2OnNCWj9nZfWnpPCiS5/MJPThc6qUOkiB37rRbkcK
	OzdWnpc2W5XD9QPD6rlPCipzw+EGmf87P+AJnvTlkyjdWkvfN0cdqYaqCZ3XA2NheKf5
	AO9piQHkHoLaoVRpmf8MZ/g2bq7VrWIKrdRTi7G9WdQxtx1RzSup8PoW2/ER4ySEb/sT
	H083sZnhOoQsBgul9ezjyuqR1YlXo05gIp+4+hi7HwPShYnbVZqlIMWxFBbhcmX9iBTO
	7HMIxxj0wi8l/zfQ41w+XthCnT9sJA9xuDY75keEd4vtmQ/gzAJ6wbtryVS/E4zpaTsx
	Ky4Q==
X-Gm-Message-State: APjAAAWxcLOOb0mKNzifqvg0SjsEhS7n8hAgmC38n/lTtDVObu6v4bmU
	Wt3Zqoibh99UzrDGbNFSnwPnQ/iNA0loD4WUaJsArw==
X-Google-Smtp-Source: APXvYqyZYqcVzkNdssXC9KrLRADItvKHOsKiJK0qkOYAk0clRaQCzwoxP2tI8dXEBFiYISefJfYTQ9ey2sdW3JFsHpI=
X-Received: by 2002:aed:3a09:: with SMTP id n9mr6671234qte.196.1551896548436; 
	Wed, 06 Mar 2019 10:22:28 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
	<CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
	<CAMKF1sr3e1e725ZpSWBYw2awbF-6VuJ8wYd0YEBn24b4zMeSTw@mail.gmail.com>
	<CAFNP8OsHvvVkiGGCUvtsVd6OAsAoT76BRGJ+WFY0aLRLdagk7w@mail.gmail.com>
In-Reply-To: <CAFNP8OsHvvVkiGGCUvtsVd6OAsAoT76BRGJ+WFY0aLRLdagk7w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Mar 2019 10:22:02 -0800
Message-ID: <CAMKF1soGS34ey2eEHTHFDww97hcitGCp1Ndz49LMs2hQrCquZA@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 18:22:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 9:48 AM Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> I think we should probably at least document the variable in the YP Reference Manual's glossary.  Correct?
>

yes and also mention that we only expect it to be used in rare special
curcumstances, e,g, prebuilt binaries etc.

> Scott
>
> On Wed, Mar 6, 2019 at 9:24 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Mar 6, 2019 at 8:15 AM Scott Rifenbark <srifenbark@gmail.com> wrote:
>> >
>> > Dimitris,
>> >
>> > Good find... I will see about documenting this.
>> >
>>
>> Although its not encouranged to use it, its to be used as a last resort
>> we use it sparingly.
>>
>> > Scott
>> >
>> > On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>> >>
>> >> Hi all,
>> >>
>> >> this is not a request for help.
>> >>
>> >> Today, I've found a very nice option which is not documented
>> >> which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
>> >> inside the poky/meta/classes/staging.bbclass.
>> >>
>> >> I had an issue with a recipe that had a few binaries that I wanted to add to the
>> >> recipe-sysroot-native in order to build another package and I was getting errors
>> >> because the do_populate_sysroot couldn't strip those binaries. I've searched in
>> >> the source and found that the author of that code was handling this case, but it's
>> >> not documented (at least in the latest mega-manual).
>> >>
>> >> Therefore, I'm dropping this message as a reference to other that might need it.
>> >>
>> >> Regards,
>> >> Dimitris
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

