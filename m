Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web09.11933.1609758312729770134
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 03:05:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@holoplot-com.20150623.gappssmtp.com header.s=20150623 header.b=z/xEh0ap;
 spf=pass (domain: holoplot.com, ip: 209.85.218.43, mailfrom: morgan.hill@holoplot.com)
Received: by mail-ej1-f43.google.com with SMTP id b9so36315672ejy.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Jan 2021 03:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=holoplot-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=zWw3nEQbGavk0LZlJjuY4Gl3fqsHdmW6uEhbqjXGqAo=;
        b=z/xEh0apoMrNrqREBtF+APNlXYcZS6LsheurU3fuVW6Stvdrvy1dxWtI0uClPTt238
         RTN+1yc1KA4pk9tMaf8MrRITkCUUh60bqmNlE5raSntNhPTbufcV0XFLnqcaTI5oqfBR
         +Rnw9pSQIqpRj4cTgkq7ppTmjluqKGTmW1PmxK8liFvSuPoJ4w3PWtOB/hiWlB0+4loB
         CIWb47HbSCvnNJPhT8UkWyOFZwtmE5AozGYZ/dfErABW3So0WrofoZJpQamFm7GwPWZK
         xBhuAOLEF51IWznsGnUUFyGzA7E5zb7I0T59qYgF+PG1VVPYq7A/Hah8fBGi+QHfKD2k
         RPUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=zWw3nEQbGavk0LZlJjuY4Gl3fqsHdmW6uEhbqjXGqAo=;
        b=JinCT7/IqXoS5kJUsTcD1JBDIEsJpd7wjuVSOHfV0Osdq3xFU6vhqgdUcoKOGTbWbc
         /vq+I5f/iBfbcF9liMfjKBFXFtpaEsROYEElWL8yyZhnhFAKEO6+Ft7UpmaJ7Raw25md
         Gg6Od9JrvfeGdijrmgP67K1jID5w1wKgiOFV+rTX8J1qeFRP5DSFg0uihLbKDlnxx4aV
         4dthC2ksDdegbCEi+Obkb1u5VN5zs6IQ2Fgs3ttXqvMADiEEH8Sp843eRph1qsEf/jnw
         OjOYKyRN2PDaexM3pjvS0AxuRMInVgYnAtizdr84V6b+ERjasqOVGrEmRuKjSynfj5ps
         wBww==
X-Gm-Message-State: AOAM533baaOQKaqbi+6SSCJ9aOhyYmRv2yc9c1gjhsXNfS1O9bfFD2GN
	YEj4SPmyrUx/QZ20KVvuRfpkKcupOedYxSkCHBVy+weDat3/OvWm9/dZokdEjdt+UhtAXOroXXs
	MI1+9G0aCXitPfmMO6BiDgwUqn6RE
X-Google-Smtp-Source: ABdhPJyGHYZhQYO8OQgw412aHRd/FrXuVykPnJLkERL8T0sz9anlb/Vg7y3c4NIjAj3RSLXOGidaYg==
X-Received: by 2002:a17:906:aacd:: with SMTP id kt13mr65288699ejb.527.1609758311051;
        Mon, 04 Jan 2021 03:05:11 -0800 (PST)
Return-Path: <morgan.hill@holoplot.com>
Received: from HQ-00111.holoplot.net ([176.126.217.202])
        by smtp.gmail.com with ESMTPSA id k21sm44909293edq.26.2021.01.04.03.05.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 03:05:10 -0800 (PST)
Message-ID: <12bca9db5959947dcf2dc2ccbb5815c274ea8b8f.camel@holoplot.com>
Subject: Re: [yocto] How do I build an x32 Intel system?
From: morgan.hill@holoplot.com
To: yocto@lists.yoctoproject.org
Date: Mon, 04 Jan 2021 12:05:09 +0100
In-Reply-To: <113956D0E12D407782FFFB70D620DEAC@PAULD>
References: <113956D0E12D407782FFFB70D620DEAC@PAULD>
User-Agent: Evolution 3.38.2 (3.38.2-1.fc33) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


> Other than the first one, I don't know whether these are correct, or
> where I
> originally got them, or if there's a stock .cfg file that does all
> this.

I'm not familiar with x32 myself but Debian has an x32port which should
give you a working kernel config to start from.
https://wiki.debian.org/X32Port


--=20
=20
<http://holoplot.com/?utm_source=3Demail&utm_medium=3Dsg&utm_campaign=3DHol=
oplot_Signature+>

 <https://holoplot.com/>*HOLOPLOT GmbH - Headquarters*


Ringbahnstr. 12=20
(10-14) / A2

12099 Berlin, Germany

+49 (0) 30 40745812




*HOLOPLOT GmbH=20
- Manufacturing*


Alboinstr. 17-23 / Hall 12

12103 Berlin, Germany

+49=20
(0) 30 959988740


www.holoplot.com <https://holoplot.com/>



Follow us on=20
<https://www.facebook.com/OriginalHOLOPLOT/?utm_source=3Demail&utm_medium=
=3Dsg&utm_campaign=3DHoloplot_Signature+>=20
LinkedIn=20
<https://www.linkedin.com/company/holoplot-gmbh?utm_source=3Demail&utm_medi=
um=3Dsg&utm_campaign=3DHoloplot_Signature+>.=20




Roman Sick =E2=80=93 CEO | HRB183974B, Register Court Charlottenburg, Germa=
ny |=20
EU Tax-Registration No. DE277000701 This e-mail contains confidential=20
and/or privileged information. If you are not the intended recipient (or=20
have received this e-mail in error) please notify the sender immediately=20
and destroy this e-mail. Any unauthorized copying, disclosure or=20
distribution of the information in this e-mail is strictly forbidden.
