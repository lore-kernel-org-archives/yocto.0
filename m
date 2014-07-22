Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43C90E00524; Tue, 22 Jul 2014 09:32:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.29 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm36.bullet.mail.ne1.yahoo.com (nm36.bullet.mail.ne1.yahoo.com
	[98.138.229.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8664CE00342
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 09:32:43 -0700 (PDT)
Received: from [127.0.0.1] by nm36.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:32:42 -0000
Received: from [98.138.101.131] by nm36.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:29:35 -0000
Received: from [98.138.87.7] by tm19.bullet.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:29:35 -0000
Received: from [127.0.0.1] by omp1007.mail.ne1.yahoo.com with NNFMP;
	22 Jul 2014 16:29:35 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 596447.67114.bm@omp1007.mail.ne1.yahoo.com
Received: (qmail 31456 invoked by uid 60001); 22 Jul 2014 16:29:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1406046575; bh=894FyMRV0lcvUb2xIQMZp/XN7fa7SeXAznYlT9Zjo6k=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=CWe/Ai7OmFfXxYq8dqrJcqcOpfqgwZuOF5JNdbnhf8F0UL9jjy2vXibikPnTyOiuNdc1aHxQM8ck/+c0G097yHuRd+Pkxf+meGKWV+gpATkADtlo5cvfikWp1t3BL/wq7PY0+Loxpr213gLoAwQ6PV95/OVUpk/ATCh2RytwLqc=
X-YMail-OSG: 3McFLFsVM1nMP3eFvW9gZovUVryWaP4p6hVtkbKxaDKHGbQ
	fjEHFQQG_EmWbOQteXExldSke0pTLO5t0dJPBj4rI5nFGLI4KYHzsFFNk0i_
	_l6lzYMh2Xf87S6oEpby1_RazG3Wk_3ByTF3aYGvymN3jaMetgb9WQsRjCZW
	8r3NJzDyGMJtto_YVI0TUwWn6SBDbsNy_LhKY_uwSJxUaVFbgYrHXFXFxUHk
	lorE3EP1h6c2a0XbS.lJyReRHMtvoDYL.gYcdW4CowffJ1Ovxn5OgOJJoVfZ
	2dnDgQTD2ug.AyvdZMYOGrep.5FmqCSZRb61mGYBarLl1YlVfSn80w6Aj4T.
	oYssNz.WJByenjhyQeEfAXHeWGyhZ_m119IEXSMcC9LbE7e9ibKfSQnpmeiZ
	NoSeg6Cv7Lhg57NoChsLxRLxoo94gqYe4Hcrn8po8bokrvvGXXtohKQNjKpN
	eu9j5PtQvIP945UajeYc6NP.oZFJVZife7da4b7sYfGhaB.5LLywsdU6hcRM
	6Q2_3z2cB_OpxsngA1aFxNFBZcInpH1YjmxM4gFlDfrqOPbHyKCEX5aH7hKU
	0RPa8tDWyoVY669KwEJ0eMJvl2cWJL02SsDM8LGvh29KBOo9kygquZLJofj4
	xlZov.M_kaNYuzYMihH6j
Received: from [141.85.0.106] by web122503.mail.ne1.yahoo.com via HTTP;
	Tue, 22 Jul 2014 09:29:35 PDT
X-Rocket-MIMEInfo: 002.001,
	R2xhZCB0byBoZWFyIHRoYXQgQnJ1Y2UuCgoKCk9uIFR1ZXNkYXksIEp1bHkgMjIsIDIwMTQgNzowOSBQTSwgQnJ1Y2UgQXNoZmllbGQgPGJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb20.IHdyb3RlOgogCgoKT24gMTQtMDctMjIgMTI6MDIgUE0sIGFrdXN0ZXIgd3JvdGU6Cj4KPiBPbiAwNy8yMi8yMDE0IDA4OjU4IEFNLCBCcnVjZSBBc2hmaWVsZCB3cm90ZToKPj4gT24gMTQtMDctMjIgMTE6NTQgQU0sIGFrdXN0ZXIgd3JvdGU6Cj4.PiBBbGV4YW5kcnUsCj4.Pgo.Pj4gUmVnYXJkaW5nwqAgYSBmZXcgcGEBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.195.680
References: <CALZ2gZV=pDM5kE-VDdEp1xJRV+ig7q5ix+cFU9vjpvJg7x=o5Q@mail.gmail.com>	<D7AB900AA081FD46B179E331E9F703E8907D76@SESTOEX04.enea.se>	<6B17198E316BD04DBB6F6DD263019AE125573C4A@SESTOEX04.enea.se>	<2D55BFC2C836774DB0F2FE17BECC006C28993A30@SESTOEX04.enea.se>	<D7AB900AA081FD46B179E331E9F703E8908E42@SESTOEX04.enea.se>	<DDB0C57E45663A458C5CACB7B5688BC21D6C5C0D@SESTOEX04.enea.se>	<D7AB900AA081FD46B179E331E9F703E8908E9C@SESTOEX04.enea.se>	<DDB0C57E45663A458C5CACB7B5688BC21D6C8818@SESTOEX04.enea.se>	<CA+YB3rY8TifZWKrm5FJc871WMtzP-ZeiCZJS9ceSa3uUoR9TGA@mail.gmail.com>	<DDB0C57E45663A458C5CACB7B5688BC21D6CAE0B@SESTOEX04.enea.se>	<CANBf+V17Q0P98d7632+FX3_W1RsT3ZR=ZR4W1mG4iDJ-CRLnZw@mail.gmail.com>	<DDB0C57E45663A458C5CACB7B5688BC21D6D3410@SESTOEX04.enea.se>	<53CE8923.6030307@mvista.com>
	<53CE8A34.2060608@windriver.com>	<53CE8B24.5020505@mvista.com>
	<53CE8C4A.3020302@windriver.com>
Message-ID: <1406046575.2940.YahooMailNeo@web122503.mail.ne1.yahoo.com>
Date: Tue, 22 Jul 2014 09:29:35 -0700
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	akuster <akuster@mvista.com>,
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>, 
	Joe MacDonald <joe@deserted.net>
In-Reply-To: <53CE8C4A.3020302@windriver.com>
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
X-List-Received-Date: Tue, 22 Jul 2014 16:32:50 -0000
Content-Type: multipart/alternative;
	boundary="592913864-2135520473-1406046575=:2940"

--592913864-2135520473-1406046575=:2940
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Glad to hear that Bruce.=0A=0A=0A=0AOn Tuesday, July 22, 2014 7:09 PM, Bruc=
e Ashfield <bruce.ashfield@windriver.com> wrote:=0A =0A=0A=0AOn 14-07-22 12=
:02 PM, akuster wrote:=0A>=0A> On 07/22/2014 08:58 AM, Bruce Ashfield wrote=
:=0A>> On 14-07-22 11:54 AM, akuster wrote:=0A>>> Alexandru,=0A>>>=0A>>> Re=
garding=A0 a few packages in category C&D.=0A>>>=0A>>> I have latest samhai=
n building as well as grsecurity (pax patches=0A>>> applied against 3.14.12=
) in a branch in my meta-security tree. I have a=0A>>> bit more testing to =
do before I was going to post them.=0A>>=0A>> And on this note, we should c=
onsider the kernel parts and see if getting=0A>> them into a common locatio=
n is a good idea.=0A>>=0A> yep.=0A>=0A>> We already have the linux-yocto tr=
ee, and it tracks LTSI, has CVE and=0A>> -stable tracking, and is maintaine=
d to support the set of reference=0A>> boards.=0A>>=0A>> Creating yet more =
reference kernel trees doesn't help our goal of=0A>> fewer trees and a disc=
rete set of kernel versions.=0A>=0A> Agreed.=0A=0AGreat, glad to hear.=0A=
=0AI wasn't trying to divert the discussion, just seeing if there=0Awas any=
where I could help.=0A=0AI know for certain that Joe has a LOT of experienc=
e with grsec, and=0AI've been helping maintain its 'tentacles' for a long t=
ime, so I'm=0Asure we can come up with something workable when the time is =
right.=0A=0ACheers,=0A=0A=0ABruce=0A=0A>=0A> thanks,=0A> Armin=0A>>=0A>> Ju=
st something to consider.=0A>>=0A>> Cheers,=0A>>=0A>> Bruce=0A>>=0A>>>=0A>>=
> grsecurity and samhain aren't CGL specific and they maybe belong in a=0A>=
>> more generalize layer? just a thought.=0A>>>=0A>>> regards,=0A>>> Armin=
=0A>>>=0A>>>=0A>>> On 07/22/2014 03:52 AM, Alexandru Vaduva wrote:=0A>>>> H=
ello Joe,=0A>>>>=0A>>>> Here at Enea we are preparing the steps needed for =
publishing the=0A>>>> layer on the open embedded meta layers initiative:=0A=
>>>> http://layers.openembedded.org/layerindex/branch/master/layers/=0A>>>>=
 For this we started working at a web page that should contain all the=0A>>=
>> relevant information regarding meta-cgl. It will be available in a=0A>>>=
> couple of weeks. Until then the layer will be available internally and=0A=
>>>> the patches should=0A>>>> be submitted as the README states: on the en=
ealinux@lists.enea.com=0A>>>> mailing list. We will try to make the switch =
to Open Embedded mailing=0A>>>> list as quick as possible.=0A>>>>=0A>>>> Re=
garding the other B, C and D packages=A0 that we will try to add into=0A>>>=
> the meta-cgl layer, I will post this information below, but keep in=0A>>>=
> mind that this information will also be available on the web page.=0A>>>>=
=A0 =A0  Category B packages:=0A>>>>=A0 =A0 =A0 =A0  - ifenslave=0A>>>>=A0 =
=A0 =A0 =A0  - evlog=0A>>>>=A0 =A0 =A0 =A0  - crash=0A>>>>=A0 =A0 =A0 =A0  =
- mipv6-daemon-umip=0A>>>>=A0 =A0 =A0 =A0  - openl2tp=0A>>>>=A0 =A0  Catego=
ry C&D packages:=0A>>>>=A0 =A0 =A0 =A0  - drbd=0A>>>>=A0 =A0 =A0 =A0  - grs=
ecurity=0A>>>>=A0 =A0 =A0 =A0  - logcheck=0A>>>>=A0 =A0 =A0 =A0  - makedump=
file=0A>>>>=A0 =A0 =A0 =A0  - numactl=0A>>>>=A0 =A0 =A0 =A0  - ocfs2-tools=
=0A>>>>=A0 =A0 =A0 =A0  - pam_passwdqc=0A>>>>=A0 =A0 =A0 =A0  - samhain=0A>=
>>>=A0 =A0 =A0 =A0  - ltt-usertrace=0A>>>>=A0 =A0 =A0 =A0  - ftrace=0A>>>> =
The above lists correspond with only the P1 requirements that we try=0A>>>>=
 to fulfill for the moment. If there are any questions and/or=0A>>>> sugges=
tions regarding this CGL initialtive please address them to me=0A>>>> and I=
 will try to offer a response in the=0A>>>> shortest time possible.=0A>>>>=
=0A>>>>=0A>>>> Thanks,=0A>>>> Alex=0A>>>>=0A>>>> -----Original Message-----=
=0A>>>> From: Joe MacDonald [mailto:joe@deserted.net]=0A>>>> Sent: Monday, =
July 21, 2014 10:58 PM=0A>>>> To: Alexandru Vaduva=0A>>>> Cc: Jeff Osier-Mi=
xon; yocto@yoctoproject.org=0A>>>> Subject: Re: [yocto] [OE-core] Carrier G=
rade layer proposal=0A>>>>=0A>>>> Hey Alex,=0A>>>>=0A>>>> I've been away fr=
om this for a bit but now I'm getting time to look at=0A>>>> it again and I=
 was wondering if you had any deeper level of detail you=0A>>>> could share=
 about the work going on in meta-cgl.=A0 Obviously since this=0A>>>> is a n=
ew registration and one that will look rather different from all=0A>>>> of =
the other CGL registrations currently, those of us in the CGL=0A>>>> workgr=
oup were quite interested to see this happen. Personally I'm=0A>>>> also in=
terested in this since it's the kind of thing I've been doing=0A>>>> for a =
long time now and if I can, I'd like to help out.=A0 In=0A>>>> particular, =
if you've got a list of, say, the category B+ items, that=0A>>>> might be s=
omething I can do that will be independent of your work on=0A>>>> the more =
active cat-A stuff.=A0 OTOH, cat-A is easy to work on since=0A>>>> those ar=
e the items I saw when I was working with meta-cgl a month or=0A>>>> so bac=
k.=A0 I know you guys are focused on your part of it, but if you=0A>>>> had=
 sort of a "here's how to help us" guide, that'd be awesome.=0A>>>>=0A>>>> =
Also, I probably missed it, but is the intent to use either the yocto=0A>>>=
> list or the oe list for all meta-cgl discussions, or do you have a=0A>>>>=
 dedicated list we can sign up for?=A0 I see you have guidance for=0A>>>> s=
ending submissions to meta-cgl, but is that a list that's open to the=0A>>>=
> community, or is it an internal alias / distribution list for Enea?=0A>>>=
>=0A>>>> Thanks,=0A>>>> -J.=0A>>>>=0A>>>>=0A>>>> On Mon, Jul 7, 2014 at 2:4=
3 PM, Alexandru Vaduva=0A>>>> <Alexandru.Vaduva@enea.com> wrote:=0A>>>>> He=
llo Jeff,=0A>>>>>=0A>>>>> The errors are package related.=0A>>>>> Meta-cgl =
can be seen as a non BSP specific layer (it can be viewed as=0A>>>>> the LS=
B from poky).=0A>>>>> I already started fixing a number, of the already exi=
sting errors and=0A>>>>> the patches will be added upstream after proper te=
sting.=0A>>>>> I will continue the bug fixing and package integration (into=
 the=0A>>>>> core-image-cgl image) process and after that is finished I wil=
l=0A>>>>> continue with the Category B packages.=0A>>>>>=0A>>>>> I will als=
o try to keep you guys informed about the latest updates,=0A>>>>> mainly on=
 the YPTM, but for those who cannot wait that much, there is=0A>>>>> the Gi=
t repository with which they can interact:=0A>>>>> http://git.enea.com/git/=
?p=3Dlinux/meta-cgl.git;a=3Dsummary=0A>>>>>=0A>>>>>=0A>>>>> Have a good day=
,=0A>>>>> Alex=0A>>>>>=0A>>>>>=0A>>>>> -----Original Message-----=0A>>>>> F=
rom: jefro.net@gmail.com [mailto:jefro.net@gmail.com] On Behalf Of=0A>>>>> =
Jeff Osier-Mixon=0A>>>>> Sent: Monday, July 07, 2014 9:22 PM=0A>>>>> To: Al=
exandru Vaduva=0A>>>>> Subject: Re: [OE-core] Carrier Grade layer proposal=
=0A>>>>>=0A>>>>> Thanks, Alex.=0A>>>>>=0A>>>>> Others on the mailing lists,=
 if you have any comments on the contents=0A>>>>> of this new layer, please=
 mention them on this thread.=0A>>>>>=0A>>>>> Re compilation errors, were t=
hey specific to a BSP or were they=0A>>>>> general errors in the packages?=
=0A>>>>>=0A>>>>> thanks=0A>>>>>=0A>>>>> On Mon, Jun 30, 2014 at 8:01 AM, Al=
exandru Vaduva=0A>>>>> <Alexandru.Vaduva@enea.com> wrote:=0A>>>>>> Hello Je=
ff,=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> The available layer is a work in pr=
ogress.=0A>>>>>>=0A>>>>>> For the moment we have done an internal mapping o=
f the packages=0A>>>>>> needed inside meta-cgl layer. The mapping is done a=
s following:=0A>>>>>> A. Requirement that map against package/packages with=
 recipes that=0A>>>>>> already exists in Yocto=0A>>>>>>=A0 =A0 A1. Requirem=
ent that map against package/packages with recipes=0A>>>>>> already existin=
g in meta-enea=0A>>>>>>=A0 =A0 A2. Requirement that map against package/pac=
kages with recipes=0A>>>>>> that=0A>>>>>> exists in Yocto (but not in meta-=
enea) B. Requirement that map=0A>>>>>> against package/packages without any=
 recipe C. Requirement does not=0A>>>>>> directly map against package/packa=
ges and needs some investigation.=0A>>>>>> D. Requirement that no solution =
have been found after a more detailed=0A>>>>>> investigation.=0A>>>>>>=0A>>=
>>>>=0A>>>>>>=0A>>>>>> When the release was made available on the public re=
pository, the=0A>>>>>> packages from the A1 and A2 were integrated, a bunch=
 of them with=0A>>>>>> compilation errors:=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =
=A0 =A0 lksctp-tools=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 openais=0A>>>>>=
>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 pacemaker=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =
=A0 =A0 openhpi=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 open-iscsi-user=0A>>=
>>>>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 open-iscsi-kernel=0A>>>>>>=0A>>>>>> -=A0=
 =A0 =A0 =A0 =A0 libcap-ng=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 cluster-g=
lue=0A>>>>>>=0A>>>>>> -=A0 =A0 =A0 =A0 =A0 cluster-resource-agents=0A>>>>>>=
=0A>>>>>> The activity on the meta-cgl was resumed today and those build an=
d=0A>>>>>> integration errors will be dealt next.=0A>>>>>>=0A>>>>>>=0A>>>>>=
>=0A>>>>>> On the longer run we will try to create recipes and/or fulfill a=
ll=0A>>>>>> the other requirements from the class B, C, and D.=0A>>>>>>=0A>=
>>>>> Please do not hesitate to contact me if you have further questions.=
=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Alex=0A>>>>>>=0A>>>>=
>>=0A>>>>>>=0A>>>>>> From: Jon Aldama=0A>>>>>> Sent: Friday, June 27, 2014 =
1:07 PM=0A>>>>>> To: Alexandru Vaduva; Cosmin Moldoveanu; Jenny Andersson; =
David=0A>>>>>> Nystr=F6m=0A>>>>>> Cc: Daniel Bornaz; Adrian Dudau=0A>>>>>> =
Subject: RE: Carrier Grade layer proposal=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>=
>> Roger that! Thanks Alexandru!=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>=
>>=0A>>>>>> From: Alexandru Vaduva=0A>>>>>> Sent: den 27 juni 2014 11:43=0A=
>>>>>> To: Jon Aldama; Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m=
=0A>>>>>> Cc: Daniel Bornaz; Adrian Dudau=0A>>>>>> Subject: RE: Carrier Gra=
de layer proposal=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Hello Jon,=0A>>>>>>=
=0A>>>>>>=0A>>>>>>=0A>>>>>> We will first have an internal meeting on Monda=
y and after that I=0A>>>>>> will offer an answer to Jeff.=0A>>>>>>=0A>>>>>>=
=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Alex=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>=
>> From: Jon Aldama=0A>>>>>> Sent: Friday, June 27, 2014 12:32 PM=0A>>>>>> =
To: Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m=0A>>>>>> Cc: Alexan=
dru Vaduva; Daniel Bornaz; Adrian Dudau=0A>>>>>> Subject: RE: Carrier Grade=
 layer proposal=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Thank you Cosmin,=0A>>>=
>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Alexandru, could you please respond Jeff at =
the mailing list? (see=0A>>>>>> down=0A>>>>>> below)=0A>>>>>>=0A>>>>>>=0A>>=
>>>>=0A>>>>>> Cheers=0A>>>>>>=0A>>>>>> Jon=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>=
>>> From: Cosmin Moldoveanu=0A>>>>>> Sent: den 27 juni 2014 10:59=0A>>>>>> =
To: Jenny Andersson; Jon Aldama; David Nystr=F6m=0A>>>>>> Cc: Alexandru Vad=
uva; Daniel Bornaz; Adrian Dudau=0A>>>>>> Subject: RE: Carrier Grade layer =
proposal=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Hi,=0A>>>>>>=0A>>>>>>=0A>>>>>>=
=0A>>>>>> Alexandru Vaduva will be main responsible for interfacing with=0A=
>>>>>> community on meta-cgl topic. He will also attend Yocto Technical=0A>=
>>>>> Meetings whenever necessary from now on.=0A>>>>>>=0A>>>>>>=0A>>>>>>=
=0A>>>>>> BR,=0A>>>>>>=0A>>>>>> /Cosmin=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>>=
 From: Jenny Andersson=0A>>>>>> Sent: Friday, June 27, 2014 10:32 AM=0A>>>>=
>> To: Jon Aldama; David Nystr=F6m; Cosmin Moldoveanu=0A>>>>>> Cc: Valentin=
 Cobelea=0A>>>>>> Subject: RE: Carrier Grade layer proposal=0A>>>>>>=0A>>>>=
>>=0A>>>>>>=0A>>>>>> Hi Cosmin,=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> How too=
k over after Valentin left Enea? Could someone in your team=0A>>>>>> respon=
d.=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Thanks,=0A>>>>>>=0A>>>>>> Jenny=0A>>=
>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> From: Jon Aldama=0A>>>>>> Sent: den 27 juni=
 2014 09:28=0A>>>>>> To: David Nystr=F6m; Jenny Andersson=0A>>>>>> Cc: Vale=
ntin Cobelea=0A>>>>>> Subject: FW: Carrier Grade layer proposal=0A>>>>>>=0A=
>>>>>>=0A>>>>>>=0A>>>>>> David, Jenny,=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> =
Will any of you answer this?=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> BTW, have =
you managed to file the Yocto compatibility application?=0A>>>>>>=0A>>>>>>=
=0A>>>>>>=0A>>>>>> Regards=0A>>>>>>=0A>>>>>> Jon=0A>>>>>>=0A>>>>>>=0A>>>>>>=
=0A>>>>>> From: Osier-mixon, Jeffrey [mailto:jeffrey.osier-mixon@intel.com]=
=0A>>>>>> Sent: den 26 juni 2014 20:36=0A>>>>>> To: David Nystr=F6m; davide=
.ricci@windriver.com; challinan@gmail.com;=0A>>>>>> teodor.bobornilo@windri=
ver.com; Valentin Cobelea;=0A>>>>>> chase.maupin@ti.com; Jon Aldama; philip=
.balister@gmail.com;=0A>>>>>> kevin_mccombe@mentor.com; akuster@mvista.com;=
=0A>>>>>> jason.wessel@windriver.com; richard.purdie@linuxfoundation.org;=
=0A>>>>>> hui.geng@huawei.com; john_cherry@mentor.com;=0A>>>>>> jeffrey.osi=
er-mixon@intel.com=0A>>>>>> Cc: Philip Balister=0A>>>>>> Subject: YP: Carri=
er Grade layer proposal=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> Hi all - this i=
s a simple followup to our meeting at ELC regarding a=0A>>>>>> meta-cgl lay=
er, proposed by Enea.=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> The plan was to c=
reate a list of recipes to be included, and to start=0A>>>>>> a discussion =
on the mailing list.There is a thread on the list from=0A>>>>>> back in Apr=
il, but I don't see anything more recent than that. Has=0A>>>>>> there been=
 any progress?=0A>>>>>>=0A>>>>>>=0A>>>>>>=0A>>>>>> thanks=0A>>>>>>=0A>>>>>>=
=0A>>>>>> --=0A>>>>>> _______________________________________________=0A>>>=
>>> Openembedded-core mailing list=0A>>>>>> Openembedded-core@lists.openemb=
edded.org=0A>>>>>> http://lists.openembedded.org/mailman/listinfo/openembed=
ded-core=0A>>>>>>=0A>>>>>=0A>>>>>=0A>>>>> --=0A>>>>> Jeff Osier-Mixon @Inte=
l=0A>>>>> Yocto Project Community Manager http://yoctoproject.org=0A>>>>> -=
-=0A>>>>> _______________________________________________=0A>>>>> yocto mai=
ling list=0A>>>>> yocto@yoctoproject.org=0A>>>>> https://lists.yoctoproject=
.org/listinfo/yocto=0A>>>>=0A>>>>=0A>>>> --=0A>>>> Joe MacDonald=0A>>>> :wq=
=0A>>>=0A>>>=0A>>=0A>=0A=0A-- =0A__________________________________________=
_____=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoctopr=
oject.org/listinfo/yocto

--592913864-2135520473-1406046575=:2940
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div><span>Glad to hear that Bruce.<br></span></div> <div cla=
ss=3D"qtdSeparateBR"><br><br></div><div style=3D"display: block;" class=3D"=
yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, He=
lvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style=3D=
"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grand=
e, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"Arial" si=
ze=3D"2"> On Tuesday, July 22, 2014 7:09 PM, Bruce Ashfield &lt;bruce.ashfi=
eld@windriver.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_m=
sg_container">On 14-07-22 12:02 PM, akuster wrote:<br clear=3D"none">&gt;<b=
r clear=3D"none">&gt; On 07/22/2014 08:58 AM, Bruce Ashfield wrote:<br clea=
r=3D"none">&gt;&gt; On 14-07-22 11:54 AM, akuster wrote:<br clear=3D"none">=
&gt;&gt;&gt;
 Alexandru,<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; R=
egarding&nbsp; a few packages in category C&amp;D.<br clear=3D"none">&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt; I have latest samhain building as wel=
l as grsecurity (pax patches<br clear=3D"none">&gt;&gt;&gt; applied against=
 3.14.12) in a branch in my meta-security tree. I have a<br clear=3D"none">=
&gt;&gt;&gt; bit more testing to do before I was going to post them.<br cle=
ar=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; And on this note, we should=
 consider the kernel parts and see if getting<br clear=3D"none">&gt;&gt; th=
em into a common location is a good idea.<br clear=3D"none">&gt;&gt;<br cle=
ar=3D"none">&gt; yep.<br clear=3D"none">&gt;<br clear=3D"none">&gt;&gt; We =
already have the linux-yocto tree, and it tracks LTSI, has CVE and<br clear=
=3D"none">&gt;&gt; -stable tracking, and is maintained to support the set o=
f reference<br clear=3D"none">&gt;&gt; boards.<br clear=3D"none">&gt;&gt;<b=
r clear=3D"none">&gt;&gt;
 Creating yet more reference kernel trees doesn't help our goal of<br clear=
=3D"none">&gt;&gt; fewer trees and a discrete set of kernel versions.<br cl=
ear=3D"none">&gt;<br clear=3D"none">&gt; Agreed.<br clear=3D"none"><br clea=
r=3D"none">Great, glad to hear.<br clear=3D"none"><br clear=3D"none">I wasn=
't trying to divert the discussion, just seeing if there<br clear=3D"none">=
was anywhere I could help.<br clear=3D"none"><br clear=3D"none">I know for =
certain that Joe has a LOT of experience with grsec, and<br clear=3D"none">=
I've been helping maintain its 'tentacles' for a long time, so I'm<br clear=
=3D"none">sure we can come up with something workable when the time is righ=
t.<br clear=3D"none"><br clear=3D"none">Cheers,<div class=3D"yqt2948998071"=
 id=3D"yqtfd18718"><br clear=3D"none"><br clear=3D"none">Bruce<br clear=3D"=
none"><br clear=3D"none">&gt;<br clear=3D"none">&gt; thanks,<br clear=3D"no=
ne">&gt; Armin<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Just s=
omething to consider.<br
 clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Cheers,<br clear=3D"non=
e">&gt;&gt;<br clear=3D"none">&gt;&gt; Bruce<br clear=3D"none">&gt;&gt;<br =
clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt; grsecurity and s=
amhain aren't CGL specific and they maybe belong in a<br clear=3D"none">&gt=
;&gt;&gt; more generalize layer? just a thought.<br clear=3D"none">&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt; regards,<br clear=3D"none">&gt;&gt;&gt;=
 Armin<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br cle=
ar=3D"none">&gt;&gt;&gt; On 07/22/2014 03:52 AM, Alexandru Vaduva wrote:<br=
 clear=3D"none">&gt;&gt;&gt;&gt; Hello Joe,<br clear=3D"none">&gt;&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Here at Enea we are preparing the st=
eps needed for publishing the<br clear=3D"none">&gt;&gt;&gt;&gt; layer on t=
he open embedded meta layers initiative:<br clear=3D"none">&gt;&gt;&gt;&gt;=
 <a shape=3D"rect" href=3D"http://layers.openembedded.org/layerindex/branch=
/master/layers/"
 target=3D"_blank">http://layers.openembedded.org/layerindex/branch/master/=
layers/</a><br clear=3D"none">&gt;&gt;&gt;&gt; For this we started working =
at a web page that should contain all the<br clear=3D"none">&gt;&gt;&gt;&gt=
; relevant information regarding meta-cgl. It will be available in a<br cle=
ar=3D"none">&gt;&gt;&gt;&gt; couple of weeks. Until then the layer will be =
available internally and<br clear=3D"none">&gt;&gt;&gt;&gt; the patches sho=
uld<br clear=3D"none">&gt;&gt;&gt;&gt; be submitted as the README states: o=
n the <a shape=3D"rect" ymailto=3D"mailto:enealinux@lists.enea.com" href=3D=
"mailto:enealinux@lists.enea.com">enealinux@lists.enea.com</a><br clear=3D"=
none">&gt;&gt;&gt;&gt; mailing list. We will try to make the switch to Open=
 Embedded mailing<br clear=3D"none">&gt;&gt;&gt;&gt; list as quick as possi=
ble.<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; =
Regarding the other B, C and D packages&nbsp; that we will try to add into<=
br
 clear=3D"none">&gt;&gt;&gt;&gt; the meta-cgl layer, I will post this infor=
mation below, but keep in<br clear=3D"none">&gt;&gt;&gt;&gt; mind that this=
 information will also be available on the web page.<br clear=3D"none">&gt;=
&gt;&gt;&gt;&nbsp; &nbsp;  Category B packages:<br clear=3D"none">&gt;&gt;&=
gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  - ifenslave<br clear=3D"none">&gt;&gt;&=
gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  - evlog<br clear=3D"none">&gt;&gt;&gt;&=
gt;&nbsp; &nbsp; &nbsp; &nbsp;  - crash<br clear=3D"none">&gt;&gt;&gt;&gt;&=
nbsp; &nbsp; &nbsp; &nbsp;  - mipv6-daemon-umip<br clear=3D"none">&gt;&gt;&=
gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  - openl2tp<br clear=3D"none">&gt;&gt;&g=
t;&gt;&nbsp; &nbsp;  Category C&amp;D packages:<br clear=3D"none">&gt;&gt;&=
gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;  - drbd<br clear=3D"none">&gt;&gt;&gt;&g=
t;&nbsp; &nbsp; &nbsp; &nbsp;  - grsecurity<br clear=3D"none">&gt;&gt;&gt;&=
gt;&nbsp; &nbsp; &nbsp; &nbsp;  - logcheck<br clear=3D"none">&gt;&gt;&gt;&g=
t;&nbsp; &nbsp;
 &nbsp; &nbsp;  - makedumpfile<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp; &nb=
sp; &nbsp; &nbsp;  - numactl<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp; &nbsp=
; &nbsp; &nbsp;  - ocfs2-tools<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp; &nb=
sp; &nbsp; &nbsp;  - pam_passwdqc<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp; =
&nbsp; &nbsp; &nbsp;  - samhain<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp; &n=
bsp; &nbsp; &nbsp;  - ltt-usertrace<br clear=3D"none">&gt;&gt;&gt;&gt;&nbsp=
; &nbsp; &nbsp; &nbsp;  - ftrace<br clear=3D"none">&gt;&gt;&gt;&gt; The abo=
ve lists correspond with only the P1 requirements that we try<br clear=3D"n=
one">&gt;&gt;&gt;&gt; to fulfill for the moment. If there are any questions=
 and/or<br clear=3D"none">&gt;&gt;&gt;&gt; suggestions regarding this CGL i=
nitialtive please address them to me<br clear=3D"none">&gt;&gt;&gt;&gt; and=
 I will try to offer a response in the<br clear=3D"none">&gt;&gt;&gt;&gt; s=
hortest time possible.<br clear=3D"none">&gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Thanks,=
<br clear=3D"none">&gt;&gt;&gt;&gt; Alex<br clear=3D"none">&gt;&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;&gt; -----Original Message-----<br clear=3D"=
none">&gt;&gt;&gt;&gt; From: Joe MacDonald [mailto:<a shape=3D"rect" ymailt=
o=3D"mailto:joe@deserted.net" href=3D"mailto:joe@deserted.net">joe@deserted=
.net</a>]<br clear=3D"none">&gt;&gt;&gt;&gt; Sent: Monday, July 21, 2014 10=
:58 PM<br clear=3D"none">&gt;&gt;&gt;&gt; To: Alexandru Vaduva<br clear=3D"=
none">&gt;&gt;&gt;&gt; Cc: Jeff Osier-Mixon; <a shape=3D"rect" ymailto=3D"m=
ailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a><br clear=3D"none">&gt;&gt;&gt;&gt; Subject: Re: [yocto=
] [OE-core] Carrier Grade layer proposal<br clear=3D"none">&gt;&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;&gt; Hey Alex,<br clear=3D"none">&gt;&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; I've been away from this for a bit=
 but now I'm getting time to look
 at<br clear=3D"none">&gt;&gt;&gt;&gt; it again and I was wondering if you =
had any deeper level of detail you<br clear=3D"none">&gt;&gt;&gt;&gt; could=
 share about the work going on in meta-cgl.&nbsp; Obviously since this<br c=
lear=3D"none">&gt;&gt;&gt;&gt; is a new registration and one that will look=
 rather different from all<br clear=3D"none">&gt;&gt;&gt;&gt; of the other =
CGL registrations currently, those of us in the CGL<br clear=3D"none">&gt;&=
gt;&gt;&gt; workgroup were quite interested to see this happen. Personally =
I'm<br clear=3D"none">&gt;&gt;&gt;&gt; also interested in this since it's t=
he kind of thing I've been doing<br clear=3D"none">&gt;&gt;&gt;&gt; for a l=
ong time now and if I can, I'd like to help out.&nbsp; In<br clear=3D"none"=
>&gt;&gt;&gt;&gt; particular, if you've got a list of, say, the category B+=
 items, that<br clear=3D"none">&gt;&gt;&gt;&gt; might be something I can do=
 that will be independent of your work on<br clear=3D"none">&gt;&gt;&gt;&gt=
; the more
 active cat-A stuff.&nbsp; OTOH, cat-A is easy to work on since<br clear=3D=
"none">&gt;&gt;&gt;&gt; those are the items I saw when I was working with m=
eta-cgl a month or<br clear=3D"none">&gt;&gt;&gt;&gt; so back.&nbsp; I know=
 you guys are focused on your part of it, but if you<br clear=3D"none">&gt;=
&gt;&gt;&gt; had sort of a "here's how to help us" guide, that'd be awesome=
.<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt; Als=
o, I probably missed it, but is the intent to use either the yocto<br clear=
=3D"none">&gt;&gt;&gt;&gt; list or the oe list for all meta-cgl discussions=
, or do you have a<br clear=3D"none">&gt;&gt;&gt;&gt; dedicated list we can=
 sign up for?&nbsp; I see you have guidance for<br clear=3D"none">&gt;&gt;&=
gt;&gt; sending submissions to meta-cgl, but is that a list that's open to =
the<br clear=3D"none">&gt;&gt;&gt;&gt; community, or is it an internal alia=
s / distribution list for Enea?<br clear=3D"none">&gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt; Thanks,<br clear=3D"none">&gt;&gt;&gt;&gt;=
 -J.<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<=
br clear=3D"none">&gt;&gt;&gt;&gt; On Mon, Jul 7, 2014 at 2:43 PM, Alexandr=
u Vaduva<br clear=3D"none">&gt;&gt;&gt;&gt; &lt;<a shape=3D"rect" ymailto=
=3D"mailto:Alexandru.Vaduva@enea.com" href=3D"mailto:Alexandru.Vaduva@enea.=
com">Alexandru.Vaduva@enea.com</a>&gt; wrote:<br clear=3D"none">&gt;&gt;&gt=
;&gt;&gt; Hello Jeff,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"no=
ne">&gt;&gt;&gt;&gt;&gt; The errors are package related.<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt; Meta-cgl can be seen as a non BSP specific layer (it c=
an be viewed as<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; the LSB from poky).<=
br clear=3D"none">&gt;&gt;&gt;&gt;&gt; I already started fixing a number, o=
f the already existing errors and<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; th=
e patches will be added upstream after proper testing.<br clear=3D"none">&g=
t;&gt;&gt;&gt;&gt; I will
 continue the bug fixing and package integration (into the<br clear=3D"none=
">&gt;&gt;&gt;&gt;&gt; core-image-cgl image) process and after that is fini=
shed I will<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; continue with the Catego=
ry B packages.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt; I will also try to keep you guys informed about the lates=
t updates,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; mainly on the YPTM, but f=
or those who cannot wait that much, there is<br clear=3D"none">&gt;&gt;&gt;=
&gt;&gt; the Git repository with which they can interact:<br clear=3D"none"=
>&gt;&gt;&gt;&gt;&gt; <a shape=3D"rect" href=3D"http://git.enea.com/git/?p=
=3Dlinux/meta-cgl.git;a=3Dsummary" target=3D"_blank">http://git.enea.com/gi=
t/?p=3Dlinux/meta-cgl.git;a=3Dsummary</a><br clear=3D"none">&gt;&gt;&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;=
&gt;&gt; Have a good day,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; Alex<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; -----Original Message-----<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt; From: <a shape=3D"rect" ymailto=3D"mailto:je=
fro.net@gmail.com" href=3D"mailto:jefro.net@gmail.com">jefro.net@gmail.com<=
/a> [mailto:<a shape=3D"rect" ymailto=3D"mailto:jefro.net@gmail.com" href=
=3D"mailto:jefro.net@gmail.com">jefro.net@gmail.com</a>] On Behalf Of<br cl=
ear=3D"none">&gt;&gt;&gt;&gt;&gt; Jeff Osier-Mixon<br clear=3D"none">&gt;&g=
t;&gt;&gt;&gt; Sent: Monday, July 07, 2014 9:22 PM<br clear=3D"none">&gt;&g=
t;&gt;&gt;&gt; To: Alexandru Vaduva<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; =
Subject: Re: [OE-core] Carrier Grade layer proposal<br clear=3D"none">&gt;&=
gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; Thanks, Alex.<br cle=
ar=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; Oth=
ers on the mailing lists, if you have any comments on the contents<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt; of
 this new layer, please mention them on this thread.<br clear=3D"none">&gt;=
&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; Re compilation erro=
rs, were they specific to a BSP or were they<br clear=3D"none">&gt;&gt;&gt;=
&gt;&gt; general errors in the packages?<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; thanks<br clear=3D"none">&gt;&g=
t;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; On Mon, Jun 30, 2014 =
at 8:01 AM, Alexandru Vaduva<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; &lt;<a =
shape=3D"rect" ymailto=3D"mailto:Alexandru.Vaduva@enea.com" href=3D"mailto:=
Alexandru.Vaduva@enea.com">Alexandru.Vaduva@enea.com</a>&gt; wrote:<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Hello Jeff,<br clear=3D"none">&gt;&gt;&=
gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; The a=
vailable layer is a work in progress.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt=
;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; For the moment we have done an int=
ernal mapping of the packages<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; ne=
eded inside meta-cgl layer. The mapping is done as following:<br clear=3D"n=
one">&gt;&gt;&gt;&gt;&gt;&gt; A. Requirement that map against package/packa=
ges with recipes that<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; already ex=
ists in Yocto<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;&nbsp; &nbsp; A1. R=
equirement that map against package/packages with recipes<br clear=3D"none"=
>&gt;&gt;&gt;&gt;&gt;&gt; already existing in meta-enea<br clear=3D"none">&=
gt;&gt;&gt;&gt;&gt;&gt;&nbsp; &nbsp; A2. Requirement that map against packa=
ge/packages with recipes<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; that<br=
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; exists in Yocto (but not in meta-e=
nea) B. Requirement that map<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; aga=
inst package/packages without any recipe C. Requirement does not<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; directly map against package/packa=
ges and needs some investigation.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt=
; D. Requirement that no solution have been found after a more detailed<br =
clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; investigation.<br clear=3D"none">&g=
t;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t; When the release was made available on the public repository, the<br cle=
ar=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; packages from the A1 and A2 were integ=
rated, a bunch of them with<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; comp=
ilation errors:<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none=
">&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lksctp-tools=
<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&=
gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; openais<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pacemaker<br clear=3D"none">&g=
t;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; openhpi<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; open-iscsi-user<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; open=
-iscsi-kernel<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libcap-ng<br c=
lear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&g=
t;&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cluster-glue<br clear=3D"none">&=
gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; -&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; cluster-resource-agents<br clear=3D"none">&gt;&=
gt;&gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; The activity on the meta-cgl was r=
esumed today and those build and<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;=
 integration errors will be dealt next.<br clear=3D"none">&gt;&gt;&gt;&gt;&=
gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&g=
t;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; On the longer=
 run we will try to create recipes and/or fulfill all<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt;&gt; the other requirements from the class B, C, and D.<br=
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt; Please do not hesitate to contact me if you have further questions=
.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;=
&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&=
gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Alex<br clear=3D"none">&gt;&gt;&gt;&gt;&=
gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; From: Jon Aldama<br cle=
ar=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Sent: Friday, June 27, 2014 1:07 PM<br=
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: Alexandru Vaduva; Cosmin Moldo=
veanu; Jenny Andersson; David<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Ny=
str=F6m<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Cc: Daniel Bornaz; Adria=
n Dudau<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Subject: RE: Carrier Gra=
de layer proposal<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"no=
ne">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br =
clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Roger that! Thanks Alexandru!<br cl=
ear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;=
&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"non=
e">&gt;&gt;&gt;&gt;&gt;&gt;
 From: Alexandru Vaduva<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Sent: de=
n 27 juni 2014 11:43<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: Jon Ald=
ama; Cosmin Moldoveanu; Jenny Andersson; David Nystr=F6m<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt; Cc: Daniel Bornaz; Adrian Dudau<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt; Subject: RE: Carrier Grade layer proposal<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
;&gt;&gt;&gt; Hello Jon,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; We will first have an intern=
al meeting on Monday and after that I<br clear=3D"none">&gt;&gt;&gt;&gt;&gt=
;&gt; will offer an answer to Jeff.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&g=
t;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Alex<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt; From: Jon Aldama<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Sent: Frida=
y, June 27, 2014 12:32 PM<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: Co=
smin Moldoveanu; Jenny Andersson; David Nystr=F6m<br clear=3D"none">&gt;&gt=
;&gt;&gt;&gt;&gt; Cc: Alexandru Vaduva; Daniel Bornaz; Adrian Dudau<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Subject: RE: Carrier Grade layer propos=
al<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt; Thank you Cosmin,<br clear=3D"none">&gt;&gt;&gt;&g=
t;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Alexandru, could you please respon=
d Jeff at the mailing list? (see<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;=
 down<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; below)<br clear=3D"none">&=
gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t; Cheers<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;=
&gt;&gt;&gt;&gt;&gt; Jon<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; From: Cosmin Moldoveanu<br c=
lear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Sent: den 27 juni 2014 10:59<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: Jenny Andersson; Jon Aldama; David =
Nystr=F6m<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Cc: Alexandru Vaduva; =
Daniel Bornaz; Adrian Dudau<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Subj=
ect: RE: Carrier Grade layer
 proposal<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;=
&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D=
"none">&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&g=
t;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Alexandru Vaduva =
will be main responsible for interfacing with<br clear=3D"none">&gt;&gt;&gt=
;&gt;&gt;&gt; community on meta-cgl topic. He will also attend Yocto Techni=
cal<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Meetings whenever necessary =
from now on.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&=
gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; BR,<br clear=3D"none">&gt;&gt;&gt;&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; /Cosmin<br clear=3D"none"=
>&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt; From: Jenny Andersson<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; S=
ent: Friday, June 27, 2014 10:32 AM<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt; To: Jon Aldama; David Nystr=F6m; Cosmin Moldoveanu<br clear=3D"none">&g=
t;&gt;&gt;&gt;&gt;&gt; Cc: Valentin Cobelea<br clear=3D"none">&gt;&gt;&gt;&=
gt;&gt;&gt; Subject: RE: Carrier Grade layer proposal<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t; Hi Cosmin,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; How took over after Valentin left Enea?=
 Could someone in your team<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; resp=
ond.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&=
gt;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;=
&gt;&gt; Thanks,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"non=
e">&gt;&gt;&gt;&gt;&gt;&gt; Jenny<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt=
;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;=
&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; From: Jon Aldama<br=
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Sent: den 27 juni 2014 09:28<br cl=
ear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: David Nystr=F6m; Jenny Andersson<=
br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Cc: Valentin Cobelea<br clear=3D=
"none">&gt;&gt;&gt;&gt;&gt;&gt; Subject: FW: Carrier Grade layer proposal<b=
r clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt=
;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;=
&gt;&gt;&gt;&gt;&gt; David, Jenny,<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt=
;&gt;&gt;&gt;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Will any of you answer this?<br cl=
ear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt=
;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;=
&gt;&gt;&gt;&gt; BTW, have you managed to file the Yocto compatibility appl=
ication?<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&=
gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"=
none">&gt;&gt;&gt;&gt;&gt;&gt; Regards<br clear=3D"none">&gt;&gt;&gt;&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Jon<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&g=
t; From: Osier-mixon, Jeffrey [mailto:<a shape=3D"rect" ymailto=3D"mailto:j=
effrey.osier-mixon@intel.com" href=3D"mailto:jeffrey.osier-mixon@intel.com"=
>jeffrey.osier-mixon@intel.com</a>]<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&=
gt; Sent: den 26 juni 2014
 20:36<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; To: David Nystr=F6m; <a s=
hape=3D"rect" ymailto=3D"mailto:davide.ricci@windriver.com" href=3D"mailto:=
davide.ricci@windriver.com">davide.ricci@windriver.com</a>; <a shape=3D"rec=
t" ymailto=3D"mailto:challinan@gmail.com" href=3D"mailto:challinan@gmail.co=
m">challinan@gmail.com</a>;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; <a s=
hape=3D"rect" ymailto=3D"mailto:teodor.bobornilo@windriver.com" href=3D"mai=
lto:teodor.bobornilo@windriver.com">teodor.bobornilo@windriver.com</a>; Val=
entin Cobelea;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; <a shape=3D"rect"=
 ymailto=3D"mailto:chase.maupin@ti.com" href=3D"mailto:chase.maupin@ti.com"=
>chase.maupin@ti.com</a>; Jon Aldama; <a shape=3D"rect" ymailto=3D"mailto:p=
hilip.balister@gmail.com" href=3D"mailto:philip.balister@gmail.com">philip.=
balister@gmail.com</a>;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; <a shape=
=3D"rect" ymailto=3D"mailto:kevin_mccombe@mentor.com"
 href=3D"mailto:kevin_mccombe@mentor.com">kevin_mccombe@mentor.com</a>; <a =
shape=3D"rect" ymailto=3D"mailto:akuster@mvista.com" href=3D"mailto:akuster=
@mvista.com">akuster@mvista.com</a>;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;=
&gt; <a shape=3D"rect" ymailto=3D"mailto:jason.wessel@windriver.com" href=
=3D"mailto:jason.wessel@windriver.com">jason.wessel@windriver.com</a>; <a s=
hape=3D"rect" ymailto=3D"mailto:richard.purdie@linuxfoundation.org" href=3D=
"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.=
org</a>;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; <a shape=3D"rect" ymail=
to=3D"mailto:hui.geng@huawei.com" href=3D"mailto:hui.geng@huawei.com">hui.g=
eng@huawei.com</a>; <a shape=3D"rect" ymailto=3D"mailto:john_cherry@mentor.=
com" href=3D"mailto:john_cherry@mentor.com">john_cherry@mentor.com</a>;<br =
clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; <a shape=3D"rect" ymailto=3D"mailto=
:jeffrey.osier-mixon@intel.com" href=3D"mailto:jeffrey.osier-mixon@intel.co=
m">jeffrey.osier-mixon@intel.com</a><br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; Cc: Philip Balister<br clear=3D"no=
ne">&gt;&gt;&gt;&gt;&gt;&gt; Subject: YP: Carrier Grade layer proposal<br c=
lear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&g=
t;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt=
;&gt;&gt;&gt;&gt; Hi all - this is a simple followup to our meeting at ELC =
regarding a<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; meta-cgl layer, prop=
osed by Enea.<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">=
&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clea=
r=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; The plan was to create a list of recipe=
s to be included, and to start<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; a=
 discussion on the mailing list.There is a thread on the list from<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; back in April, but I don't see anything =
more recent than that. Has<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; there=
 been any
 progress?<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt=
;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=
=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; thanks<br clear=3D"none">&gt;&gt;&gt;&gt=
;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;=
&gt;&gt;&gt;&gt;&gt; --<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt; ________=
_______________________________________<br clear=3D"none">&gt;&gt;&gt;&gt;&=
gt;&gt; Openembedded-core mailing list<br clear=3D"none">&gt;&gt;&gt;&gt;&g=
t;&gt; <a shape=3D"rect" ymailto=3D"mailto:Openembedded-core@lists.openembe=
dded.org" href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembe=
dded-core@lists.openembedded.org</a><br clear=3D"none">&gt;&gt;&gt;&gt;&gt;=
&gt; <a shape=3D"rect" href=3D"http://lists.openembedded.org/mailman/listin=
fo/openembedded-core" target=3D"_blank">http://lists.openembedded.org/mailm=
an/listinfo/openembedded-core</a><br clear=3D"none">&gt;&gt;&gt;&gt;&gt;&gt=
;<br
 clear=3D"none">&gt;&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;&gt;=
<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; --<br clear=3D"none">&gt;&gt;&gt;&g=
t;&gt; Jeff Osier-Mixon @Intel<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; Yocto=
 Project Community Manager <a shape=3D"rect" href=3D"http://yoctoproject.or=
g/" target=3D"_blank">http://yoctoproject.org</a><br clear=3D"none">&gt;&gt=
;&gt;&gt;&gt; --<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; ___________________=
____________________________<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; yocto m=
ailing list<br clear=3D"none">&gt;&gt;&gt;&gt;&gt; <a shape=3D"rect" ymailt=
o=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</a><br clear=3D"none">&gt;&gt;&gt;&gt;&gt; <a shape=
=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"=
>&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;&gt;<br clear=3D"none">&gt;=
&gt;&gt;&gt; --<br
 clear=3D"none">&gt;&gt;&gt;&gt; Joe MacDonald<br clear=3D"none">&gt;&gt;&g=
t;&gt; :wq<br clear=3D"none">&gt;&gt;&gt;<br clear=3D"none">&gt;&gt;&gt;<br=
 clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;<br clear=3D"none"><br clear=
=3D"none">-- <br clear=3D"none">___________________________________________=
____<br clear=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"rec=
t" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" hre=
f=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https=
://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div><br><b=
r></div>  </div> </div>  </div> </div></body></html>

--592913864-2135520473-1406046575=:2940--
