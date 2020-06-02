Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web12.11590.1591107212142493756
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 07:13:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tiBbxuGp;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id b27so12606920qka.4
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jun 2020 07:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+uloKyyPH1tSBBHs5IIAYimjE0ZoZzvdjn7lH1YkRRs=;
        b=tiBbxuGpADjHlWLjLYGVo8FsjTpcL/wrapfhHcQTmTCrFtgieW0zYX2x0kpdiNHKY/
         RlDxBtkqadeVMr0WF+mNkgICrc0VQFZnsG6ZlHeMoZ+dn20BN8MSbQhBOQ8H4ZQ24zN+
         MP9k2di+CGKkPrRMD1UD/qPaWco9qh9PVqwWNXpLlBpcyeQRahpaPs9fI5NoowBTnVot
         x8CNwWhVmcy/0ApwE9F1M0Nl/WxYx8VbqRm8g1VQV1/VFa0SXiPIT67tGSGJHV4erLnC
         DBSAOt601KzZcP39xtQ7sMuVVLMU6pII+SMCVVobH1m4W/PLAzDlODQx34cQmSGrU1TM
         34qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+uloKyyPH1tSBBHs5IIAYimjE0ZoZzvdjn7lH1YkRRs=;
        b=AbZtRTGSlVXk5dRhyAQqrtR9EoULvmFnvjz2c9p1pYdnh2/6pT7n33eYIOxNAlWN6B
         +KKRYAHpSrmS9cMQBFzW/4xzXIsHdQsoNQd8kEPTW+UGC0PeM/Hfcsmaw/jc3WNlPiUz
         any3N53UG0GrWhPnAdHP3bDj9Tf7StmPJCo4+dxMofZU4hL5sXcEqGyqPLH96d1imVH1
         4XQrp1X+0okQVi/TgEyCK7/Bn92Enzb5h3kSC8GOVMbS4mChoADF6srQT88zA1Rd+rHx
         GMiL9gKfHu5bhBTk949E2WYPMaCdOLluLoAJ7SEv+1Rs8tjKOtmbfTpeig2PXuazzTVY
         WCyw==
X-Gm-Message-State: AOAM531N78z7oEornNMwee7r/TMXYXVbKflTpi7aIo989tNjnkEgoC1J
	dIzHvTRgCc/q0FcGREc/pDJlHBfnu4QkLh97gLGl0MY=
X-Google-Smtp-Source: ABdhPJwEdyHpbNPFnwz2dgYK4fDvhNQYXRjRwnxoDQJgvuD3p+8nMG0hx7w6IjctTWnDnHV0l7b1b13UGZszQpETzl4=
X-Received: by 2002:ae9:eb47:: with SMTP id b68mr24329512qkg.479.1591107211088;
 Tue, 02 Jun 2020 07:13:31 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Tue, 2 Jun 2020 17:13:20 +0300
Message-ID: <CA+FhBv9Xthz3G5ytMWNhRL7D0QfYRRBOPU3xwG4xY0Dj2h7nHw@mail.gmail.com>
Subject: find utility alternative
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001dd84205a71a84e8"

--0000000000001dd84205a71a84e8
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to run a script using the
find ... -empty

option which isn't supported with busybox.

```
find: unrecognized: -empty
BusyBox v1.30.1 (2020-05-25 15:54:17 UTC) multi-call binary.
```

Do any other package provide an alternative for then "find" utility?

Thanks,
-Damien

--0000000000001dd84205a71a84e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I need to run a script using the=C2=
=A0</div><div>find ... -empty</div><div><br></div><div>option which isn&#39=
;t supported with busybox.</div><div><br></div><div>```</div><div>find: unr=
ecognized: -empty<br>BusyBox v1.30.1 (2020-05-25 15:54:17 UTC) multi-call b=
inary.</div><div>```<br></div><div><br></div><div>Do any other package prov=
ide an alternative for then &quot;find&quot; utility?</div><div><br></div><=
div>Thanks,</div><div>-Damien</div></div>

--0000000000001dd84205a71a84e8--
