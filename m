Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.182.1588270609797535788
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 11:16:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bcoR9Bmm;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: marek.belisko@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id re23so5470405ejb.4
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 11:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=44/+BKUsPMMVt0Z2WS81CjHAzkwdYhGU1cP0qqX03qA=;
        b=bcoR9BmmvtPIAgkGg4XmG4QQQBukWA07Y681azJHA1pDlkH8fq4G+KK1OxZzhaBoST
         F4tEAwOWiRDZ1jaxrvNxdCXmtA88e8CL8LyfLAm20D4C6ciOBWqpSlymvQf12jqw7O1x
         EHJrqQusoT6V1zFmPTRTUlXYbMx2RNx9Cji0cqOIiQnV9KvBNxi4+0VtV6K4GgZiJyj6
         Ux8mIFlquFeryV4M/f992F9p2w6zErAnzpEVYuNcDLWDrwRj/CRVyhRdIHTwA7/oNSZl
         XcIKmR06m+UJ479whaJbEBcBOh/nG12Od3gHdSFMnu89012edp3VSj75XsQg57S+IQN9
         FpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=44/+BKUsPMMVt0Z2WS81CjHAzkwdYhGU1cP0qqX03qA=;
        b=qYmNpv75jLMehz2P0jWighP0a7lpq7V3rNPMUr4hzfcsZIW/s9+3wOrjY9nJfwN31i
         Kf6umDXXYtBgBBar2aH3/3W0FX0UlrOdlEssBRDw2LLEMFhL64LMmmeGbg6RcFmPcRiH
         ALvr1lwmNIgrUkR8yUqf/AYPHKsxLz7Pv5Vtb8x0huAN1zSKiiYjhlUmcUfEp1QhU6eD
         /DymygwHWzQMtE8BOVFF4wLhX0/sH1+PraRul9BggaONCxxxxx+ai4bPs7w5R/7hEAR3
         b3C3TJoJVqunGRBQrTunjT1Tlp1IOlNaACpTuGVEJm5EvzTgqPj9EyCwofFmMOhSsHQC
         dypA==
X-Gm-Message-State: AGi0PuZWfzDRF6KH/zTOOJjX5ZY7YgjTvLKBqJq2jLR0qDjIdocIp5wa
	ZU+Ix+r+uPmSpfKngiq8seBfgc4NU1Ejk8IwPJv7T9pGTNMIJw==
X-Google-Smtp-Source: APiQypLf12BUa3SHxoTqZa93s2Rwg+KUeSoohMiFZGwNtr6Iv17YRXZT50a29YpfYCbJN5C+HCKg0XXD5qKNGSduNcw=
X-Received: by 2002:a17:906:1690:: with SMTP id s16mr3701401ejd.339.1588270607925;
 Thu, 30 Apr 2020 11:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
In-Reply-To: <504407a1-379f-dc70-7745-c42624df7d8c@ibeeto.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 30 Apr 2020 20:16:36 +0200
Message-ID: <CAAfyv35at0HOtTpnTiRRL0yrS4mcvCwxy7MdbAmdbVba5-OnGw@mail.gmail.com>
Subject: Re: [yocto] [WIC] Grow last partition up to disk size
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Rudolf,

On Thu, Apr 30, 2020 at 7:39 PM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> I was looking for a way in a wks file to have wic grow the last
> partition to fill up the remainder of the disk. Of course wic does not
> know how large the disk is but that could be a parameter.
>
> The alternative way is to use fixed-size and do the math manually but
> that would not allow wic to grow a partition based on content.
You can use https://manpages.debian.org/testing/systemd/systemd-growfs.8.en.html
which grow partition to the end.
>
> :rjs
>
>
> 

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
