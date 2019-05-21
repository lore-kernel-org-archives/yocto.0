Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64901E00D3F; Tue, 21 May 2019 03:14:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB1EE00798
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:14:18 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id v2so12342663oie.6
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wqAy896VMb7x0b+5xkKzQ/2tSaUIZ+RC3s0+q+KfWUo=;
	b=Wqsf8R74AYpHu91y/ZvTM9W7dViM6nUlltPT8MPegJBnn6GQTtjMiKKL6zO2YY6hHG
	BGMy5JW85tvC3Xx+On1G+/LJR9ie6nNHQFaU090nKi1lemLcTJy3nqWLp9kv+52frgJN
	2SKRGdpd509PgJimpjpVFWN0MOOAEiaUvzc5bsxouGWe2di6qB2dTQlipRJKO2ySd2ND
	i0eY0aZ80opJ2pBKcavIhr4vCOsKKy8DRv63sJAI4p1kgBeoTrRfQTTjFhXEph6NxLBI
	cLgPNSuHBIptH54eMkgY5gIiLezJgzb22pGJOlqWU1Nw6NXpc7RjHXs+KTPQd7AuCxmt
	pgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wqAy896VMb7x0b+5xkKzQ/2tSaUIZ+RC3s0+q+KfWUo=;
	b=gOPrawokcYjU7SZnUDs4TpwY3Cn+9PkgIkh5WzDiNqdQOX51epBxjHsqvHTPH1WUV5
	VEsIIk23hyaUY4O1rGSmt0WHIxcugnCEAQyH9vf8x+qsSiWAS3uiOmxvrvlceKzvaAc/
	/oZTbfTD1xqCTjGrWzSXEjis8DZrSCpYYiysLLz7QnjfOqJ22sfiTg2a86YSxFc7a5Wg
	0xWbH88sDyeF3zH5mbtXiuksPbvp9ZDE3m71jU+3/OnPpqahi4o31Y0FN1euGE/w3LAy
	JW/T4At60GtzA6h1M9N8oUxqPb7iqEzg94X5ekwTOqXU6IBkGJ8CEIVi/oc904qWDH1z
	CpSw==
X-Gm-Message-State: APjAAAU9dTUev4MUGAHlSpdO3y84joRXiQCOZDEdHLYtwdfMh2ere9z8
	TPOypuksfDDLurkkyWHDDLXYH/c1qN36XxhkKYg=
X-Google-Smtp-Source: APXvYqyFlSFQMG+wZeoOtFYsWJ5m2e1QuEemleT+Ww7R0uceDRv/CO/uzWBE0lG20n/j6lSPZdvO6F7f1pq3SKoSC5g=
X-Received: by 2002:aca:50d3:: with SMTP id e202mr2803319oib.88.1558433658363; 
	Tue, 21 May 2019 03:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
	<CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
In-Reply-To: <CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2019 12:14:07 +0200
Message-ID: <CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Tue, 21 May 2019 10:14:19 -0000
Content-Type: text/plain; charset="UTF-8"

You can write a class which sets the template for SRC_URI and then a
series of recipes that inherit the class, and define the variable that
would turn the template into the actual URI.

Alex

On Tue, 21 May 2019 at 12:10, Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> If you provide some context for why you want this, we might be able to
>> suggest a different way.
>
> Customer wants to have kind of base-os (build in yocto) and then on top of that different flavor python application which should be fetch and added during build based on configuration file. This is only need. Thanks.
>>
>>
>> Alex
>>
>> On Tue, 21 May 2019 at 08:11, Belisko Marek <marek.belisko@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > I have special need to fetch repo which is defined in config file in form (repo and branch):
>> > git@testrepo.com/myrepo mysuperbranch
>> >
>> > Config file is placed in recipe directory. I've tried to add some bits and pieces but it seems it's not doing right. Snippet from recipe:
>> >
>> > LICENSE = "CLOSED"
>> >
>> > SRCREV = "${AUTOREV}"
>> > PV = "${SRCPV}"
>> >
>> > do_fetch_prepend () {
>> >
>> >     src_uri = d.getVar('SRC_URI')
>> >
>> >     p = d.getVar("FILE")
>> >     idx = p.rfind("/")
>> >     p = p[:idx]
>> >     p += "/config.txt"
>> >
>> >     with open(p) as f:
>> >         read_data = f.readline().strip().split(" ")
>> >         d.setVar('SRC_URI', read_data[0])
>> > }
>> >
>> > SRC_URI = ""
>> >
>> > S = "${WORKDIR}/git"
>> >
>> > It looks like that repo is fetched but unpack doesn't put git directory in $WORKDIR and in build directory I get strange directories like:
>> >
>> > !=
>> > bitbake-cookerdaemon.log
>> > cache
>> > conf
>> > ${@d.getVar('S')
>> > else
>> > if
>> > os.path.join('
>> > os.path.normpath(d.getVar('S'))
>> > os.path.normpath(d.getVar('WORKDIR'))
>> > 'patches')}
>> > tmp
>> >
>> > so there is obviously I'm doing something wrong :). My question is if this is the way or should I stick to some variables set in local.conf and then use it in recipe? Thanks a lot for any pointers.
>> >
>> > BR,
>> >
>> > marek
>> > --
>> > as simple and primitive as possible
>> > -------------------------------------------------
>> > Marek Belisko - OPEN-NANDRA
>> > Freelance Developer
>> >
>> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> > Tel: +421 915 052 184
>> > skype: marekwhite
>> > twitter: #opennandra
>> > web: http://open-nandra.com
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> marek

