Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1F49E00A84; Fri,  1 Mar 2019 12:29:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BC17E0095C
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2019 12:29:42 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id v10so29331272qtp.8
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2019 12:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QdqvVGNZYEkU1f18ogJRsKh2+6LqlGxkmXTOPsyEqXU=;
	b=o+23va4wOnahoa3MZjOEbe3mYAnQ4zeXwWHyxt+Nx2PTeajRAiKfM00w37fJaCBNxN
	tT0Sax6jP5xAIoxyse8kUclN+h0oIaPK6soCHwujihuvDEDK+hr/QWHJye2Zp7B0EodH
	qcVbydpO6MozPR95LmU0y0Y9eiED8EFO38MZ0UmJ4H+N7xI4kfJb5cpCavtoXsbVgE+l
	nQKtN4CLXFTxRQ5DzeaRdFuYOWuRoWVJh5vY2vN03xaENlOeL86FzcCxFu5u8ems11qy
	6Vn1RwOvprc+MIymM0YKaWtaQwqlDCd+SSPYjpfaaOb9sBqHpwAC02iqqQ7yi7/2lrIG
	JW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QdqvVGNZYEkU1f18ogJRsKh2+6LqlGxkmXTOPsyEqXU=;
	b=ss/oV3QbbFH/FjJgeH+mpcBD8/Sd07/r6aJjjHk86JBDUVR0WOQqL0UE8z6QaHchol
	hzAjuwKHjhYi8vj/tDSm/HPWMFjVr7aD53o5zoAVJsEI8jVYPRS4eGEQI0DXsIPREu0U
	YtQWowVTe7VmbFh67iIRv3yLRRCvN8qANmwGbZxdsW03uOV573+okzAp5f6o3tyA+28Y
	Eu0rTxv72OKDfGv1vqwqbpNRttZT91JJyENy5Wzuv94QlZTZxVML3OOETTqahV4tM+0s
	dVkM8oq5wB4K7jZ7xocpUStak0v8C5udElpX8lTVSznqg5BXDlXsmBfIhCokPXVmnOHn
	gtLw==
X-Gm-Message-State: APjAAAVQaq2Z8vqpoMAl9T3JdMnnXnBpght6CVOeDc3qsKmykmW8grZT
	+dENCgBidLQ7UzQVD0wpskHF0+NitouCqURApwzxbg==
X-Google-Smtp-Source: APXvYqzVvX/jbEcfvyRoX7jSzU1SJ+6Wo2kaCWmTRhnAJb0urqlDuCo0t2QLHGnWxNF83rLzRLQTvA65gFMGAFcu1gI=
X-Received: by 2002:ac8:2c51:: with SMTP id e17mr5422202qta.254.1551472182287; 
	Fri, 01 Mar 2019 12:29:42 -0800 (PST)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
	<CAFNP8OtVN5tjv3xV57q+kjiewtH24tdm3HCqHL+dMKayNcKaMg@mail.gmail.com>
	<CAPybu_1WtS2o=E6rpZzJMvpW6RQzPFxy29XGno=ok7bsTpW6XQ@mail.gmail.com>
In-Reply-To: <CAPybu_1WtS2o=E6rpZzJMvpW6RQzPFxy29XGno=ok7bsTpW6XQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Mar 2019 12:29:16 -0800
Message-ID: <CAMKF1spHTw45_26gHgPgdW=9fu5zMzHegVVcQ5paLKFDLG890w@mail.gmail.com>
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Information about non-traditional uses of the Yocto Project and OpenEmbedded
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
X-List-Received-Date: Fri, 01 Mar 2019 20:29:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ricardo

This is interesting, who would not like an improved Beers :)

On Fri, Mar 1, 2019 at 11:43 AM Ricardo Ribalda Delgado
<ricardo.ribalda@gmail.com> wrote:
>
> Hi
>
> We (qtec.com) use yocto/oe to build industrial vision systems.
>
> Today is running on Potato graders, Carrot Graders, Potato 3d cameras,
> Hyperspectral cameras, Beer analysers, Checkweighers, Screw Counters,
> Hockey streamers....
>
> Let me know if you think this is interesting and I can share more detailed info.
>
>
> On Wed, Feb 27, 2019 at 9:16 PM Scott Rifenbark <srifenbark@gmail.com> wrote:
> >
> > Sounds like good potential for a section or chapter in the user docs.
> >
> > Scott
> >
> > On Wed, Feb 27, 2019 at 12:01 PM Philip Balister <philip@balister.org> wrote:
> >>
> >> During the last OpenEmbedded developer meeting, it became clear that
> >> people are using the Yocto project/OpenEmbedded in spaces outside what
> >> we think of as traditional embedded. Lieu Ta is working on a
> >> presentation for the Linux Foundation Leadership Summit and we would
> >> like to collect as many "unusual" applications are possible from
> >> companies we can publicly acknowledge. Unusual is edge, containers,
> >> desktop, etc. Or even really interesting embedded applications :)
> >>
> >> Please drop me an email (off list is fine) with enough info for us to
> >> add you to a slide and acknowledge your work.
> >>
> >> Thanks,
> >>
> >> Philip
> >> --
> >> _______________________________________________
> >> Openembedded-core mailing list
> >> Openembedded-core@lists.openembedded.org
> >> http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>
>
> --
> Ricardo Ribalda
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

