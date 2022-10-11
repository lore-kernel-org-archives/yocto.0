Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5698EC433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 17:51:52 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web10.10574.1665510707992812161
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 10:51:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim
 header.b=dXImtq29;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244,
 mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.local (unknown [94.31.102.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 0DC59401A4
	for <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 19:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1665510702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TbLlRH9S55T/6ErLbtWy2u0x67hIBWRYYP36Dhdo/PI=;
	b=dXImtq292H0lX+6267fBOwXvfT48HrabI2QsegxXqiwcyRq7peHhdlJm4zBeLNZOUEGK0i
	LTyTivN+rwhcS3LTgzpUS5/ycuIaKsO+psOZyXU5Ft6GcSa9MgTDefEoZS1NZAE+ikX5SE
	/QEVYP4qEgb5GjvvZjVAk9knkF+CwbE=
Date: Tue, 11 Oct 2022 19:51:40 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: yocto@lists.yoctoproject.org
Subject: Dealing with go dependencies in recipes - native docker-compose
Message-ID: <Y0WtLKYWtdcM9wIp@Hephaistos.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 17:51:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58323

Today I realized, that the docker-compose in the meta-virtualization
layer is the old python3 based one and a native solution is available. I
tried to make a recipe for it to get rid of python3 (no other packages
uses it in our setup) and the current python3-docker-compose is broken:

https://lore.kernel.org/yocto-meta-virtualization/49660EA1-CD22-40DB-98C7=
-C43F38A72CCA@ieee.org/

I tried to build the native solution proposed in
https://github.com/docker/compose/tree/v2.11.2.

So my current recipe docker-compose_2.11.2.bb looks like this:

LICENSE =3D "Apache-2.0"

inherit go
inherit go-mod

GO_IMPORT =3D "github.com/docker/compose"

SRC_URI =3D "git://${GO_IMPORT};protocol=3Dhttps;branch=3Dv2"
# v2.11.2
SRCREV =3D "616777eb4ad4d1101622d6727d9b7adaeb7943bb"

# S =3D "${WORKDIR}/git"

DEPENDS =3D "docker-ce"
RDEPENDS:${PN} =3D "docker-ce-cli"

With this I run into the issue, that go want's to download stuff while
compiling. Which is forbidden and breaks the reliable build proposal.
Totally understandable. Looks similair to this:

dial tcp: lookup proxy.golang.org: Temporary failure in name resolution

I read about a proposal allowing this by adding do_compile[network] =3D
"1" to meta/classes/go.bb:

https://lore.kernel.org/all/20220228235433.3948994-1-andrei@gherzan.com/

Of course, if this works, the reliable build thingy is gone, but while
trying I discovered go loads external stuff, compiles it too.
In my case (I have kirkstone with go-1.17) I run into modules demanding
a go more recent:

ASH[build k8s.io/client-go/applyconfigurations/autoscaling/v2beta2]: "fil=
e containerresourcemetricsource.go Mas4-HIX5lGBEQNTIo58\n"
# github.com/docker/compose/v2/pkg/utils
pkg/utils/slices.go:23:6: missing function body
pkg/utils/slices.go:23:14: syntax error: unexpected [, expecting (
note: module requires Go 1.19
HASH[build k8s.io/client-go/applyconfigurations/certificates/v1beta1]
HASH[build k8s.io/client-go/applyconfigurations/certificates/v1beta1]: "g=
o1.17.13"

which could be worked around by moving to landsdale release. Which
bothers me, because I too want to keep my build reliable. And I do not
want to mess around outside our meta layer in the distribution!
How do I do this properly?
I see people pulling in each dependency by individual golang.org-x.bb
recipes, how could such a recipe look like?

I read
https://lore.kernel.org/all/8132db85-5881-636e-c091-d84c47efe4fe@gmail.co=
m/T/
where Mike is not happy with this appraoch either and comes up with a
working recipe I don't get why this could work at all.

What am I missing here where is the missing link I did not get yet?

Also, I am jealous about the buildroot guys sometimes, how do they do
this in a 22 lines makefile including comments:

https://git.busybox.net/buildroot/tree/package/docker-compose/docker-comp=
ose.mk


Regards
Konstantin

--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


