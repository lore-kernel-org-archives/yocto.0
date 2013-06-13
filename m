Return-Path: <peachj@lexmark.com>
Received: from exprod8og114.obsmtp.com (exprod8og114.obsmtp.com [64.18.3.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CD50E013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 09:28:50 -0700 (PDT)
Received: from mail-oa0-f52.google.com ([209.85.219.52]) (using TLSv1) by
	exprod8ob114.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUbnzQeYAhjat/ArQUkFZAVVnZW+eAXwU@postini.com;
	Thu, 13 Jun 2013 09:28:52 PDT
Received: by mail-oa0-f52.google.com with SMTP id g12so6568658oah.11
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 09:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=AD5TLGvRiu067Vw8nMAP7RfKMV2DIcksSuHJkc4hjkg=;
	b=m5AEV/JefyuQ6OPSBz3STO0ilOYkxPvBdHXIiVChyqUNic34x/w4tkOLMJEzIo4kAj
	AauN202iaqz9MLmYt9HlMmSG9nCp0iND/WViy6xPXWZPzG4g2YXO2R6EPOqhtAXmssoV
	wmG4Q8GcQ144X+ac76QyrBrBMJhc5mKzrl2C+ADeSu3lozyTyIdMP6P5o2elu3c4QJUU
	sr0VJOQv/H7Ii5621m/MjEU4PvdkoW1sPVRdCnqmuia3uEud2CI0MrJD1mXmkyPnV22Y
	XaWcSZK/UfLZn7le+33dbs5CpXR6nuNdhxU9//9x72mMS35+x+AMlniZAp2x+rgRw0xN
	jIQw==
X-Received: by 10.60.84.102 with SMTP id x6mr1312949oey.73.1371140929172;
	Thu, 13 Jun 2013 09:28:49 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.60.84.102 with SMTP id x6mr1312945oey.73.1371140929088; Thu,
	13 Jun 2013 09:28:49 -0700 (PDT)
Received: by 10.76.20.232 with HTTP; Thu, 13 Jun 2013 09:28:48 -0700 (PDT)
Date: Thu, 13 Jun 2013 12:28:48 -0400
Message-ID: <CA+QkY1AuHy-wzgTWfRq7B0e7GFR4fAXdf_okVZ7wypjBp5ewzw@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlA0mG7J+DQBgtKe2ZO690+gj5LQcHTYObqx9yMu5slqF4DYoSsyXz5nfRPvmJ5LbnipmEeG9k5vSIVXtqWTm++StOi3J3Y3us3NL6l3ndtoY4gQtNpkVentVxWIgjycvGWB70t0RgalrXFSWy60blzRhUNxD0O+R9lUnDJtMZ4NxnYZWQ=
Subject: Yocto 1.4: Bad behavior between rm_work and packaging causing failures?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Jun 2013 16:28:52 -0000
Content-Type: multipart/alternative; boundary=089e0111d9ca03fbb004df0ba0a7

--089e0111d9ca03fbb004df0ba0a7
Content-Type: text/plain; charset=ISO-8859-1

All,

Since upgrading to Yocto 1.4, several people at our organization have
noticed a couple of weird build failures related to rm_work and packaging.
 Here are the two failure scenarios:

1) A user builds package, but bitbake only re-runs the do_pkg_write_rpm
task without having run any other build tasks.  This appears to be due to a
supposedly-valid stamp file existing for the other tasks in the task graph.
 This would normally result in an empty rpm being created, but the rpm
creation code (smartly) refuses to create empty rpms.  This, then, causes a
build failure during image creation (if the package is needed for the
image, of course) because the rpm isn't present.  We think this situation
leads to the second failure we see.

2) Whether a build succeeds or fails, if it's run on our build
infrastructure, we upload its sstate to an sstate mirror.  sstate is still
uploaded for the do_package_write_rpm task in case 1 for builds performed
on our infrastructure.  That means the sstate, then, contains no rpm for
the package in question.  This causes later builds to fail with the same
error as in case 1 (the rpm isn't present when the image needs it), but for
a different reason (getting a hit on poisoned sstate).

We do not know how to reproduce this problem.  We think it's related to
commit f090c15 (in the poky repo), but we haven't had much time to
investigate further.  I suspect there is only one bug to fix here (i.e.,
whatever is causing stamp files to incorrectly exist), but since there are
some number of unknowns here, I thought I'd be better off describing the
whole situation, just in case.

Has anyone else seen this?  Does anyone have ideas as to what's causing it?

Kind regards,

Jerrod

--089e0111d9ca03fbb004df0ba0a7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All,<div><br></div><div style>Since upgrading to Yocto 1.4=
, several people at our organization have noticed a couple of weird build f=
ailures related to rm_work and packaging. =A0Here are the two failure scena=
rios:</div>
<div style><br></div><div style>1) A user builds package, but bitbake only =
re-runs the do_pkg_write_rpm task without having run any other build tasks.=
 =A0This appears to be due to a supposedly-valid stamp file existing for th=
e other tasks in the task graph. =A0This would normally result in an empty =
rpm being created, but the rpm creation code (smartly) refuses to create em=
pty rpms. =A0This, then, causes a build failure during image creation (if t=
he package is needed for the image, of course) because the rpm isn&#39;t pr=
esent. =A0We think this situation leads to the second failure we see.</div>
<div style><br></div><div style>2) Whether a build succeeds or fails, if it=
&#39;s run on our build infrastructure, we upload its sstate to an sstate m=
irror. =A0sstate is still uploaded for the do_package_write_rpm task in cas=
e 1 for builds performed on our infrastructure. =A0That means the sstate, t=
hen, contains no rpm for the package in question. =A0This causes later buil=
ds to fail with the same error as in case 1 (the rpm isn&#39;t present when=
 the image needs it), but for a different reason (getting a hit on poisoned=
 sstate).</div>
<div style><br></div><div style>We do not know how to reproduce this proble=
m. =A0We think it&#39;s related to commit=A0f090c15 (in the poky repo), but=
 we haven&#39;t had much time to investigate further. =A0I suspect there is=
 only one bug to fix here (i.e., whatever is causing stamp files to incorre=
ctly exist), but since there are some number of unknowns here, I thought I&=
#39;d be better off describing the whole situation, just in case.</div>
<div style><br></div><div style>Has anyone else seen this? =A0Does anyone h=
ave ideas as to what&#39;s causing it?</div><div style><br></div><div style=
>Kind regards,</div><div style><br></div><div style>Jerrod</div></div>

--089e0111d9ca03fbb004df0ba0a7--
