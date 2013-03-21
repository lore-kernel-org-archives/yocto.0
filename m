Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76652E01472
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 20:12:52 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id cz11so2059565veb.31
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 20:12:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=KCHFYBM7mLFH9/aEKjmoctALN6heBC/u/J3fm9Eo/pM=;
	b=CLTYYgfqHbNhmJfd1sFS+wgBoHd1bUEVNV0QToZbcAOqLBfUyCahPG9f6G/d1cQ2ms
	fIqYAklzEDlKkTSeGyrB3FyqW/6XXe2NYsotDkhz7jYZ/TomJ/MDf1kzALSzfTh/Mhrz
	BlrbmsN3G3ZlD2B3It9CzrWWv1qVQU08B7rY7gKpcZ27kIB1vHaHgApEg2uCZX56C3D2
	v8yMe6sCLJXT1X9szjVtee8pPHQ+F1SpY3thEQBd7exFK5C9znuxNteVPtm++EH4xen0
	Q53nYtH/7BZ/httDUpKO/7r5Io74sh9Xi8tw3aCxcVRjcfYRd+8ZjRYz75Q0GKo9GNPI
	aeig==
MIME-Version: 1.0
X-Received: by 10.52.230.167 with SMTP id sz7mr9831542vdc.81.1363835571668;
	Wed, 20 Mar 2013 20:12:51 -0700 (PDT)
Received: by 10.52.174.165 with HTTP; Wed, 20 Mar 2013 20:12:51 -0700 (PDT)
Date: Wed, 20 Mar 2013 20:12:51 -0700
Message-ID: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQllhaLoXifT73SwaYQsWznCc/zwgdlukp06G86Crq11KZTwn8hLt4HUmola2BQWrBDB8TZK
Subject: Autobuilder migration status.
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
X-List-Received-Date: Thu, 21 Mar 2013 03:12:52 -0000
Content-Type: multipart/alternative; boundary=089e0111affec824fa04d866b60e

--089e0111affec824fa04d866b60e
Content-Type: text/plain; charset=ISO-8859-1

All,

I wanted to give people an update on the new autobuilder codebase and the
migration that occurred this weekend. As you may know, over the past few
months, I've been rewriting the autobuilder to be more maintainable,
faster, and easier to extend. As off this weekend, the new autobuilder code
is now active at http://autobuilder.yoctoproject.org:8011 and is the main
autobuilder for published artifacts. We still have the meta-intel builds
building off of the old autobuilder, however that will switch over later
this week. There is still one outstanding old feature that needs to be
implemented (buildhistory collection) and one known bug (relating to how
git archives derive hash values for their name) but both of those will be
fixed/added relatively soon. I'll also be implementing some additional
features (automailing QA teams when we have release builds starting is next
on that list so I quit forgetting to send out the email :) adding a
randomized builder, etc ) in the coming weeks. These will hopefully be
available prior to 1.4.

Unfortunately, the migration caused us to run a little bit behind in our
1.4_M5.rc build. There were some minor networking issues with one builder
that Michael Halstead fixed. The new system also exposed some race
conditions within sanity testing which Richard has taken the past day or so
to squish. And lastly the the migration exposed some bugs in the
autobuilder code base. While bugs were not entirely unexpected, this did
delay the 1.4_M5.rc1 build slightly. Those bugs (except for the git archive
naming) should be resolved as of this afternoon and I believe Richard has
fixed sanity testing. Of course, there may be more things we uncover, but
they will be fixed as we uncover them.

There is one new feature that I want to make people aware of. We now have
the ability to "mix and match" layer branches. Before, I required the
maintainers of every layer to maintain a 1.x_Mx release branch. I can now
utilize other branches with the new codebase (ie build 1.4_M5 poky
utilizing master for meta-intel). I would prefer it if people still
maintained milestone release branches, however, if you decide to change how
you want to branch, I can support your workflow as long as you let me know.
I will still want people to maintain a final release branch (danny, denzil,
etc), however, we can now support different branching policies.

If you want to start up your own autobuilder, please be aware that the
config file format is, at this moment, only partially documented. I'll be
working on full documentation this coming month in preparation for the 1.4
release. However, there are enough code samples and sample configs that
creating a new setup is fairly easy. buildset-config and
lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py are your
friends here.

Current plans are to have meta-intel up tomorrow on the new code base, and
bug fixing/feature addition continuing for the next few days. If you have
any questions, please, let me know. Thanks.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--089e0111affec824fa04d866b60e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>I wanted to give people an update on the new autobuilder codeba=
se and the migration that occurred this weekend. As you may know, over the =
past few months, I&#39;ve been rewriting the autobuilder to be more maintai=
nable, faster, and easier to extend. As off this weekend, the new autobuild=
er code is now active at <a href=3D"http://autobuilder.yoctoproject.org:801=
1" target=3D"_blank">http://autobuilder.yoctoproject.org:8011</a> and is th=
e main autobuilder for published artifacts. We still have the meta-intel bu=
ilds building off of the old autobuilder, however that will switch over lat=
er this week. There is still one outstanding old feature that needs to be i=
mplemented (buildhistory collection) and one known bug (relating to how git=
 archives derive hash values for their name) but both of those will be fixe=
d/added relatively soon. I&#39;ll also be implementing some additional feat=
ures (automailing QA teams when we have release builds starting is next on =
that list so I quit forgetting to send out the email :) adding a randomized=
 builder, etc ) in the coming weeks. These will hopefully be available prio=
r to 1.4.<br>


<br>Unfortunately, the migration caused us to run a little bit behind in ou=
r 1.4_M5.rc build. There were some minor networking issues with one builder=
 that Michael Halstead fixed. The new system also exposed some race conditi=
ons within sanity testing which Richard has taken the past day or so to squ=
ish. And lastly the the migration exposed some bugs in the autobuilder code=
 base. While bugs were not entirely unexpected, this did delay the 1.4_M5.r=
c1 build slightly. Those bugs (except for the git archive naming) should be=
 resolved as of this afternoon and I believe Richard has fixed sanity testi=
ng. Of course, there may be more things we uncover, but they will be fixed =
as we uncover them.<br>


<br>There is one new feature that I want to make people aware of. We now ha=
ve the ability to &quot;mix and match&quot; layer branches. Before, I requi=
red the maintainers of every layer to maintain a 1.x_Mx release branch. I c=
an now utilize other branches with the new codebase (ie build 1.4_M5 poky u=
tilizing master for meta-intel). I would prefer it if people still maintain=
ed milestone release branches, however, if you decide to change how you wan=
t to branch, I can support your workflow as long as you let me know. I will=
 still want people to maintain a final release branch (danny, denzil, etc),=
 however, we can now support different branching policies.<br>


<br>If you want to start up your own autobuilder, please be aware that the =
config file format is, at this moment, only partially documented. I&#39;ll =
be working on full documentation this coming month in preparation for the 1=
.4 release. However, there are enough code samples and sample configs that =
creating a new setup is fairly easy. buildset-config and<br>


lib/python2.7/site-packages/autobuilder/buildsteps/HelloWorld.py are your f=
riends here.<br><br>Current plans are to have meta-intel up tomorrow on the=
 new code base, and bug fixing/feature addition continuing for the next few=
 days. If you have any questions, please, let me know. Thanks.<br clear=3D"=
all">

<br>-- <br>Elizabeth Flanagan<br>
Yocto Project<br>Build and Release

--089e0111affec824fa04d866b60e--
