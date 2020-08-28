Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web10.37898.1598598273101291145
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 00:04:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tWLGKIo7;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: thisisaash9698@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id q14so47725ilj.8
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 00:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lff0BhH+N8Erw9lK1QTkQh4XvkI1CEZ2zF5f0ybJP/s=;
        b=tWLGKIo7p9PgUXbmC0dPzL5zek750Eo5sVaJgfpxQdBfN+Uj0ayMPjVM1cKUOKr/t1
         G7MRNtw4WeoiXw3TPV/kwpDKhyU07O04K3j5nFy8vhreoN4uXu1YacxAdhPl/82mf2+N
         yG0rszxlEKCBq6ZqhydER5PhTyNqefmazd5US7aNYjW7gOhaBX8ZUQ45xNoDiWn7eAJ7
         xlnJRpTbe0xXB1QHnATZWi3Nz3P+6BwfTDCzP0bdm6q30M3l/9UWvFg6+Axh5W1FSOc4
         GLz2n74WnpGyCGQuaqUaJNgFm++Z5ETHLm9oJx5Kzkc7ABeGirw7Fl7iLkOdUOSeO/eP
         THXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lff0BhH+N8Erw9lK1QTkQh4XvkI1CEZ2zF5f0ybJP/s=;
        b=ZHeEDcxZj0chIbIOGyhjDzha28OK5iRHYfs4V3D2lygnZpOfY8fKD0Qu2H2z4FxPc1
         lO4cyuoFYsc7114y/nyGzwXG6YHhOYuVUH9HUsUtJmWrMRvaZs9dBWmbusrMO30nwKVq
         AZVYwV4s4xQhSPneYiCMeZPmFlMZ6O1JwHSHu6R1gRllFMbz3QKqlDL713Szd/XxQwns
         b4d2xkqhY6YzETa0a1m/Cd0Zo2uvxgxfpkNR+pwnn0VOaQv7BUxKxnR9ZThClknNIHvY
         knGD0WyGfP0VY5YteEnqyrapuNG5OXodZUo3lLbE/vcULqjRRHQOaIExn9sqCMmTRjii
         QTEw==
X-Gm-Message-State: AOAM533sg+6msiHWfFRFiEyWmbUP6ZQAP0VdHqnW2QyAP1fntQOPBfhD
	+C9hfx5ABBAsIGvLL+P54AE8Qz0498XL7Z6+X8GDtNVPJB9CAQ==
X-Google-Smtp-Source: ABdhPJzaAxTHRh9LBYsAjSNRney5txpS9VKWXkyrEEjra2k7xessXNDlLgZaGHREd/SAIW0Kymv/Wn3Ras0Wvin8fqE=
X-Received: by 2002:a92:2550:: with SMTP id l77mr369309ill.63.1598598271898;
 Fri, 28 Aug 2020 00:04:31 -0700 (PDT)
MIME-Version: 1.0
From: thisisaash9698@gmail.com
Date: Fri, 28 Aug 2020 12:34:20 +0530
Message-ID: <CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail.com>
Subject: Removing Python2 Completely
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000022990705adeaaadb"

--00000000000022990705adeaaadb
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to remove Python2 and it's supporting modules completely from
my Image, as I have moved all my code to Python3 and hence no longer
require Python2. I tried the IMAGE_INSTALL_remove variable but seems to
have no effect. Is there a way I can remove Python2 without much changes to
the layers and through configuration variables only ?

Please point me to the correct mailer if  I am wrong.

Thanks,
Aashik

--00000000000022990705adeaaadb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to remove Python2 and i=
t&#39;s supporting modules completely from my Image, as I have moved all my=
 code to Python3 and hence no longer require Python2.=C2=A0<span style=3D"c=
olor:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,s=
ans-serif;font-size:13px">I tried the IMAGE_INSTALL_remove variable but see=
ms to have no effect. Is there a way I can remove Python2 without much chan=
ges to the layers and through configuration variables only ?</span></div><d=
iv><span style=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neu=
e&quot;,Helvetica,sans-serif;font-size:13px"><br></span></div><div><span st=
yle=3D"color:rgb(36,39,41);font-family:Arial,&quot;Helvetica Neue&quot;,Hel=
vetica,sans-serif;font-size:13px">Please point me to the correct mailer if=
=C2=A0 I am wrong.</span></div><div><span style=3D"color:rgb(36,39,41);font=
-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:13p=
x"><br></span></div><div><span style=3D"color:rgb(36,39,41);font-family:Ari=
al,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:13px">Thanks,<=
/span></div><div><span style=3D"color:rgb(36,39,41);font-family:Arial,&quot=
;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:13px">Aashik</span></d=
iv></div>

--00000000000022990705adeaaadb--
