Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 045B4E00DF2; Wed,  6 Jul 2016 11:09:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5DD7E00DE4
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 11:09:05 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id b192so15624291vke.0
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 11:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7wNqwJ5zIxt2iKzEsODi7E/NaB0tEmWt5GvOOF5uMyY=;
	b=PZJ/oyUYNHIut7d08r+kl3l6XTGcoslnZpRZOlJ9JVrPCDzYb3qGeVtWugBIwSrMaS
	uJTuCMymVdcrA9eHr+sgV3sD4L3+fYGPkURJj/tYyFWWgFN9ISjbdYY3HaPLpQxqj05j
	LZO3RrRuN992n3svjgr6t9JFlc6AZ+x+YrnCHK2nXrQptMQBv28n/OKsWnt3eMih6egh
	pT4Uu56URwM+UwYncx4EqYLTVazQJoUAfeh1DYzqRluJ220NHAJir6eZAYrBv5SuYtta
	40Rv+B12MV1aWpxf4Q1nVn/lrEDPFoPCNIDnvorfiV9SovvuIBN2Uun8tUvOZOTEtxey
	IezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7wNqwJ5zIxt2iKzEsODi7E/NaB0tEmWt5GvOOF5uMyY=;
	b=QZlXuZnFA8MSVu7ulbC1Ufu/7RXSKHgl3MBNr4s51mmvBJS/GNKCMhcvBlWVKNENCe
	l9Aj2AvPNPvsD7yu+77zm/q/9nDjgpVoSAb+w9h5UrQzP94VURKDMa81gdXD2OiZqZqi
	lU6xqxF9TpTZt064whT3jkugvXNHbZdCXMT+6BTfq+isTD0x9p7myPXkU1L/g5qtgYbQ
	kbp528ifJltChoUoeTm/QUfT5FJH9p6P98WmOToJ7J2OnTaSFIfr6GiY2/BgsKGM1vqC
	Cy3kpIlnvh53W+4dRvgIfH+agASnf8f74yO0CPhggJwHqsEPTJV4L2L7n1ljToGBYOIO
	SWTw==
X-Gm-Message-State: ALyK8tKB+CuWSFx/6VfY5n71b8piT6XihZYQw/YEyGZla7ESKKutLoLwGTCLzvcnQ5F4AETznJM2u+DKFrDcfA==
X-Received: by 10.31.192.14 with SMTP id q14mr10782245vkf.51.1467828544510;
	Wed, 06 Jul 2016 11:09:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Wed, 6 Jul 2016 11:09:04 -0700 (PDT)
In-Reply-To: <OF927BD932.09AFBA11-ONC1257FE8.00500F45-C1257FE8.005101E1@esa-grimma.de>
References: <OF927BD932.09AFBA11-ONC1257FE8.00500F45-C1257FE8.005101E1@esa-grimma.de>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 6 Jul 2016 15:09:04 -0300
Message-ID: <CAF3SDA4m2c0YrqaxBAzpROwbKeOdBPCMVekpkUQ7x02ScPo4yg@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to create a directory for an SD-Card mount?
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
X-List-Received-Date: Wed, 06 Jul 2016 18:09:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

install -d ${D}/media/sd1
???

2016-07-06 11:44 GMT-03:00  <S.Jaritz@esa-grimma.de>:
> Hej
>
> I managed to create and install a rule that should mount a sd card to
> "/media/sd1".  To finish it, I need to create the directory "sd1" in medi=
a.
> My recipe for the rule looks like:
> ###################
> SUMMARY =3D "the udev rules for the board"
> SECTION =3D "rules"
> LICENSE =3D "CLOSED"
>
> SRC_URI =3D "file://50-mmc.rules \
>         "
> S =3D "${WORKDIR}"
>
> do_install () {
>         install -d ${D}${sysconfdir}/udev/rules.d
>         install -m 0644 ${WORKDIR}/50-mmc.rules
> ${D}${sysconfdir}/udev/rules.d/
> }
> ###################
> How to create a dir in do_install which goes to the package?
>
> By the way:
> I was also appending fstab after this article
>
> https://communities.intel.com/thread/49251
>
> Is there an better way to uncomment/modify that one line in fstab?
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Do or do not. There is no try"
  Yoda Master

