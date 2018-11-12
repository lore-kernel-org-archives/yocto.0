Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1795DE0090E; Mon, 12 Nov 2018 01:46:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4943DE007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 01:45:59 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id f10-v6so7750199wme.3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 01:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KOydYqvYCAcAqy2cHO8CnR5chyzOdM50Y0miFvPO0Y4=;
	b=mz1+dS3jksorwNWSlUvzYQqjSD6uLg0DqqH/jTYDeVdWS/zTr6SwUfwAnxzvL/xQz9
	4EYvysTptmP1EVI6cTfmf9wwaCewX7F6oCCKiImN3RNKWUMmoRoXkPojU4nwDou/PoSW
	9E98YYoKwDvB2dk+DaK84k4oNpZef6ZOVSs3Z5drssdUPa6brt+375rtTkG0HB+WrzDB
	/5EhUBt2dsHQZfkGb0F2huO4vcjF2cCqB/1q20XVcfrdM7LkqsEzMBQ/HkGVsmRWC0q0
	pkgmVCF4OTnx6G3xopxkYe98elffD/UIPyCv9pw6JSTsDb/9WmAhaqwiqVmpHP/S7k0k
	MmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KOydYqvYCAcAqy2cHO8CnR5chyzOdM50Y0miFvPO0Y4=;
	b=DFUeJhbZ/Q6uuzzbgFAtK1niagywS7PTjTvtKXLH6R7mq3UwZ7Db+WkrccAHqH7jiK
	VCVSR8e7CoBxChJIRL0kOWfmXAN9jHNKoYVwQ/Hh2lIvdv4w/LtItP3M+K+QERuj3UUw
	zPwOu0d7RepDyP/6s9y2arLs3NlzTEVW82nZcFKdXDH5azA0BZi9AC5DBfQ7e/WANOKl
	UbNuhfsDuqwh5CfkekywF6ZldvIWOZYLkv3jiNwee7jpKy4b4HTu/VW7iU7wPRXO3Jtz
	btqhfeJmqoTqo5RVeYfYKjzfBwoICyqjcHa5XVAePIpYNwT7elqb6zgfTxIhlVrRUYsq
	olOA==
X-Gm-Message-State: AGRZ1gJD3AULBQrphEB1edb9V1Lt5Gil+V9JKnA8cBnQPsiqYgQa4Zx8
	B9JvPBcTuDx25HHPdcSaRnFbDfuMf3BNjYCbbVU=
X-Google-Smtp-Source: AJdET5coxK3XSHLZ1oTMhOf6pV3Gtrg7Ul5oiRRa2PSNtfyzG4JE8eCvliVzpUwFtXh1BsFevC/AycWvGM5Mqi0oaW0=
X-Received: by 2002:a1c:a641:: with SMTP id
	p62-v6mr7371435wme.40.1542015958292; 
	Mon, 12 Nov 2018 01:45:58 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34hdgkOrO0JB0ADVDYsZfBoNULDu9k9w7RLjg4LcZTdYw@mail.gmail.com>
	<CAKYr3zzd_k-DJvZQ-zSG4WGUUMh6rmwm4w0Vrv_ov1HxRWbFnw@mail.gmail.com>
In-Reply-To: <CAKYr3zzd_k-DJvZQ-zSG4WGUUMh6rmwm4w0Vrv_ov1HxRWbFnw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 12 Nov 2018 10:45:46 +0100
Message-ID: <CAAfyv36-G4cHiRagoBPEL6Xy+ap1Hgn+8ztbbrJ8oQFPhRaeKQ@mail.gmail.com>
To: outbackdingo@gmail.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: using pip3-native to install python requirements
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
X-List-Received-Date: Mon, 12 Nov 2018 09:46:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 12, 2018 at 10:35 AM Outback Dingo <outbackdingo@gmail.com> wrote:
>
> On Mon, Nov 12, 2018 at 3:22 PM Belisko Marek <marek.belisko@gmail.com> wrote:
> >
> > Hi,
> >
> > I'm having recipe for custom python3 application whcih need to install
> > ~20 python dependencies. I've create requirements.txt and using pip on
> > PC I can install necessary python packages. When try to use
> > pip3-native (as DEPENDS) and call pip3 I get some errors:
> >
> > pkg_resources.VersionConflict: (pip 8.1.1
> > (/usr/lib/python3/dist-packages), Requirement.parse('pip==9.0.1'))
> >
> > I would like to ask it pip3 can be used (didn't find any other
> > occurrence in poky) or should I add python dependencies as RDEPENDS ?
>
> i believe you just need to add inherit setuptools3 to the recipe your
> trying to use pip3 for
Well application doesn't contain setup.py (after inheriting setuptool3 I get:)
recipe-sysroot-native/usr/bin/python3-native/python3: can't open file
'setup.py': [Errno 2] No such file or directory
| ERROR: python3 setup.py build_ext execution failed.

So is the correct way to create setup.py which will internall somehow
add all required external modules to be installed. Thanks.
>
> > Thanks.
> >
> > BR,
> >
> > marek
> >
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

