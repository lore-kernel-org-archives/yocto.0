Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.1626.1602954147296554874
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 10:02:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lq8G/hjW;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: icegood1980@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id z5so2118806ejw.7
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 10:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xowNcC0TxF4XnKzEBXNbmu/3CaGEsMofTPIqqE+DRk4=;
        b=Lq8G/hjW4vmcmHEGiFgN9bRPk8cW71C2/EzDCU9gKvJcnV4LPMzqJ6ao7rVEZlE+Bq
         zqA3sJW8Nf/NFRziti/fHxP3JW311GGGXeGYXBuouaJwq/5h9U7uM2OCGLSh99gXaPzX
         hzMKgIJKvjDKM4Ov2AAb/QTQnblLZCOVN3v5SN+4v1c5fFV4vwDE3rZp/XNeqrwxty50
         W9tMsRnajJ83+s8O2t+PrmkimmamlrgvIzZK6AXGWjbAER8mRT7ZpM+FgHmoSHzrWq7i
         RA5QC7cBlc1ZWPKzunUpf7ECKbawHF9dIJt8PHCEtaQOhdGc5PZWRn+XX3QBu+imDsS1
         OBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xowNcC0TxF4XnKzEBXNbmu/3CaGEsMofTPIqqE+DRk4=;
        b=ZqvEUEoPkqpMq2bB44QV4mQIx0nUyGLPGhpZRpAL6P9woNYgjFTXDwdT3Ton6fjVfS
         OcFAnuB/pLizpVUke54vz6BFeptgzkghnKQBv86aYLfVbLMDyLZfBAzmDzSJ3gdavcGx
         xf0HFqtakBnth4gAvZuG8UXRIXK1Tkr4A1zNsL6OtAFaVTaV0Repw+X9f4EBzCCX/RUS
         s5SDhK4e9i3OrGFh6n9G7o7OuUqUZGc2XC2QFna/RXkLQp7Y0Xu2bVj/nuSqeFoDc7tB
         6EHZS7I8FjTBXHEG2Z5Gc9hA3rLPfckrVsdCcIU8YWkWXz+uB1C/NltDi5PUOmStoYcw
         CvOw==
X-Gm-Message-State: AOAM533URL5mDOFkPKlHyY1BKmtAdBzZgYRQqMKPlXNJYp6aL0TTeGHU
	GedF/HXZOb00hOPbMQZznBj+ySp3spYTP7WROpeVKAcZwwfSAg==
X-Google-Smtp-Source: ABdhPJwO94195dgP4vjr/A4CC1uMOv94O9faOBbVfJ57J9dlYutpf04gsy5FN4aw69ye5Lv2UHGGTrvKrIftPId6TN8=
X-Received: by 2002:a17:906:5e49:: with SMTP id b9mr9379717eju.436.1602954145424;
 Sat, 17 Oct 2020 10:02:25 -0700 (PDT)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Sat, 17 Oct 2020 20:02:14 +0300
Message-ID: <CAJCbrz6giMUJ6hONtR=ezZHcOGEwYZ5NvkOWS917Sfwcq6k1pw@mail.gmail.com>
Subject: yocto logging.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006de94405b1e0d89a"

--0000000000006de94405b1e0d89a
Content-Type: text/plain; charset="UTF-8"

Hello. I want to apply extra logging in yocto to understand it better.
I've changed logger format
%(levelname)s - %(thread)d: %(message)s
in many places like

bitbake/lib/bb/event.py
bitbake/lib/bb/build.py
bitbake/lib/prserv/serv.py
bitbake/bin/bitbake-worker

Besides, i see that
logging.logThreads = True
is a default but nevertheless i copied it in bb/__init__.py

Still, bitbake -DDD core-image-minimal returns old format without thread
name.
How could i apply new formatting?

-- 
Kind regards,
Sergey Ivanov

--0000000000006de94405b1e0d89a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello. I want to apply extra logging in yocto to=
 understand it better.<br></div>I&#39;ve changed logger format<br>%(levelna=
me)s - %(thread)d: %(message)s<br></div>in many places like<br><br><div>bit=
bake/lib/bb/event.py</div><div>bitbake/lib/bb/build.py</div><div>bitbake/li=
b/prserv/serv.py</div><div>bitbake/bin/bitbake-worker</div><div><br></div><=
div>Besides, i see that <br></div><div>logging.logThreads =3D True<br></div=
><div>is a default but nevertheless i copied it in bb/__init__.py<br></div>=
<div><br></div><div>Still, bitbake -DDD core-image-minimal returns old form=
at without thread name. <br></div><div>How could i apply new formatting?<br=
></div><div><div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature">Kind regards,<br>Sergey Ivanov</div></d=
iv></div></div></div>

--0000000000006de94405b1e0d89a--
