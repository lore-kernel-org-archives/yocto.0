Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB6A0E002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:53:10 -0700 (PDT)
Received: from mail-qa0-f52.google.com ([209.85.216.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 23 Aug 2012 10:53:09 -0700
Received: by qabg14 with SMTP id g14so640244qab.4
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=eetPxLsTJU0RYzNLxRHgXzeavanEwNloaaOc99PD7XQ=;
	b=oEsbkCsrGAnGcSk6ujCP6mnwJiXSwBRzJkqKpz5YeHMMrVof3Znmr56BKagzqsJEar
	Q11Fk98kLgfN0cIEezVSN1k1+tidn686p34Fpq9f7z3iu60x+IGsukDTyfR4Rty6Ef6j
	/u7nfuzpzfL7Lql+9tDYhDhhLvjOGxL+rj8KvD1iNor0zCaKG8KrUsDh198aX3VoI+LQ
	LhybU2hayqPwmhlyTSdAsMnoaiwfrRKUg8xmoNAD34HquMDLiOzPcQPC9Pytb0Dy8MoG
	TBV+ihtpjF6aoE/9Hc3HnQHBdDrFiPsT14Kyins/EdZg4UBJ3axC6CvhXvncLi9uV5SN
	qwCg==
MIME-Version: 1.0
Received: by 10.229.137.68 with SMTP id v4mr1095965qct.51.1345744388826; Thu,
	23 Aug 2012 10:53:08 -0700 (PDT)
Received: by 10.229.103.143 with HTTP; Thu, 23 Aug 2012 10:53:08 -0700 (PDT)
Date: Thu, 23 Aug 2012 10:53:08 -0700
Message-ID: <CAPhnLPAQh0S64Frhn6cb8zyMRNWGYFV7zYupnfn=UtuAEoTk1A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmEsmxPyDDJZcO1MFii8Uw8yRtxRpIt3L/RwMYS5Upr+qFisPoJ+utnSimnQVnrPU4BZ4fV
Subject: autobuilder.yoctoproject.org scheduled downtime, bugfixing and impacts
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Aug 2012 17:53:11 -0000
Content-Type: multipart/alternative; boundary=002354790e5841287904c7f28802

--002354790e5841287904c7f28802
Content-Type: text/plain; charset=ISO-8859-1

All,

In order to get some bug fixes into the production autobuilders, I'm
scheduling at least two (maybe three), day long outages. One for Sunday,
Aug 26th and another for Sunday September 9th. There may also be a future
outage for September 16th.

Some of the upgrades planned:

August 26th:
1958: missing package at source and not in Yocto mirror
2818: Add Build Appliance Target to Autobuilder
2732: Better build failure email. (This will contain repo specific builds,
grep for ERROR. This will not contain exclude sanity if prior build failed).
2882: Include git hash in release tarball.
Split up LSB targets

Impacts:
- LSB targets: Impacts how waterfall will look. This is being done in order
to save a bit of time during builds and to make debugging easier. This will
impact buildhistory a bit and I will need to add 5 additional branches to
the buildhistory repo to account for LSB. I'm estimating about an hour or
so (around 10%) can be shaved off the build time by doing this. The
downside, of course, is that by adding additional targets, the waterfall
scroll will be greater. I'll try to alleviate this a bit by some css
changes but the take away here is the effect to buildhistory.

- Build failure email. Only build failures from branches on git://
git.yoctoproject.org/poky will be sent. As well, I'll be only sending out
certain lines of the failure. This isn't optimal, but I'd rather small
changes on the build emails in order to get feedback.

- Build appliance. We won't be doing this in the main nightly build as
there are some manual buildsteps to this. I'm still hashing the impact this
will have out and there is a slight chance this might slip to the 9th.

During these outages, only autobuilder will be effected. No build failure
emails will be sent to the yocto-builds list during testing. The outage
should last from 11am PST to 10pm PST.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--002354790e5841287904c7f28802
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>In order to get some bug fixes into the production autobuilders=
, I&#39;m scheduling at least two (maybe three), day long outages. One for =
Sunday, Aug 26th and another for Sunday September 9th. There may also be a =
future outage for September 16th.<br>
<br>Some of the upgrades planned:<br><br>August 26th:<br>1958: <span>=20
      <span>missing package at source and not in Yocto mirror</span></span>=
<br>2818: <span><span>Add Build Appliance Target to Autobuilder</span></spa=
n><br>
2732: <span>
      <span>Better build failure email. (This will contain repo=20
specific builds, grep for ERROR. This will not contain exclude sanity if
 prior build failed).</span></span><br>2882: <span><span>Include git hash i=
n release tarball. <br>
Split up LSB targets<br><br>Impacts:<br>- LSB targets: Impacts how waterfal=
l will look. This is being done in order to save a bit of time during build=
s and to make debugging easier. This will impact buildhistory a bit and I w=
ill need to add 5 additional branches to the buildhistory repo to account f=
or LSB. I&#39;m estimating about an hour or so (around 10%) can be shaved o=
ff the build time by doing this. The downside, of course, is that by adding=
 additional targets, the waterfall scroll will be greater. I&#39;ll try to =
alleviate this a bit by some css changes but the take away here is the effe=
ct to buildhistory.<br>
<br>- Build failure email. Only build failures from branches on git://<a hr=
ef=3D"http://git.yoctoproject.org/poky">git.yoctoproject.org/poky</a> will =
be sent. As well, I&#39;ll be only sending out certain lines of the failure=
. This isn&#39;t optimal, but I&#39;d rather small changes on the build ema=
ils in order to get feedback.<br>
<br>- Build appliance. We won&#39;t be doing this in the main nightly build=
 as there are some manual buildsteps to this. I&#39;m still hashing the imp=
act this will have out and there is a slight chance this might slip to the =
9th.<br>
</span></span><span><span></span></span><br>During these outages, only auto=
builder will be effected. No build failure emails will be sent to the yocto=
-builds list during testing. The outage should last from 11am PST to 10pm P=
ST.<br>
<br>-b<br><br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Relea=
se<br>

--002354790e5841287904c7f28802--
