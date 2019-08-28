Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4B3BE00DAE; Tue, 27 Aug 2019 21:57:53 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EAF9E00D33
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 21:57:51 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id x19so1419671eda.12
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 21:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nDIsppBj9xDI7Jx+7PSPp4CDvMoNRqX29qN/jkEyFVc=;
	b=ru8tN7mUxF2OL32L5m2KjVCv7F/MCu7+eV11oargSbs4pvVLJNVovl9y/BCBOn0Z7X
	d41mMnYNclvbUtNi+osYrNk4JW9AMttykhlO7s+5bHumsPDGm/WL5ymz4acTKOmtd8eg
	yq0qG/rDwoj/I44DhqBRv/osy5/zORBlrVygr+e+p1dtsVx0jCsaARmpQXgVH35GMu7u
	Sq0OBa/40Puflulciqwh/JZME+45u/Nac7IuptOnD1Uhztt33PmwYT02VIP6cUFG2UhV
	um6q0AwARiNPYxfppbaJa9upw7eISxurk+N30OL8QsmLyR6z35Q4Iw0v4KYJfes82xSh
	DQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nDIsppBj9xDI7Jx+7PSPp4CDvMoNRqX29qN/jkEyFVc=;
	b=tC5sE3dH3YLuW+BEZR7O/pqFacXOfUJMfgGMOXxU63ddiKiN/a6NlhwglyWSvkAF1L
	5MT7HfL14/S5Nu8GtHKPsxxewUC7h4mTrNVmHIyH0d9nzeMwf3wYR3KQZmjvM8lbQQdE
	2LyVDrng2kOLrtW5/kn6HJkEvwq/+RPufWoiWa+rPVzuO0ifKrlOZkLMtowkBl01lhtm
	elkkxJ4XO0jnsNJH/0SS+uJpslQhlWKSqFkZL8IOzUzzs9ra0kkx6R4EUhCiSH+DHGIj
	/HLXW8sE674Uu8VgBOFNpCjKe/kaEGcgOd2lk4ADEXq3cNyUi/tYbkNk8YAbFVV63fny
	1HpQ==
X-Gm-Message-State: APjAAAVSRmNBDvdHL8umOKDf9RMAyoXVY1Xb2GRrVLy+TsVJdAd5Hak9
	ROfSWlW8GxdQSIjyaWLUzNPWE8Hhm2inNrk4reM=
X-Google-Smtp-Source: APXvYqyCBer3nwQX942vBeevkyhGRShxCJm7tuUqCz8sQiVZ/TX23jzEyNkx32TYBFi9MSvQ8WfAsCwo+KK4A9MIjTM=
X-Received: by 2002:aa7:c64c:: with SMTP id z12mr2084106edr.146.1566968270826; 
	Tue, 27 Aug 2019 21:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <0a9330c5-0c11-aa0e-0ef8-0ee0674268ff@faresoftware.it>
In-Reply-To: <0a9330c5-0c11-aa0e-0ef8-0ee0674268ff@faresoftware.it>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 28 Aug 2019 06:57:40 +0200
Message-ID: <CAAfyv34Tk5QEkr70__j=juGVPP91rp1M7fcjnXEVUrQXZzFknw@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MySql python support in Yocto.
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
X-List-Received-Date: Wed, 28 Aug 2019 04:57:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Mauro,

On Wed, Aug 28, 2019 at 6:14 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> There is some library for MariaDB/MySql in Python3 in Yocto?
You can check: https://layers.openembedded.org/layerindex/recipe/4825/
>
>
> Best regards.
>
>    MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

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

