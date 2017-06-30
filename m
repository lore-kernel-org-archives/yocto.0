Return-Path: <michael.ho@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4FC1E00BB1; Fri, 30 Jun 2017 15:44:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B959E00B9F
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 15:44:51 -0700 (PDT)
Received: from [10.40.100.13] (port=8465 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1.2:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Michael.Ho@bmw-carit.de>)
	id 1dR4ee-0000u6-15; Sat, 01 Jul 2017 00:44:48 +0200
Received: from CIT-HM8-EX01.bmw-carit.intra (10.40.100.13) by
	CIT-HM8-EX01.bmw-carit.intra (10.40.100.13) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Sat, 1 Jul 2017 00:44:48 +0200
Received: from CIT-HM8-EX01.bmw-carit.intra ([fe80::dd00:8c64:6c76:7244]) by
	CIT-HM8-EX01.bmw-carit.intra ([fe80::dd00:8c64:6c76:7244%12]) with mapi
	id 15.00.1178.000; Sat, 1 Jul 2017 00:44:48 +0200
X-CTCH-RefID: str=0001.0A0C0202.5956D460.004A, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Michael Ho <Michael.Ho@bmw-carit.de>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Thread-Topic: [yocto] RFC: Backwards compatibility checking sstate-cache
Thread-Index: AQHS8YVx0AkhV90UzU6NiV6x+tgB0aI9gGLPgAB4MCo=
Date: Fri, 30 Jun 2017 22:44:47 +0000
Message-ID: <1498862686964.87543@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>,
	<5C0B55E2-E247-4B7D-8042-30F4E94F3650@sierrawireless.com>
In-Reply-To: <5C0B55E2-E247-4B7D-8042-30F4E94F3650@sierrawireless.com>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.242.6.3]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Fri, 30 Jun 2017 22:44:53 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Darcy,=0A=
=0A=
Thank you for the feedback. Actually, depending on what exactly you mean by=
 user=0A=
supplied script, this patch set for the concept already supports that.=0A=
=0A=
I'm not sure if my attachments got skewered by the mailing list or not but =
if=0A=
you can see my patch "0009-recipes-cdepends-test-example-recipe-framework-f=
or-u.patch",=0A=
you can see an example implementation and what needs to be done to introduc=
e a=0A=
custom compatibility checker.=0A=
=0A=
This patch set provides the hooks for Bitbake and recipes to communicate ab=
out=0A=
the compatible dependency checker it needs to use. In essence, the recipes =
point=0A=
Bitbake to a python module that it can load from any meta-layer lib folder =
and=0A=
run a predefined function, passing the directories of the compatibility rep=
orts=0A=
(the latest from the freshly built recipe, and the older from the sstate ca=
che=0A=
of the child recipe) which are also defined by the recipes. This python fun=
ction=0A=
can then do whatever it wants with the compatibility data it has access to =
(i.e.=0A=
call a custom user script to look at the report information) and return=0A=
"incompatible" or "compatible" to control the RunQueue. Bitbake will rebuil=
d if=0A=
incompatible is returned, and not rebuild if compatible is returned. It can=
 also=0A=
return a different value which Bitbake will interpret as a compatibility er=
ror=0A=
(e.g. binary delivery recipe that will be incompatible so you want to crash=
 the=0A=
build instead of detecting the error at runtime).=0A=
=0A=
Therefore, the recipes themselves define all the compatibility report=0A=
information and how to do the comparison, allowing for "user supplied hook=
=0A=
scripts" which can be defined at any meta-layer level.=0A=
=0A=
In the case you're hinting towards, you would need to implement the followi=
ng=0A=
which can already hook into these patches:=0A=
1. a report generation function for the kernel recipe to output the data yo=
u=0A=
   need to compare - i.e. a compatibility report (a directory of files) tha=
t=0A=
   consists of the file checksums of the kernel headers stored in a text fi=
le=0A=
   and the PV of the recipe stored in another text file - to do so the kern=
el=0A=
   recipe merely needs to inherit compatible-depends-report and add a funct=
ion=0A=
   that outputs these report files and add this function to the prefuncs of=
 the=0A=
   task do_compatibility_report.=0A=
2. A python function to compare the different versions of the report format=
=0A=
   suggested in (1).=0A=
3. Modifying the child recipes to add the kernel to CDEPENDS and point Bitb=
ake=0A=
   to the python function by setting the variable CDEPENDS_TOOL_xxx for the=
=0A=
   kernel provider.=0A=
=0A=
If you look at the patch 0009, you'll see the example is fairly simple but=
=0A=
similar to what I explained above. The python function added to the lib fol=
der=0A=
is the actual compatibility comparison function and more can be easily=0A=
introduced in any meta-layer to match the compatibility checking situation.=
 (If=0A=
interested, I can share another example compatibility checker that uses the=
 PV=0A=
of a recipe to do rebuild decisions).=0A=
=0A=
Happy to answer in more detail if you require, just let me know.=0A=
=0A=
Thank you.=0A=
=0A=
Kind regards,=0A=
Michael Ho=0A=
=0A=
--=0A=
BMW Car IT GmbH=0A=
Michael Ho=0A=
Spezialist Entwicklung - Linux Software Integration=0A=
Lise-Meitner-Str. 14=0A=
89081 Ulm=0A=
=0A=
Tel.: +49 731 3780 4071=0A=
Mobil: +49 152 5498 0471=0A=
Fax: +49-731-37804-001=0A=
Mail: michael.ho@bmw-carit.de=0A=
Web: http://www.bmw-carit.de=0A=
--------------------------------------------------------=0A=
BMW Car IT GmbH=0A=
Gech=E4ftsf=FChrer: Kai-Uwe Balszuweit und Alexis Trolin=0A=
Sitz und Registergericht: M=FCnchen HRB 134810=0A=
--------------------------------------------------------    =0A=
=0A=
From: Darcy Watkins <dwatkins@sierrawireless.com>=0A=
Sent: 30 June 2017 17:01=0A=
To: Michael Ho=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] RFC: Backwards compatibility checking sstate-cache=0A=
=A0 =0A=
=0A=
Hi,=0A=
=0A=
=0A=
It would also be nice to add some sort of hook script support where user su=
pplied hook script performs a check and returns either a "yes it's OK" or a=
 "no have to rebuild it" status.=0A=
=A0And then tie that into the dependency logic.=0A=
=0A=
=0A=
I have unusual use case where I need to have a dependency on changes to the=
 kernel version, but not necessarily something triggered after every kernel=
 rebuild. =A0 The package I'm building will trigger OpenSSL and a whole wha=
ck of  stuff each time it rebuilds.=0A=
=0A=
=0A=
It depends on the kernel version and the headers, but shouldn't need to dep=
end on every patch or kconfig change that happens.=0A=
=0A=
=0A=
=0A=
___=0A=
=0A=
=0A=
=0A=
Regards,=0A=
=A0=0A=
Darcy=0A=
=A0=0A=
Darcy Watkins :: =A0Senior Staff Engineer, Firmware=0A=
=A0=0A=
SIERRA WIRELESS=0A=
Direct=A0=A0+1 604 233 7989=A0 =A0::=A0=A0Fax=A0=A0+1 604 231 1109=A0 ::=A0=
=A0Main=A0=A0+1  604 231 1100=0A=
13811 Wireless Way=A0 ::=A0Richmond, BC Canada V6V 3A4=0A=
[M4]=0A=
dwatkins@sierrawireless.com=A0::=A0www.sierrawireless.com=A0::=A0www.inmoti=
ontechnology.com=0A=
=A0=0A=
  =0A=
=0A=
On Jun 30, 2017, at 2:53 AM, Michael Ho <Michael.Ho@bmw-carit.de> wrote:=0A=
=0A=
 =0A=
Hi, at BMW Car IT we are working on an experimental feature to improve ssta=
te=0A=
cache hits and we are looking for comments on the approach who might have s=
ome=0A=
insights to the problem and seeing if anyone is interested in the feature f=
or=0A=
mainline.=0A=
=0A=
The sstate-cache of a recipe is tied closely to its build dependencies, as =
the=0A=
signature generated for a task includes all parent task's signatures as par=
t of=0A=
the signature information. This means that when changes occur in the parent=
=0A=
recipes, even if insignificant, all children recipes that have valid sstate=
=0A=
cache must invalidate their sstate cache objects.=0A=
=0A=
What this patchset does is propose to add another optional variable to reci=
pes,=0A=
CDEPENDS, which acts like DEPENDS for all RunQueue purposes but for signatu=
re=0A=
generation it excludes any parent tasks that come from dependencies listed =
in=0A=
it. This is to break the signature change domino effect.=0A=
=0A=
This patchset also proposes modifying RunQueue to then be able to run a=0A=
compatibility checker during task execution phase for recipes and tasks tha=
t use=0A=
CDEPENDS and allow for deciding to re-execute a task despite being covered =
by=0A=
sstate-cache.=0A=
=0A=
The patchset is based on the jethro branch for the poky repository, as this=
 is=0A=
the branch that we are using. =A0If the general idea sounds good, we can co=
nsider=0A=
porting it to master.=0A=
=0A=
Included is an patch that adds an example recipe and compatibility checker,=
=0A=
where compatibility is based on the file checksums of the parent recipes=0A=
packages. An example recipe, cdepends-test1, generates a compatibility repo=
rt=0A=
containing the file checksums of all files that it packages and which file =
paths=0A=
they are at. Another recipe, cdepends-test2, can then strip this compatibil=
ity=0A=
report to the minimal files it needs to be consistent and can compare the l=
atest=0A=
checksums it used to configure/compile/install with and if they have change=
d,=0A=
trigger a rebuild. If not, the previous version restored from sstate-cache =
is=0A=
used.=0A=
=0A=
We are still experimenting with the usages of this, including the use of ha=
ving=0A=
abi-compliance-checker to compare the ABI of shared libraries as a compatib=
ility=0A=
checker during RunQueue and using the results to avoid rebuilding child rec=
ipes=0A=
when the .so files they depend on are still compatible. Example use cases o=
f=0A=
this are allowing recipes which provide multiple shared libraries to change=
 a=0A=
single .so file without rebuilding all its children that depend on the othe=
r=0A=
shared libraries but not the one that changed.=0A=
=0A=
We're aware of the SIGGEN_EXCLUDERECIPES_ABISAFE feature but feel it didn't=
 meet=0A=
the feature requirements of what this compatibility checker callback is doi=
ng,=0A=
although maybe when porting to master we could refactor to make better use =
of=0A=
the work already done there. The current implementation is a bit hacky but=
=0A=
comments would be appreciated in regards to if the concept is feasible and =
if=0A=
people are interested in making use of it and their use cases.=0A=
=0A=
Kind regards,=0A=
Michael Ho=0A=
=0A=
--=0A=
BMW Car IT GmbH=0A=
Michael Ho=0A=
Spezialist Entwicklung - Linux Software Integration=0A=
Lise-Meitner-Str. 14=0A=
89081 Ulm=0A=
=0A=
Tel.: +49 731 3780 4071=0A=
Mobil: +49 152 5498 0471=0A=
Fax: +49-731-37804-001=0A=
Mail: michael.ho@bmw-carit.de=0A=
Web: http://www.bmw-carit.de=0A=
--------------------------------------------------------=0A=
BMW Car IT GmbH=0A=
Gech=E4ftsf=FChrer: Kai-Uwe Balszuweit und Alexis Trolin=0A=
Sitz und Registergericht: M=FCnchen HRB 134810=0A=
--------------------------------------------------------=0A=
  =0A=
<0001-cache.py-add-support-for-CDEPENDS.patch>  =0A=
<0002-siggen.py-add-support-for-CDEPENDS.patch>  =0A=
<0003-runqueue.py-add-support-for-CDEPENDS.patch>  =0A=
<0004-taskdata.py-add-support-for-CDEPENDS.patch>  =0A=
<0005-rm_work.bbclass-add-exception-for-do_cache_compatibi.patch>  =0A=
<0006-native.bbclass-add-support-for-CDEPENDS.patch>  =0A=
<0007-nativesdk.bbclass-add-support-for-CDEPENDS.patch>  =0A=
<0008-classes-add-bbclasses-compatible-depends-and-compati.patch>  =0A=
<0009-recipes-cdepends-test-example-recipe-framework-for-u.patch>  =0A=
-- =0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=
     =

