Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1390BE00D46; Tue, 21 May 2019 03:33:34 -0700 (PDT)
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
	*      [209.85.210.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 417F4E00C46
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:33:33 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id n14so15876096otk.2
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2Aa0d+rLeIaAbDWmlpB0qN9tU0yrVp0rLQqS1K4BAeQ=;
	b=OtsprCu/6VP4mx/ti2agL1QabDOtxbfeLWekiwiviChcJRBH3Mx2V6MN/82YxdBZ0E
	ySAnGqaPtZjdgBjPk7gP+zzYbyaHd52SkHqO/gzSdZJtgP6rRGwgzJK1PS/IaXgAdXsx
	aN9/1+Hr7zc05koQ0hVBIxEu0cTC4pB5rQn3gGaXplIzYRL3kS0rwLUfTgLhB+8Dqg0F
	4R3lhncvNdEy4O5tTNNPx9KE28pciGC2Sw9iQCPpEt1bheEy4igB5Gf//7oiUnp/9/80
	JEHphgaWBDUgYKWOaBW7qjJuB3e/DrqnQHX+5Zdiwxv8iO6CLwRO5AM9JqSRG5Vl8qst
	F73Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2Aa0d+rLeIaAbDWmlpB0qN9tU0yrVp0rLQqS1K4BAeQ=;
	b=X240ETRMLkhdxhJV0y6fBu+6WUyqzOVuB+HLfs/obDUf1Js7tn5amdnc/I94xidhA1
	6Ye0YkKF6Ol+eUk02x+GUbaQSVe9Ws9O7yOzAbgnxVY3LfXrgOwhwlut3b3zBnqN63u1
	EecZh36PFIwMLKDJbRfPramQ++jawS7gMTo5V1THgloFUWoQ3kMpmobyWZ0wNRfa6/tD
	NIeMB4sZ4tcrLUy1fLYY3t9NJUCn9KXFTJM6HizxaBxW6ujEK3+SjFac+PjBEEKOj3tS
	c76D1xTlsWHN6a81gle9KFz0mtcsgrb/eL1Exz05WHfASbVvLlJEmiu/FtTLW2pQ5xmh
	FWUg==
X-Gm-Message-State: APjAAAWutx3Adsb0Ca5uSEQonBAiiLayQqiPR42MmRTbCt4YFH/F2Xdv
	U1+CdgVISu+HbxQGM00MW9j9Ay9xSCJ45a3rgOiOPZkca1k=
X-Google-Smtp-Source: APXvYqy+avJt7YtAlceck1ZUE938dbLgbdQDLrwq/qVLaXizk20MSUBqL/3enYUOVnpXpc4qFxSh1LrQ1JrLcGUWROw=
X-Received: by 2002:a9d:170e:: with SMTP id i14mr12637378ota.263.1558434812753;
	Tue, 21 May 2019 03:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
	<CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
	<CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
	<CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
In-Reply-To: <CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2019 12:33:21 +0200
Message-ID: <CANNYZj9AtyyVCwpxrPP53mNzT1Ne+KF=bk_ydXR0sX8u0dk=WA@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 May 2019 10:33:34 -0000
Content-Type: text/plain; charset="UTF-8"

Don't use the config file at all. Just create as many recipes as you
need, put the common bits into the class, and the bits that differ
into the recipes directly.

Example:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/pypi.bbclass

Alex

On Tue, 21 May 2019 at 12:22, Belisko Marek <marek.belisko@gmail.com> wrote:
>
> On Tue, May 21, 2019 at 12:14 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> You can write a class which sets the template for SRC_URI and then a
>> series of recipes that inherit the class, and define the variable that
>> would turn the template into the actual URI.
>
> OK I think it make sense. So parsing of config file will be done in class and then class will be used in recipes to set correct SRU_URI.
> Do you have any idea what is wrong with actual code I posted? Why it is doing some strange things? Thanks.
>>
>>
>> Alex
>>
>> On Tue, 21 May 2019 at 12:10, Belisko Marek <marek.belisko@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> >>
>> >> If you provide some context for why you want this, we might be able to
>> >> suggest a different way.
>> >
>> > Customer wants to have kind of base-os (build in yocto) and then on top of that different flavor python application which should be fetch and added during build based on configuration file. This is only need. Thanks.
>> >>
>> >>
>> >> Alex
>> >>
>> >> On Tue, 21 May 2019 at 08:11, Belisko Marek <marek.belisko@gmail.com> wrote:
>> >> >
>> >> > Hi,
>> >> >
>> >> > I have special need to fetch repo which is defined in config file in form (repo and branch):
>> >> > git@testrepo.com/myrepo mysuperbranch
>> >> >
>> >> > Config file is placed in recipe directory. I've tried to add some bits and pieces but it seems it's not doing right. Snippet from recipe:
>> >> >
>> >> > LICENSE = "CLOSED"
>> >> >
>> >> > SRCREV = "${AUTOREV}"
>> >> > PV = "${SRCPV}"
>> >> >
>> >> > do_fetch_prepend () {
>> >> >
>> >> >     src_uri = d.getVar('SRC_URI')
>> >> >
>> >> >     p = d.getVar("FILE")
>> >> >     idx = p.rfind("/")
>> >> >     p = p[:idx]
>> >> >     p += "/config.txt"
>> >> >
>> >> >     with open(p) as f:
>> >> >         read_data = f.readline().strip().split(" ")
>> >> >         d.setVar('SRC_URI', read_data[0])
>> >> > }
>> >> >
>> >> > SRC_URI = ""
>> >> >
>> >> > S = "${WORKDIR}/git"
>> >> >
>> >> > It looks like that repo is fetched but unpack doesn't put git directory in $WORKDIR and in build directory I get strange directories like:
>> >> >
>> >> > !=
>> >> > bitbake-cookerdaemon.log
>> >> > cache
>> >> > conf
>> >> > ${@d.getVar('S')
>> >> > else
>> >> > if
>> >> > os.path.join('
>> >> > os.path.normpath(d.getVar('S'))
>> >> > os.path.normpath(d.getVar('WORKDIR'))
>> >> > 'patches')}
>> >> > tmp
>> >> >
>> >> > so there is obviously I'm doing something wrong :). My question is if this is the way or should I stick to some variables set in local.conf and then use it in recipe? Thanks a lot for any pointers.
>> >> >
>> >> > BR,
>> >> >
>> >> > marek
>> >> > --
>> >> > as simple and primitive as possible
>> >> > -------------------------------------------------
>> >> > Marek Belisko - OPEN-NANDRA
>> >> > Freelance Developer
>> >> >
>> >> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> >> > Tel: +421 915 052 184
>> >> > skype: marekwhite
>> >> > twitter: #opennandra
>> >> > web: http://open-nandra.com
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> >
>> > marek
>
>
>
> marek

