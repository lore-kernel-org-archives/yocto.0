Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1335FC5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 11:56:14 +0000 (UTC)
Subject: dnf/libsolv vs. package feed with commit hashes in version strings
To: yocto@lists.yoctoproject.org
From: patrick.huesmann@desy.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 03:56:07 -0800
Message-ID: <1x1G.1709121367782868015.Ekur@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="edR20kliEP7aBc0NJLUG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 11:56:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62629

--edR20kliEP7aBc0NJLUG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I noticed a strange behavior of dnf not updating a package from the package=
 feed, and when I told it to explicitly install that newest package version=
 it went "Downgrading: ...." as if the newest version were a older one.

The "competing" packages were:
foo-bar-1.0.0+git0+93a939c4-r0.24
foo-bar-1.0.0+git0+f95bf929-r0.26

So we have a system where foo-bar-1.0.0+git0+93a939c4-r0.24 is installed, a=
nd a package feed which offers foo-bar-1.0.0+git0+f95bf929-r0.26,
dnf is convinced that f95bf929-r0.26 is older than 93a939c4-r0.24 - which i=
s not as expected, IMHO.

BitBake has the "Package version for package XYZ went backwards which would=
 break package feeds" error message, but it wouldn't even trigger in this c=
ase, since after a lexical comparison, f95bf929 is "higher" than 93a939c4. =
But turns out that libsolv implements a whole different algorithm for compa=
ring version strings [1] which splits them into 'tokens' of either only num=
erical or only alpha characters, and compares the length of each. In above =
example it arrives at the commit hash after everything preceding it is equa=
l, then it processes "93" for the 93a939c4 (delimited by "a") and "" for f9=
5bf929 (delimited by "f"). Comparing "93" and "" the former is 2 characters=
 longer, so the 93a939c4 version is considered more recent.

I think this behavior is counter-intuitive and there are lots of upstream r=
ecipes that append "git0+<hash>" to their PV; is the general consensus that=
 you *must never* change the Git revision of such a package without increme=
nting the PV preceding the "git0" part? (Incrementing the PR doesn't help h=
ere, since dnf/libsolv never considers the PR if a PV is found to be newer)=
.

I patched libsolv on our systems now to ignore everything following a "git0=
" in a PV, since we absolutely need to be able to update packages between v=
ersion bumps.

Would be interested to learn if this behavior of dnf/libsolv is already kno=
wn and what is the commonly accepted "best practice" dealing with it.

Thanks,
Patrick

[1]: https://github.com/openSUSE/libsolv/blob/7b0788fb7ee937b7d38829bcec477=
60e42779a66/src/evr.c#L74-L155

--edR20kliEP7aBc0NJLUG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I noticed a strange behavior of dnf not updating a package f=
rom the package feed, and when I told it to explicitly install that newest =
package version it went "Downgrading: ...." as if the newest version were a=
 older one.<br /><br />The "competing" packages were:<br />foo-bar-1.0.0+gi=
t0+93a939c4-r0.24<br />foo-bar-1.0.0+git0+f95bf929-r0.26<br /><br />So we h=
ave a system where foo-bar-1.0.0+git0+93a939c4-r0.24 is installed, and a pa=
ckage feed which offers foo-bar-1.0.0+git0+f95bf929-r0.26,<br />dnf is conv=
inced that f95bf929-r0.26 is older than 93a939c4-r0.24 - which is not as ex=
pected, IMHO.<br /><br />BitBake has the "Package version for package XYZ w=
ent backwards which would break package feeds" error message, but it wouldn=
't even trigger in this case, since after a lexical comparison, f95bf929 is=
 "higher" than 93a939c4. But turns out that libsolv implements a whole diff=
erent algorithm for comparing version strings [1] which splits them into 't=
okens' of either only numerical or only alpha characters, and compares the =
length of each. In above example it arrives at the commit hash after everyt=
hing preceding it is equal, then it processes "93" for the 93a939c4 (delimi=
ted by "a") and "" for f95bf929 (delimited by "f"). Comparing "93" and "" t=
he former is 2 characters longer, so the 93a939c4 version is considered mor=
e recent.<br /><br />I think this behavior is counter-intuitive and there a=
re lots of upstream recipes that append "git0+&lt;hash&gt;" to their PV; is=
 the general consensus that you *must never* change the Git revision of suc=
h a package without incrementing the PV preceding the "git0" part? (Increme=
nting the PR doesn't help here, since dnf/libsolv never considers the PR if=
 a PV is found to be newer).<br /><br />I patched libsolv on our systems no=
w to ignore everything following a "git0" in a PV, since we absolutely need=
 to be able to update packages between version bumps.<br /><br />Would be i=
nterested to learn if this behavior of dnf/libsolv is already known and wha=
t is the commonly accepted "best practice" dealing with it.<br /><br />Than=
ks,<br />Patrick<br /><br />[1]: https://github.com/openSUSE/libsolv/blob/7=
b0788fb7ee937b7d38829bcec47760e42779a66/src/evr.c#L74-L155

--edR20kliEP7aBc0NJLUG--

