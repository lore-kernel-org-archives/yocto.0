Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web12.4637.1610768245350877819
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 19:37:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SdIIKuzT;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id n2so5023136iom.7
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 19:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xTOxD58/kVH/KZi8Cyiah2paen/lGHiVZi59LNYsYR0=;
        b=SdIIKuzTkVGaDSwf/qze1WyYKnxR5zGWyvW4TQeu0nkXjgtd6eOcq7FDkSBH8czkVW
         3u/kN4gQj676XjFjHn9x4FdsTZhBOEd4Ro/E8MZIpU6wR5u9CPL7JTo5R/fLUz4hNXt+
         1mjrE5/qw1J5dL5B18ljw+UwF60T/mxTB/whM1U8B8EHX3pf6onk/K8fzD8txrxNB388
         /y5wgpJPhyH9TTW6yg97M/B3ks/Ext+uo6ZMKu3tO4MZdxUyJq18ukQORfR5ycoI/v7l
         7PiGiiXlFZriR882/a45ERpIJ40hGZ4k9izb0lFigbvtqbW06Rjt/glsfJYxHqoUgHN3
         J5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xTOxD58/kVH/KZi8Cyiah2paen/lGHiVZi59LNYsYR0=;
        b=f1W8kZXDFsUXVA4rbqw5mU45pFkaLuhahZCHb79U24AG6oawxp1DKY0mAO06wPcrls
         kyNpFPr8M0c8kqZoQB5WdoSCCo4aUYoFMINNqWmBpE/M1h7y2NGQW2Mtj9w1NiA4x3VO
         yOhfYcCcSODOUVUeVAg14QZh7Hnqvp9BDej+ECTJcNeIQ6u8i0JtubTrMv98p7/70fSi
         e2C1MNEH9UX0wOJqB1fnpAMcJmJWLo+luBpuTQjpHIBX8N8BsYY86NEQK50ijrPo2zPf
         5GU+YV2pFE8iHCTdb27P8QuDgYuCDMfpbRaZ8P1pRABHoafQNJlv51nRDCbcE55yL0tu
         wH/A==
X-Gm-Message-State: AOAM533TTfpc/RXeph6Yxp7/5dxRhPuF+VCBxi8mwbnJ2FWx+ersvjCf
	EsN3WHkYxUlAYXRLfFwltiQG0EUKHIA1NLqyk4/FG6zYUr8=
X-Google-Smtp-Source: ABdhPJyuxiHAeABjmazt0PZVT9lqZ1QyzvvVMnIFKL0NmO4fsm1KlJ95HuYbw5VIqkmHcHnXVDf1xjFt8uT4JQmsYe0=
X-Received: by 2002:a05:6602:1608:: with SMTP id x8mr10737515iow.109.1610768244412;
 Fri, 15 Jan 2021 19:37:24 -0800 (PST)
MIME-Version: 1.0
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Sat, 16 Jan 2021 09:07:14 +0530
Message-ID: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
Subject: requesting help
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000006169305b8fc3540"

--00000000000006169305b8fc3540
Content-Type: text/plain; charset="UTF-8"

Hello guys,
                    I have built a linux distribution using
core-image-sato.I want a qtwebbrowser as one of the application to be
installed on the OS. can anyone pls help me through this process.

Thanks and Regards,
ravi_uppada

--00000000000006169305b8fc3540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello guys,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I have=C2=A0built a linux distribution=C2=A0usi=
ng core-image-sato.I want a qtwebbrowser=C2=A0as one of the application to =
be installed on the OS. can anyone pls help=C2=A0me through=C2=A0this proce=
ss.</div><div><br></div><div>Thanks and Regards,</div><div>ravi_uppada</div=
></div>

--00000000000006169305b8fc3540--
