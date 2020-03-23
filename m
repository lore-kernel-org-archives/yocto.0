Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web11.50657.1584964721030240248
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 04:58:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=WhTlg21E;
 spf=pass (domain: linaro.org, ip: 209.85.219.175, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f175.google.com with SMTP id f17so6908792ybp.4
        for <yocto@lists.yoctoproject.org>; Mon, 23 Mar 2020 04:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=1jFEcE5IrdkFCUEAN4hBvQnwwTh3aNn7cX6HwuubK3o=;
        b=WhTlg21E1q/zemMpZqs1CxyC4Z5h1FAX/yaiocyU84osZV6UAS+FjilwmhGl/d5bd+
         /NUtBfs4ADM8Z8C0o03thpDDZOtMZ8JZUnRsIMtODyg9gE44caQWEjPC0pX246t9Iqoc
         1XE0dRPE5YY4nktEkDRH2skuSoqZflJ0mWrQGDlMYOyEQpVSDiT2X1Nu7QLPvSCWkfuH
         YQAi1IEpxI7G0RmkwyQBNMwQIntMDESWEBcN3RqvG2y4tIB3D1nQ/sd39xCeInmBKwxx
         XhUOn3lUL/AbKOewgLYAqwrWKJxQDiNNLwxg21+TjeY4/3otRVSEIEmeTp5PdYY+Nwps
         acDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1jFEcE5IrdkFCUEAN4hBvQnwwTh3aNn7cX6HwuubK3o=;
        b=mCKZvppSxRfPzxgH5ZaVw7GJ1vARUgnIO2KFV+Y9VZp4ASvcLy5VI56aH9qwe0uuZq
         BKK9NhKK64zI+KvgbcMceCLtZkXtu2Y08lbVnzDG2XPz/ZSWFZ3YhQlPzsWKbf/XhHEw
         oEhJnI5818MioiNmvN+Sgkyg4WAu3jBVsorTgs408GxgAO29yBf8+hfOAv9ReqXygc76
         utBd0t6ronDPZhMblSDkmVvyT/owHdGff8hwctH6ST5Pb/WvIcNfKU2ZdDGegNF/bfDi
         +k1AOBfi1HSx00v4HWp+Z4jFXCi9Q7Wx3EgEcAoBRb9eHwdVB/PN1aYlHs9SNsAxY9wD
         jLuA==
X-Gm-Message-State: ANhLgQ262TRQQ8/oYC3WscDPgSxXtg/pcpYAW43KWw5rSDRD1aG14NVA
	3ISBZpjwzbTkNOZZNEbQrnY/gTE5IX2MNUsprnzToNUH
X-Google-Smtp-Source: ADFU+vuYDJqkHov9bPciG/OixiW6kXZ+wxeuFR9ujyN+cbPzg0rXkC4LBFoX2wsYRGLNnhia2kU5pybITywWwXgxJHU=
X-Received: by 2002:a5b:9d1:: with SMTP id y17mr34240175ybq.133.1584964719763;
 Mon, 23 Mar 2020 04:58:39 -0700 (PDT)
MIME-Version: 1.0
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 23 Mar 2020 12:58:28 +0100
Message-ID: <CAP71WjxA6Z=OFBF_Dhp=jjjqXseGvHyzJURdZ8k0H4=2=a2omQ@mail.gmail.com>
Subject: Community stats dashboard
To: yocto@lists.yoctoproject.org, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000001a797f05a1845bc6"

--0000000000001a797f05a1845bc6
Content-Type: text/plain; charset="UTF-8"

hi there,

we have put in place a dashboard that shows our community engagement and
stats. We are using a service from Bitergia for that, and they are using
open source tools from the LF CHAOSS project [1].

The dashboard is publicly available at [2]. Feel free to have a look at the
data, the tool is doing its best to map users' identities (email, git,
bugzilla, ...). It also tries to map when possible users with their
respective company/employer, so that gives everyone a map of who
contributes and participate to the project.

If you have any questions or issues with the tool, please let me know.  If
any mailing list or git tree is missing and you would like it to be added,
let me know and I will do it.

If you want to update your data on the dashboard such as typo, or if you
want to show (or update, or hide) your employer affiliation, or if you want
to anonymise your data on the public dashboard, please reach out to me as
well.

cheers
nicolas


[1] https://chaoss.community/
[2] https://yoctoproject.biterg.io

--0000000000001a797f05a1845bc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hi there,</div><div><br></div><div>we have put in pla=
ce a dashboard that shows our community engagement and stats. We are using =
a service from Bitergia for that, and they are using open source tools from=
 the LF CHAOSS project [1].</div><div><br></div><div>The dashboard is publi=
cly available at [2]. Feel free to have a look at the data, the tool is doi=
ng its best to map users&#39; identities (email, git, bugzilla, ...). It al=
so tries to map when possible users with their respective company/employer,=
 so that gives everyone a map of who contributes and participate to the pro=
ject.</div><div><br></div><div>If you have any questions or issues with the=
 tool, please let me know.=C2=A0 If any mailing list or git tree is missing=
 and you would like it to be added, let me know and I will do it.</div><div=
><br></div><div>If you want to update your data on the dashboard such as ty=
po, or if you want to show (or update, or hide) your employer affiliation, =
or if you want to anonymise your data on the public dashboard, please reach=
 out to me as well.</div><div><br></div><div>cheers</div><div>nicolas<br></=
div><div><br></div><div><br></div><div>[1] <a href=3D"https://chaoss.commun=
ity/" target=3D"_blank">https://chaoss.community/</a></div><div>[2] <a href=
=3D"https://yoctoproject.biterg.io" target=3D"_blank">https://yoctoproject.=
biterg.io</a></div></div>

--0000000000001a797f05a1845bc6--
