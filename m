Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A11C05027
	for <webhook@archiver.kernel.org>; Thu, 26 Jan 2023 22:47:26 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.89023.1674773242153910663
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jan 2023 14:47:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f/u3F83D;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id l8so2240243wms.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 14:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M2tbEdX8Py41aYxNFkPv3S7QDNvLs4Nm4zUSAatZOkU=;
        b=f/u3F83DUFXAFEN6dwSOwLzwQxH1UGDH7sjVGApzmv3tiAQIEo09NXUDT3qboVVaZE
         pp3j22VXd4UM78JRbtZ8gUPqIJeVDNAhwxQ3YKQ/nbxxD5nVkcoy2pAD87rCYHrigD0a
         F8cppADjpLR1vCrDSgX+NWbsi7aRLu/chzf9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M2tbEdX8Py41aYxNFkPv3S7QDNvLs4Nm4zUSAatZOkU=;
        b=MYQBNj8eJNNNR3DQShYo+/TVawzHzmybXZTc0OEwMtMBH5/MuCKCa+bShtkq1B0txd
         wO7iKfKGNfPUoCE2lRi5AA9+RGANTIEZyqM1yj09RizagDoiqnj6geYtE4QcV5NqDerB
         xl0qQQHFh/d416xzdexpHTSN3RaPpkDHBhQwC1voTlnbIYFl6YkrO6N005+9fIgQaFCT
         VV6aWODlnbcV1SUJpfa9+n1SWsXG3vw/fq5XdRxTM6rerWUbucKgqX1ht0sAU1fmRZPu
         EG2mUdrmfar+pqnc9QSt/A/pNQEU3MPzTHpbKzpJwbIrcYqobKMMruKfamoEww6FKEy5
         A7pA==
X-Gm-Message-State: AO0yUKW6ZZrsnNADd2a2T8luR0INNuc/JUNDJ882gAc38db3ojjfjRkB
	/zM1faBiVSMgoKmQ92vdxb7iXEwD97XSRRuw
X-Google-Smtp-Source: AK7set9mrG+c/wJyjN6488eJk9/+D4dg4kC9mC8V2RrIXBdQxUx9C9gF0BXt3VLTFPRi0z988Ijcdg==
X-Received: by 2002:a05:600c:a42:b0:3dc:1ad6:55fd with SMTP id c2-20020a05600c0a4200b003dc1ad655fdmr7880270wmq.32.1674773240583;
        Thu, 26 Jan 2023 14:47:20 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3876:ca46:43a6:4b49? ([2001:8b0:aba:5f3c:3876:ca46:43a6:4b49])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c180a00b003daf672a616sm2514256wmp.22.2023.01.26.14.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 14:47:20 -0800 (PST)
Message-ID: <01815937faa1fb81a0c3ccc19db372e4f3ff5f33.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH v3 3/5] scripts/send-qa-email:
 Generate regression reports against most relevant release
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
Date: Thu, 26 Jan 2023 22:47:19 +0000
In-Reply-To: <20230124173017.134017-4-alexis.lothore@bootlin.com>
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
	 <20230124173017.134017-4-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 22:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59067

On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothor=C3=A9 via lists.yoctoproje=
ct.org wrote:
> Instead of only generating regressions reports against HEAD of relevant b=
ranch, compute
> most relevant tag (ie : release) against which we can check for regressio=
ns. General rules
> introduced are the following :
> - milestone release is checked against previous milestone if possible, ot=
herwise
>   against major release
> - point release  is checked against previous point release if possible,
>   otherwise against major release
> - major release is checked against previous major release
> - a non release build is checked against base branch
> Examples :
> - 4.1.2.rc1 is checked against yocto-4.1.1
> - 4.1.2 is checked against yocto-4.1.1
> - 4.1.1.rc1 is checked against yocto-4.1
> - 4.1.1 is checked against yocto-4.1
> - 4.1 is checked against yocto-4.0
> - 4.1.rc4 is checked against yocto-4.0
> - 4.1_M2.rc1 is checked against 4.1_M1
> - 4.1_M2 is checked against 4.1_M1
> - 4.1_M1.rc1 is checked against yocto-4.0
> - 4.1_M1 is checked against yocto-4.0
>=20
> Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> ---
>  scripts/send_qa_email.py | 86 +++++++++++++++++++++++++++++++++-------
>  scripts/utils.py         | 47 ++++++++++++++++++++++
>  2 files changed, 118 insertions(+), 15 deletions(-)
>=20
> diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
> index 4023918..199fe4e 100755
> --- a/scripts/send_qa_email.py
> +++ b/scripts/send_qa_email.py
> @@ -9,11 +9,79 @@ import json
>  import os
>  import sys
>  import subprocess
> -import errno
>  import tempfile
> +import re
> =20
>  import utils
> =20
> +def is_non_release_version(version):
> +    p =3D re.compile('\d{8}-\d+')
> +    return p.match(version) is not None
> +
> +def get_previous_tag(targetrepodir, version):
> +    previousversion =3D None
> +    previousmilestone =3D None
> +    if version:
> +        if is_non_release_version(version):
> +            return subprocess.check_output(["git", "describe", "--abbrev=
=3D0"], cwd=3Dtargetrepodir).decode('utf-8').strip()
> +        compareversion, comparemilestone, _ =3D utils.get_version_from_s=
tring(version)
> +        compareversionminor =3D compareversion[-1]
> +        # After ignoring rc part, if we get a minor to 0 on point releas=
e (e.g 4.0.0),
> +        # reject last digit since such versions do not exist
> +        if len(compareversion) =3D=3D 3 and compareversionminor =3D=3D 0=
:
> +            compareversion =3D compareversion[:-1]
> +
> +        # Process milestone if not first in current release
> +        if comparemilestone and comparemilestone > 1:
> +            previousversion =3D compareversion
> +            previousmilestone =3D comparemilestone-1
> +        # Process first milestone or release if not first in major relea=
se
> +        elif compareversionminor > 0:
> +            previousversion =3D compareversion[:-1] + [compareversion[-1=
] - 1]
> +        # Otherwise : format it as tag (which must exist) and search pre=
vious tag
> +        else:
> +            comparetagstring =3D utils.get_tag_from_version(compareversi=
on, comparemilestone)
> +            return subprocess.check_output(["git", "describe", "--abbrev=
=3D0", comparetagstring + "^"], cwd=3Dtargetrepodir).decode('utf-8').strip(=
)
> +
> +        return utils.get_tag_from_version(previousversion, previousmiles=
tone)
> +
> +    # All other cases : merely check against latest tag reachable
> +    defaultbaseversion, _, _ =3D utils.get_version_from_string(subproces=
s.check_output(["git", "describe", "--abbrev=3D0"], cwd=3Dtargetrepodir).de=
code('utf-8').strip())
> +    return utils.get_tag_from_version(defaultbaseversion, None)
> +
> +def get_sha1(targetrepodir, revision):
> +    return subprocess.check_output(["git", "rev-list", "-n", "1", revisi=
on], cwd=3Dtargetrepodir).decode('utf-8').strip()
> +
> +def fetch_testresults(resultdir, revision):
> +    rawtags =3D subprocess.check_output(["git", "ls-remote", "--refs", "=
--tags", "origin", f"*{revision}*"], cwd=3Dresultdir).decode('utf-8').strip=
()
> +    if not rawtags:
> +        raise Exception(f"No reference found for commit {revision} in {r=
esultdir}")
> +    for ref in [rawtag.split()[1] for rawtag in rawtags.splitlines()]:
> +        print(f"Fetching matching revisions: {ref}")
> +        subprocess.check_call(["git", "fetch", "--depth", "1", "origin",=
 f"{ref}:{ref}"], cwd=3Dresultdir)
> +
> +
> +def generate_regression_report(resulttool, targetrepodir, basebranch, re=
sultdir, outputdir, yoctoversion):
> +    baseversion =3D get_previous_tag(targetrepodir, yoctoversion)
> +    baserevision =3D get_sha1(targetrepodir, baseversion)
> +    comparerevision =3D get_sha1(targetrepodir, basebranch)
> +    print(f"Compare version : {basebranch} ({comparerevision})")
> +    print(f"Base tag : {baseversion} ({baserevision})")
> +
> +    try:
> +        """
> +        Results directory is likely a shallow clone :
> +        we need to fetch results corresponding to base revision before
> +        running resulttool
> +        """
> +        fetch_testresults(resultdir, baserevision)
> +        regreport =3D subprocess.check_output([resulttool, "regression-g=
it", "-B", basebranch, "--commit", baserevision, "--commit2", comparerevisi=
on, resultdir])
> +        with open(outputdir + "/testresult-regressions-report.txt", "wb"=
) as f:
> +           f.write(regreport)
> +    except subprocess.CalledProcessError as e:
> +        error =3D str(e)
> +        print(f"Error while generating report between {baserevision} and=
 {comparerevision} : {error}")
> +
> =20
>  def send_qa_email():
>      parser =3D utils.ArgParser(description=3D'Process test results and o=
ptionally send an email about the build to prompt QA to begin testing.')
> @@ -57,16 +125,7 @@ def send_qa_email():
>          branch =3D repos['poky']['branch']
>          repo =3D repos['poky']['url']
> =20
> -        extraopts =3D None
>          basebranch, comparebranch =3D utils.getcomparisonbranch(ourconfi=
g, repo, branch)
> -        if basebranch:
> -            extraopts =3D " --branch %s --commit %s" % (branch, revision=
)
> -        if comparebranch:
> -            extraopts =3D extraopts + " --branch2 %s" % (comparebranch)
> -        elif basebranch:
> -            print("No comparision branch found, comparing to %s" % baseb=
ranch)
> -            extraopts =3D extraopts + " --branch2 %s" % basebranch
> -
>          report =3D subprocess.check_output([resulttool, "report", args.r=
esults_dir])
>          with open(args.results_dir + "/testresult-report.txt", "wb") as =
f:
>              f.write(report)
>=20

There looks to be a potential issue here since you drop the use of
comparebranch entirely. This comes from config.json:

    "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "p=
oky:master-next" : "poky:master"},

and basically what it says is that master-next is a force push branch
which should be compared against master (and ross/mut should be
compared against master too).

We need this code so that when we build test branches, we run the
regression comparison against the last known master test results. We
should probably put Alexandre's test branch in there too.

Cheers,

Richard


