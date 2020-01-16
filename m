Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.7482.1579171289194800694
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 02:41:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@holoplot-com.20150623.gappssmtp.com header.s=20150623 header.b=c2HH3eJn;
 spf=pass (domain: holoplot.com, ip: 209.85.221.52, mailfrom: morgan.hill@holoplot.com)
Received: by mail-wr1-f52.google.com with SMTP id w15so18638442wru.4
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 02:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=holoplot-com.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=ik3GgxY7vtEeAzaReFU5ce2ySlLlVL4Ohg7W+te7Cx4=;
        b=c2HH3eJn1Q3OitEnWmcTNOUqSREmGxYr8lPJ/GZfCd/+s/XVHZg3qh09kgZdbAcxO/
         yxXRnaZSGWX7iJ0iWBMVUOjQFy55PQEmjnUmbd5UPfYHJGJP9Qje9twJa2r9Uz30LY4f
         Yj4ExamUF98mo6l+6eUiEqsPRzF/y/BYgSdOaF2qLiUz2I+dQiVQFB6jfcAPlmsDmxgc
         QPliNuoFE1MTdEuyVShu/yHsd6HqW5cwR/8UcZiNaIlCLFzI9yP404E8AAfO1isolAjq
         CxCllDheeCA+oPIY/JhsQV7XNcqdSfsdmWsEzGXgqEOXo/77AIXxnUo+X/DUUdftJ307
         sk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=ik3GgxY7vtEeAzaReFU5ce2ySlLlVL4Ohg7W+te7Cx4=;
        b=RnyPyiScLkUvHlNKo37byrtKKjtpfNF+dDhrhfo8GZUvh2bc1/bITEr0HuDL29YBC9
         kbqaEKa5UyLn23gTP7v7hoxFOj+mMGFIucrj0UXwXxaZ2fRhSZ6KtoGueMOYm3I5iEV4
         fyZZs3XjDXJ4TRDVG4aUH/JnkSy5Ax2u5Oft//csB7zpqEKdUpnYrDPsPFGapEi52QNo
         itTtRamrCIwyCG8Jyyqtw3i1NwoE9SiKfN+XYCWyk70/h+2hAGK+lnxcCPL26Hyw0M5C
         hvAqzmeJ09gof7CBr+EXFLSBIyhBNf+rVWIczWDGQjX5/mJanR1IoSaQ4Li9EPptbHm5
         pEYA==
X-Gm-Message-State: APjAAAU+idy7/vnX2wXpMZ2B2j7/xC/7ohtSruFrw5zn6luNI18D71qR
	D9C1aM8if3b5zbesgVclOqdFhbTa62amKA==
X-Google-Smtp-Source: APXvYqxM2JRRP9JKcy4mu1QQDqT1KOFB9QTeozj0ZwNLKY6/RTLrL1KPXOfdqtdjyX49aXVjq1ZPKg==
X-Received: by 2002:a5d:6ca1:: with SMTP id a1mr2525888wra.36.1579171287409;
        Thu, 16 Jan 2020 02:41:27 -0800 (PST)
Return-Path: <morgan.hill@holoplot.com>
Received: from localhost.localdomain ([194.162.236.226])
        by smtp.gmail.com with ESMTPSA id o4sm27716179wrx.25.2020.01.16.02.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 02:41:26 -0800 (PST)
Message-ID: <0eeb62cad66cfc836a47e9cbdd878fa16db90602.camel@holoplot.com>
Subject: Building multipartition images
From: morgan.hill@holoplot.com
To: yocto@lists.yoctoproject.org
Cc: "pascal.huerst@gmail.com" <pascal.huerst@gmail.com>
Date: Thu, 16 Jan 2020 11:41:25 +0100
User-Agent: Evolution 3.34.2 (3.34.2-1.fc31) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello all,

I would link to have a read only / partition and a writeable /etc
partition. The pain point I'm running into is populating /etc from the
rootfs. The quick solution is to script the creation of disk images
from the rootfs, outside the bitbake tool chain, however this seems non
ideal.

I understand that there is the possibility to create partitions using
wks files. The pain point with wks is that the if one specifies rootfs
as the source of both / and /etc partitions both will be populated with
the completed rootfs. The ideal scenario would be that the partitions
are created and mounted then the rootfs is copied on top and the fstab
is installed (as in the installation of other GNU/Linux distributions).

If anyone has solved or knows how to solve this problem neatly in an
image recipe for example some tips would be much appreciated.

Morgan Hill

