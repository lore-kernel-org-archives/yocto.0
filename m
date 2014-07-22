Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D71EBE00524; Tue, 22 Jul 2014 09:20:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.138.229.27 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vaduvajanalexandru[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm34.bullet.mail.ne1.yahoo.com (nm34.bullet.mail.ne1.yahoo.com
	[98.138.229.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2DF3E00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:20:47 -0700 (PDT)
Received: from [127.0.0.1] by nm34.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:20:46 -0000
Received: from [98.138.101.131] by nm34.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:18:03 -0000
Received: from [98.138.89.249] by tm19.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:18:03 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:18:03 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 261740.70809.bm@omp1041.mail.ne1.yahoo.com
Received: (qmail 53116 invoked by uid 60001); 22 Jul 2014 16:18:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1406045883; bh=OS+72wVDoy5w9NfA8qXXAMgulzZEIoUD9wUB350DuuU=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=ObQw067DFZenGRm5hzdILIfqpDeBZOQrO1bebKISDfqBXHat93XJyhO1+J5/aWzUtGT4pFZntTNvHsO/94pV+LiGI872MIi9AYrRZg8xQ5/FPKH/tTZ/nKxOuB54MabGAJCRgpbgqafeisVAVLMBCQKuc028QzH2g2Yi9nLAM6k=
X-YMail-OSG: XXecIdcVM1kCziK31IoWVLBPotm3fvtxLmS1xhsLfUXFTC_
	3bhfjb.JtCrGYALYT0BBQryEF36QVVzuC.opESUcflVzhLbt4.K5IRAHqgca
	5HnkvQbwSICeYN24msBddOSvOauK5eKzUsXSR4ymNTKwxvYkpFKPUxgwv1fq
	tQF0NHpuH99eJqBy7vsN0qHpMy.RmqrAs.GCkiyLU4ODzOQOmWEKEL26_dUS
	03KB_Eb0.Po.m5snN_z9lW7Eh.9Av2apY5XHM87eeVgA67DX82s9HgIfJxf0
	ATtOBIIHl0QmDcB0udklgeaCbQKY5G_.orrZ_fnTmYIazUQD_Ae6RsOoSto.
	dFbBRjdSW8Q..jmeRvCsd1mx41GOdlWSPt1Uv1xYheo9Axmb2Rvgi563Bbdr
	UIY7pehTCMzbnnEYcAqB4jMWXr3e9LtgaEexNsPpBU4ZVKtBXJsscL7rFIQW
	QXtE9DeztDe8GPy6n6NfofGrgBJNB00RTnSmfQZJfhaCQPHZ0DuHnXe3o4Va
	LluPgrIMNqx5HxWwtX2Xlv2GML00vc_QuKfEW1L25NgElIPK5XuKCM75x9rJ
	DFbju1ksyCZNLwqFwqy6BcMqT1gxZ9EkgBnxxh5sxJNQasBgiAn75k51nC.b
	uESrwts2gLRBtsch97DffyRc-
Received: from [141.85.0.106] by web122504.mail.ne1.yahoo.com via HTTP;
	Tue, 22 Jul 2014 09:18:02 PDT
X-Rocket-MIMEInfo: 002.001,
	T0ssIHRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uIGFuZCB5b3VyIGNvbnRyaWJ1dGlvbi4KSSBhbSBub3Qgb3Bwb3NpbmcgdG8geW91ciBzdWdnZXN0aW9uIGJ1dCBpbiB0aGUgc2FtZSB0aW1lIEkgYmVsaWV2ZSB0aGF0IHRoaXMgcmVjaXBlIHNob3VsZCBhcHBlYXIgaW4gYSBwcm9wZXJseSBtYWludGFpbmVkIGxheWVyLCBpbiB0aGUgY2FzZSB5b3VyIGxheWVyIGRpc2FwcGVhcnMgdG9tb3Jyb3cuIEFzIHlvdSBtZW50aW9uZWQgdGhpcyBpbmZvcm1hdGlvbiBzaG91bGQgYXBwZWFyIGluIHRoZSBtYWlubGkBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.195.680
References: <CALZ2gZV=pDM5kE-VDdEp1xJRV+ig7q5ix+cFU9vjpvJg7x=o5Q@mail.gmail.com>	<D7AB900AA081FD46B179E331E9F703E8907D76@SESTOEX04.enea.se>	<6B17198E316BD04DBB6F6DD263019AE125573C4A@SESTOEX04.enea.se>	<2D55BFC2C836774DB0F2FE17BECC006C28993A30@SESTOEX04.enea.se>	<D7AB900AA081FD46B179E331E9F703E8908E42@SESTOEX04.enea.se>	<DDB0C57E45663A458C5CACB7B5688BC21D6C5C0D@SESTOEX04.enea.se>	<D7AB900AA081FD46B179E331E9F703E8908E9C@SESTOEX04.enea.se>	<DDB0C57E45663A458C5CACB7B5688BC21D6C8818@SESTOEX04.enea.se>	<CA+YB3rY8TifZWKrm5FJc871WMtzP-ZeiCZJS9ceSa3uUoR9TGA@mail.gmail.com>	<DDB0C57E45663A458C5CACB7B5688BC21D6CAE0B@SESTOEX04.enea.se>	<CANBf+V17Q0P98d7632+FX3_W1RsT3ZR=ZR4W1mG4iDJ-CRLnZw@mail.gmail.com>	<DDB0C57E45663A458C5CACB7B5688BC21D6D3410@SESTOEX04.enea.se>
	<53CE8923.6030307@mvista.com> 
Message-ID: <1406045882.39143.YahooMailNeo@web122504.mail.ne1.yahoo.com>
Date: Tue, 22 Jul 2014 09:18:02 -0700
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: akuster <akuster@mvista.com>, Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Joe MacDonald <joe@deserted.net>
In-Reply-To: <53CE8923.6030307@mvista.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] Carrier Grade layer proposal
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Jul 2014 16:20:51 -0000
Content-Type: multipart/alternative;
	boundary="981719177-77766978-1406045882=:39143"

--981719177-77766978-1406045882=:39143
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

OK, thanks for the information and your contribution.=0AI am not opposing t=
o your suggestion but in the same time I believe that this recipe should ap=
pear in a properly maintained layer, in the case your layer disappears tomo=
rrow. As you mentioned this information should appear in the mainline meta-=
security layer. In that case I will use the recipe without adding it into m=
eta-cgl because we do not plan to have duplicate recipes available in meta-=
cgl layer if this is not applicable.=0A=0AAlex=0A=0A=0A=0AOn Tuesday, July =
22, 2014 6:54 PM, akuster <akuster@mvista.com> wrote:=0A =0A=0A=0AAlexandru=
,=0A=0ARegarding=A0 a few packages in category C&D.=0A=0AI have latest samh=
ain building as well as grsecurity (pax patches =0Aapplied against 3.14.12)=
 in a branch in my meta-security tree.=A0 I have a =0Abit more testing to d=
o before I was going to post them.=0A=0Agrsecurity and samhain aren't CGL s=
pecific and they maybe belong in a =0Amore generalize layer? just a thought=
.=0A=0Aregards,=0AArmin=0A=0A=0A=0AOn 07/22/2014 03:52 AM, Alexandru Vaduva=
 wrote:=0A> Hello Joe,=0A>=0A> Here at Enea we are preparing the steps need=
ed for publishing the layer on the open embedded meta layers initiative: ht=
tp://layers.openembedded.org/layerindex/branch/master/layers/=0A> For this =
we started working at a web page that should contain all the relevant infor=
mation regarding meta-cgl. It will be available in a couple of weeks. Until=
 then the layer will be available internally and the patches should=0A> be =
submitted as the README states: on the enealinux@lists.enea.com mailing lis=
t. We will try to make the switch to Open Embedded mailing list as quick as=
 possible.=0A>=0A> Regarding the other B, C and D packages=A0 that we will =
try to add into the meta-cgl layer, I will post this information below, but=
 keep in mind that this information will also be available on the web page.=
=0A> =A0=A0=A0 Category B packages:=0A> =A0=A0=A0 =A0=A0=A0 - ifenslave=0A>=
 =A0=A0=A0 =A0=A0=A0 - evlog=0A> =A0=A0=A0 =A0=A0=A0 - crash=0A> =A0=A0=A0 =
=A0=A0=A0 - mipv6-daemon-umip=0A> =A0=A0=A0 =A0=A0=A0 - openl2tp=0A> =A0=A0=
=A0 Category C&D packages:=0A> =A0=A0=A0 =A0=A0=A0 - drbd=0A> =A0=A0=A0 =A0=
=A0=A0 - grsecurity=0A> =A0=A0=A0 =A0=A0=A0 -=0A logcheck=0A> =A0=A0=A0 =A0=
=A0=A0 - makedumpfile=0A> =A0=A0=A0 =A0=A0=A0 - numactl=0A> =A0=A0=A0 =A0=
=A0=A0 - ocfs2-tools=0A> =A0=A0=A0 =A0=A0=A0 - pam_passwdqc=0A> =A0=A0=A0 =
=A0=A0=A0 - samhain=0A> =A0=A0=A0 =A0=A0=A0 - ltt-usertrace=0A> =A0=A0=A0 =
=A0=A0=A0 - ftrace=0A> The above lists correspond with only the P1 requirem=
ents that we try to fulfill for the moment. If there are any questions and/=
or suggestions regarding this CGL initialtive please address them to me and=
 I will try to offer a response in the=0A> shortest time possible.=0A>=0A>=
=0A> Thanks,=0A> Alex=0A>=0A>=0A -----Original Message-----=0A> From: Joe M=
acDonald [mailto:joe@deserted.net]=0A> Sent: Monday, July 21, 2014 10:58 PM=
=0A> To: Alexandru Vaduva=0A> Cc: Jeff Osier-Mixon; yocto@yoctoproject.org=
=0A> Subject: Re: [yocto] [OE-core] Carrier Grade layer proposal=0A>=0A> He=
y Alex,=0A>=0A> I've been away from this for a bit but now I'm getting time=
 to look at it again and I was wondering if you had any deeper level of det=
ail you could share about the work going on in meta-cgl.=A0 Obviously since=
 this is a new registration and one that will look rather different from al=
l of the other CGL registrations currently, those of us in the=0A CGL workg=
roup were quite interested to see this happen.=A0 Personally I'm also inter=
ested in this since it's the kind of thing I've been doing for a long time =
now and if I can, I'd like to help out.=A0 In particular, if you've got a l=
ist of, say, the category B+ items, that might be something I can do that w=
ill be independent of your work on the more active cat-A stuff.=A0 OTOH, ca=
t-A is easy to work on since those are the items I saw when I was working w=
ith meta-cgl a month or so back.=A0 I know you guys are focused on your par=
t of it, but if you had sort of a "here's how to help us" guide, that'd be =
awesome.=0A>=0A> Also, I probably missed it, but is the intent to use eithe=
r the yocto list or the oe list for all meta-cgl discussions, or do you hav=
e a dedicated list we can sign up for?=A0 I see you have guidance for sendi=
ng submissions to meta-cgl, but is that a list that's open to the community=
, or is=0A it an internal alias / distribution list for Enea?=0A>=0A> Thank=
s,=0A> -J.=0A>=0A>=0A> On Mon, Jul 7, 2014 at 2:43 PM, Alexandru Vaduva <Al=
exandru.Vaduva@enea.com> wrote:=0A>> Hello Jeff,=0A>>=0A>> The errors are p=
ackage related.=0A>> Meta-cgl can be seen as a non BSP specific layer (it c=
an be viewed as the LSB from poky).=0A>> I already started fixing a number,=
 of the already existing errors and the patches will be added upstream afte=
r proper testing.=0A>> I will continue the bug fixing and package integrati=
on (into the=0A>> core-image-cgl image) process and after that is finished =
I will continue with the=0A Category B packages.=0A>>=0A>> I will also try =
to keep you guys informed about the latest updates,=0A>> mainly on the YPTM=
, but for those who cannot wait that much, there is=0A>> the Git repository=
 with which they can interact:=0A>> http://git.enea.com/git/?p=3Dlinux/meta=
-cgl.git;a=3Dsummary=0A>>=0A>>=0A>> Have a good day,=0A>> Alex=0A>>=0A>>=0A=
>> -----Original Message-----=0A>> From: jefro.net@gmail.com [mailto:jefro.=
net@gmail.com] On Behalf Of=0A>> Jeff Osier-Mixon=0A>> Sent: Monday, July 0=
7, 2014 9:22 PM=0A>> To: Alexandru Vaduva=0A>> Subject: Re: [OE-core] Carri=
er Grade layer proposal=0A>>=0A>> Thanks, Alex.=0A>>=0A>> Others on the mai=
ling lists, if you have any comments on the contents of this new layer, ple=
ase mention them on this thread.=0A>>=0A>> Re compilation errors, were they=
 specific to a BSP or were they general errors in the packages?=0A>>=0A>> t=
hanks=0A>>=0A>> On Mon, Jun 30, 2014 at 8:01 AM, Alexandru Vaduva <Alexandr=
u.Vaduva@enea.com> wrote:=0A>>> Hello Jeff,=0A>>>=0A>>>=0A>>>=0A>>> The ava=
ilable layer is a work in progress.=0A>>>=0A>>> For the moment we have done=
 an internal mapping of the packages=0A>>> needed inside meta-cgl layer. Th=
e mapping is done as following:=0A>>> A. Requirement that map against packa=
ge/packages with recipes that=0A>>> already exists in Yocto=0A>>>=A0 =A0 A1=
. Requirement that map against package/packages with recipes=0A>>> already =
existing in meta-enea=0A>>>=A0 =A0 A2. Requirement that map against package=
/packages with recipes that=0A>>> exists in Yocto=0A (but not in meta-enea)=
 B. Requirement that map=0A>>> against package/packages without any recipe =
C. Requirement does not=0A>>> directly map against package/packages and nee=
ds some investigation.=0A>>> D. Requirement that no solution have been foun=
d after a more detailed=0A>>> investigation.=0A>>>=0A>>>=0A>>>=0A>>> When t=
he release was made available on the public repository, the=0A>>> packages =
from the A1 and A2 were integrated, a bunch of them with compilation errors=
:=0A>>>=0A>>> -=A0 =A0 =A0 =A0 =A0 lksctp-tools=0A>>>=0A>>> -=A0 =A0 =A0 =
=A0 =A0 openais=0A>>>=0A>>> -=A0 =A0=0A =A0 =A0 =A0 pacemaker=0A>>>=0A>>> -=
=A0 =A0 =A0 =A0 =A0 openhpi=0A>>>=0A>>> -=A0 =A0 =A0 =A0 =A0 open-iscsi-use=
r=0A>>>=0A>>> -=A0 =A0 =A0 =A0 =A0 open-iscsi-kernel=0A>>>=0A>>> -=A0 =A0 =
=A0 =A0 =A0 libcap-ng=0A>>>=0A>>> -=A0 =A0 =A0 =A0 =A0 cluster-glue=0A>>>=
=0A>>> -=A0 =A0 =A0 =A0 =A0 cluster-resource-agents=0A>>>=0A>>> The activit=
y on the meta-cgl was resumed today and those build and=0A>>> integration e=
rrors will be dealt next.=0A>>>=0A>>>=0A>>>=0A>>> On the longer run we will=
 try to create recipes and/or fulfill all=0A>>> the other requirements from=
 the class B, C, and D.=0A>>>=0A>>> Please do not hesitate to contact me if=
 you have further questions.=0A>>>=0A>>>=0A>>>=0A>>>=0A>>>=0A>>> Alex=0A>>>=
=0A>>>=0A>>>=0A>>> From: Jon Aldama=0A>>> Sent: Friday, June 27, 2014 1:07 =
PM=0A>>> To: Alexandru Vaduva; Cosmin Moldoveanu; Jenny Andersson; David=0A=
>>> Nystr=F6m=0A>>> Cc: Daniel Bornaz; Adrian Dudau=0A>>> Subject: RE: Carr=
ier Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Roger that! Thanks Alexand=
ru!=0A>>>=0A>>>=0A>>>=0A>>>=0A>>>=0A>>> From: Alexandru Vaduva=0A>>> Sent: =
den 27 juni 2014 11:43=0A>>> To: Jon Aldama; Cosmin Moldoveanu; Jenny Ander=
sson; David Nystr=F6m=0A>>> Cc: Daniel Bornaz; Adrian Dudau=0A>>> Subject: =
RE: Carrier Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Hello Jon,=0A>>>=
=0A>>>=0A>>>=0A>>> We will first have an internal meeting on Monday and aft=
er that I=0A>>>=0A will offer an answer to Jeff.=0A>>>=0A>>>=0A>>>=0A>>>=0A=
>>>=0A>>> Alex=0A>>>=0A>>>=0A>>>=0A>>> From: Jon Aldama=0A>>> Sent: Friday,=
 June 27, 2014 12:32 PM=0A>>> To: Cosmin Moldoveanu; Jenny Andersson; David=
 Nystr=F6m=0A>>> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau=0A>>> Su=
bject: RE: Carrier Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Thank you C=
osmin,=0A>>>=0A>>>=0A>>>=0A>>> Alexandru, could you please respond Jeff at =
the mailing list? (see=0A>>> down=0A>>> below)=0A>>>=0A>>>=0A>>>=0A>>> Chee=
rs=0A>>>=0A>>> Jon=0A>>>=0A>>>=0A>>>=0A>>> From: Cosmin Moldoveanu=0A>>> Se=
nt: den 27 juni 2014 10:59=0A>>> To: Jenny Andersson; Jon Aldama; David Nys=
tr=F6m=0A>>> Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau=0A>>> Subjec=
t: RE: Carrier Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Hi,=0A>>>=0A>>>=
=0A>>>=0A>>> Alexandru Vaduva will be main responsible for=0A interfacing w=
ith=0A>>> community on meta-cgl topic. He will also attend Yocto Technical=
=0A>>> Meetings whenever necessary from now on.=0A>>>=0A>>>=0A>>>=0A>>> BR,=
=0A>>>=0A>>> /Cosmin=0A>>>=0A>>>=0A>>>=0A>>> From: Jenny Andersson=0A>>> Se=
nt: Friday, June 27, 2014 10:32 AM=0A>>> To: Jon Aldama; David Nystr=F6m; C=
osmin Moldoveanu=0A>>> Cc: Valentin Cobelea=0A>>> Subject: RE: Carrier Grad=
e layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Hi Cosmin,=0A>>>=0A>>>=0A>>>=0A>>>=
 How took over after Valentin left Enea? Could someone in your team respond=
.=0A>>>=0A>>>=0A>>>=0A>>> Thanks,=0A>>>=0A>>> Jenny=0A>>>=0A>>>=0A>>>=0A>>>=
 From: Jon Aldama=0A>>> Sent: den 27 juni 2014 09:28=0A>>> To: David Nystr=
=F6m; Jenny Andersson=0A>>> Cc: Valentin Cobelea=0A>>> Subject: FW: Carrier=
 Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> David, Jenny,=0A>>>=0A>>>=0A>=
>>=0A>>> Will any of you answer=0A this?=0A>>>=0A>>>=0A>>>=0A>>> BTW, have =
you managed to file the Yocto compatibility application?=0A>>>=0A>>>=0A>>>=
=0A>>> Regards=0A>>>=0A>>> Jon=0A>>>=0A>>>=0A>>>=0A>>> From: Osier-mixon, J=
effrey [mailto:jeffrey.osier-mixon@intel.com]=0A>>> Sent: den 26 juni 2014 =
20:36=0A>>> To: David Nystr=F6m; davide.ricci@windriver.com; challinan@gmai=
l.com;=0A>>> teodor.bobornilo@windriver.com; Valentin Cobelea;=0A>>> chase.=
maupin@ti.com; Jon Aldama; philip.balister@gmail.com;=0A>>> kevin_mccombe@m=
entor.com; akuster@mvista.com;=0A>>> jason.wessel@windriver.com; richard.pu=
rdie@linuxfoundation.org;=0A>>> hui.geng@huawei.com; john_cherry@mentor.com=
;=0A>>> jeffrey.osier-mixon@intel.com=0A>>> Cc: Philip Balister=0A>>> Subje=
ct: YP: Carrier Grade layer proposal=0A>>>=0A>>>=0A>>>=0A>>> Hi all - this =
is a simple followup to our meeting at ELC regarding a=0A>>> meta-cgl layer=
, proposed by Enea.=0A>>>=0A>>>=0A>>>=0A>>> The plan was to create a list o=
f recipes to be included, and to start=0A>>> a discussion on the mailing li=
st.There is a thread on the list from=0A>>> back in April, but I don't see =
anything more recent than that. Has=0A>>> there been any progress?=0A>>>=0A=
>>>=0A>>>=0A>>> thanks=0A>>>=0A>>>=0A>>> --=0A>>> _________________________=
______________________=0A>>> Openembedded-core mailing list=0A>>> Openembed=
ded-core@lists.openembedded.org=0A>>> http://lists.openembedded.org/mailman=
/listinfo/openembedded-core=0A>>>=0A>>=0A>>=0A>> --=0A>> Jeff Osier-Mixon @=
Intel=0A>> Yocto Project Community Manager http://yoctoproject.org=0A>> --=
=0A>> _______________________________________________=0A>> yocto mailing li=
st=0A>> yocto@yoctoproject.org=0A>> https://lists.yoctoproject.org/listinfo=
/yocto=0A>=0A>=0A> --=0A> Joe MacDonald=0A> :wq=0A=0A=0A-- =0A_____________=
__________________________________=0Ayocto mailing list=0Ayocto@yoctoprojec=
t.org=0Ahttps://lists.yoctoproject.org/listinfo/yocto

--981719177-77766978-1406045882=:39143
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div id=3D"yiv6096816093"><div><div style=3D"color:#000;backg=
round-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Aria=
l, Lucida Grande, sans-serif;font-size:12pt;"><div id=3D"yiv6096816093yui_3=
_16_0_6_1406045286546_4"><span id=3D"yiv6096816093yui_3_16_0_6_140604528654=
6_13">OK, thanks for the information and your contribution.</span></div><di=
v id=3D"yiv6096816093yui_3_16_0_6_1406045286546_15" style=3D"color:rgb(0, 0=
, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, Helvetica, A=
rial, Lucida Grande, sans-serif;background-color:transparent;font-style:nor=
mal;"><span id=3D"yiv6096816093yui_3_16_0_6_1406045286546_13">I am not oppo=
sing to your suggestion but in the same time I believe that this recipe sho=
uld appear in a properly maintained layer, in the case your layer disappear=
s
 tomorrow. As you mentioned this information should appear in the mainline =
meta-security layer. In that case I will use the recipe without adding it i=
nto meta-cgl because we do not plan to have duplicate recipes available in =
meta-cgl layer if this is not applicable.<br><br>Alex<br clear=3D"none"></s=
pan></div> <div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yiv6096=
816093yqt8249878442" id=3D"yiv6096816093yqt84429"><div class=3D"yiv60968160=
93yahoo_quoted" id=3D"yiv6096816093yui_3_16_0_6_1406045286546_7" style=3D"d=
isplay: block;"> <div class=3D"yiv6096816093yui_3_16_0_1_1406045286546_7924=
" style=3D"font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Luc=
ida Grande, sans-serif;font-size:12pt;"> <div class=3D"yiv6096816093yui_3_1=
6_0_1_1406045286546_7925" style=3D"font-family:HelveticaNeue, Helvetica Neu=
e, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt;"> <div dir=
=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Tuesday, July 22, 2014 6:54 P=
M, akuster
 &lt;akuster@mvista.com&gt; wrote:<br clear=3D"none"> </font> </div>  <br c=
lear=3D"none"><br clear=3D"none"> <div class=3D"yiv6096816093y_msg_containe=
r">Alexandru,<br clear=3D"none"><br clear=3D"none">Regarding&nbsp; a few pa=
ckages in category C&amp;D.<br clear=3D"none"><br clear=3D"none">I have lat=
est samhain building as well as grsecurity (pax patches <br clear=3D"none">=
applied against 3.14.12) in a branch in my meta-security tree.&nbsp; I have=
 a <br clear=3D"none">bit more testing to do before I was going to post the=
m.<br clear=3D"none"><br clear=3D"none">grsecurity and samhain aren't CGL s=
pecific and they maybe belong in a <br clear=3D"none">more generalize layer=
? just a thought.<br clear=3D"none"><br clear=3D"none">regards,<br clear=3D=
"none">Armin<br clear=3D"none"><br clear=3D"none"><div class=3D"yiv60968160=
93yqt6424665948" id=3D"yiv6096816093yqtfd27281"><br clear=3D"none">On 07/22=
/2014 03:52 AM, Alexandru Vaduva wrote:<br clear=3D"none">&gt; Hello Joe,<b=
r clear=3D"none">&gt;<br
 clear=3D"none">&gt; Here at Enea we are preparing the steps needed for pub=
lishing the layer on the open embedded meta layers initiative: <a rel=3D"no=
follow" shape=3D"rect" target=3D"_blank" href=3D"http://layers.openembedded=
.org/layerindex/branch/master/layers/">http://layers.openembedded.org/layer=
index/branch/master/layers/</a><br clear=3D"none">&gt; For this we started =
working at a web page that should contain all the relevant information rega=
rding meta-cgl. It will be available in a couple of weeks. Until then the l=
ayer will be available internally and the patches should<br clear=3D"none">=
&gt; be submitted as the README states: on the <a rel=3D"nofollow" shape=3D=
"rect" ymailto=3D"mailto:enealinux@lists.enea.com" target=3D"_blank" href=
=3D"mailto:enealinux@lists.enea.com">enealinux@lists.enea.com</a> mailing l=
ist. We will try to make the switch to Open Embedded=0A mailing list as qui=
ck as possible.<br clear=3D"none">&gt;<br clear=3D"none">&gt; Regarding the=
 other B, C and D packages&nbsp; that we will try to add into the meta-cgl =
layer, I will post this information below, but keep in mind that this infor=
mation will also be available on the web page.<br clear=3D"none">&gt; &nbsp=
;&nbsp;&nbsp; Category B packages:<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp; - ifenslave<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; - evlog<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp; - crash<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; - mipv6-daemon-umip<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp; - openl2tp<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; Category =
C&amp;D packages:<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp; - drbd<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - g=
rsecurity<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -=0A=
 logcheck<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - ma=
kedumpfile<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - n=
umactl<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - ocfs2=
-tools<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - pam_p=
asswdqc<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - samh=
ain<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - ltt-user=
trace<br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; - ftrace=
<br clear=3D"none">&gt; The above lists correspond with only the P1 require=
ments that we try to fulfill for the moment. If there are any questions and=
/or suggestions regarding this CGL initialtive please address them to me an=
d I will try to offer a response in the<br clear=3D"none">&gt; shortest tim=
e possible.<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none"=
>&gt; Thanks,<br clear=3D"none">&gt; Alex<br clear=3D"none">&gt;<br clear=
=3D"none">&gt;=0A -----Original Message-----<br clear=3D"none">&gt; From: J=
oe MacDonald [mailto:<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:j=
oe@deserted.net" target=3D"_blank" href=3D"mailto:joe@deserted.net">joe@des=
erted.net</a>]<br clear=3D"none">&gt; Sent: Monday, July 21, 2014 10:58 PM<=
br clear=3D"none">&gt; To: Alexandru Vaduva<br clear=3D"none">&gt; Cc: Jeff=
 Osier-Mixon; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yo=
ctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yo=
cto@yoctoproject.org</a><br clear=3D"none">&gt; Subject: Re: [yocto] [OE-co=
re] Carrier Grade layer proposal<br clear=3D"none">&gt;<br clear=3D"none">&=
gt; Hey Alex,<br clear=3D"none">&gt;<br clear=3D"none">&gt; I've been away =
from this for a bit but now I'm getting time to look at it again and I was =
wondering if you had any deeper level of detail you could share about the w=
ork going on in meta-cgl.&nbsp; Obviously since this is a new registration =
and one that will look rather different from all
 of the other CGL registrations currently, those of us in the=0A CGL workgr=
oup were quite interested to see this happen.&nbsp; Personally I'm also int=
erested in this since it's the kind of thing I've been doing for a long tim=
e now and if I can, I'd like to help out.&nbsp; In particular, if you've go=
t a list of, say, the category B+ items, that might be something I can do t=
hat will be independent of your work on the more active cat-A stuff.&nbsp; =
OTOH, cat-A is easy to work on since those are the items I saw when I was w=
orking with meta-cgl a month or so back.&nbsp; I know you guys are focused =
on your part of it, but if you had sort of a "here's how to help us" guide,=
 that'd be awesome.<br clear=3D"none">&gt;<br clear=3D"none">&gt; Also, I p=
robably missed it, but is the intent to use either the yocto list or the oe=
 list for all meta-cgl discussions, or do you have a dedicated list we can =
sign up for?&nbsp; I see you have guidance for sending submissions to meta-=
cgl, but is that a list that's open to the community, or is=0A it an intern=
al alias / distribution list for Enea?<br clear=3D"none">&gt;<br clear=3D"n=
one">&gt; Thanks,<br clear=3D"none">&gt; -J.<br clear=3D"none">&gt;<br clea=
r=3D"none">&gt;<br clear=3D"none">&gt; On Mon, Jul 7, 2014 at 2:43 PM, Alex=
andru Vaduva &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:Alexa=
ndru.Vaduva@enea.com" target=3D"_blank" href=3D"mailto:Alexandru.Vaduva@ene=
a.com">Alexandru.Vaduva@enea.com</a>&gt; wrote:<br clear=3D"none">&gt;&gt; =
Hello Jeff,<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; The error=
s are package related.<br clear=3D"none">&gt;&gt; Meta-cgl can be seen as a=
 non BSP specific layer (it can be viewed as the LSB from poky).<br clear=
=3D"none">&gt;&gt; I already started fixing a number, of the already existi=
ng errors and the patches will be added upstream after proper testing.<br c=
lear=3D"none">&gt;&gt; I will continue the bug fixing and package integrati=
on (into the<br clear=3D"none">&gt;&gt; core-image-cgl image) process and a=
fter that is
 finished I will continue with the=0A Category B packages.<br clear=3D"none=
">&gt;&gt;<br clear=3D"none">&gt;&gt; I will also try to keep you guys info=
rmed about the latest updates,<br clear=3D"none">&gt;&gt; mainly on the YPT=
M, but for those who cannot wait that much, there is<br clear=3D"none">&gt;=
&gt; the Git repository with which they can interact:<br clear=3D"none">&gt=
;&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://g=
it.enea.com/git/?p=3Dlinux/meta-cgl.git;a=3Dsummary">http://git.enea.com/gi=
t/?p=3Dlinux/meta-cgl.git;a=3Dsummary</a><br clear=3D"none">&gt;&gt;<br cle=
ar=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Have a good day,<br clear=
=3D"none">&gt;&gt; Alex<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&g=
t;<br clear=3D"none">&gt;&gt; -----Original Message-----<br clear=3D"none">=
&gt;&gt; From: <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:jefro.n=
et@gmail.com" target=3D"_blank" href=3D"mailto:jefro.net@gmail.com">jefro.n=
et@gmail.com</a> [mailto:<a rel=3D"nofollow" shape=3D"rect"
 ymailto=3D"mailto:jefro.net@gmail.com" target=3D"_blank" href=3D"mailto:je=
fro.net@gmail.com">jefro.net@gmail.com</a>] On Behalf Of<br clear=3D"none">=
&gt;&gt; Jeff Osier-Mixon<br clear=3D"none">&gt;&gt; Sent: Monday, July 07,=
 2014 9:22 PM<br clear=3D"none">&gt;&gt; To: Alexandru Vaduva<br clear=3D"n=
one">&gt;&gt; Subject: Re: [OE-core] Carrier Grade layer proposal<br clear=
=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Thanks, Alex.<br clear=3D"non=
e">&gt;&gt;<br clear=3D"none">&gt;&gt; Others on the mailing lists, if you =
have any comments on the contents of this new layer, please mention them on=
 this thread.<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Re comp=
ilation errors, were they specific to a BSP or were they general errors in =
the packages?<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; thanks<=
br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; On Mon, Jun 30, 2014 =
at 8:01 AM, Alexandru Vaduva &lt;<a rel=3D"nofollow" shape=3D"rect"
 ymailto=3D"mailto:Alexandru.Vaduva@enea.com" target=3D"_blank" href=3D"mai=
lto:Alexandru.Vaduva@enea.com">Alexandru.Vaduva@enea.com</a>&gt; wrote:<br =
clear=3D"none">&gt;&gt;&gt; Hello Jeff,<br clear=3D"none">&gt;&gt;&gt;<br c=
lear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none"=
>&gt;&gt;&gt; The available layer is a work in progress.<br clear=3D"none">=
&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; For the moment we have done an =
internal mapping of the packages<br clear=3D"none">&gt;&gt;&gt; needed insi=
de meta-cgl layer. The mapping is done as following:<br clear=3D"none">&gt;=
&gt;&gt; A. Requirement that map against package/packages with recipes that=
<br clear=3D"none">&gt;&gt;&gt; already exists in Yocto<br clear=3D"none">&=
gt;&gt;&gt;&nbsp; &nbsp; A1. Requirement that map against package/packages =
with recipes<br clear=3D"none">&gt;&gt;&gt; already existing in meta-enea<b=
r clear=3D"none">&gt;&gt;&gt;&nbsp; &nbsp; A2. Requirement that map against=
 package/packages with
 recipes that<br clear=3D"none">&gt;&gt;&gt; exists in Yocto=0A (but not in=
 meta-enea) B. Requirement that map<br clear=3D"none">&gt;&gt;&gt; against =
package/packages without any recipe C. Requirement does not<br clear=3D"non=
e">&gt;&gt;&gt; directly map against package/packages and needs some invest=
igation.<br clear=3D"none">&gt;&gt;&gt; D. Requirement that no solution hav=
e been found after a more detailed<br clear=3D"none">&gt;&gt;&gt; investiga=
tion.<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; When the release was=
 made available on the public repository, the<br clear=3D"none">&gt;&gt;&gt=
; packages from the A1 and A2 were integrated, a bunch of them with compila=
tion errors:<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; =
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lksctp-tools<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ope=
nais<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; -&nbsp; =
&nbsp;=0A &nbsp; &nbsp; &nbsp; pacemaker<br clear=3D"none">&gt;&gt;&gt;<br =
clear=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; openhpi<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; open-iscsi-user<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; open-iscsi-kerne=
l<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; -&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; libcap-ng<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cluster-glue<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; -&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; cluster-resource-agents<br clear=3D"none">&gt;&gt;&gt;<=
br clear=3D"none">&gt;&gt;&gt; The activity on the meta-cgl was resumed tod=
ay and those build and<br clear=3D"none">&gt;&gt;&gt; integration errors wi=
ll be dealt next.<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt; On the longer run we will try to create recipe=
s and/or fulfill all<br clear=3D"none">&gt;&gt;&gt; the other requirements =
from the class B, C, and D.<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt; Please do not hesitate to contact me if you have further que=
stions.<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br cl=
ear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Alex<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt; From: Jon Aldama<br clear=3D"none">&gt;&gt;&gt; Sent=
: Friday, June 27, 2014 1:07 PM<br clear=3D"none">&gt;&gt;&gt; To: Alexandr=
u Vaduva; Cosmin Moldoveanu; Jenny Andersson; David<br clear=3D"none">&gt;&=
gt;&gt; Nystr=F6m<br clear=3D"none">&gt;&gt;&gt; Cc: Daniel Bornaz; Adrian =
Dudau<br clear=3D"none">&gt;&gt;&gt; Subject: RE: Carrier Grade layer propo=
sal<br
 clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"non=
e">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Roger that! Thanks Alexandru=
!<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D=
"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt; From: Alexandru Vaduva<br clear=3D"no=
ne">&gt;&gt;&gt; Sent: den 27 juni 2014 11:43<br clear=3D"none">&gt;&gt;&gt=
; To: Jon Aldama; Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m<br cl=
ear=3D"none">&gt;&gt;&gt; Cc: Daniel Bornaz; Adrian Dudau<br clear=3D"none"=
>&gt;&gt;&gt; Subject: RE: Carrier Grade layer proposal<br clear=3D"none">&=
gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<b=
r clear=3D"none">&gt;&gt;&gt; Hello Jon,<br clear=3D"none">&gt;&gt;&gt;<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt; We will first have an internal meeting on Monday and after t=
hat I<br clear=3D"none">&gt;&gt;&gt;=0A will offer an answer to Jeff.<br cl=
ear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<=
br clear=3D"none">&gt;&gt;&gt; Alex<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt; From: Jon Aldama<br clear=3D"none">&gt;&gt;&gt; Sent: Friday, Jun=
e 27, 2014 12:32 PM<br clear=3D"none">&gt;&gt;&gt; To: Cosmin Moldoveanu; J=
enny Andersson; David Nystr=F6m<br clear=3D"none">&gt;&gt;&gt; Cc: Alexandr=
u Vaduva; Daniel Bornaz; Adrian Dudau<br clear=3D"none">&gt;&gt;&gt; Subjec=
t: RE: Carrier Grade layer proposal<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt; Thank you Cosmin,<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
; Alexandru, could you please respond Jeff at the mailing list? (see<br
 clear=3D"none">&gt;&gt;&gt; down<br clear=3D"none">&gt;&gt;&gt; below)<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Cheers<br clear=3D"none">&gt;=
&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Jon<br clear=3D"none">&gt;&gt;&gt;<=
br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"n=
one">&gt;&gt;&gt; From: Cosmin Moldoveanu<br clear=3D"none">&gt;&gt;&gt; Se=
nt: den 27 juni 2014 10:59<br clear=3D"none">&gt;&gt;&gt; To: Jenny Anderss=
on; Jon Aldama; David Nystr=F6m<br clear=3D"none">&gt;&gt;&gt; Cc: Alexandr=
u Vaduva; Daniel Bornaz; Adrian Dudau<br clear=3D"none">&gt;&gt;&gt; Subjec=
t: RE: Carrier Grade layer proposal<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt; Hi,<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Alexandru Va=
duva will be main responsible for=0A interfacing with<br clear=3D"none">&gt=
;&gt;&gt; community on meta-cgl topic. He will also attend Yocto Technical<=
br clear=3D"none">&gt;&gt;&gt; Meetings whenever necessary from now on.<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; BR,<br clear=3D"none">&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt; /Cosmin<br clear=3D"none">&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"=
none">&gt;&gt;&gt; From: Jenny Andersson<br clear=3D"none">&gt;&gt;&gt; Sen=
t: Friday, June 27, 2014 10:32 AM<br clear=3D"none">&gt;&gt;&gt; To: Jon Al=
dama; David Nystr=F6m; Cosmin Moldoveanu<br clear=3D"none">&gt;&gt;&gt; Cc:=
 Valentin Cobelea<br clear=3D"none">&gt;&gt;&gt; Subject: RE: Carrier Grade=
 layer proposal<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&g=
t;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Hi Cosmin,=
<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; How took over a=
fter Valentin left Enea? Could someone in your team respond.<br clear=3D"no=
ne">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt; Thanks,<br clear=3D"none">&gt;&gt;&gt;<b=
r clear=3D"none">&gt;&gt;&gt; Jenny<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt; From: Jon Aldama<br clear=3D"none">&gt;&gt;&gt; Sent: den 27 juni=
 2014 09:28<br clear=3D"none">&gt;&gt;&gt; To: David Nystr=F6m; Jenny Ander=
sson<br clear=3D"none">&gt;&gt;&gt; Cc: Valentin Cobelea<br clear=3D"none">=
&gt;&gt;&gt; Subject: FW: Carrier Grade layer proposal<br clear=3D"none">&g=
t;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br=
 clear=3D"none">&gt;&gt;&gt; David, Jenny,<br clear=3D"none">&gt;&gt;&gt;<b=
r clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"no=
ne">&gt;&gt;&gt; Will any of you answer=0A this?<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt; BTW, have you managed to file the Yocto compatibilit=
y application?<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Regards<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; Jon<br clear=3D"=
none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt; From: Osier-mixon, Jeffrey [mailto:<a =
rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:jeffrey.osier-mixon@intel=
.com" target=3D"_blank" href=3D"mailto:jeffrey.osier-mixon@intel.com">jeffr=
ey.osier-mixon@intel.com</a>]<br clear=3D"none">&gt;&gt;&gt; Sent: den 26 j=
uni 2014 20:36<br clear=3D"none">&gt;&gt;&gt; To: David Nystr=F6m; <a rel=
=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:davide.ricci@windriver.com" =
target=3D"_blank"
 href=3D"mailto:davide.ricci@windriver.com">davide.ricci@windriver.com</a>;=
 <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:challinan@gmail.com" =
target=3D"_blank" href=3D"mailto:challinan@gmail.com">challinan@gmail.com</=
a>;<br clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" ymail=
to=3D"mailto:teodor.bobornilo@windriver.com" target=3D"_blank" href=3D"mail=
to:teodor.bobornilo@windriver.com">teodor.bobornilo@windriver.com</a>; Vale=
ntin Cobelea;<br clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"r=
ect" ymailto=3D"mailto:chase.maupin@ti.com" target=3D"_blank" href=3D"mailt=
o:chase.maupin@ti.com">chase.maupin@ti.com</a>; Jon Aldama; <a rel=3D"nofol=
low" shape=3D"rect" ymailto=3D"mailto:philip.balister@gmail.com" target=3D"=
_blank" href=3D"mailto:philip.balister@gmail.com">philip.balister@gmail.com=
</a>;<br clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" yma=
ilto=3D"mailto:kevin_mccombe@mentor.com" target=3D"_blank"
 href=3D"mailto:kevin_mccombe@mentor.com">kevin_mccombe@mentor.com</a>; <a =
rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:akuster@mvista.com" targe=
t=3D"_blank" href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>;<br =
clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"m=
ailto:jason.wessel@windriver.com" target=3D"_blank" href=3D"mailto:jason.we=
ssel@windriver.com">jason.wessel@windriver.com</a>; <a rel=3D"nofollow" sha=
pe=3D"rect" ymailto=3D"mailto:richard.purdie@linuxfoundation.org" target=3D=
"_blank" href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@=
linuxfoundation.org</a>;<br clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow"=
 shape=3D"rect" ymailto=3D"mailto:hui.geng@huawei.com" target=3D"_blank" hr=
ef=3D"mailto:hui.geng@huawei.com">hui.geng@huawei.com</a>; <a rel=3D"nofoll=
ow" shape=3D"rect" ymailto=3D"mailto:john_cherry@mentor.com" target=3D"_bla=
nk" href=3D"mailto:john_cherry@mentor.com">john_cherry@mentor.com</a>;<br c=
lear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow"
 shape=3D"rect" ymailto=3D"mailto:jeffrey.osier-mixon@intel.com" target=3D"=
_blank" href=3D"mailto:jeffrey.osier-mixon@intel.com">jeffrey.osier-mixon@i=
ntel.com</a><br clear=3D"none">&gt;&gt;&gt; Cc: Philip Balister<br clear=3D=
"none">&gt;&gt;&gt; Subject: YP: Carrier Grade layer proposal<br clear=3D"n=
one">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt; Hi all - this is a simple followup to o=
ur meeting at ELC regarding a<br clear=3D"none">&gt;&gt;&gt; meta-cgl layer=
, proposed by Enea.<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; The pl=
an was to create a list of recipes to be included, and to start<br clear=3D=
"none">&gt;&gt;&gt; a discussion on the mailing list.There is a thread on t=
he list from<br clear=3D"none">&gt;&gt;&gt; back in April, but I don't see =
anything more recent than that. Has<br clear=3D"none">&gt;&gt;&gt; there be=
en any progress?<br
 clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"non=
e">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; thanks<br clear=3D"none">&gt=
;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; --<=
br clear=3D"none">&gt;&gt;&gt; ____________________________________________=
___<br clear=3D"none">&gt;&gt;&gt; Openembedded-core mailing list<br clear=
=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto=
:Openembedded-core@lists.openembedded.org" target=3D"_blank" href=3D"mailto=
:Openembedded-core@lists.openembedded.org">Openembedded-core@lists.openembe=
dded.org</a><br clear=3D"none">&gt;&gt;&gt; <a rel=3D"nofollow" shape=3D"re=
ct" target=3D"_blank" href=3D"http://lists.openembedded.org/mailman/listinf=
o/openembedded-core">http://lists.openembedded.org/mailman/listinfo/openemb=
edded-core</a><br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;<br=
 clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; --<br clear=3D"none">&g=
t;&gt; Jeff Osier-Mixon @Intel<br
 clear=3D"none">&gt;&gt; Yocto Project Community Manager <a rel=3D"nofollow=
" shape=3D"rect" target=3D"_blank" href=3D"http://yoctoproject.org/">http:/=
/yoctoproject.org</a><br clear=3D"none">&gt;&gt; --<br clear=3D"none">&gt;&=
gt; _______________________________________________<br clear=3D"none">&gt;&=
gt; yocto mailing list<br clear=3D"none">&gt;&gt; <a rel=3D"nofollow" shape=
=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"n=
one">&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"=
https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.o=
rg/listinfo/yocto</a><br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clea=
r=3D"none">&gt; --<br clear=3D"none">&gt; Joe MacDonald<br clear=3D"none">&=
gt; :wq<br clear=3D"none"><br clear=3D"none"><br clear=3D"none">-- <br clea=
r=3D"none">_______________________________________________<br clear=3D"none=
">yocto mailing list<br clear=3D"none"><a
 rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a><br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" target=3D"_bl=
ank" href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.y=
octoproject.org/listinfo/yocto</a><br clear=3D"none"></div><br clear=3D"non=
e"><br clear=3D"none"></div>  </div> </div>  </div></div> </div></div></div=
></div></body></html>

--981719177-77766978-1406045882=:39143--
