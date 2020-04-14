Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6394.1586845685848676825
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 23:28:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BblMjx4x;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A974CE019DA; Mon, 13 Apr 2020 23:28:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F4CFE019D8
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2020 23:28:04 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id p6so15532751edu.10
        for <yocto@yoctoproject.org>; Mon, 13 Apr 2020 23:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YMdjpboVJWVFGN3TXBEOGgQZosCaaHgEAOeoop33oi4=;
        b=BblMjx4xgX9o704KDdQswQgkCl6/86qHWwn8LQvkXLPMNTJaIg1+SOfcdCUtM9IfI+
         0Gn/JKML1asCZDwq91pe4X7aywyiElUYeF6E9sizbIp4NAPUzEMU/iCTbtVcWDzYsqjk
         i8mRhNMX4whA6u84UJ6Fm5REUNpu/tTQxrKivYobQpea7wY9Gerz1zbamVgh8GfVAM80
         ztnS4obZZmtobr6w/8nIKJJs0YgGrzobDfzRN6OlIKNU9RXcnZQlJ4o6TA345N+jPn/i
         hYY9/Xgtu20I+M5tkdSz3b6Gke6OvSD7a+dfkRTMIu11/Dkl6iQQsDtE2GqYqOmKWTFZ
         v8Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YMdjpboVJWVFGN3TXBEOGgQZosCaaHgEAOeoop33oi4=;
        b=BlUOcNKGlsoVDadtDoQVzRbYKkNzTXJ5b2h4Jr2vG4aXI8Q9ppF8w+Cp89r9koOQZn
         QrunN6gnsJIg946mH6dV+h5YmeNC9PE/Ik1R8p4H5c8u0cq5oa7SGMGsDYw7bNcZjJQR
         OCpWBzCME+VpVqZkCd7aVRUS+KfQDuJuFGZzF+ucSBgQAqQUPjsqfqtjOcPkNj+floHN
         KugcpgJ4PyvXbefMFpMNL6GMhycYAuMY17KTtKjf6rg4Dc1t1/2HXQP4/xFUmbq6XpNr
         04Pc7nvLfYbbixxSNHrT6fX7mBRiU6v9yfXBQIM/k6Df/rbaFl7gTgjMZ2DPLqtbUJaZ
         /VQQ==
X-Gm-Message-State: AGi0Pubfh89uZHs9FUc+PCsGIUgzq5kndkCg66jdT9lSs6yzLbsG0k5+
	pJgAxsJDVvM7dckODgIeYYfO457ffHwRWHXC4Hw=
X-Google-Smtp-Source: APiQypLHC139beZu1XCNZjgcCPb4cAOLG08goZzK2bcQWamyVvIAAXxzQecjwqQIKGi1JsOxKjHzsCr86TaColGjVFs=
X-Received: by 2002:a17:906:1cd5:: with SMTP id i21mr276364ejh.251.1586845683165;
 Mon, 13 Apr 2020 23:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv35mccyzb9fqtjpvmExtz-zZQ6a5Xk5mcn7k1pUJx+T7WQ@mail.gmail.com>
 <CAMjhiJisHc1+jooqtqm7v51-ONDVQTPXCZ1RvAmuCCsa0A7p6A@mail.gmail.com> <C0207330DF60C5409302EC78C3FE68F313E533D4@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <C0207330DF60C5409302EC78C3FE68F313E533D4@PGSMSX101.gar.corp.intel.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 14 Apr 2020 08:27:52 +0200
Message-ID: <CAAfyv37eE8BJ5519NnshqztBSJ7k+MhWQH482OfzD2TN1=TiWw@mail.gmail.com>
Subject: Re: [yocto] meta-intel: Override SERIAL_CONSOLES variable
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Leon Woestenberg <leon@sidebranch.com>, yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 11, 2020 at 8:09 AM Anuj Mittal <anuj.mittal@intel.com> wrote:
>
> Could you send a patch please?
Done: https://lists.yoctoproject.org/g/yocto/message/49131
>
> Thanks,
>
> Anuj
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf Of
> > Leon Woestenberg
> > Sent: Saturday, April 11, 2020 04:48 AM
> > To: Marek Belisko <marek.belisko@gmail.com>
> > Cc: yocto <yocto@yoctoproject.org>
> > Subject: Re: [yocto] meta-intel: Override SERIAL_CONSOLES variable
> >
> > Hi all,
> >
> > On Fri, Apr 10, 2020 at 8:56 AM Marek Belisko <marek.belisko@gmail.com> wrote:
> > >
> > > Hi,
> > >
> > > in meta-intel in machine configuration SERIAL_CONSOLES are defined as
> > > : SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyS2"
> > >
> > For a more generic solution, could this be made  a weak assignment?
> >
> > I am on a SMARC x86-64 module which only one serial is useful, so I would like to
> > downtune this variable as well.
> >
> > Regards,
> >
> > Leon.
> 

BR,

marek
