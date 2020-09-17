Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11138.1600332192658785946
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 01:43:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=hfFdZhUS;
 spf=softfail (domain: konsulko.com, ip: 198.145.29.25, mailfrom: paul.barker@konsulko.com)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C4B8938C0896
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 01:43:11 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id a3so1605899oib.4
        for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 01:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qKjlbmE1DLxEy+/g8koHdy61fD+FTbsZgLsIxXA3diw=;
        b=hfFdZhUSpvlyeNfHaN/XZXrt6ZiIQAGYemFdP6TSq20LBjbvOvMxyIN0jsXMR1LHmL
         dODEezniSCMcAASF5lGL7diXkVsqqhmqDymLSGCWwn9gbKoM73XoxFf9CLRA80ZCBsD8
         hUmSNFKafPi2TayygR2oIflqF5trqjm0cUT9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qKjlbmE1DLxEy+/g8koHdy61fD+FTbsZgLsIxXA3diw=;
        b=Z+jQdEklSyx4EcxgZBwlh7rZZUPByPXp9cjR6Y6yIH7ufePLAth0NEOapKdw9uObmX
         3MOhezSc1k+ui+ZtiPP2XWc688g1L049dj6TRLHYIKLQGMXoflCwqy7UoiW18Zu6NSSn
         mNKxepLaTJdh8NiXsAE1pZgD2pip4E7A1wBeL1OkLzkPAAVhENbK9yD1nNJGii7gPu//
         Ikf/YP7Vv3nQyeG+xrpzmh1+xf5Yl8tUIsN77kzFKte5P8KrR6IpT6mfbVof+dKFnqQy
         gqN7Pp0289wO1Xb4Lwf69eUuT4MZRHuAdsE5OQBNc91gn1JXVMpunCaBESx1haTcesRW
         w2iA==
X-Gm-Message-State: AOAM530Bw7DbCsd4USaHXJXrmZjDnZjwzQzGF+2X/T/4rliQTHSVUBI7
	JnMR1mwjr0aSG8lpHfJt/43TrB/UCIAqHR0H8W5pnVsHXP9C1Q==
X-Google-Smtp-Source: ABdhPJwJjmDSVUeBPSDWHDfksHevcpHw5kkcbjmbO/xZmXRJloTLr0W5knwdahR1xbfuc85FRNAGrkghoyhpv1JCZYU=
X-Received: by 2002:aca:d946:: with SMTP id q67mr5535676oig.27.1600332190242;
 Thu, 17 Sep 2020 01:43:10 -0700 (PDT)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 17 Sep 2020 09:43:00 +0100
Message-ID: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
Subject: RFC: Changes to meta-kernel layer
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Ross Burton <ross@burtonini.com>, Jon Mason <jdmason@kudzu.us>
Content-Type: multipart/alternative; boundary="000000000000b8ef4005af7e5f08"

--000000000000b8ef4005af7e5f08
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi folks,

After a bit of a break I'm looking again at the meta-kernel layer and I've
got some changes planned. I'd like to get some feedback on these from
anyone who has looked at or used the meta-kernel layer.

1) Change the name to meta-vanilla-kernel. This reflects the focus on
providing a fast moving layer for vanilla kernel recipes, covering only
what is available on kernel.org. Other common kernel recipes (e.g. Linaro
or Android common kernels) will no longer be considered for acceptance into
this layer. This clear focus should hopefully reduce some of the confusion
about the goals of this layer.

2) The dunfell branch will no longer get new non-LTS kernel recipes.
Providing non-LTS recipes on a stable branch has led to people depending on
kernels which are now out of their support period - I'd like to drop the
recipes for the 5.3.y and 5.6.y kernels but users are depending on them so
I'll have to keep them. To avoid this proliferating, only LTS kernels and
the bleeding edge mainline recipe will be updated on the stable branch from
now on.

3) Aggressively drop end-of-life kernels on the master branch.

4) Drop all non-LTS kernel recipes in the gatesgarth branch when it is
created.

5) Document the test coverage for meta-kernel. We don't test perf, lttng or
any out-of-tree modules. This layer isn't meant to replace the linux-yocto
recipes, the goals are different. If you're releasing products based on
meta-kernel you obviously need to do your own testing on the components
you're actually using.

6) Document the policy for kernel patches. Patches for the kernel will only
be carried in this layer as a last resort. Kernel patches should be
submitted upstream and go through the usual process for inclusion in the
stable kernel releases.

7) Disable GitLab CI for this layer. It's costing me about =C2=A370 per mon=
th to
run CI for this layer and I need to eliminate that expense. If anyone can
sponsor this or host the CI service that would be welcome.

8) Add Jon Mason and Ross Burton (both at ARM) as backup maintainers to
reduce the bus factor for the layer. I'll continue to be the primary
maintainer for this layer but this will give some coverage if I'm unable to
continue working on it.

Thanks,

--=20
Paul Barker
Konsulko Group

--000000000000b8ef4005af7e5f08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi folks,<div><br></div><div>After a bit of a break I&#39;=
m looking again at the meta-kernel layer and I&#39;ve got some changes plan=
ned. I&#39;d like to get some feedback on these from anyone who has looked =
at or used the meta-kernel layer.</div><div><br></div><div>1) Change the na=
me to meta-vanilla-kernel. This reflects the focus on providing a fast movi=
ng layer for vanilla kernel recipes, covering only what is available on <a =
href=3D"http://kernel.org">kernel.org</a>. Other common kernel recipes (e.g=
. Linaro or Android common kernels) will no longer be considered for accept=
ance into this layer. This clear focus should hopefully reduce some of the =
confusion about the goals of this layer.</div><div><br></div><div>2) The=C2=
=A0dunfell branch will no longer get new non-LTS kernel recipes. Providing =
non-LTS recipes on a stable branch has led to people depending on kernels w=
hich are now out of their support period - I&#39;d like to drop the recipes=
 for the 5.3.y and 5.6.y kernels but users are depending on them so I&#39;l=
l have to keep them. To avoid this proliferating, only LTS kernels and the =
bleeding edge mainline recipe will be updated on the stable branch from now=
 on.</div><div><br></div><div>3) Aggressively drop end-of-life kernels on t=
he master branch.</div><div><br></div><div>4) Drop all non-LTS kernel recip=
es in the gatesgarth branch when it is created.</div><div><br></div><div>5)=
 Document the test coverage for meta-kernel. We don&#39;t test perf, lttng =
or any out-of-tree modules. This layer isn&#39;t meant to replace the linux=
-yocto recipes, the goals are different. If you&#39;re releasing products b=
ased on meta-kernel you obviously need to do your own testing on the compon=
ents you&#39;re actually using.</div><div><br></div><div>6) Document the po=
licy for kernel patches. Patches for the kernel will only be carried in thi=
s layer as a last resort. Kernel patches should be submitted upstream and g=
o through the usual process for inclusion in the stable kernel releases.</d=
iv><div></div><div><br></div><div>7) Disable GitLab CI for this layer. It&#=
39;s costing me about =C2=A370 per month to run CI for this layer and I nee=
d to eliminate that expense. If anyone can sponsor this or host the CI serv=
ice that would be welcome.</div><div><br></div><div>8) Add Jon Mason and Ro=
ss Burton (both at ARM) as backup maintainers to reduce the bus factor for =
the layer. I&#39;ll continue to be the primary maintainer for this layer bu=
t this will give some coverage if I&#39;m unable to continue working on it.=
</div><div><br></div><div>Thanks,</div><div><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Paul Barker<div>Konsulko Group</div></div></div></div></div>

--000000000000b8ef4005af7e5f08--
