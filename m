Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B13E3E015BA
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:13:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jun 2013 22:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,848,1363158000"; 
	d="scan'208,217";a="351838407"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2013 22:12:55 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.91]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.224]) with mapi id
	14.03.0123.003; Tue, 11 Jun 2013 22:12:55 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	11, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5nK2SCuVW9atOPScmNyavbVTKTUAAAAnhw
Date: Wed, 12 Jun 2013 05:12:55 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EE30A34@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 11, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 12 Jun 2013 05:13:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EE30A34ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE30A34ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Andrei, Darren, Cristian, Foo Chien, ScottR, Richard, TomZ, KevinS, DaveST,=
 Jessica, Ross, Belen, Paul, LaurentiuP, Corneliu, Nitin, BruceA, SongL

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.4.1 status (Paul)
  . RC1 build is done last night. One failure, parallel build/install with =
systemd. Still investigating, it's uncommon race condition.
  . QA can get started on this week. Paul's call when to pass the build to =
QA.
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  . Bug fixing: open bugs: 299, fixed 33.
  . WRS QA report is out: 4566 routerstation pro issue. 3936/3937: beaglebo=
ard problems.
  . M1 report is coming out. Expect a release readiness meeting sometime th=
is week. In the morning US time.
  . Second week of M2, if you have not done the planning for M2, please do =
so.
  . Patches came out last Friday. Bitbake shell scripts changes, build own =
version of tar/git packages. Reached a point where we require minimum versi=
on for python, tar, git etc. python 2.7.3 now. We can use tarballs for thes=
e packages on systems not meeting the requirement. Will use same mechanism =
to upgrade from 2.7.3 to python 3. which can get rid of messy compatibility=
 code.
  . AB Plan: build master with installed tarballs. Take sanity test patches=
 and run MUT sometime today.
* SWAT team rotation: Cristian -> Andrei Dinu
* Opens - 10 min
* Team Sharing - 20 min
 - Cristian: adding file browser in build appliance. Associating it with di=
fferent type of files. File manager added, there's some progress with scree=
n shots in bugzilla. 2370.
 - MichaelH: new security update on the website, some general improvements =
are in place. Working on bugzilla extensions for doc change process . New s=
dk generated on master, running python 2.6.6. Release timeline added to the=
 graph, will have those on the charts this week. (Great work, Michael!).
 - Darren: minnow update. RC3 released for the BSP. Firmware release is RC4=
. working through production process. Hardware solid, firmware working. Wat=
ch the websites for the final launch day.





--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE30A34ORSMSX108amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Andrei, Darren, Cristian, Foo Chien, ScottR, Richard, TomZ, KevinS, Da=
veST, Jessica, Ross, Belen, Paul, LaurentiuP, Corneliu, Nitin, BruceA, Song=
L</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.4.1 status (Paul)</div>
<div>&nbsp; . RC1 build is done last night. One failure, parallel build/ins=
tall with systemd. Still investigating, it's uncommon race condition. </div=
>
<div>&nbsp; . QA can get started on this week. Paul's call when to pass the=
 build to QA. </div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; . Bug fixing: open bugs: 299, fixed 33. </div>
<div>&nbsp; . WRS QA report is out: 4566 routerstation pro issue. 3936/3937=
: beagleboard problems. </div>
<div>&nbsp; . M1 report is coming out. Expect a release readiness meeting s=
ometime this week. In the morning US time.</div>
<div>&nbsp; . Second week of M2, if you have not done the planning for M2, =
please do so.</div>
<div>&nbsp; . Patches came out last Friday. Bitbake shell scripts changes, =
build own version of tar/git packages. Reached a point where we require min=
imum version for python, tar, git etc. python 2.7.3 now. We can use tarball=
s for these packages on systems not meeting
the requirement. Will use same mechanism to upgrade from 2.7.3 to python 3.=
 which can get rid of messy compatibility code. </div>
<div>&nbsp; . AB Plan: build master with installed tarballs. Take sanity te=
st patches and run MUT sometime today.</div>
<div>* SWAT team rotation: Cristian -&gt; Andrei Dinu</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div> - Cristian: adding file browser in build appliance. Associating it wi=
th different type of files. File manager added, there's some progress with =
screen shots in bugzilla. 2370.</div>
<div> - MichaelH: new security update on the website, some general improvem=
ents are in place. Working on bugzilla extensions for doc change process . =
New sdk generated on master, running python 2.6.6. Release timeline added t=
o the graph, will have those on
the charts this week. (Great work, Michael!).</div>
<div> - Darren: minnow update. RC3 released for the BSP. Firmware release i=
s RC4. working through production process. Hardware solid, firmware working=
. Watch the websites for the final launch day.</div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EE30A34ORSMSX108amrcor_--
