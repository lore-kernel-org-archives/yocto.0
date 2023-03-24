Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0589EC6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 09:55:26 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.96935.1679651721648761316
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 02:55:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=a+0cE1+q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id l37so752605wms.2
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 02:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1679651720;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JaViYAk1UVDWJuaZpgDY/fXFU1ckTA/cOhQzZKK04tE=;
        b=a+0cE1+q5IP8EEoiN2rOxLRCHsPnhuz9Fh2ckCUAkFTh3XewpKnvbcnuauI9zbWkKW
         HylHdyg2LvOYQo5wKdLlgdCbEQlEiirTiGxKSQfS0U7KU8wqT4OwYQ+Lk6LdUMByfxgm
         PhEANoG26rUjrm0WBQGNRP9j86lsd1hlfy7tE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679651720;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JaViYAk1UVDWJuaZpgDY/fXFU1ckTA/cOhQzZKK04tE=;
        b=bPPjLA23ic//jcK4r+48RiT+dWcSEdGo4Fkur8/ton1eVKNkv3X2c/NkWOrIgewT4Q
         gentCV6J8Gy4+Hml9lB9fLkBmoXMsK7OUHBtkcWs6i8B065BU8Q7Wh8cOkKnagTN4vMp
         evF9MbopFJhnBHNqJvSjDK4gbJ8r3i52N0TaeszYRe47BaPicvzLm0Xd2Ey04hqumpN8
         5IANiVatO6Hozwfd9+yf+OHjkgp9M4xsBAZmsguWHks3fWpg+dWYjJAzNmLA4EnwP8zO
         izpBlJaNJHvSYpf1deCupDYVKlAGKkYElciPEcQu1fJXjX8o609MFPMz24DBVtdELkey
         /bDg==
X-Gm-Message-State: AO0yUKVaeErpMdf0HS23OjH2tsUWuovhBbgCE0cXIQFYnvD/lL9hM5Vc
	C9xV2oyy5bjn2gdTIAhEAqnrig==
X-Google-Smtp-Source: AK7set/i6PaozKKGe7nHB98N9ebML/K428cvQ0xS1eNEaUavsUYIjqgGraJ4KFGqqKo1qrchhB5mMQ==
X-Received: by 2002:a1c:790b:0:b0:3ee:56f7:75d2 with SMTP id l11-20020a1c790b000000b003ee56f775d2mr2104524wme.20.1679651719974;
        Fri, 24 Mar 2023 02:55:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b274:32b5:9a06:2db7? ([2001:8b0:aba:5f3c:b274:32b5:9a06:2db7])
        by smtp.gmail.com with ESMTPSA id c13-20020a05600c0acd00b003ee42696acesm4388976wmr.16.2023.03.24.02.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 02:55:19 -0700 (PDT)
Message-ID: <eaeafb6dd0b87478494477540709f9d20f500955.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH 2/2]
 scripts/generate-testresult-index.py: expose regression reports on web page
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Fri, 24 Mar 2023 09:55:19 +0000
In-Reply-To: <20230324090025.26366-3-alexis.lothore@bootlin.com>
References: <20230324090025.26366-1-alexis.lothore@bootlin.com>
	 <20230324090025.26366-3-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 09:55:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59508

On Fri, 2023-03-24 at 10:00 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> From: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
>=20
> When available, expose tesresult-regressions-report.txt on non-release we=
b page,
> as it is done for many other artifacts currently
>=20
> Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> ---
>  scripts/generate-testresult-index.py | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/scripts/generate-testresult-index.py b/scripts/generate-test=
result-index.py
> index 09d2edb..122bac1 100755
> --- a/scripts/generate-testresult-index.py
> +++ b/scripts/generate-testresult-index.py
> @@ -30,6 +30,7 @@ index_template =3D """
>    <th>Type</th>
>    <th>Branch</th>
>    <th>Test Results Report</th>
> +  <th>Regressions Report</th>
>    <th>Performance Reports</th>
>    <th>ptest Logs</th>
>    <th>Buildhistory</th>
> @@ -43,6 +44,7 @@ index_template =3D """
>     <td>{% if entry[2] %} {{entry[2]}}{% endif %}</td>
>     <td>{% if entry[4] %} {{entry[4]}}{% endif %}</td>
>     <td> {% if entry[3] %}<a href=3D"{{entry[3]}}">Report</a>{% endif %} =
</td>
> +   <td> {% if entry[9] %}<a href=3D"{{entry[9]}}">Report</a>{% endif %} =
</td>
>     <td>
>     {% for perfrep in entry[6] %}
>       <a href=3D"{{perfrep[0]}}">{{perfrep[1]}}</a>
> @@ -129,6 +131,10 @@ for build in sorted(os.listdir(path), key=3Dkeygen, =
reverse=3DTrue):
>      if os.path.exists(buildpath + "/testresult-report.txt"):
>          testreport =3D reldir + "testresults/testresult-report.txt"
> =20
> +    regressionreport =3D ""
> +    if os.path.exists(buildpath + "/testresult-regressions-report.txt"):
> +        regressionreport =3D reldir + "testresults/testresult-regression=
s-report.txt"
> +
>      ptestlogs =3D []
>      ptestseen =3D []
>      for p in glob.glob(buildpath + "/*-ptest/*.log"):
> @@ -165,7 +171,7 @@ for build in sorted(os.listdir(path), key=3Dkeygen, r=
everse=3DTrue):
> =20
>      branch =3D get_build_branch(buildpath)
> =20
> -    entries.append((build, reldir, btype, testreport, branch, buildhisto=
ry, perfreports, ptestlogs, hd))
> +    entries.append((build, reldir, btype, testreport, branch, buildhisto=
ry, perfreports, ptestlogs, hd, regressionreport))
> =20

In the interests of keeping that index page a manageable size, instead
of a new data column, I'd suggest we just add the link in the same TD
cell with the name "Regression"?

Cheers,

Richard


