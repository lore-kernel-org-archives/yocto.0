Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB5B6E0134D
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 14:59:13 -0800 (PST)
Received: from mail-tul01m020-f180.google.com ([209.85.214.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 10 Jan 2012 14:59:12 -0800
Received: by mail-tul01m020-f180.google.com with SMTP id up3so128066obb.25
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 14:59:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.183.166 with SMTP id en6mr4425841igc.7.1326236352615; Tue,
	10 Jan 2012 14:59:12 -0800 (PST)
Received: by 10.50.237.98 with HTTP; Tue, 10 Jan 2012 14:59:12 -0800 (PST)
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A257C184A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257C184A@ORSMSX101.amr.corp.intel.com>
Date: Tue, 10 Jan 2012 14:59:12 -0800
Message-ID: <CAPhnLPB9r+M47+_tNYYthe5fDr3VDeD6A255L790BgUsbybszw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Liu, Song" <song.liu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto SWAT team kickoff
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
X-List-Received-Date: Tue, 10 Jan 2012 22:59:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 10, 2012 at 7:24 AM, Liu, Song <song.liu@intel.com> wrote:
> Hi all,
>
> We would like to kick off the Yocto SWAT team this week. Please see the f=
ollowing for the purpose of the SWAT team and let me know if you have any q=
uestions or concerns. We welcome any community participation on the SWAT te=
am. At the same time, I will work with the team to make sure thing get star=
ted.
>
> Thanks,
> Song
>
> YOCTO SWAT TEAM
>
> GOAL
>
> The assembly of the Yocto Project SWAT team is mainly to tackle urgent te=
chnical problems that break build on the master branch or major release bra=
nches in a timely manner, thus to maintain the stability of the master and =
release branch. The SWAT team includes volunteers or appointed members of t=
he Yocto Project team. Community members can also volunteer to be part of t=
he SWAT team.
>
> SCOPE OF RESPONSIBILITY
>
> Whenever a build (nightly build, weekly build, release build) fails, the =
SWAT team is responsible for ensuring the necessary debugging occurs and or=
ganizing resources to solve the issue and ensure successful builds. If reso=
lving the issues requires schedule or resource adjustment, the SWAT team sh=
ould work with program and development management to accommodate the change=
 in the overall planning.
>
> MEMBERS:
>
> * Darren Hart (US)
> * Elizabeth Flanagan (US)
> * Paul Eggleton (UK)
> * Jessica Zhang (US)
> * Dexuan Cui (CN)
> * Saul Wold (US)
> * Richard Purdie (UK)
>
> ROTATING CHAIR:
>
> A chairperson role will be rotated among team members each week. The Chai=
rperson should monitor the build status for the entire week. Whenever a bui=
ld is broken, the Chairperson should do necessary debugging and organize re=
sources to solve the problems in a timely manner to meet the overall projec=
t and release schedule. The Chairperson serves as the focal point of the SW=
AT team to external people such as program managers or development managers=
.
>
> ROTATING PROCESS
>
> Each week on a specific day (propose Monday), a SWAT team meeting could b=
e called at the chairperson's discretion to discuss current issues and stat=
us. Either during the meeting or offline, the Chairperson of last week will=
 identify and pass the role to another person in the team. The program mana=
ger should be notified at the same time. Usually, this will take a simple r=
ound robin order. In case the next person cannot take the role due to tight=
 schedule, vacation or some other reasons, the role will be passed to the n=
ext person.
>
> The current Chairperson's full name and email address will be published o=
n the project status wiki page: https://wiki.yoctoproject.org/wiki/Yocto_Pr=
oject_v1.2_Status under "Current SWAT team Chairperson" section.
>
> BKM (RICHARD PURDIE)
>
> When looking at a failure, the first question is what the baseline was an=
d what changed. If there were recent known good builds it helps to narrow d=
own the number of changes that were likely responsible for the failure. It'=
s also useful to note if the build was from scratch or from existing sstate=
 files. You can tell by seeing what "setscene" tasks run in the log.
>
> The primary responsibility is to ensure that any failures are categorized=
 correctly and that the right people get to know about them.
>
> It's important *someone* is then tasked with fixing it. Image failures ar=
e particular tricky since its likely some component of the image that faile=
d and the question is then whether that component changed recently, whether=
 it was some kind of core functionality at fault and so on.
>
> Ideally we want to get the failure reported to the person who knows somet=
hing about the area and can come up with a fix without it distracting them =
too much.
> As a secondary responsibility, its often helpful for to triage the failur=
e. This might mean documenting a way to reproduce the failure outside a ful=
l build and/or documenting how the failure is happening and maybe even prop=
ose a fix.
>
> Sometimes failures are difficult to understand and can require direct ssh=
 access to the autobuilder so the issue can be debugged passively on the sy=
stem to examine contents of files and so forth. If doing this ensure you do=
n't change any of the file system for example adding files that couldn't th=
en be deleted by the autobuilder when it rebuilds.

It is actually best for people to copy log files and the like to a
private place. As the autobuilder runs 24/7 you do not want to run the
risk of having work removed in the middle. Keep in mind, however, that
while we are not particularly space constrained at the moment, it is
best if people are diligent about cleaning up after themselves.

>
> Rarely, "live" debugging might be needed where you'd su to the pokybuild =
user and run a build manually to see the failure in real time. If doing thi=
s, ensure you only create files as the pokybuild user and you are careful n=
ot to generate sstate packages which shouldn't be present or any other bad =
state that might get reused. In general its recommended not to do "live" de=
bugging. This can be escalated to RP/Saul/Beth if needed.

Some additions here that are autobuilder specific. Let me reiterate.
Live debugging is generally something we try to avoid doing. It should
only occur if an issue can only be reproduced on the autobuilder.

That said, it is sometimes necessary, so let me give folks an overview
of our autobuilder layout and some BKMs specific to it.

Targets:
We currently have 5 yocto autobuilders that are used to run nightly.
ab01, ab02, ab04, ab05, ab06. Each of these run two build slaves.

Nightly is a "dummy" buildset that does relatively few things and is
only ever run on ab01. It mainly does universe fetch, building
adt-installer and building the eclipse plugin. It's main function is
to trigger nightly-${ARCH} and wait until they're done. ab02, ab04,
ab05, ab06 are what is used to run this pool of nightly arch builds.
NOTE: Just because nightly-* ran on ab04 the last time does not mean
it will again. It's semi random. In order to find out what host you
need to log into, please look for the buildstep that says:

Building on
autobuilder04
Linux autobuilder04 2.6.37.6-0.9-default #1 SMP 2011-10-19 22:33:27
+0200 x86_64 x86_64 x86_64 GNU/Linux

Directory Locations:
Currently, we share sstate-cache and downloads between these slaves
via NAS. One thing you should know is that poky's $TMPDIR ends up
being moved to ~pokybuild/yocto-autobuilder/yocto-slave/nightly-${ARCH}/bui=
ld/build/nonlsb-tmp
and poky-lsb is left in the above path's tmp. So when you are
debugging, keep this in mind. This will probably change to something a
little more obvious, but for now, that is where they exist. I'll alert
everyone when this change occurs.

Debugging:
If you need to do live debugging on the autobuilder, you want to:

- Check that nothing is running on the builder:
http://autobuilder.yoctoproject.org:8010/buildslaves

- If nothing is running, remove the buildslave from the pool. Please
let either myself or sgw know if you're planning on doing this.
Email/IRC is fine.

sudo su - pokybuild
cd yocto-autobuilder
. ./yocto-autobuilder-setup
./yocto-stop-autobuilder slave

This will ensure that the directory you are working in doesn't
disappear out from under you.

Please make sure that after you are done, you restart:

sudo su - pokybuild
cd yocto-autobuilder
. ./yocto-autobuilder-setup
./yocto-start-autobuilder slave

Caveats:

- NEVER clean sstate (cleanall, cleansstate). As sstate is shared
across builders, you do not want it wiped like this. If you need to
toss sstate, let me know. We try not to remove it as it speeds up
build times dramatically and it's fairly huge and takes a while to
wipe. Sometimes it's unavoidable though.

- NEVER stop ab01's master/slave. If you need to debug something on
ab01, let sgw, RP and I know. As we're the only three who can kick
builds off, it's really important we all know so we don't tromp on
live debugging. I keep an IRC window open most times, so, ping me
there/email me, call me if this is going to happen. Whatever you do,
if you need to work on ab01 one of us must know about it *and* have
given the ok.

>
> To fulfill the primary responsibility, it's suggested that bugs are opene=
d on the bugzilla for each type of failure. This way, appropriate people ca=
n be brought into the discussion and a specific owner of the failure can be=
 assigned. Replying to the build failure with the bug ID and also bringing =
the bug to the attention of anyone you suspect was responsible for the prob=
lem are also good practices.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Elizabeth Flanagan
Yocto Project
Build and Release

