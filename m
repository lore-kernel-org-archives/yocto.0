Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A6AAE00872; Sun, 21 Oct 2018 11:40:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76C36E003DB
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 11:40:13 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id g13-v6so4429718qke.8
	for <yocto@yoctoproject.org>; Sun, 21 Oct 2018 11:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jHvC9YOgNWDKiUyPSP+qALlZEUD4xQtZLT4Hr1RES60=;
	b=XCoK3v3VPj8XDJm7NGRn0ertd2kqKGMWRkQSX9Nu9o5NDQAar5C5B+Relm0dw2W4EF
	QGc6auaLI8MU/awAVfxAzU+DIGWSeLBwxos2Gc69KtsUhl9IL3xS237EWfzsgjhY7ZTc
	KVYjgGBAgB9TBwKaVmXUMjtCrDK2syNFzwLLaq6UttPgxubtF52a2vgufdnT/m5EhDJa
	+TlXif5MbAAKhWJhEw6fkvyDxX/+rAi4TaEr6bh2sI9DMvJuIf0LYJYHq9mxI6NJAX/0
	wG7lDwXq13Hh/LhskyGC8d5RrN1QewunJUJILYbel33jaVnctYjWWKSy62gdNbahPcLe
	d4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jHvC9YOgNWDKiUyPSP+qALlZEUD4xQtZLT4Hr1RES60=;
	b=NcGyiwNY5FPlRWbM0hCvpNg76udIDv0qVr5IGXKwdF9mQlChBmhU0IdDhjLI/Dj7NK
	2YSnwJHls4O1afSq1ovV5tJXJeh0x/GidfpsRsl78w49b4hoqVcDOdQ28fjlYlM+sCgg
	mKdvv+nf1ZOA7FWVoeJd6NGwLqah65Od/v7ERMJh/zWr6rC6vnqyc5vFg1hx5/u2JDtQ
	Iyv3pY/hT7b8lhra19C0B0gQyIxiFBwmlx07u2bmyYquwnc267fz8CJg9sVcgcYv1OJB
	xjTxGP6GympdGYrrSr0l6vZ10qb/MDTPtdXnW67kls7RhUyfR+NS3lTynbCR1jhpV1yp
	TllQ==
X-Gm-Message-State: ABuFfojXy+WnMKFoX3mrCh/tSOLmVik11N1S54nNAT34FQD+kT95u0ib
	N8hyVim1nFgNLgUqPwiaFJvL+toNDKuV/lhjZNDbvUh3y+M=
X-Google-Smtp-Source: ACcGV60UkHrxprQ3yhvnYfvney7L9aeCAxg/Dxjxx9hIfGxKaoWODDOTX8Q2t2pXAVDVH75dyGKwckuikfGGE+ePSOg=
X-Received: by 2002:a37:655:: with SMTP id
	82-v6mr39928350qkg.223.1540147212392; 
	Sun, 21 Oct 2018 11:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36Z66HkMd1rKhetiGHDajWrbxDgXjEpcUqp=_-zxTb4Hg@mail.gmail.com>
In-Reply-To: <CAAfyv36Z66HkMd1rKhetiGHDajWrbxDgXjEpcUqp=_-zxTb4Hg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 21 Oct 2018 19:40:01 +0100
Message-ID: <CAMKF1sr=HnXP1X45Kjc3Tdga9oC1uTwRZzkzv=crZ1WyNueYTQ@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: master-next : QA issue with glibc locale
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
X-List-Received-Date: Sun, 21 Oct 2018 18:40:18 -0000
Content-Type: multipart/alternative; boundary="0000000000007f1d660578c17774"

--0000000000007f1d660578c17774
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 21, 2018 at 7:27 PM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi,
>
> I had problem with rocko see here [1] but issue is still present in
> poky master-next also:


Is it using stock poky or are there any customizations if yes then please
share those too

>
>
> ERROR: glibc-locale-2.28-r0 do_package: QA Issue: glibc-locale:
> Files/directories were installed but not shipped in any package:
>   /usr/share/i18n
>   /usr/share/i18n/charmaps
>   /usr/share/i18n/locales
>   /usr/share/i18n/charmaps/ISO-8859-2.gz
>   /usr/share/i18n/charmaps/T.61-8BIT.gz
>   /usr/share/i18n/charmaps/IBM855.gz
>   /usr/share/i18n/charmaps/IBM1163.gz
>   /usr/share/i18n/charmaps/IBM1129.gz
>   /usr/share/i18n/charmaps/SHIFT_JIS.gz
>   /usr/share/i18n/charmaps/CWI.gz
>   /usr/share/i18n/charmaps/CP1253.gz
>   /usr/share/i18n/charmaps/IBM880.gz
>   /usr/share/i18n/charmaps/T.101-G2.gz
>   /usr/share/i18n/charmaps/ISO-8859-5.gz
>   /usr/share/i18n/charmaps/CP1250.gz
>   /usr/share/i18n/charmaps/INIS-8.gz
>   /usr/share/i18n/charmaps/SHIFT_JISX0213.gz
>   /usr/share/i18n/charmaps/IBM297.gz
>   /usr/share/i18n/charmaps/ISO_10367-BOX.gz
>   /usr/share/i18n/charmaps/CP1257.gz
>   /usr/share/i18n/charmaps/JIS_C6220-1969-RO.gz
>   /usr/share/i18n/charmaps/IBM278.gz
>   /usr/share/i18n/charmaps/IBM858.gz
>   /usr/share/i18n/charmaps/KSC5636.gz
>   /usr/share/i18n/charmaps/IBM285.gz
>   /usr/share/i18n/charmaps/INIS.gz
>   /usr/share/i18n/charmaps/EUC-TW.gz
>   /usr/share/i18n/charmaps/IBM274.gz
>   /usr/share/i18n/charmaps/IBM038.gz
>   /usr/share/i18n/charmaps/DS_2089.gz
>   /usr/share/i18n/charmaps/GB2312.gz
>   /usr/share/i18n/charmaps/EBCDIC-UK.gz
>   /usr/share/i18n/charmaps/GOST_19768-74.gz
>   /usr/share/i18n/charmaps/ISO-IR-209.gz
>   /usr/share/i18n/charmaps/BS_4730.gz
>   /usr/share/i18n/charmaps/IT.gz
>   /usr/share/i18n/charmaps/IBM918.gz
>   /usr/share/i18n/charmaps/MAC-CYRILLIC.gz
>   /usr/share/i18n/charmaps/CP10007.gz
>   /usr/share/i18n/charmaps/BS_VIEWDATA.gz
>   /usr/share/i18n/charmaps/ISO_646.IRV.gz
>   /usr/share/i18n/charmaps/EBCDIC-FI-SE.gz
>   /usr/share/i18n/charmaps/NF_Z_62-010.gz
>   /usr/share/i18n/charmaps/KOI8-R.gz
>   /usr/share/i18n/charmaps/IBM280.gz
>   /usr/share/i18n/charmaps/IBM857.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-KANA.gz
>   /usr/share/i18n/charmaps/EUC-JISX0213.gz
>   /usr/share/i18n/charmaps/ISO-8859-7.gz
>   /usr/share/i18n/charmaps/CSN_369103.gz
>   /usr/share/i18n/charmaps/GEORGIAN-ACADEMY.gz
>   /usr/share/i18n/charmaps/NS_4551-1.gz
>   /usr/share/i18n/charmaps/IBM1164.gz
>   /usr/share/i18n/charmaps/WINDOWS-31J.gz
>   /usr/share/i18n/charmaps/GBK.gz
>   /usr/share/i18n/charmaps/PT2.gz
>   /usr/share/i18n/charmaps/NATS-SEFI.gz
>   /usr/share/i18n/charmaps/TSCII.gz
>   /usr/share/i18n/charmaps/JIS_C6220-1969-JP.gz
>   /usr/share/i18n/charmaps/ISO-8859-10.gz
>   /usr/share/i18n/charmaps/IBM290.gz
>   /usr/share/i18n/charmaps/EBCDIC-US.gz
>   /usr/share/i18n/charmaps/ISIRI-3342.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-HAND.gz
>   /usr/share/i18n/charmaps/MIK.gz
>   /usr/share/i18n/charmaps/HP-THAI8.gz
>   /usr/share/i18n/charmaps/TCVN5712-1.gz
>   /usr/share/i18n/charmaps/DIN_66003.gz
>   /usr/share/i18n/charmaps/CP774.gz
>   /usr/share/i18n/charmaps/JOHAB.gz
>   /usr/share/i18n/charmaps/IBM904.gz
>   /usr/share/i18n/charmaps/LATIN-GREEK-1.gz
>   /usr/share/i18n/charmaps/IBM863.gz
>   /usr/share/i18n/charmaps/HP-ROMAN8.gz
>   /usr/share/i18n/charmaps/ISO_5428.gz
>   /usr/share/i18n/charmaps/IEC_P27-1.gz
>   /usr/share/i18n/charmaps/CP1254.gz
>   /usr/share/i18n/charmaps/CP1125.gz
>   /usr/share/i18n/charmaps/KOI-8.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-A.gz
>   /usr/share/i18n/charmaps/ISO-8859-9.gz
>   /usr/share/i18n/charmaps/ISO_646.BASIC.gz
>   /usr/share/i18n/charmaps/IBM860.gz
>   /usr/share/i18n/charmaps/IBM891.gz
>   /usr/share/i18n/charmaps/NF_Z_62-010_1973.gz
>   /usr/share/i18n/charmaps/CP773.gz
>   /usr/share/i18n/charmaps/NS_4551-2.gz
>   /usr/share/i18n/charmaps/ISO-8859-13.gz
>   /usr/share/i18n/charmaps/ANSI_X3.4-1968.gz
>   /usr/share/i18n/charmaps/EBCDIC-ES-A.gz
>   /usr/share/i18n/charmaps/IBM284.gz
>   /usr/share/i18n/charmaps/ISO-8859-1.gz
>   /usr/share/i18n/charmaps/CP770.gz
>   /usr/share/i18n/charmaps/CSA_Z243.4-1985-1.gz
>   /usr/share/i18n/charmaps/ANSI_X3.110-1983.gz
>   /usr/share/i18n/charmaps/EBCDIC-IS-FRISS.gz
>   /usr/share/i18n/charmaps/MAC-IS.gz
>   /usr/share/i18n/charmaps/TIS-620.gz
>   /usr/share/i18n/charmaps/ISO_6937-2-25.gz
>   /usr/share/i18n/charmaps/RK1048.gz
>   /usr/share/i18n/charmaps/IBM1133.gz
>   /usr/share/i18n/charmaps/GREEK7-OLD.gz
>   /usr/share/i18n/charmaps/CP737.gz
>   /usr/share/i18n/charmaps/IBM037.gz
>   /usr/share/i18n/charmaps/IBM866NAV.gz
>   /usr/share/i18n/charmaps/CP1255.gz
>   /usr/share/i18n/charmaps/ISO_6937.gz
>   /usr/share/i18n/charmaps/IBM256.gz
>   /usr/share/i18n/charmaps/CSA_Z243.4-1985-2.gz
>   /usr/share/i18n/charmaps/EBCDIC-DK-NO-A.gz
>   /usr/share/i18n/charmaps/IBM874.gz
>   /usr/share/i18n/charmaps/JUS_I.B1.003-MAC.gz
>   /usr/share/i18n/charmaps/ES.gz
>   /usr/share/i18n/charmaps/ISO_5427-EXT.gz
>   /usr/share/i18n/charmaps/ISO_5427.gz
>   /usr/share/i18n/charmaps/KOI8-T.gz
>   /usr/share/i18n/charmaps/EBCDIC-PT.gz
>   /usr/share/i18n/charmaps/BIG5-HKSCS.gz
>   /usr/share/i18n/charmaps/IBM423.gz
>   /usr/share/i18n/charmaps/IBM869.gz
>   /usr/share/i18n/charmaps/IBM905.gz
>   /usr/share/i18n/charmaps/MAC-CENTRALEUROPE.gz
>   /usr/share/i18n/charmaps/IBM1161.gz
>   /usr/share/i18n/charmaps/CP949.gz
>   /usr/share/i18n/charmaps/IBM1160.gz
>   /usr/share/i18n/charmaps/NEXTSTEP.gz
>   /usr/share/i18n/charmaps/ECMA-CYRILLIC.gz
>   /usr/share/i18n/charmaps/EBCDIC-FR.gz
>   /usr/share/i18n/charmaps/ES2.gz
>   /usr/share/i18n/charmaps/ISO-8859-3.gz
>   /usr/share/i18n/charmaps/IBM862.gz
>   /usr/share/i18n/charmaps/IBM852.gz
>   /usr/share/i18n/charmaps/ISO-8859-14.gz
>   /usr/share/i18n/charmaps/VIDEOTEX-SUPPL.gz
>   /usr/share/i18n/charmaps/SEN_850200_B.gz
>   /usr/share/i18n/charmaps/MAC-UK.gz
>   /usr/share/i18n/charmaps/JUS_I.B1.002.gz
>   /usr/share/i18n/charmaps/ISO-8859-9E.gz
>   /usr/share/i18n/charmaps/EBCDIC-AT-DE-A.gz
>   /usr/share/i18n/charmaps/IBM437.gz
>   /usr/share/i18n/charmaps/IBM851.gz
>   /usr/share/i18n/charmaps/ISO-8859-6.gz
>   /usr/share/i18n/charmaps/UTF-8.gz
>   /usr/share/i18n/charmaps/IBM864.gz
>   /usr/share/i18n/charmaps/EUC-JP-MS.gz
>   /usr/share/i18n/charmaps/EBCDIC-DK-NO.gz
>   /usr/share/i18n/charmaps/CP1252.gz
>   /usr/share/i18n/charmaps/MSZ_7795.3.gz
>   /usr/share/i18n/charmaps/IBM922.gz
>   /usr/share/i18n/charmaps/CP1258.gz
>   /usr/share/i18n/charmaps/HP-TURKISH8.gz
>   /usr/share/i18n/charmaps/CP1251.gz
>   /usr/share/i18n/charmaps/HP-GREEK8.gz
>   /usr/share/i18n/charmaps/ISO-8859-4.gz
>   /usr/share/i18n/charmaps/GB_1988-80.gz
>   /usr/share/i18n/charmaps/ASMO_449.gz
>   /usr/share/i18n/charmaps/CP771.gz
>   /usr/share/i18n/charmaps/INVARIANT.gz
>   /usr/share/i18n/charmaps/IBM281.gz
>   /usr/share/i18n/charmaps/EUC-KR.gz
>   /usr/share/i18n/charmaps/IBM875.gz
>   /usr/share/i18n/charmaps/SAMI-WS2.gz
>   /usr/share/i18n/charmaps/EBCDIC-ES.gz
>   /usr/share/i18n/charmaps/IBM870.gz
>   /usr/share/i18n/charmaps/IBM868.gz
>   /usr/share/i18n/charmaps/IBM856.gz
>   /usr/share/i18n/charmaps/ISO_6937-2-ADD.gz
>   /usr/share/i18n/charmaps/EUC-JP.gz
>   /usr/share/i18n/charmaps/BRF.gz
>   /usr/share/i18n/charmaps/IBM1047.gz
>   /usr/share/i18n/charmaps/ISO_8859-SUPP.gz
>   /usr/share/i18n/charmaps/KOI8-RU.gz
>   /usr/share/i18n/charmaps/IBM273.gz
>   /usr/share/i18n/charmaps/EBCDIC-CA-FR.gz
>   /usr/share/i18n/charmaps/IBM850.gz
>   /usr/share/i18n/charmaps/GB18030.gz
>   /usr/share/i18n/charmaps/IBM866.gz
>   /usr/share/i18n/charmaps/ISO-8859-11.gz
>   /usr/share/i18n/charmaps/IBM1026.gz
>   /usr/share/i18n/charmaps/SEN_850200_C.gz
>   /usr/share/i18n/charmaps/BIG5.gz
>   /usr/share/i18n/charmaps/KOI8-U.gz
>   /usr/share/i18n/charmaps/ISO_8859-1,GL.gz
>   /usr/share/i18n/charmaps/IBM865.gz
>   /usr/share/i18n/charmaps/ARMSCII-8.gz
>   /usr/share/i18n/charmaps/ISO_10646.gz
>   /usr/share/i18n/charmaps/ISO_11548-1.gz
>   /usr/share/i18n/charmaps/IBM871.gz
>   /usr/share/i18n/charmaps/JIS_X0201.gz
>   /usr/share/i18n/charmaps/SAMI.gz
>   /usr/share/i18n/charmaps/GEORGIAN-PS.gz
>   /usr/share/i18n/charmaps/VISCII.gz
>   /usr/share/i18n/charmaps/IBM1124.gz
>   /usr/share/i18n/charmaps/PT154.gz
>   /usr/share/i18n/charmaps/IBM424.gz
>   /usr/share/i18n/charmaps/PT.gz
>   /usr/share/i18n/charmaps/EBCDIC-IT.gz
>   /usr/share/i18n/charmaps/EBCDIC-FI-SE-A.gz
>   /usr/share/i18n/charmaps/IBM277.gz
>   /usr/share/i18n/charmaps/ISO-IR-197.gz
>   /usr/share/i18n/charmaps/GREEK-CCITT.gz
>   /usr/share/i18n/charmaps/IBM861.gz
>   /usr/share/i18n/charmaps/EBCDIC-AT-DE.gz
>   /usr/share/i18n/charmaps/ISO_2033-1983.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-HAND-ADD.gz
>   /usr/share/i18n/charmaps/MAC-SAMI.gz
>   /usr/share/i18n/charmaps/NC_NC00-10.gz
>   /usr/share/i18n/charmaps/IBM1132.gz
>   /usr/share/i18n/charmaps/IBM420.gz
>   /usr/share/i18n/charmaps/ISO-IR-90.gz
>   /usr/share/i18n/charmaps/NATS-DANO.gz
>   /usr/share/i18n/charmaps/ISO-8859-16.gz
>   /usr/share/i18n/charmaps/CP775.gz
>   /usr/share/i18n/charmaps/NATS-DANO-ADD.gz
>   /usr/share/i18n/charmaps/DEC-MCS.gz
>   /usr/share/i18n/charmaps/IBM500.gz
>   /usr/share/i18n/charmaps/LATIN-GREEK.gz
>   /usr/share/i18n/charmaps/IBM1162.gz
>   /usr/share/i18n/charmaps/CP772.gz
>   /usr/share/i18n/charmaps/IBM275.gz
>   /usr/share/i18n/charmaps/T.61-7BIT.gz
>   /usr/share/i18n/charmaps/ISO-8859-8.gz
>   /usr/share/i18n/charmaps/IBM903.gz
>   /usr/share/i18n/charmaps/IBM1004.gz
>   /usr/share/i18n/charmaps/EBCDIC-ES-S.gz
>   /usr/share/i18n/charmaps/MACINTOSH.gz
>   /usr/share/i18n/charmaps/GREEK7.gz
>   /usr/share/i18n/charmaps/JUS_I.B1.003-SERB.gz
>   /usr/share/i18n/charmaps/HP-ROMAN9.gz
>   /usr/share/i18n/charmaps/INIS-CYRILLIC.gz
>   /usr/share/i18n/charmaps/ISO-8859-15.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-B-ADD.gz
>   /usr/share/i18n/charmaps/NATS-SEFI-ADD.gz
>   /usr/share/i18n/charmaps/CP1256.gz
>   /usr/share/i18n/charmaps/CSA_Z243.4-1985-GR.gz
>   /usr/share/i18n/charmaps/JIS_C6229-1984-B.gz
>   /usr/share/i18n/locales/niu_NU
>   /usr/share/i18n/locales/en_IE
>   /usr/share/i18n/locales/sl_SI
>   /usr/share/i18n/locales/fi_FI@euro
>   /usr/share/i18n/locales/mg_MG
>   /usr/share/i18n/locales/sm_WS
>   /usr/share/i18n/locales/kl_GL
>   /usr/share/i18n/locales/aa_ER@saaho
>   /usr/share/i18n/locales/es_ES
>   /usr/share/i18n/locales/ar_TN
>   /usr/share/i18n/locales/lb_LU
>   /usr/share/i18n/locales/sgs_LT
>   /usr/share/i18n/locales/ca_ES@euro
>   /usr/share/i18n/locales/ti_ER
>   /usr/share/i18n/locales/ta_LK
>   /usr/share/i18n/locales/ha_NG
>   /usr/share/i18n/locales/st_ZA
>   /usr/share/i18n/locales/niu_NZ
>   /usr/share/i18n/locales/es_CU
>   /usr/share/i18n/locales/translit_small
>   /usr/share/i18n/locales/ve_ZA
>   /usr/share/i18n/locales/kn_IN
>   /usr/share/i18n/locales/el_CY
>   /usr/share/i18n/locales/ak_GH
>   /usr/share/i18n/locales/ca_FR
>   /usr/share/i18n/locales/fr_BE@euro
>   /usr/share/i18n/locales/POSIX
>   /usr/share/i18n/locales/ga_IE
>   /usr/share/i18n/locales/ar_IQ
>   /usr/share/i18n/locales/translit_compat
>   /usr/share/i18n/locales/mi_NZ
>   /usr/share/i18n/locales/ur_PK
>   /usr/share/i18n/locales/br_FR
>   /usr/share/i18n/locales/ar_SS
>   /usr/share/i18n/locales/mhr_RU
>   /usr/share/i18n/locales/kk_KZ
>   /usr/share/i18n/locales/mjw_IN
>   /usr/share/i18n/locales/en_NZ
>   /usr/share/i18n/locales/en_ZW
>   /usr/share/i18n/locales/gd_GB
>   /usr/share/i18n/locales/fil_PH
>   /usr/share/i18n/locales/fr_LU@euro
>   /usr/share/i18n/locales/iu_CA
>   /usr/share/i18n/locales/es_AR
>   /usr/share/i18n/locales/es_MX
>   /usr/share/i18n/locales/rw_RW
>   /usr/share/i18n/locales/ru_UA
>   /usr/share/i18n/locales/sat_IN
>   /usr/share/i18n/locales/be_BY@latin
>   /usr/share/i18n/locales/ar_LY
>   /usr/share/i18n/locales/lg_UG
>   /usr/share/i18n/locales/tcy_IN
>   /usr/share/i18n/locales/nb_NO
>   /usr/share/i18n/locales/en_IE@euro
>   /usr/share/i18n/locales/de_DE
>   /usr/share/i18n/locales/es_GT
>   /usr/share/i18n/locales/ar_MA
>   /usr/share/i18n/locales/os_RU
>   /usr/share/i18n/locales/ber_MA
>   /usr/share/i18n/locales/zh_CN
>   /usr/share/i18n/locales/oc_FR
>   /usr/share/i18n/locales/byn_ER
>   /usr/share/i18n/locales/aa_ET
>   /usr/share/i18n/locales/wae_CH
>   /usr/share/i18n/locales/de_LU
>   /usr/share/i18n/locales/brx_IN
>   /usr/share/i18n/locales/az_AZ
>   /usr/share/i18n/locales/sc_IT
>   /usr/share/i18n/locales/agr_PE
>   /usr/share/i18n/locales/hak_TW
>   /usr/share/i18n/locales/cmn_TW
>   /usr/share/i18n/locales/uz_UZ
>   /usr/share/i18n/locales/ks_IN
>   /usr/share/i18n/locales/hr_HR
>   /usr/share/i18n/locales/pap_AW
>   /usr/share/i18n/locales/gez_ER
>   /usr/share/i18n/locales/el_GR
>   /usr/share/i18n/locales/ca_AD
>   /usr/share/i18n/locales/li_BE
>   /usr/share/i18n/locales/wa_BE
>   /usr/share/i18n/locales/tn_ZA
>   /usr/share/i18n/locales/i18n_ctype
>   /usr/share/i18n/locales/uk_UA
>   /usr/share/i18n/locales/ig_NG
>   /usr/share/i18n/locales/nhn_MX
>   /usr/share/i18n/locales/bhb_IN
>   /usr/share/i18n/locales/bs_BA
>   /usr/share/i18n/locales/ko_KR
>   /usr/share/i18n/locales/nr_ZA
>   /usr/share/i18n/locales/en_CA
>   /usr/share/i18n/locales/miq_NI
>   /usr/share/i18n/locales/fr_FR
>   /usr/share/i18n/locales/el_GR@euro
>   /usr/share/i18n/locales/dsb_DE
>   /usr/share/i18n/locales/lzh_TW
>   /usr/share/i18n/locales/de_BE
>   /usr/share/i18n/locales/yo_NG
>   /usr/share/i18n/locales/nl_BE
>   /usr/share/i18n/locales/es_CR
>   /usr/share/i18n/locales/en_SG
>   /usr/share/i18n/locales/ca_IT
>   /usr/share/i18n/locales/es_DO
>   /usr/share/i18n/locales/or_IN
>   /usr/share/i18n/locales/quz_PE
>   /usr/share/i18n/locales/es_NI
>   /usr/share/i18n/locales/ss_ZA
>   /usr/share/i18n/locales/id_ID
>   /usr/share/i18n/locales/nds_NL
>   /usr/share/i18n/locales/ia_FR
>   /usr/share/i18n/locales/tr_TR
>   /usr/share/i18n/locales/sw_TZ
>   /usr/share/i18n/locales/translit_narrow
>   /usr/share/i18n/locales/i18n
>   /usr/share/i18n/locales/de_IT
>   /usr/share/i18n/locales/mn_MN
>   /usr/share/i18n/locales/nl_NL
>   /usr/share/i18n/locales/ug_CN
>   /usr/share/i18n/locales/br_FR@euro
>   /usr/share/i18n/locales/nso_ZA
>   /usr/share/i18n/locales/de_LU@euro
>   /usr/share/i18n/locales/es_EC
>   /usr/share/i18n/locales/en_SC
>   /usr/share/i18n/locales/so_ET
>   /usr/share/i18n/locales/eo
>   /usr/share/i18n/locales/sq_AL
>   /usr/share/i18n/locales/iso14651_t1_pinyin
>   /usr/share/i18n/locales/ff_SN
>   /usr/share/i18n/locales/ayc_PE
>   /usr/share/i18n/locales/chr_US
>   /usr/share/i18n/locales/bo_IN
>   /usr/share/i18n/locales/gez_ER@abegede
>   /usr/share/i18n/locales/sv_FI
>   /usr/share/i18n/locales/translit_fraction
>   /usr/share/i18n/locales/ar_DZ
>   /usr/share/i18n/locales/an_ES
>   /usr/share/i18n/locales/es_CL
>   /usr/share/i18n/locales/ar_YE
>   /usr/share/i18n/locales/ru_RU
>   /usr/share/i18n/locales/crh_UA
>   /usr/share/i18n/locales/gl_ES@euro
>   /usr/share/i18n/locales/ce_RU
>   /usr/share/i18n/locales/ts_ZA
>   /usr/share/i18n/locales/af_ZA
>   /usr/share/i18n/locales/sq_MK
>   /usr/share/i18n/locales/ar_KW
>   /usr/share/i18n/locales/tl_PH
>   /usr/share/i18n/locales/bn_IN
>   /usr/share/i18n/locales/szl_PL
>   /usr/share/i18n/locales/ps_AF
>   /usr/share/i18n/locales/hi_IN
>   /usr/share/i18n/locales/te_IN
>   /usr/share/i18n/locales/cv_RU
>   /usr/share/i18n/locales/mag_IN
>   /usr/share/i18n/locales/mni_IN
>   /usr/share/i18n/locales/bem_ZM
>   /usr/share/i18n/locales/tt_RU@iqtelif
>   /usr/share/i18n/locales/ast_ES
>   /usr/share/i18n/locales/tpi_PG
>   /usr/share/i18n/locales/dz_BT
>   /usr/share/i18n/locales/et_EE
>   /usr/share/i18n/locales/ku_TR
>   /usr/share/i18n/locales/nl_NL@euro
>   /usr/share/i18n/locales/hu_HU
>   /usr/share/i18n/locales/zh_SG
>   /usr/share/i18n/locales/iso14651_t1
>   /usr/share/i18n/locales/om_ET
>   /usr/share/i18n/locales/translit_combining
>   /usr/share/i18n/locales/cy_GB
>   /usr/share/i18n/locales/zh_HK
>   /usr/share/i18n/locales/bho_NP
>   /usr/share/i18n/locales/ms_MY
>   /usr/share/i18n/locales/hy_AM
>   /usr/share/i18n/locales/pa_PK
>   /usr/share/i18n/locales/is_IS
>   /usr/share/i18n/locales/ml_IN
>   /usr/share/i18n/locales/de_AT
>   /usr/share/i18n/locales/nds_DE
>   /usr/share/i18n/locales/pap_CW
>   /usr/share/i18n/locales/sv_FI@euro
>   /usr/share/i18n/locales/am_ET
>   /usr/share/i18n/locales/lij_IT
>   /usr/share/i18n/locales/ht_HT
>   /usr/share/i18n/locales/pt_PT
>   /usr/share/i18n/locales/es_ES@euro
>   /usr/share/i18n/locales/en_ZM
>   /usr/share/i18n/locales/gez_ET
>   /usr/share/i18n/locales/aa_ER
>   /usr/share/i18n/locales/de_CH
>   /usr/share/i18n/locales/wo_SN
>   /usr/share/i18n/locales/en_IL
>   /usr/share/i18n/locales/tr_CY
>   /usr/share/i18n/locales/fy_DE
>   /usr/share/i18n/locales/my_MM
>   /usr/share/i18n/locales/pa_IN
>   /usr/share/i18n/locales/gv_GB
>   /usr/share/i18n/locales/es_UY
>   /usr/share/i18n/locales/fy_NL
>   /usr/share/i18n/locales/zu_ZA
>   /usr/share/i18n/locales/to_TO
>   /usr/share/i18n/locales/fi_FI
>   /usr/share/i18n/locales/fo_FO
>   /usr/share/i18n/locales/eu_ES@euro
>   /usr/share/i18n/locales/uz_UZ@cyrillic
>   /usr/share/i18n/locales/en_ZA
>   /usr/share/i18n/locales/ne_NP
>   /usr/share/i18n/locales/pt_PT@euro
>   /usr/share/i18n/locales/dv_MV
>   /usr/share/i18n/locales/hif_FJ
>   /usr/share/i18n/locales/translit_font
>   /usr/share/i18n/locales/th_TH
>   /usr/share/i18n/locales/sa_IN
>   /usr/share/i18n/locales/bn_BD
>   /usr/share/i18n/locales/en_NG
>   /usr/share/i18n/locales/en_IN
>   /usr/share/i18n/locales/pt_BR
>   /usr/share/i18n/locales/sah_RU
>   /usr/share/i18n/locales/zh_TW
>   /usr/share/i18n/locales/ca_ES
>   /usr/share/i18n/locales/ber_DZ
>   /usr/share/i18n/locales/gl_ES
>   /usr/share/i18n/locales/translit_cjk_compat
>   /usr/share/i18n/locales/ga_IE@euro
>   /usr/share/i18n/locales/bho_IN
>   /usr/share/i18n/locales/it_IT
>   /usr/share/i18n/locales/nan_TW@latin
>   /usr/share/i18n/locales/translit_circle
>   /usr/share/i18n/locales/sid_ET
>   /usr/share/i18n/locales/en_GB
>   /usr/share/i18n/locales/translit_wide
>   /usr/share/i18n/locales/az_IR
>   /usr/share/i18n/locales/aa_DJ
>   /usr/share/i18n/locales/be_BY
>   /usr/share/i18n/locales/the_NP
>   /usr/share/i18n/locales/mai_IN
>   /usr/share/i18n/locales/gu_IN
>   /usr/share/i18n/locales/kok_IN
>   /usr/share/i18n/locales/sr_RS
>   /usr/share/i18n/locales/hsb_DE
>   /usr/share/i18n/locales/translit_cjk_variants
>   /usr/share/i18n/locales/so_SO
>   /usr/share/i18n/locales/sd_IN
>   /usr/share/i18n/locales/ar_QA
>   /usr/share/i18n/locales/tg_TJ
>   /usr/share/i18n/locales/iso14651_t1_common
>   /usr/share/i18n/locales/ca_ES@valencia
>   /usr/share/i18n/locales/fur_IT
>   /usr/share/i18n/locales/sr_RS@latin
>   /usr/share/i18n/locales/so_DJ
>   /usr/share/i18n/locales/li_NL
>   /usr/share/i18n/locales/ar_AE
>   /usr/share/i18n/locales/fr_BE
>   /usr/share/i18n/locales/cs_CZ
>   /usr/share/i18n/locales/hne_IN
>   /usr/share/i18n/locales/nl_BE@euro
>   /usr/share/i18n/locales/yi_US
>   /usr/share/i18n/locales/mr_IN
>   /usr/share/i18n/locales/anp_IN
>   /usr/share/i18n/locales/sd_IN@devanagari
>   /usr/share/i18n/locales/yue_HK
>   /usr/share/i18n/locales/es_PA
>   /usr/share/i18n/locales/wa_BE@euro
>   /usr/share/i18n/locales/en_BW
>   /usr/share/i18n/locales/vi_VN
>   /usr/share/i18n/locales/bi_VU
>   /usr/share/i18n/locales/mk_MK
>   /usr/share/i18n/locales/es_PR
>   /usr/share/i18n/locales/lv_LV
>   /usr/share/i18n/locales/shs_CA
>   /usr/share/i18n/locales/tk_TM
>   /usr/share/i18n/locales/csb_PL
>   /usr/share/i18n/locales/sr_ME
>   /usr/share/i18n/locales/nan_TW
>   /usr/share/i18n/locales/mfe_MU
>   /usr/share/i18n/locales/pl_PL
>   /usr/share/i18n/locales/de_AT@euro
>   /usr/share/i18n/locales/ik_CA
>   /usr/share/i18n/locales/cns11643_stroke
>   /usr/share/i18n/locales/fr_CH
>   /usr/share/i18n/locales/ar_JO
>   /usr/share/i18n/locales/en_AG
>   /usr/share/i18n/locales/fa_IR
>   /usr/share/i18n/locales/translit_neutral
>   /usr/share/i18n/locales/mt_MT
>   /usr/share/i18n/locales/nn_NO
>   /usr/share/i18n/locales/ar_OM
>   /usr/share/i18n/locales/de_LI
>   /usr/share/i18n/locales/lt_LT
>   /usr/share/i18n/locales/unm_US
>   /usr/share/i18n/locales/fr_CA
>   /usr/share/i18n/locales/sk_SK
>   /usr/share/i18n/locales/ta_IN
>   /usr/share/i18n/locales/as_IN
>   /usr/share/i18n/locales/kw_GB
>   /usr/share/i18n/locales/xh_ZA
>   /usr/share/i18n/locales/ks_IN@devanagari
>   /usr/share/i18n/locales/si_LK
>   /usr/share/i18n/locales/en_HK
>   /usr/share/i18n/locales/es_BO
>   /usr/share/i18n/locales/wal_ET
>   /usr/share/i18n/locales/ar_EG
>   /usr/share/i18n/locales/es_HN
>   /usr/share/i18n/locales/it_CH
>   /usr/share/i18n/locales/es_SV
>   /usr/share/i18n/locales/ro_RO
>   /usr/share/i18n/locales/bg_BG
>   /usr/share/i18n/locales/mai_NP
>   /usr/share/i18n/locales/ja_JP
>   /usr/share/i18n/locales/tig_ER
>   /usr/share/i18n/locales/ky_KG
>   /usr/share/i18n/locales/lo_LA
>   /usr/share/i18n/locales/ln_CD
>   /usr/share/i18n/locales/shn_MM
>   /usr/share/i18n/locales/es_CO
>   /usr/share/i18n/locales/eu_ES
>   /usr/share/i18n/locales/es_US
>   /usr/share/i18n/locales/gez_ET@abegede
>   /usr/share/i18n/locales/es_PY
>   /usr/share/i18n/locales/se_NO
>   /usr/share/i18n/locales/so_KE
>   /usr/share/i18n/locales/es_VE
>   /usr/share/i18n/locales/es_PE
>   /usr/share/i18n/locales/om_KE
>   /usr/share/i18n/locales/en_PH
>   /usr/share/i18n/locales/sw_KE
>   /usr/share/i18n/locales/bo_CN
>   /usr/share/i18n/locales/ur_IN
>   /usr/share/i18n/locales/fr_FR@euro
>   /usr/share/i18n/locales/sv_SE
>   /usr/share/i18n/locales/yuw_PG
>   /usr/share/i18n/locales/tt_RU
>   /usr/share/i18n/locales/de_BE@euro
>   /usr/share/i18n/locales/doi_IN
>   /usr/share/i18n/locales/ar_LB
>   /usr/share/i18n/locales/en_AU
>   /usr/share/i18n/locales/nl_AW
>   /usr/share/i18n/locales/en_US
>   /usr/share/i18n/locales/ar_SY
>   /usr/share/i18n/locales/ar_SA
>   /usr/share/i18n/locales/he_IL
>   /usr/share/i18n/locales/ka_GE
>   /usr/share/i18n/locales/ti_ET
>   /usr/share/i18n/locales/ar_SD
>   /usr/share/i18n/locales/translit_hangul
>   /usr/share/i18n/locales/it_IT@euro
>   /usr/share/i18n/locales/en_DK
>   /usr/share/i18n/locales/da_DK
>   /usr/share/i18n/locales/ar_IN
>   /usr/share/i18n/locales/ar_BH
>   /usr/share/i18n/locales/de_DE@euro
>   /usr/share/i18n/locales/kab_DZ
>   /usr/share/i18n/locales/fr_LU
>   /usr/share/i18n/locales/km_KH
>   /usr/share/i18n/locales/raj_IN
>   /usr/lib/gconv/IBM4909.so
>   /usr/lib/gconv/ISO8859-9E.so
>   /usr/lib/gconv/ISO8859-6.so
>   /usr/lib/gconv/NATS-SEFI.so
>   /usr/lib/gconv/EBCDIC-PT.so
>   /usr/lib/gconv/SHIFT_JISX0213.so
>   /usr/lib/gconv/ARMSCII-8.so
>   /usr/lib/gconv/UNICODE.so
>   /usr/lib/gconv/IBM1166.so
>   /usr/lib/gconv/CP1258.so
>   /usr/lib/gconv/ISO8859-13.so
>   /usr/lib/gconv/IBM9448.so
>   /usr/lib/gconv/IBM865.so
>   /usr/lib/gconv/KOI8-R.so
>   /usr/lib/gconv/CP1256.so
>   /usr/lib/gconv/IBM290.so
>   /usr/lib/gconv/IBM280.so
>   /usr/lib/gconv/IBM4971.so
>   /usr/lib/gconv/EBCDIC-ES-S.so
>   /usr/lib/gconv/IBM852.so
>   /usr/lib/gconv/IBM1160.so
>   /usr/lib/gconv/IBM275.so
>   /usr/lib/gconv/IBM937.so
>   /usr/lib/gconv/IBM277.so
>   /usr/lib/gconv/ISO_5427-EXT.so
>   /usr/lib/gconv/EBCDIC-FI-SE.so
>   /usr/lib/gconv/IBM880.so
>   /usr/lib/gconv/ISO-IR-209.so
>   /usr/lib/gconv/IBM943.so
>   /usr/lib/gconv/IBM1097.so
>   /usr/lib/gconv/IBM1145.so
>   /usr/lib/gconv/ISO-2022-CN-EXT.so
>   /usr/lib/gconv/IBM935.so
>   /usr/lib/gconv/IBM1133.so
>   /usr/lib/gconv/ASMO_449.so
>   /usr/lib/gconv/GEORGIAN-PS.so
>   /usr/lib/gconv/ISO646.so
>   /usr/lib/gconv/IBM868.so
>   /usr/lib/gconv/CP775.so
>   /usr/lib/gconv/CP932.so
>   /usr/lib/gconv/IBM1154.so
>   /usr/lib/gconv/EBCDIC-FI-SE-A.so
>   /usr/lib/gconv/ISO8859-4.so
>   /usr/lib/gconv/IBM1147.so
>   /usr/lib/gconv/IBM16804.so
>   /usr/lib/gconv/IBM1167.so
>   /usr/lib/gconv/GBBIG5.so
>   /usr/lib/gconv/TCVN5712-1.so
>   /usr/lib/gconv/KOI8-RU.so
>   /usr/lib/gconv/IBM1140.so
>   /usr/lib/gconv/IBM1112.so
>   /usr/lib/gconv/IBM1124.so
>   /usr/lib/gconv/gconv-modules
>   /usr/lib/gconv/IBM284.so
>   /usr/lib/gconv/IBM856.so
>   /usr/lib/gconv/GEORGIAN-ACADEMY.so
>   /usr/lib/gconv/IBM5347.so
>   /usr/lib/gconv/HP-ROMAN9.so
>   /usr/lib/gconv/KOI-8.so
>   /usr/lib/gconv/CSN_369103.so
>   /usr/lib/gconv/IBM9066.so
>   /usr/lib/gconv/BRF.so
>   /usr/lib/gconv/MIK.so
>   /usr/lib/gconv/IBM930.so
>   /usr/lib/gconv/CP1257.so
>   /usr/lib/gconv/VISCII.so
>   /usr/lib/gconv/IBM1144.so
>   /usr/lib/gconv/EUC-KR.so
>   /usr/lib/gconv/EBCDIC-US.so
>   /usr/lib/gconv/GBK.so
>   /usr/lib/gconv/IBM901.so
>   /usr/lib/gconv/IBM862.so
>   /usr/lib/gconv/IBM1142.so
>   /usr/lib/gconv/UTF-7.so
>   /usr/lib/gconv/IEC_P27-1.so
>   /usr/lib/gconv/ISO8859-14.so
>   /usr/lib/gconv/IBM297.so
>   /usr/lib/gconv/ISO_6937.so
>   /usr/lib/gconv/IBM1123.so
>   /usr/lib/gconv/EBCDIC-AT-DE.so
>   /usr/lib/gconv/CP1250.so
>   /usr/lib/gconv/EBCDIC-AT-DE-A.so
>   /usr/lib/gconv/EBCDIC-IS-FRISS.so
>   /usr/lib/gconv/CP1125.so
>   /usr/lib/gconv/IBM850.so
>   /usr/lib/gconv/IBM905.so
>   /usr/lib/gconv/IBM903.so
>   /usr/lib/gconv/ISO-2022-CN.so
>   /usr/lib/gconv/ISO8859-16.so
>   /usr/lib/gconv/CP1253.so
>   /usr/lib/gconv/PT154.so
>   /usr/lib/gconv/IBM851.so
>   /usr/lib/gconv/IBM874.so
>   /usr/lib/gconv/EUC-CN.so
>   /usr/lib/gconv/IBM875.so
>   /usr/lib/gconv/GREEK-CCITT.so
>   /usr/lib/gconv/INIS-CYRILLIC.so
>   /usr/lib/gconv/TIS-620.so
>   /usr/lib/gconv/ISO8859-3.so
>   /usr/lib/gconv/ISO8859-1.so
>   /usr/lib/gconv/IBM1143.so
>   /usr/lib/gconv/ISO_6937-2.so
>   /usr/lib/gconv/IBM1141.so
>   /usr/lib/gconv/ISO_10367-BOX.so
>   /usr/lib/gconv/EUC-TW.so
>   /usr/lib/gconv/HP-THAI8.so
>   /usr/lib/gconv/libJIS.so
>   /usr/lib/gconv/ISO_11548-1.so
>   /usr/lib/gconv/IBM1399.so
>   /usr/lib/gconv/IBM420.so
>   /usr/lib/gconv/IBM1137.so
>   /usr/lib/gconv/IBM038.so
>   /usr/lib/gconv/ECMA-CYRILLIC.so
>   /usr/lib/gconv/CP10007.so
>   /usr/lib/gconv/IBM1371.so
>   /usr/lib/gconv/IBM855.so
>   /usr/lib/gconv/IBM1390.so
>   /usr/lib/gconv/IBM871.so
>   /usr/lib/gconv/SAMI-WS2.so
>   /usr/lib/gconv/MACINTOSH.so
>   /usr/lib/gconv/ISO-IR-197.so
>   /usr/lib/gconv/libGB.so
>   /usr/lib/gconv/INIS.so
>   /usr/lib/gconv/LATIN-GREEK.so
>   /usr/lib/gconv/IBM273.so
>   /usr/lib/gconv/IBM918.so
>   /usr/lib/gconv/IBM1130.so
>   /usr/lib/gconv/DEC-MCS.so
>   /usr/lib/gconv/IBM1153.so
>   /usr/lib/gconv/JOHAB.so
>   /usr/lib/gconv/IBM858.so
>   /usr/lib/gconv/EBCDIC-ES.so
>   /usr/lib/gconv/ISO_2033.so
>   /usr/lib/gconv/LATIN-GREEK-1.so
>   /usr/lib/gconv/INIS-8.so
>   /usr/lib/gconv/IBM9030.so
>   /usr/lib/gconv/KOI8-T.so
>   /usr/lib/gconv/ISO8859-8.so
>   /usr/lib/gconv/IBM1155.so
>   /usr/lib/gconv/KOI8-U.so
>   /usr/lib/gconv/IBM933.so
>   /usr/lib/gconv/IBM1008.so
>   /usr/lib/gconv/IBM1364.so
>   /usr/lib/gconv/IBM274.so
>   /usr/lib/gconv/ISO8859-15.so
>   /usr/lib/gconv/IBM860.so
>   /usr/lib/gconv/IBM891.so
>   /usr/lib/gconv/GREEK7-OLD.so
>   /usr/lib/gconv/IBM861.so
>   /usr/lib/gconv/IBM1026.so
>   /usr/lib/gconv/EBCDIC-DK-NO.so
>   /usr/lib/gconv/EUC-JP.so
>   /usr/lib/gconv/IBM904.so
>   /usr/lib/gconv/MAC-SAMI.so
>   /usr/lib/gconv/EUC-JP-MS.so
>   /usr/lib/gconv/CP1255.so
>   /usr/lib/gconv/EBCDIC-IT.so
>   /usr/lib/gconv/CP773.so
>   /usr/lib/gconv/IBM902.so
>   /usr/lib/gconv/MAC-IS.so
>   /usr/lib/gconv/UTF-32.so
>   /usr/lib/gconv/ISO-2022-KR.so
>   /usr/lib/gconv/CWI.so
>   /usr/lib/gconv/IBM037.so
>   /usr/lib/gconv/EBCDIC-FR.so
>   /usr/lib/gconv/ISIRI-3342.so
>   /usr/lib/gconv/IBM1158.so
>   /usr/lib/gconv/CP1251.so
>   /usr/lib/gconv/IBM1129.so
>   /usr/lib/gconv/IBM4899.so
>   /usr/lib/gconv/EBCDIC-UK.so
>   /usr/lib/gconv/IBM1046.so
>   /usr/lib/gconv/ISO8859-2.so
>   /usr/lib/gconv/IBM256.so
>   /usr/lib/gconv/IBM1161.so
>   /usr/lib/gconv/UTF-16.so
>   /usr/lib/gconv/CP771.so
>   /usr/lib/gconv/ISO8859-7.so
>   /usr/lib/gconv/IBM437.so
>   /usr/lib/gconv/IBM869.so
>   /usr/lib/gconv/libJISX0213.so
>   /usr/lib/gconv/MAC-UK.so
>   /usr/lib/gconv/IBM281.so
>   /usr/lib/gconv/IBM1163.so
>   /usr/lib/gconv/IBM278.so
>   /usr/lib/gconv/GBGBK.so
>   /usr/lib/gconv/IBM857.so
>   /usr/lib/gconv/IBM285.so
>   /usr/lib/gconv/IBM922.so
>   /usr/lib/gconv/ISO_5428.so
>   /usr/lib/gconv/IBM870.so
>   /usr/lib/gconv/HP-ROMAN8.so
>   /usr/lib/gconv/IBM866NAV.so
>   /usr/lib/gconv/EBCDIC-ES-A.so
>   /usr/lib/gconv/ISO8859-9.so
>   /usr/lib/gconv/IBM866.so
>   /usr/lib/gconv/IBM1025.so
>   /usr/lib/gconv/BIG5HKSCS.so
>   /usr/lib/gconv/IBM921.so
>   /usr/lib/gconv/RK1048.so
>   /usr/lib/gconv/CP772.so
>   /usr/lib/gconv/ISO8859-11.so
>   /usr/lib/gconv/IBM1008_420.so
>   /usr/lib/gconv/T.61.so
>   /usr/lib/gconv/HP-TURKISH8.so
>   /usr/lib/gconv/CP1252.so
>   /usr/lib/gconv/MAC-CENTRALEUROPE.so
>   /usr/lib/gconv/ISO-2022-JP.so
>   /usr/lib/gconv/IBM1148.so
>   /usr/lib/gconv/IBM423.so
>   /usr/lib/gconv/IBM864.so
>   /usr/lib/gconv/CP737.so
>   /usr/lib/gconv/IBM1004.so
>   /usr/lib/gconv/libCNS.so
>   /usr/lib/gconv/CP1254.so
>   /usr/lib/gconv/IBM12712.so
>   /usr/lib/gconv/IBM932.so
>   /usr/lib/gconv/IBM1132.so
>   /usr/lib/gconv/EBCDIC-CA-FR.so
>   /usr/lib/gconv/HP-GREEK8.so
>   /usr/lib/gconv/IBM939.so
>   /usr/lib/gconv/BIG5.so
>   /usr/lib/gconv/GREEK7.so
>   /usr/lib/gconv/libISOIR165.so
>   /usr/lib/gconv/ISO8859-5.so
>   /usr/lib/gconv/CP774.so
>   /usr/lib/gconv/IBM424.so
>   /usr/lib/gconv/IBM803.so
>   /usr/lib/gconv/IBM1164.so
>   /usr/lib/gconv/EUC-JISX0213.so
>   /usr/lib/gconv/IBM1157.so
>   /usr/lib/gconv/IBM1162.so
>   /usr/lib/gconv/libKSC.so
>   /usr/lib/gconv/UHC.so
>   /usr/lib/gconv/IBM500.so
>   /usr/lib/gconv/ISO8859-10.so
>   /usr/lib/gconv/IBM1047.so
>   /usr/lib/gconv/ANSI_X3.110.so
>   /usr/lib/gconv/NATS-DANO.so
>   /usr/lib/gconv/IBM1149.so
>   /usr/lib/gconv/CP770.so
>   /usr/lib/gconv/ISO-2022-JP-3.so
>   /usr/lib/gconv/IBM4517.so
>   /usr/lib/gconv/TSCII.so
>   /usr/lib/gconv/IBM1146.so
>   /usr/lib/gconv/IBM1388.so
>   /usr/lib/gconv/SJIS.so
>   /usr/lib/gconv/ISO_5427.so
>   /usr/lib/gconv/IBM1156.so
>   /usr/lib/gconv/IBM863.so
>   /usr/lib/gconv/IBM1122.so
>   /usr/lib/gconv/EBCDIC-DK-NO-A.so
>   /usr/lib/gconv/GB18030.so
>   /usr/lib/gconv/GOST_19768-74.so
> Please set FILES such that these items are packaged. Alternatively if
> they are unneeded, avoid installing them or delete them within
> do_install.
> glibc-locale: 843 installed and not shipped files. [installed-vs-shipped]
> ERROR: glibc-locale-2.28-r0 do_package: Fatal QA errors found, failing
> task.
> ERROR: glibc-locale-2.28-r0 do_package: Function failed: do_package
>
> When apply simple patch to avoid QA issue like:
> diff --git a/meta/recipes-core/glibc/glibc-locale_2.28.bb
> b/meta/recipes-core/glibc/glibc-locale_2.28.bb
> index f7702e0..6f58316 100644
> --- a/meta/recipes-core/glibc/glibc-locale_2.28.bb
> +++ b/meta/recipes-core/glibc/glibc-locale_2.28.bb
> @@ -1 +1,3 @@
>  require glibc-locale.inc
> +
> +INSANE_SKIP_${PN} = "installed-vs-shipped"
>
> then core-image-base failed with:
>
> ERROR: core-image-base-1.0-r0 do_rootfs: Unable to install packages.
> Command
> '/home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-base/1.0-r0/recipe-sysroot-native/usr/bin/opkg
> --volatile-cache -f
>
> /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-base/1.0-r0/opkg.conf
> -t
> /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-base/1.0-r0/temp/ipktemp/
> -o
> /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-base/1.0-r0/rootfs
>  --force_postinstall --prefer-arch-to-version   install
> locale-base-en-gb locale-base-en-us' returned 255:
> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy
> 'locale-base-en-gb'.
>  * rm_r: Failed to open dir
>
> /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-base/1.0-r0/temp/ipktemp//opkg-yuugJp:
> No such file or directory.
>
> Is there some fix pending for that. Thanks.
>
> [1] -
> https://lists.yoctoproject.org/pipermail/yocto/2017-October/038517.html
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov
> <https://maps.google.com/?q=Ruska+Nova+Ves+219+%7C+Presov&entry=gmail&source=g>,
> 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000007f1d660578c17774
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun,=
 Oct 21, 2018 at 7:27 PM Belisko Marek &lt;<a href=3D"mailto:marek.belisko@=
gmail.com">marek.belisko@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Hi,<br>
<br>
I had problem with rocko see here [1] but issue is still present in<br>
poky master-next also:</blockquote><div dir=3D"auto"><br></div><div dir=3D"=
auto">Is it using stock poky or are there any customizations if yes then pl=
ease share those too</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
ERROR: glibc-locale-2.28-r0 do_package: QA Issue: glibc-locale:<br>
Files/directories were installed but not shipped in any package:<br>
=C2=A0 /usr/share/i18n<br>
=C2=A0 /usr/share/i18n/charmaps<br>
=C2=A0 /usr/share/i18n/locales<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/T.61-8BIT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM855.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1163.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1129.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SHIFT_JIS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CWI.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1253.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM880.gz<br>
=C2=A0 /usr/share/i18n/charmaps/T.101-G2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-5.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1250.gz<br>
=C2=A0 /usr/share/i18n/charmaps/INIS-8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SHIFT_JISX0213.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM297.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_10367-BOX.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1257.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6220-1969-RO.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM278.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM858.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KSC5636.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM285.gz<br>
=C2=A0 /usr/share/i18n/charmaps/INIS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EUC-TW.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM274.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM038.gz<br>
=C2=A0 /usr/share/i18n/charmaps/DS_2089.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GB2312.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-UK.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GOST_19768-74.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-IR-209.gz<br>
=C2=A0 /usr/share/i18n/charmaps/BS_4730.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM918.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MAC-CYRILLIC.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP10007.gz<br>
=C2=A0 /usr/share/i18n/charmaps/BS_VIEWDATA.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_646.IRV.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-FI-SE.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NF_Z_62-010.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KOI8-R.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM280.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM857.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-KANA.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EUC-JISX0213.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-7.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CSN_369103.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GEORGIAN-ACADEMY.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NS_4551-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1164.gz<br>
=C2=A0 /usr/share/i18n/charmaps/WINDOWS-31J.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GBK.gz<br>
=C2=A0 /usr/share/i18n/charmaps/PT2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NATS-SEFI.gz<br>
=C2=A0 /usr/share/i18n/charmaps/TSCII.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6220-1969-JP.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-10.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM290.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-US.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISIRI-3342.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-HAND.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MIK.gz<br>
=C2=A0 /usr/share/i18n/charmaps/HP-THAI8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/TCVN5712-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/DIN_66003.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP774.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JOHAB.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM904.gz<br>
=C2=A0 /usr/share/i18n/charmaps/LATIN-GREEK-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM863.gz<br>
=C2=A0 /usr/share/i18n/charmaps/HP-ROMAN8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_5428.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IEC_P27-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1254.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1125.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KOI-8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-A.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-9.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_646.BASIC.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM860.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM891.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NF_Z_62-010_1973.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP773.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NS_4551-2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-13.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ANSI_X3.4-1968.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-ES-A.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM284.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP770.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CSA_Z243.4-1985-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ANSI_X3.110-1983.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-IS-FRISS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MAC-IS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/TIS-620.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_6937-2-25.gz<br>
=C2=A0 /usr/share/i18n/charmaps/RK1048.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1133.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GREEK7-OLD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP737.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM037.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM866NAV.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1255.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_6937.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM256.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CSA_Z243.4-1985-2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-DK-NO-A.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM874.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JUS_I.B1.003-MAC.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ES.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_5427-EXT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_5427.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KOI8-T.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-PT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/BIG5-HKSCS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM423.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM869.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM905.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MAC-CENTRALEUROPE.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1161.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP949.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1160.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NEXTSTEP.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ECMA-CYRILLIC.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-FR.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ES2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-3.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM862.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM852.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-14.gz<br>
=C2=A0 /usr/share/i18n/charmaps/VIDEOTEX-SUPPL.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SEN_850200_B.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MAC-UK.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JUS_I.B1.002.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-9E.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-AT-DE-A.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM437.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM851.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-6.gz<br>
=C2=A0 /usr/share/i18n/charmaps/UTF-8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM864.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EUC-JP-MS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-DK-NO.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1252.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MSZ_7795.3.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM922.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1258.gz<br>
=C2=A0 /usr/share/i18n/charmaps/HP-TURKISH8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1251.gz<br>
=C2=A0 /usr/share/i18n/charmaps/HP-GREEK8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-4.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GB_1988-80.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ASMO_449.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP771.gz<br>
=C2=A0 /usr/share/i18n/charmaps/INVARIANT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM281.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EUC-KR.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM875.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SAMI-WS2.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-ES.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM870.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM868.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM856.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_6937-2-ADD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EUC-JP.gz<br>
=C2=A0 /usr/share/i18n/charmaps/BRF.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1047.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_8859-SUPP.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KOI8-RU.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM273.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-CA-FR.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM850.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GB18030.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM866.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-11.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1026.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SEN_850200_C.gz<br>
=C2=A0 /usr/share/i18n/charmaps/BIG5.gz<br>
=C2=A0 /usr/share/i18n/charmaps/KOI8-U.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_8859-1,GL.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM865.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ARMSCII-8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_10646.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_11548-1.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM871.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_X0201.gz<br>
=C2=A0 /usr/share/i18n/charmaps/SAMI.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GEORGIAN-PS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/VISCII.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1124.gz<br>
=C2=A0 /usr/share/i18n/charmaps/PT154.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM424.gz<br>
=C2=A0 /usr/share/i18n/charmaps/PT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-IT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-FI-SE-A.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM277.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-IR-197.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GREEK-CCITT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM861.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-AT-DE.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO_2033-1983.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-HAND-ADD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MAC-SAMI.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NC_NC00-10.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1132.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM420.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-IR-90.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NATS-DANO.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-16.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP775.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NATS-DANO-ADD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/DEC-MCS.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM500.gz<br>
=C2=A0 /usr/share/i18n/charmaps/LATIN-GREEK.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1162.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP772.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM275.gz<br>
=C2=A0 /usr/share/i18n/charmaps/T.61-7BIT.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-8.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM903.gz<br>
=C2=A0 /usr/share/i18n/charmaps/IBM1004.gz<br>
=C2=A0 /usr/share/i18n/charmaps/EBCDIC-ES-S.gz<br>
=C2=A0 /usr/share/i18n/charmaps/MACINTOSH.gz<br>
=C2=A0 /usr/share/i18n/charmaps/GREEK7.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JUS_I.B1.003-SERB.gz<br>
=C2=A0 /usr/share/i18n/charmaps/HP-ROMAN9.gz<br>
=C2=A0 /usr/share/i18n/charmaps/INIS-CYRILLIC.gz<br>
=C2=A0 /usr/share/i18n/charmaps/ISO-8859-15.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-B-ADD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/NATS-SEFI-ADD.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CP1256.gz<br>
=C2=A0 /usr/share/i18n/charmaps/CSA_Z243.4-1985-GR.gz<br>
=C2=A0 /usr/share/i18n/charmaps/JIS_C6229-1984-B.gz<br>
=C2=A0 /usr/share/i18n/locales/niu_NU<br>
=C2=A0 /usr/share/i18n/locales/en_IE<br>
=C2=A0 /usr/share/i18n/locales/sl_SI<br>
=C2=A0 /usr/share/i18n/locales/fi_FI@euro<br>
=C2=A0 /usr/share/i18n/locales/mg_MG<br>
=C2=A0 /usr/share/i18n/locales/sm_WS<br>
=C2=A0 /usr/share/i18n/locales/kl_GL<br>
=C2=A0 /usr/share/i18n/locales/aa_ER@saaho<br>
=C2=A0 /usr/share/i18n/locales/es_ES<br>
=C2=A0 /usr/share/i18n/locales/ar_TN<br>
=C2=A0 /usr/share/i18n/locales/lb_LU<br>
=C2=A0 /usr/share/i18n/locales/sgs_LT<br>
=C2=A0 /usr/share/i18n/locales/ca_ES@euro<br>
=C2=A0 /usr/share/i18n/locales/ti_ER<br>
=C2=A0 /usr/share/i18n/locales/ta_LK<br>
=C2=A0 /usr/share/i18n/locales/ha_NG<br>
=C2=A0 /usr/share/i18n/locales/st_ZA<br>
=C2=A0 /usr/share/i18n/locales/niu_NZ<br>
=C2=A0 /usr/share/i18n/locales/es_CU<br>
=C2=A0 /usr/share/i18n/locales/translit_small<br>
=C2=A0 /usr/share/i18n/locales/ve_ZA<br>
=C2=A0 /usr/share/i18n/locales/kn_IN<br>
=C2=A0 /usr/share/i18n/locales/el_CY<br>
=C2=A0 /usr/share/i18n/locales/ak_GH<br>
=C2=A0 /usr/share/i18n/locales/ca_FR<br>
=C2=A0 /usr/share/i18n/locales/fr_BE@euro<br>
=C2=A0 /usr/share/i18n/locales/POSIX<br>
=C2=A0 /usr/share/i18n/locales/ga_IE<br>
=C2=A0 /usr/share/i18n/locales/ar_IQ<br>
=C2=A0 /usr/share/i18n/locales/translit_compat<br>
=C2=A0 /usr/share/i18n/locales/mi_NZ<br>
=C2=A0 /usr/share/i18n/locales/ur_PK<br>
=C2=A0 /usr/share/i18n/locales/br_FR<br>
=C2=A0 /usr/share/i18n/locales/ar_SS<br>
=C2=A0 /usr/share/i18n/locales/mhr_RU<br>
=C2=A0 /usr/share/i18n/locales/kk_KZ<br>
=C2=A0 /usr/share/i18n/locales/mjw_IN<br>
=C2=A0 /usr/share/i18n/locales/en_NZ<br>
=C2=A0 /usr/share/i18n/locales/en_ZW<br>
=C2=A0 /usr/share/i18n/locales/gd_GB<br>
=C2=A0 /usr/share/i18n/locales/fil_PH<br>
=C2=A0 /usr/share/i18n/locales/fr_LU@euro<br>
=C2=A0 /usr/share/i18n/locales/iu_CA<br>
=C2=A0 /usr/share/i18n/locales/es_AR<br>
=C2=A0 /usr/share/i18n/locales/es_MX<br>
=C2=A0 /usr/share/i18n/locales/rw_RW<br>
=C2=A0 /usr/share/i18n/locales/ru_UA<br>
=C2=A0 /usr/share/i18n/locales/sat_IN<br>
=C2=A0 /usr/share/i18n/locales/be_BY@latin<br>
=C2=A0 /usr/share/i18n/locales/ar_LY<br>
=C2=A0 /usr/share/i18n/locales/lg_UG<br>
=C2=A0 /usr/share/i18n/locales/tcy_IN<br>
=C2=A0 /usr/share/i18n/locales/nb_NO<br>
=C2=A0 /usr/share/i18n/locales/en_IE@euro<br>
=C2=A0 /usr/share/i18n/locales/de_DE<br>
=C2=A0 /usr/share/i18n/locales/es_GT<br>
=C2=A0 /usr/share/i18n/locales/ar_MA<br>
=C2=A0 /usr/share/i18n/locales/os_RU<br>
=C2=A0 /usr/share/i18n/locales/ber_MA<br>
=C2=A0 /usr/share/i18n/locales/zh_CN<br>
=C2=A0 /usr/share/i18n/locales/oc_FR<br>
=C2=A0 /usr/share/i18n/locales/byn_ER<br>
=C2=A0 /usr/share/i18n/locales/aa_ET<br>
=C2=A0 /usr/share/i18n/locales/wae_CH<br>
=C2=A0 /usr/share/i18n/locales/de_LU<br>
=C2=A0 /usr/share/i18n/locales/brx_IN<br>
=C2=A0 /usr/share/i18n/locales/az_AZ<br>
=C2=A0 /usr/share/i18n/locales/sc_IT<br>
=C2=A0 /usr/share/i18n/locales/agr_PE<br>
=C2=A0 /usr/share/i18n/locales/hak_TW<br>
=C2=A0 /usr/share/i18n/locales/cmn_TW<br>
=C2=A0 /usr/share/i18n/locales/uz_UZ<br>
=C2=A0 /usr/share/i18n/locales/ks_IN<br>
=C2=A0 /usr/share/i18n/locales/hr_HR<br>
=C2=A0 /usr/share/i18n/locales/pap_AW<br>
=C2=A0 /usr/share/i18n/locales/gez_ER<br>
=C2=A0 /usr/share/i18n/locales/el_GR<br>
=C2=A0 /usr/share/i18n/locales/ca_AD<br>
=C2=A0 /usr/share/i18n/locales/li_BE<br>
=C2=A0 /usr/share/i18n/locales/wa_BE<br>
=C2=A0 /usr/share/i18n/locales/tn_ZA<br>
=C2=A0 /usr/share/i18n/locales/i18n_ctype<br>
=C2=A0 /usr/share/i18n/locales/uk_UA<br>
=C2=A0 /usr/share/i18n/locales/ig_NG<br>
=C2=A0 /usr/share/i18n/locales/nhn_MX<br>
=C2=A0 /usr/share/i18n/locales/bhb_IN<br>
=C2=A0 /usr/share/i18n/locales/bs_BA<br>
=C2=A0 /usr/share/i18n/locales/ko_KR<br>
=C2=A0 /usr/share/i18n/locales/nr_ZA<br>
=C2=A0 /usr/share/i18n/locales/en_CA<br>
=C2=A0 /usr/share/i18n/locales/miq_NI<br>
=C2=A0 /usr/share/i18n/locales/fr_FR<br>
=C2=A0 /usr/share/i18n/locales/el_GR@euro<br>
=C2=A0 /usr/share/i18n/locales/dsb_DE<br>
=C2=A0 /usr/share/i18n/locales/lzh_TW<br>
=C2=A0 /usr/share/i18n/locales/de_BE<br>
=C2=A0 /usr/share/i18n/locales/yo_NG<br>
=C2=A0 /usr/share/i18n/locales/nl_BE<br>
=C2=A0 /usr/share/i18n/locales/es_CR<br>
=C2=A0 /usr/share/i18n/locales/en_SG<br>
=C2=A0 /usr/share/i18n/locales/ca_IT<br>
=C2=A0 /usr/share/i18n/locales/es_DO<br>
=C2=A0 /usr/share/i18n/locales/or_IN<br>
=C2=A0 /usr/share/i18n/locales/quz_PE<br>
=C2=A0 /usr/share/i18n/locales/es_NI<br>
=C2=A0 /usr/share/i18n/locales/ss_ZA<br>
=C2=A0 /usr/share/i18n/locales/id_ID<br>
=C2=A0 /usr/share/i18n/locales/nds_NL<br>
=C2=A0 /usr/share/i18n/locales/ia_FR<br>
=C2=A0 /usr/share/i18n/locales/tr_TR<br>
=C2=A0 /usr/share/i18n/locales/sw_TZ<br>
=C2=A0 /usr/share/i18n/locales/translit_narrow<br>
=C2=A0 /usr/share/i18n/locales/i18n<br>
=C2=A0 /usr/share/i18n/locales/de_IT<br>
=C2=A0 /usr/share/i18n/locales/mn_MN<br>
=C2=A0 /usr/share/i18n/locales/nl_NL<br>
=C2=A0 /usr/share/i18n/locales/ug_CN<br>
=C2=A0 /usr/share/i18n/locales/br_FR@euro<br>
=C2=A0 /usr/share/i18n/locales/nso_ZA<br>
=C2=A0 /usr/share/i18n/locales/de_LU@euro<br>
=C2=A0 /usr/share/i18n/locales/es_EC<br>
=C2=A0 /usr/share/i18n/locales/en_SC<br>
=C2=A0 /usr/share/i18n/locales/so_ET<br>
=C2=A0 /usr/share/i18n/locales/eo<br>
=C2=A0 /usr/share/i18n/locales/sq_AL<br>
=C2=A0 /usr/share/i18n/locales/iso14651_t1_pinyin<br>
=C2=A0 /usr/share/i18n/locales/ff_SN<br>
=C2=A0 /usr/share/i18n/locales/ayc_PE<br>
=C2=A0 /usr/share/i18n/locales/chr_US<br>
=C2=A0 /usr/share/i18n/locales/bo_IN<br>
=C2=A0 /usr/share/i18n/locales/gez_ER@abegede<br>
=C2=A0 /usr/share/i18n/locales/sv_FI<br>
=C2=A0 /usr/share/i18n/locales/translit_fraction<br>
=C2=A0 /usr/share/i18n/locales/ar_DZ<br>
=C2=A0 /usr/share/i18n/locales/an_ES<br>
=C2=A0 /usr/share/i18n/locales/es_CL<br>
=C2=A0 /usr/share/i18n/locales/ar_YE<br>
=C2=A0 /usr/share/i18n/locales/ru_RU<br>
=C2=A0 /usr/share/i18n/locales/crh_UA<br>
=C2=A0 /usr/share/i18n/locales/gl_ES@euro<br>
=C2=A0 /usr/share/i18n/locales/ce_RU<br>
=C2=A0 /usr/share/i18n/locales/ts_ZA<br>
=C2=A0 /usr/share/i18n/locales/af_ZA<br>
=C2=A0 /usr/share/i18n/locales/sq_MK<br>
=C2=A0 /usr/share/i18n/locales/ar_KW<br>
=C2=A0 /usr/share/i18n/locales/tl_PH<br>
=C2=A0 /usr/share/i18n/locales/bn_IN<br>
=C2=A0 /usr/share/i18n/locales/szl_PL<br>
=C2=A0 /usr/share/i18n/locales/ps_AF<br>
=C2=A0 /usr/share/i18n/locales/hi_IN<br>
=C2=A0 /usr/share/i18n/locales/te_IN<br>
=C2=A0 /usr/share/i18n/locales/cv_RU<br>
=C2=A0 /usr/share/i18n/locales/mag_IN<br>
=C2=A0 /usr/share/i18n/locales/mni_IN<br>
=C2=A0 /usr/share/i18n/locales/bem_ZM<br>
=C2=A0 /usr/share/i18n/locales/tt_RU@iqtelif<br>
=C2=A0 /usr/share/i18n/locales/ast_ES<br>
=C2=A0 /usr/share/i18n/locales/tpi_PG<br>
=C2=A0 /usr/share/i18n/locales/dz_BT<br>
=C2=A0 /usr/share/i18n/locales/et_EE<br>
=C2=A0 /usr/share/i18n/locales/ku_TR<br>
=C2=A0 /usr/share/i18n/locales/nl_NL@euro<br>
=C2=A0 /usr/share/i18n/locales/hu_HU<br>
=C2=A0 /usr/share/i18n/locales/zh_SG<br>
=C2=A0 /usr/share/i18n/locales/iso14651_t1<br>
=C2=A0 /usr/share/i18n/locales/om_ET<br>
=C2=A0 /usr/share/i18n/locales/translit_combining<br>
=C2=A0 /usr/share/i18n/locales/cy_GB<br>
=C2=A0 /usr/share/i18n/locales/zh_HK<br>
=C2=A0 /usr/share/i18n/locales/bho_NP<br>
=C2=A0 /usr/share/i18n/locales/ms_MY<br>
=C2=A0 /usr/share/i18n/locales/hy_AM<br>
=C2=A0 /usr/share/i18n/locales/pa_PK<br>
=C2=A0 /usr/share/i18n/locales/is_IS<br>
=C2=A0 /usr/share/i18n/locales/ml_IN<br>
=C2=A0 /usr/share/i18n/locales/de_AT<br>
=C2=A0 /usr/share/i18n/locales/nds_DE<br>
=C2=A0 /usr/share/i18n/locales/pap_CW<br>
=C2=A0 /usr/share/i18n/locales/sv_FI@euro<br>
=C2=A0 /usr/share/i18n/locales/am_ET<br>
=C2=A0 /usr/share/i18n/locales/lij_IT<br>
=C2=A0 /usr/share/i18n/locales/ht_HT<br>
=C2=A0 /usr/share/i18n/locales/pt_PT<br>
=C2=A0 /usr/share/i18n/locales/es_ES@euro<br>
=C2=A0 /usr/share/i18n/locales/en_ZM<br>
=C2=A0 /usr/share/i18n/locales/gez_ET<br>
=C2=A0 /usr/share/i18n/locales/aa_ER<br>
=C2=A0 /usr/share/i18n/locales/de_CH<br>
=C2=A0 /usr/share/i18n/locales/wo_SN<br>
=C2=A0 /usr/share/i18n/locales/en_IL<br>
=C2=A0 /usr/share/i18n/locales/tr_CY<br>
=C2=A0 /usr/share/i18n/locales/fy_DE<br>
=C2=A0 /usr/share/i18n/locales/my_MM<br>
=C2=A0 /usr/share/i18n/locales/pa_IN<br>
=C2=A0 /usr/share/i18n/locales/gv_GB<br>
=C2=A0 /usr/share/i18n/locales/es_UY<br>
=C2=A0 /usr/share/i18n/locales/fy_NL<br>
=C2=A0 /usr/share/i18n/locales/zu_ZA<br>
=C2=A0 /usr/share/i18n/locales/to_TO<br>
=C2=A0 /usr/share/i18n/locales/fi_FI<br>
=C2=A0 /usr/share/i18n/locales/fo_FO<br>
=C2=A0 /usr/share/i18n/locales/eu_ES@euro<br>
=C2=A0 /usr/share/i18n/locales/uz_UZ@cyrillic<br>
=C2=A0 /usr/share/i18n/locales/en_ZA<br>
=C2=A0 /usr/share/i18n/locales/ne_NP<br>
=C2=A0 /usr/share/i18n/locales/pt_PT@euro<br>
=C2=A0 /usr/share/i18n/locales/dv_MV<br>
=C2=A0 /usr/share/i18n/locales/hif_FJ<br>
=C2=A0 /usr/share/i18n/locales/translit_font<br>
=C2=A0 /usr/share/i18n/locales/th_TH<br>
=C2=A0 /usr/share/i18n/locales/sa_IN<br>
=C2=A0 /usr/share/i18n/locales/bn_BD<br>
=C2=A0 /usr/share/i18n/locales/en_NG<br>
=C2=A0 /usr/share/i18n/locales/en_IN<br>
=C2=A0 /usr/share/i18n/locales/pt_BR<br>
=C2=A0 /usr/share/i18n/locales/sah_RU<br>
=C2=A0 /usr/share/i18n/locales/zh_TW<br>
=C2=A0 /usr/share/i18n/locales/ca_ES<br>
=C2=A0 /usr/share/i18n/locales/ber_DZ<br>
=C2=A0 /usr/share/i18n/locales/gl_ES<br>
=C2=A0 /usr/share/i18n/locales/translit_cjk_compat<br>
=C2=A0 /usr/share/i18n/locales/ga_IE@euro<br>
=C2=A0 /usr/share/i18n/locales/bho_IN<br>
=C2=A0 /usr/share/i18n/locales/it_IT<br>
=C2=A0 /usr/share/i18n/locales/nan_TW@latin<br>
=C2=A0 /usr/share/i18n/locales/translit_circle<br>
=C2=A0 /usr/share/i18n/locales/sid_ET<br>
=C2=A0 /usr/share/i18n/locales/en_GB<br>
=C2=A0 /usr/share/i18n/locales/translit_wide<br>
=C2=A0 /usr/share/i18n/locales/az_IR<br>
=C2=A0 /usr/share/i18n/locales/aa_DJ<br>
=C2=A0 /usr/share/i18n/locales/be_BY<br>
=C2=A0 /usr/share/i18n/locales/the_NP<br>
=C2=A0 /usr/share/i18n/locales/mai_IN<br>
=C2=A0 /usr/share/i18n/locales/gu_IN<br>
=C2=A0 /usr/share/i18n/locales/kok_IN<br>
=C2=A0 /usr/share/i18n/locales/sr_RS<br>
=C2=A0 /usr/share/i18n/locales/hsb_DE<br>
=C2=A0 /usr/share/i18n/locales/translit_cjk_variants<br>
=C2=A0 /usr/share/i18n/locales/so_SO<br>
=C2=A0 /usr/share/i18n/locales/sd_IN<br>
=C2=A0 /usr/share/i18n/locales/ar_QA<br>
=C2=A0 /usr/share/i18n/locales/tg_TJ<br>
=C2=A0 /usr/share/i18n/locales/iso14651_t1_common<br>
=C2=A0 /usr/share/i18n/locales/ca_ES@valencia<br>
=C2=A0 /usr/share/i18n/locales/fur_IT<br>
=C2=A0 /usr/share/i18n/locales/sr_RS@latin<br>
=C2=A0 /usr/share/i18n/locales/so_DJ<br>
=C2=A0 /usr/share/i18n/locales/li_NL<br>
=C2=A0 /usr/share/i18n/locales/ar_AE<br>
=C2=A0 /usr/share/i18n/locales/fr_BE<br>
=C2=A0 /usr/share/i18n/locales/cs_CZ<br>
=C2=A0 /usr/share/i18n/locales/hne_IN<br>
=C2=A0 /usr/share/i18n/locales/nl_BE@euro<br>
=C2=A0 /usr/share/i18n/locales/yi_US<br>
=C2=A0 /usr/share/i18n/locales/mr_IN<br>
=C2=A0 /usr/share/i18n/locales/anp_IN<br>
=C2=A0 /usr/share/i18n/locales/sd_IN@devanagari<br>
=C2=A0 /usr/share/i18n/locales/yue_HK<br>
=C2=A0 /usr/share/i18n/locales/es_PA<br>
=C2=A0 /usr/share/i18n/locales/wa_BE@euro<br>
=C2=A0 /usr/share/i18n/locales/en_BW<br>
=C2=A0 /usr/share/i18n/locales/vi_VN<br>
=C2=A0 /usr/share/i18n/locales/bi_VU<br>
=C2=A0 /usr/share/i18n/locales/mk_MK<br>
=C2=A0 /usr/share/i18n/locales/es_PR<br>
=C2=A0 /usr/share/i18n/locales/lv_LV<br>
=C2=A0 /usr/share/i18n/locales/shs_CA<br>
=C2=A0 /usr/share/i18n/locales/tk_TM<br>
=C2=A0 /usr/share/i18n/locales/csb_PL<br>
=C2=A0 /usr/share/i18n/locales/sr_ME<br>
=C2=A0 /usr/share/i18n/locales/nan_TW<br>
=C2=A0 /usr/share/i18n/locales/mfe_MU<br>
=C2=A0 /usr/share/i18n/locales/pl_PL<br>
=C2=A0 /usr/share/i18n/locales/de_AT@euro<br>
=C2=A0 /usr/share/i18n/locales/ik_CA<br>
=C2=A0 /usr/share/i18n/locales/cns11643_stroke<br>
=C2=A0 /usr/share/i18n/locales/fr_CH<br>
=C2=A0 /usr/share/i18n/locales/ar_JO<br>
=C2=A0 /usr/share/i18n/locales/en_AG<br>
=C2=A0 /usr/share/i18n/locales/fa_IR<br>
=C2=A0 /usr/share/i18n/locales/translit_neutral<br>
=C2=A0 /usr/share/i18n/locales/mt_MT<br>
=C2=A0 /usr/share/i18n/locales/nn_NO<br>
=C2=A0 /usr/share/i18n/locales/ar_OM<br>
=C2=A0 /usr/share/i18n/locales/de_LI<br>
=C2=A0 /usr/share/i18n/locales/lt_LT<br>
=C2=A0 /usr/share/i18n/locales/unm_US<br>
=C2=A0 /usr/share/i18n/locales/fr_CA<br>
=C2=A0 /usr/share/i18n/locales/sk_SK<br>
=C2=A0 /usr/share/i18n/locales/ta_IN<br>
=C2=A0 /usr/share/i18n/locales/as_IN<br>
=C2=A0 /usr/share/i18n/locales/kw_GB<br>
=C2=A0 /usr/share/i18n/locales/xh_ZA<br>
=C2=A0 /usr/share/i18n/locales/ks_IN@devanagari<br>
=C2=A0 /usr/share/i18n/locales/si_LK<br>
=C2=A0 /usr/share/i18n/locales/en_HK<br>
=C2=A0 /usr/share/i18n/locales/es_BO<br>
=C2=A0 /usr/share/i18n/locales/wal_ET<br>
=C2=A0 /usr/share/i18n/locales/ar_EG<br>
=C2=A0 /usr/share/i18n/locales/es_HN<br>
=C2=A0 /usr/share/i18n/locales/it_CH<br>
=C2=A0 /usr/share/i18n/locales/es_SV<br>
=C2=A0 /usr/share/i18n/locales/ro_RO<br>
=C2=A0 /usr/share/i18n/locales/bg_BG<br>
=C2=A0 /usr/share/i18n/locales/mai_NP<br>
=C2=A0 /usr/share/i18n/locales/ja_JP<br>
=C2=A0 /usr/share/i18n/locales/tig_ER<br>
=C2=A0 /usr/share/i18n/locales/ky_KG<br>
=C2=A0 /usr/share/i18n/locales/lo_LA<br>
=C2=A0 /usr/share/i18n/locales/ln_CD<br>
=C2=A0 /usr/share/i18n/locales/shn_MM<br>
=C2=A0 /usr/share/i18n/locales/es_CO<br>
=C2=A0 /usr/share/i18n/locales/eu_ES<br>
=C2=A0 /usr/share/i18n/locales/es_US<br>
=C2=A0 /usr/share/i18n/locales/gez_ET@abegede<br>
=C2=A0 /usr/share/i18n/locales/es_PY<br>
=C2=A0 /usr/share/i18n/locales/se_NO<br>
=C2=A0 /usr/share/i18n/locales/so_KE<br>
=C2=A0 /usr/share/i18n/locales/es_VE<br>
=C2=A0 /usr/share/i18n/locales/es_PE<br>
=C2=A0 /usr/share/i18n/locales/om_KE<br>
=C2=A0 /usr/share/i18n/locales/en_PH<br>
=C2=A0 /usr/share/i18n/locales/sw_KE<br>
=C2=A0 /usr/share/i18n/locales/bo_CN<br>
=C2=A0 /usr/share/i18n/locales/ur_IN<br>
=C2=A0 /usr/share/i18n/locales/fr_FR@euro<br>
=C2=A0 /usr/share/i18n/locales/sv_SE<br>
=C2=A0 /usr/share/i18n/locales/yuw_PG<br>
=C2=A0 /usr/share/i18n/locales/tt_RU<br>
=C2=A0 /usr/share/i18n/locales/de_BE@euro<br>
=C2=A0 /usr/share/i18n/locales/doi_IN<br>
=C2=A0 /usr/share/i18n/locales/ar_LB<br>
=C2=A0 /usr/share/i18n/locales/en_AU<br>
=C2=A0 /usr/share/i18n/locales/nl_AW<br>
=C2=A0 /usr/share/i18n/locales/en_US<br>
=C2=A0 /usr/share/i18n/locales/ar_SY<br>
=C2=A0 /usr/share/i18n/locales/ar_SA<br>
=C2=A0 /usr/share/i18n/locales/he_IL<br>
=C2=A0 /usr/share/i18n/locales/ka_GE<br>
=C2=A0 /usr/share/i18n/locales/ti_ET<br>
=C2=A0 /usr/share/i18n/locales/ar_SD<br>
=C2=A0 /usr/share/i18n/locales/translit_hangul<br>
=C2=A0 /usr/share/i18n/locales/it_IT@euro<br>
=C2=A0 /usr/share/i18n/locales/en_DK<br>
=C2=A0 /usr/share/i18n/locales/da_DK<br>
=C2=A0 /usr/share/i18n/locales/ar_IN<br>
=C2=A0 /usr/share/i18n/locales/ar_BH<br>
=C2=A0 /usr/share/i18n/locales/de_DE@euro<br>
=C2=A0 /usr/share/i18n/locales/kab_DZ<br>
=C2=A0 /usr/share/i18n/locales/fr_LU<br>
=C2=A0 /usr/share/i18n/locales/km_KH<br>
=C2=A0 /usr/share/i18n/locales/raj_IN<br>
=C2=A0 /usr/lib/gconv/IBM4909.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-9E.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-6.so<br>
=C2=A0 /usr/lib/gconv/NATS-SEFI.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-PT.so<br>
=C2=A0 /usr/lib/gconv/SHIFT_JISX0213.so<br>
=C2=A0 /usr/lib/gconv/ARMSCII-8.so<br>
=C2=A0 /usr/lib/gconv/UNICODE.so<br>
=C2=A0 /usr/lib/gconv/IBM1166.so<br>
=C2=A0 /usr/lib/gconv/CP1258.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-13.so<br>
=C2=A0 /usr/lib/gconv/IBM9448.so<br>
=C2=A0 /usr/lib/gconv/IBM865.so<br>
=C2=A0 /usr/lib/gconv/KOI8-R.so<br>
=C2=A0 /usr/lib/gconv/CP1256.so<br>
=C2=A0 /usr/lib/gconv/IBM290.so<br>
=C2=A0 /usr/lib/gconv/IBM280.so<br>
=C2=A0 /usr/lib/gconv/IBM4971.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-ES-S.so<br>
=C2=A0 /usr/lib/gconv/IBM852.so<br>
=C2=A0 /usr/lib/gconv/IBM1160.so<br>
=C2=A0 /usr/lib/gconv/IBM275.so<br>
=C2=A0 /usr/lib/gconv/IBM937.so<br>
=C2=A0 /usr/lib/gconv/IBM277.so<br>
=C2=A0 /usr/lib/gconv/ISO_5427-EXT.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-FI-SE.so<br>
=C2=A0 /usr/lib/gconv/IBM880.so<br>
=C2=A0 /usr/lib/gconv/ISO-IR-209.so<br>
=C2=A0 /usr/lib/gconv/IBM943.so<br>
=C2=A0 /usr/lib/gconv/IBM1097.so<br>
=C2=A0 /usr/lib/gconv/IBM1145.so<br>
=C2=A0 /usr/lib/gconv/ISO-2022-CN-EXT.so<br>
=C2=A0 /usr/lib/gconv/IBM935.so<br>
=C2=A0 /usr/lib/gconv/IBM1133.so<br>
=C2=A0 /usr/lib/gconv/ASMO_449.so<br>
=C2=A0 /usr/lib/gconv/GEORGIAN-PS.so<br>
=C2=A0 /usr/lib/gconv/ISO646.so<br>
=C2=A0 /usr/lib/gconv/IBM868.so<br>
=C2=A0 /usr/lib/gconv/CP775.so<br>
=C2=A0 /usr/lib/gconv/CP932.so<br>
=C2=A0 /usr/lib/gconv/IBM1154.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-FI-SE-A.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-4.so<br>
=C2=A0 /usr/lib/gconv/IBM1147.so<br>
=C2=A0 /usr/lib/gconv/IBM16804.so<br>
=C2=A0 /usr/lib/gconv/IBM1167.so<br>
=C2=A0 /usr/lib/gconv/GBBIG5.so<br>
=C2=A0 /usr/lib/gconv/TCVN5712-1.so<br>
=C2=A0 /usr/lib/gconv/KOI8-RU.so<br>
=C2=A0 /usr/lib/gconv/IBM1140.so<br>
=C2=A0 /usr/lib/gconv/IBM1112.so<br>
=C2=A0 /usr/lib/gconv/IBM1124.so<br>
=C2=A0 /usr/lib/gconv/gconv-modules<br>
=C2=A0 /usr/lib/gconv/IBM284.so<br>
=C2=A0 /usr/lib/gconv/IBM856.so<br>
=C2=A0 /usr/lib/gconv/GEORGIAN-ACADEMY.so<br>
=C2=A0 /usr/lib/gconv/IBM5347.so<br>
=C2=A0 /usr/lib/gconv/HP-ROMAN9.so<br>
=C2=A0 /usr/lib/gconv/KOI-8.so<br>
=C2=A0 /usr/lib/gconv/CSN_369103.so<br>
=C2=A0 /usr/lib/gconv/IBM9066.so<br>
=C2=A0 /usr/lib/gconv/BRF.so<br>
=C2=A0 /usr/lib/gconv/MIK.so<br>
=C2=A0 /usr/lib/gconv/IBM930.so<br>
=C2=A0 /usr/lib/gconv/CP1257.so<br>
=C2=A0 /usr/lib/gconv/VISCII.so<br>
=C2=A0 /usr/lib/gconv/IBM1144.so<br>
=C2=A0 /usr/lib/gconv/EUC-KR.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-US.so<br>
=C2=A0 /usr/lib/gconv/GBK.so<br>
=C2=A0 /usr/lib/gconv/IBM901.so<br>
=C2=A0 /usr/lib/gconv/IBM862.so<br>
=C2=A0 /usr/lib/gconv/IBM1142.so<br>
=C2=A0 /usr/lib/gconv/UTF-7.so<br>
=C2=A0 /usr/lib/gconv/IEC_P27-1.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-14.so<br>
=C2=A0 /usr/lib/gconv/IBM297.so<br>
=C2=A0 /usr/lib/gconv/ISO_6937.so<br>
=C2=A0 /usr/lib/gconv/IBM1123.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-AT-DE.so<br>
=C2=A0 /usr/lib/gconv/CP1250.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-AT-DE-A.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-IS-FRISS.so<br>
=C2=A0 /usr/lib/gconv/CP1125.so<br>
=C2=A0 /usr/lib/gconv/IBM850.so<br>
=C2=A0 /usr/lib/gconv/IBM905.so<br>
=C2=A0 /usr/lib/gconv/IBM903.so<br>
=C2=A0 /usr/lib/gconv/ISO-2022-CN.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-16.so<br>
=C2=A0 /usr/lib/gconv/CP1253.so<br>
=C2=A0 /usr/lib/gconv/PT154.so<br>
=C2=A0 /usr/lib/gconv/IBM851.so<br>
=C2=A0 /usr/lib/gconv/IBM874.so<br>
=C2=A0 /usr/lib/gconv/EUC-CN.so<br>
=C2=A0 /usr/lib/gconv/IBM875.so<br>
=C2=A0 /usr/lib/gconv/GREEK-CCITT.so<br>
=C2=A0 /usr/lib/gconv/INIS-CYRILLIC.so<br>
=C2=A0 /usr/lib/gconv/TIS-620.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-3.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-1.so<br>
=C2=A0 /usr/lib/gconv/IBM1143.so<br>
=C2=A0 /usr/lib/gconv/ISO_6937-2.so<br>
=C2=A0 /usr/lib/gconv/IBM1141.so<br>
=C2=A0 /usr/lib/gconv/ISO_10367-BOX.so<br>
=C2=A0 /usr/lib/gconv/EUC-TW.so<br>
=C2=A0 /usr/lib/gconv/HP-THAI8.so<br>
=C2=A0 /usr/lib/gconv/libJIS.so<br>
=C2=A0 /usr/lib/gconv/ISO_11548-1.so<br>
=C2=A0 /usr/lib/gconv/IBM1399.so<br>
=C2=A0 /usr/lib/gconv/IBM420.so<br>
=C2=A0 /usr/lib/gconv/IBM1137.so<br>
=C2=A0 /usr/lib/gconv/IBM038.so<br>
=C2=A0 /usr/lib/gconv/ECMA-CYRILLIC.so<br>
=C2=A0 /usr/lib/gconv/CP10007.so<br>
=C2=A0 /usr/lib/gconv/IBM1371.so<br>
=C2=A0 /usr/lib/gconv/IBM855.so<br>
=C2=A0 /usr/lib/gconv/IBM1390.so<br>
=C2=A0 /usr/lib/gconv/IBM871.so<br>
=C2=A0 /usr/lib/gconv/SAMI-WS2.so<br>
=C2=A0 /usr/lib/gconv/MACINTOSH.so<br>
=C2=A0 /usr/lib/gconv/ISO-IR-197.so<br>
=C2=A0 /usr/lib/gconv/libGB.so<br>
=C2=A0 /usr/lib/gconv/INIS.so<br>
=C2=A0 /usr/lib/gconv/LATIN-GREEK.so<br>
=C2=A0 /usr/lib/gconv/IBM273.so<br>
=C2=A0 /usr/lib/gconv/IBM918.so<br>
=C2=A0 /usr/lib/gconv/IBM1130.so<br>
=C2=A0 /usr/lib/gconv/DEC-MCS.so<br>
=C2=A0 /usr/lib/gconv/IBM1153.so<br>
=C2=A0 /usr/lib/gconv/JOHAB.so<br>
=C2=A0 /usr/lib/gconv/IBM858.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-ES.so<br>
=C2=A0 /usr/lib/gconv/ISO_2033.so<br>
=C2=A0 /usr/lib/gconv/LATIN-GREEK-1.so<br>
=C2=A0 /usr/lib/gconv/INIS-8.so<br>
=C2=A0 /usr/lib/gconv/IBM9030.so<br>
=C2=A0 /usr/lib/gconv/KOI8-T.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-8.so<br>
=C2=A0 /usr/lib/gconv/IBM1155.so<br>
=C2=A0 /usr/lib/gconv/KOI8-U.so<br>
=C2=A0 /usr/lib/gconv/IBM933.so<br>
=C2=A0 /usr/lib/gconv/IBM1008.so<br>
=C2=A0 /usr/lib/gconv/IBM1364.so<br>
=C2=A0 /usr/lib/gconv/IBM274.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-15.so<br>
=C2=A0 /usr/lib/gconv/IBM860.so<br>
=C2=A0 /usr/lib/gconv/IBM891.so<br>
=C2=A0 /usr/lib/gconv/GREEK7-OLD.so<br>
=C2=A0 /usr/lib/gconv/IBM861.so<br>
=C2=A0 /usr/lib/gconv/IBM1026.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-DK-NO.so<br>
=C2=A0 /usr/lib/gconv/EUC-JP.so<br>
=C2=A0 /usr/lib/gconv/IBM904.so<br>
=C2=A0 /usr/lib/gconv/MAC-SAMI.so<br>
=C2=A0 /usr/lib/gconv/EUC-JP-MS.so<br>
=C2=A0 /usr/lib/gconv/CP1255.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-IT.so<br>
=C2=A0 /usr/lib/gconv/CP773.so<br>
=C2=A0 /usr/lib/gconv/IBM902.so<br>
=C2=A0 /usr/lib/gconv/MAC-IS.so<br>
=C2=A0 /usr/lib/gconv/UTF-32.so<br>
=C2=A0 /usr/lib/gconv/ISO-2022-KR.so<br>
=C2=A0 /usr/lib/gconv/CWI.so<br>
=C2=A0 /usr/lib/gconv/IBM037.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-FR.so<br>
=C2=A0 /usr/lib/gconv/ISIRI-3342.so<br>
=C2=A0 /usr/lib/gconv/IBM1158.so<br>
=C2=A0 /usr/lib/gconv/CP1251.so<br>
=C2=A0 /usr/lib/gconv/IBM1129.so<br>
=C2=A0 /usr/lib/gconv/IBM4899.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-UK.so<br>
=C2=A0 /usr/lib/gconv/IBM1046.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-2.so<br>
=C2=A0 /usr/lib/gconv/IBM256.so<br>
=C2=A0 /usr/lib/gconv/IBM1161.so<br>
=C2=A0 /usr/lib/gconv/UTF-16.so<br>
=C2=A0 /usr/lib/gconv/CP771.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-7.so<br>
=C2=A0 /usr/lib/gconv/IBM437.so<br>
=C2=A0 /usr/lib/gconv/IBM869.so<br>
=C2=A0 /usr/lib/gconv/libJISX0213.so<br>
=C2=A0 /usr/lib/gconv/MAC-UK.so<br>
=C2=A0 /usr/lib/gconv/IBM281.so<br>
=C2=A0 /usr/lib/gconv/IBM1163.so<br>
=C2=A0 /usr/lib/gconv/IBM278.so<br>
=C2=A0 /usr/lib/gconv/GBGBK.so<br>
=C2=A0 /usr/lib/gconv/IBM857.so<br>
=C2=A0 /usr/lib/gconv/IBM285.so<br>
=C2=A0 /usr/lib/gconv/IBM922.so<br>
=C2=A0 /usr/lib/gconv/ISO_5428.so<br>
=C2=A0 /usr/lib/gconv/IBM870.so<br>
=C2=A0 /usr/lib/gconv/HP-ROMAN8.so<br>
=C2=A0 /usr/lib/gconv/IBM866NAV.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-ES-A.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-9.so<br>
=C2=A0 /usr/lib/gconv/IBM866.so<br>
=C2=A0 /usr/lib/gconv/IBM1025.so<br>
=C2=A0 /usr/lib/gconv/BIG5HKSCS.so<br>
=C2=A0 /usr/lib/gconv/IBM921.so<br>
=C2=A0 /usr/lib/gconv/RK1048.so<br>
=C2=A0 /usr/lib/gconv/CP772.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-11.so<br>
=C2=A0 /usr/lib/gconv/IBM1008_420.so<br>
=C2=A0 /usr/lib/gconv/<a href=3D"http://T.61.so" rel=3D"noreferrer" target=
=3D"_blank">T.61.so</a><br>
=C2=A0 /usr/lib/gconv/HP-TURKISH8.so<br>
=C2=A0 /usr/lib/gconv/CP1252.so<br>
=C2=A0 /usr/lib/gconv/MAC-CENTRALEUROPE.so<br>
=C2=A0 /usr/lib/gconv/ISO-2022-JP.so<br>
=C2=A0 /usr/lib/gconv/IBM1148.so<br>
=C2=A0 /usr/lib/gconv/IBM423.so<br>
=C2=A0 /usr/lib/gconv/IBM864.so<br>
=C2=A0 /usr/lib/gconv/CP737.so<br>
=C2=A0 /usr/lib/gconv/IBM1004.so<br>
=C2=A0 /usr/lib/gconv/libCNS.so<br>
=C2=A0 /usr/lib/gconv/CP1254.so<br>
=C2=A0 /usr/lib/gconv/IBM12712.so<br>
=C2=A0 /usr/lib/gconv/IBM932.so<br>
=C2=A0 /usr/lib/gconv/IBM1132.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-CA-FR.so<br>
=C2=A0 /usr/lib/gconv/HP-GREEK8.so<br>
=C2=A0 /usr/lib/gconv/IBM939.so<br>
=C2=A0 /usr/lib/gconv/BIG5.so<br>
=C2=A0 /usr/lib/gconv/GREEK7.so<br>
=C2=A0 /usr/lib/gconv/libISOIR165.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-5.so<br>
=C2=A0 /usr/lib/gconv/CP774.so<br>
=C2=A0 /usr/lib/gconv/IBM424.so<br>
=C2=A0 /usr/lib/gconv/IBM803.so<br>
=C2=A0 /usr/lib/gconv/IBM1164.so<br>
=C2=A0 /usr/lib/gconv/EUC-JISX0213.so<br>
=C2=A0 /usr/lib/gconv/IBM1157.so<br>
=C2=A0 /usr/lib/gconv/IBM1162.so<br>
=C2=A0 /usr/lib/gconv/libKSC.so<br>
=C2=A0 /usr/lib/gconv/UHC.so<br>
=C2=A0 /usr/lib/gconv/IBM500.so<br>
=C2=A0 /usr/lib/gconv/ISO8859-10.so<br>
=C2=A0 /usr/lib/gconv/IBM1047.so<br>
=C2=A0 /usr/lib/gconv/<a href=3D"http://ANSI_X3.110.so" rel=3D"noreferrer" =
target=3D"_blank">ANSI_X3.110.so</a><br>
=C2=A0 /usr/lib/gconv/NATS-DANO.so<br>
=C2=A0 /usr/lib/gconv/IBM1149.so<br>
=C2=A0 /usr/lib/gconv/CP770.so<br>
=C2=A0 /usr/lib/gconv/ISO-2022-JP-3.so<br>
=C2=A0 /usr/lib/gconv/IBM4517.so<br>
=C2=A0 /usr/lib/gconv/TSCII.so<br>
=C2=A0 /usr/lib/gconv/IBM1146.so<br>
=C2=A0 /usr/lib/gconv/IBM1388.so<br>
=C2=A0 /usr/lib/gconv/SJIS.so<br>
=C2=A0 /usr/lib/gconv/ISO_5427.so<br>
=C2=A0 /usr/lib/gconv/IBM1156.so<br>
=C2=A0 /usr/lib/gconv/IBM863.so<br>
=C2=A0 /usr/lib/gconv/IBM1122.so<br>
=C2=A0 /usr/lib/gconv/EBCDIC-DK-NO-A.so<br>
=C2=A0 /usr/lib/gconv/GB18030.so<br>
=C2=A0 /usr/lib/gconv/GOST_19768-74.so<br>
Please set FILES such that these items are packaged. Alternatively if<br>
they are unneeded, avoid installing them or delete them within<br>
do_install.<br>
glibc-locale: 843 installed and not shipped files. [installed-vs-shipped]<b=
r>
ERROR: glibc-locale-2.28-r0 do_package: Fatal QA errors found, failing task=
.<br>
ERROR: glibc-locale-2.28-r0 do_package: Function failed: do_package<br>
<br>
When apply simple patch to avoid QA issue like:<br>
diff --git a/meta/recipes-core/glibc/<a href=3D"http://glibc-locale_2.28.bb=
" rel=3D"noreferrer" target=3D"_blank">glibc-locale_2.28.bb</a><br>
b/meta/recipes-core/glibc/<a href=3D"http://glibc-locale_2.28.bb" rel=3D"no=
referrer" target=3D"_blank">glibc-locale_2.28.bb</a><br>
index f7702e0..6f58316 100644<br>
--- a/meta/recipes-core/glibc/<a href=3D"http://glibc-locale_2.28.bb" rel=
=3D"noreferrer" target=3D"_blank">glibc-locale_2.28.bb</a><br>
+++ b/meta/recipes-core/glibc/<a href=3D"http://glibc-locale_2.28.bb" rel=
=3D"noreferrer" target=3D"_blank">glibc-locale_2.28.bb</a><br>
@@ -1 +1,3 @@<br>
=C2=A0require glibc-locale.inc<br>
+<br>
+INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br>
<br>
then core-image-base failed with:<br>
<br>
ERROR: core-image-base-1.0-r0 do_rootfs: Unable to install packages.<br>
Command &#39;/home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yoct=
o-poky-linux-gnueabi/core-image-base/1.0-r0/recipe-sysroot-native/usr/bin/o=
pkg<br>
--volatile-cache -f<br>
/home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-=
gnueabi/core-image-base/1.0-r0/opkg.conf<br>
-t /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-lin=
ux-gnueabi/core-image-base/1.0-r0/temp/ipktemp/<br>
-o /home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-lin=
ux-gnueabi/core-image-base/1.0-r0/rootfs<br>
=C2=A0--force_postinstall --prefer-arch-to-version=C2=A0 =C2=A0install<br>
locale-base-en-gb locale-base-en-us&#39; returned 255:<br>
Collected errors:<br>
=C2=A0* opkg_prepare_url_for_install: Couldn&#39;t find anything to satisfy=
<br>
&#39;locale-base-en-gb&#39;.<br>
=C2=A0* rm_r: Failed to open dir<br>
/home/marek/projects/yocto/poky/build/tmp/work/beaglebone_yocto-poky-linux-=
gnueabi/core-image-base/1.0-r0/temp/ipktemp//opkg-yuugJp:<br>
No such file or directory.<br>
<br>
Is there some fix pending for that. Thanks.<br>
<br>
[1] - <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2017-Octobe=
r/038517.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/pipermail/yocto/2017-October/038517.html</a><br>
<br>
BR,<br>
<br>
marek<br>
<br>
-- <br>
as simple and primitive as possible<br>
-------------------------------------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
<a href=3D"https://maps.google.com/?q=3DRuska+Nova+Ves+219+%7C+Presov&amp;e=
ntry=3Dgmail&amp;source=3Dg">Ruska Nova Ves 219 | Presov</a>, 08005 Slovak =
Republic<br>
Tel: +421 915 052 184<br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blank=
">http://open-nandra.com</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000007f1d660578c17774--
