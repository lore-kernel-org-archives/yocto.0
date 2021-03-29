Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web12.20993.1617021201262610464
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Mar 2021 05:33:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kvvSGfyP;
 spf=pass (domain: gmail.com, ip: 209.85.166.46, mailfrom: lefevre.da@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id r193so12545250ior.9
        for <yocto@lists.yoctoproject.org>; Mon, 29 Mar 2021 05:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6J43lex3LrT5NQ0JyUHxt92+Q21AR6xbFJ1Krq0P+H0=;
        b=kvvSGfyPgswGyEQI+rokOcu0SDdOQ8YVbyRPQ6MBBqEAxDa9wYzKcoGjfOW+R7VsH0
         gzK5HkGRZ/JM98oHPe5je8I01s58Uhk6XO0KituCW2mp4z/RLclrXoYv9tq6PfAOt2YD
         9d3hetEIhD/tYTPHg8F7m61/dpkdIUIpYH42/GWY1DjFzbBhtBgPylH+EUXJe8HLDJ7d
         BZPq7xomih47wYbkhaLvGNjXIUlWv0x4PtVqcs4nQgawhASnKDmhHb0A4IWDysKPgDsH
         ztiKJBxL1YiaDiZdkUcDhz2fKRQYnzIPlXlDJ6xrPtVYOwrcBH18J4KUrR/Idl6a9trZ
         PyPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6J43lex3LrT5NQ0JyUHxt92+Q21AR6xbFJ1Krq0P+H0=;
        b=HOVnzZPbOsydtdrVSj/QaexP4A4xCv23s8DWVqJfIPZ761fKyo93FnRbh13NOzjR2G
         58cWSRZQmH4+9iMLTR0oIj/pSPaFWJB7V40Epf90oHc/2OWtVwl1sJYxqGQxIdISfvJ7
         SYU+DqBvRO2brOL1+pO6jgOxuewwyDn5dnrVd049l+GRy6zTdGg0JxFMqGUjHCe2veBR
         vX5p9d/q5+dF597GPQaxTC4RcyWIGNgsOpBcQu8YKIYeeOPsSvfbVFsA91wi2hp3HzcJ
         9jSWe49Ob374mL/KfvqFgmc/3JCSUkNq719z4pLC3qdis5gXKLqduTzEC6i0mi38kijL
         Cdjw==
X-Gm-Message-State: AOAM530uXKdWDEwa4Ob1eEYQ70iqmYLIIL72TZ/FlPXL3ShvyrFYjKpq
	1xo/+kAR67ni4Vil/nZEAI7dbwZwZE4MXol7UJnfo3JSbA==
X-Google-Smtp-Source: ABdhPJwreQXhJEZ3YokZa4ouoouRe04i/QZC3kzVgONqMsE7HknTBFxA1d4VAvBKMIpZzv+5SMIjnfvzqpTHGBpSJ0Q=
X-Received: by 2002:a02:3712:: with SMTP id r18mr23485534jar.11.1617021200367;
 Mon, 29 Mar 2021 05:33:20 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 29 Mar 2021 15:33:09 +0300
Message-ID: <CA+FhBv8odAVKKe5YvVGjzUqQP_69yaQpfh8zuLQ3MB2ZnF+tBw@mail.gmail.com>
Subject: Naming images
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003e02b305beac1611"

--0000000000003e02b305beac1611
Content-Type: text/plain; charset="UTF-8"

Hi,

In my build system the generated images are in this format:

imagename-machine-timestamp.img

For release builds, I'd like to replace the time stamp with the image
version. I could rename the image after the build but is there a better way?

I found a BUILDNAME variable but it has no effect.

Also should the timestamp written in /etc/version match the one from the
image name?

For some reason for me it doesn't. /etc/version is 20180309123456 while the
one from the image name is 20210329064542.

-Damien

--0000000000003e02b305beac1611
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>In my build system the generated im=
ages are in this format:</div><div><br></div><div>imagename-machine-timesta=
mp.img</div><div><br></div><div>For release builds, I&#39;d like to=C2=A0re=
place the time stamp with the image version. I could rename the image after=
 the build but is there a better way?</div><div><br></div><div>I found a BU=
ILDNAME variable=C2=A0but it has no effect.</div><div><br></div><div>Also s=
hould the timestamp written in /etc/version match the one from the image na=
me?</div><div><br></div><div>For some reason for me it doesn&#39;t.=C2=A0/e=
tc/version is=C2=A020180309123456 while the one from the image name is=C2=
=A020210329064542.</div><div><br></div><div>-Damien</div></div>

--0000000000003e02b305beac1611--
