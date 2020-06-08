Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.23480.1591592344465239556
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Jun 2020 21:59:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+h4ysHu;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: maillinglists18@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id n21so2312281ejg.3
        for <yocto@lists.yoctoproject.org>; Sun, 07 Jun 2020 21:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qyfCRZa5JmrwI5vZ7EriQhe8A89oMDNAnZwVaxroSqk=;
        b=j+h4ysHue3MzaJ/1K6ZnYZMli0Gizhd0U5zc51NIs8vydcYRPAaug6a4AWs2PG/2J3
         muv9l0jWj7p+OLcLRwplahc09Hmgng5n2u5nihvV8++jXtDqOs05EjkDV8fPJOohNH+j
         kRGwUFpBNlC9dK/NwE2kSBlKMykyMuAbI28CThoO1jdNWxL7j02tWy1iAkhjmT794AHV
         /ovWxa08uE4mdBWHIWbyi8Okc7Hv1Fjuskuu4I2AXtLJxjOw/q6wE0zAAevDUF6XHd79
         eWQ8H87wWCcUCmkrmdcgj1cQpDN4K44tLMLx9AX7kdiLNeh+bTibWgWp6SAO+7m8u4js
         CseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qyfCRZa5JmrwI5vZ7EriQhe8A89oMDNAnZwVaxroSqk=;
        b=cV4ZkYnXyNqkhWQpxDAYdb8MuIX23AnzZiA/DjdNibIWZE1wzs94bO4WkfRod8TIbI
         0+tWvJcncbZlXNAZlPLJk+vYJXoKVWtXdQB/v1CZRd57OWRPz2AkTZDoak1tZBrkYSkV
         FBIj3bGh7MSsYk9dPoWjukfzI6vKVznFhmYzAjVAuRDgdUwrJ0OqMubrV9DdQ5/MAvbg
         IkAm3OFOUTUbCGZpgiE/P7g9xqHYooF6gr0R9qr3HEkgvSvbnq54D0U8OgzJuVwlHTEf
         nlp7UL3xRR3Zy4fyjPVCrjsZ10D9xgz5oheBp8F/YXfVliAQHl39KVaeV+mtXrnqYGpf
         cMcg==
X-Gm-Message-State: AOAM531E9qG58OffMurM43v1riYkWerBnbuUnfSPqqPwUFOwCZ4JLZpu
	AwA6Su9u++xn3bfonIYjvc/p0qCbjTt368OclMZ/zP3c
X-Google-Smtp-Source: ABdhPJzioarub+SIVOcPNnfTkU8hpBlbFafPP5OFTC/g/pVtMDESzdJAWFBmSKE+PEi6zuqInr7try9koty0jf4DSdE=
X-Received: by 2002:a17:907:4030:: with SMTP id nr24mr12167173ejb.247.1591592342820;
 Sun, 07 Jun 2020 21:59:02 -0700 (PDT)
MIME-Version: 1.0
From: "Teemu K." <maillinglists18@gmail.com>
Date: Mon, 8 Jun 2020 07:58:52 +0300
Message-ID: <CAAmVmrpBbtWu7yCDCzVEB5Q76hwRQmQgmRgaap4Fd-AFQauBVw@mail.gmail.com>
Subject: SDK having libraries that are not in image
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using Warrior - version of Yocto and I have libraries ending up to
SDK that are not in image and it's causing problems because
applications are trying to look for libraries that are not there. This
is not first time this has happened and I'm wondering why it's
happening in the first place.

Here are the libraries that are on SDK, but not on image:

libsmime3.so => not found
libnss3.so => not found
libsoftokn3.so => not found
libnssutil3.so => not found
libplds4.so => not found
libplc4.so => not found
libnspr4.so => not found
libevent-2.1.so.6 => not found

I've used bitbake <image> -c populate_sdk - command to generate SDK.
Is there something I'm missing from configuration or something what's
causing this? To 'fix' this problem I need to separately add those
libraries to image so I get image match SDK and not the other way
around.

-TeemuK
