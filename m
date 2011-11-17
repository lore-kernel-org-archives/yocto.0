Return-Path: <Paul.Ourada@Covidien.com>
Received: from mail170.messagelabs.com (mail170.messagelabs.com
	[216.82.253.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7640FE00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 20:04:04 -0800 (PST)
X-Env-Sender: Paul.Ourada@Covidien.com
X-Msg-Ref: server-8.tower-170.messagelabs.com!1321502633!37391623!4
X-Originating-IP: [146.214.96.96]
X-StarScan-Version: 6.3.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 10859 invoked from network); 17 Nov 2011 04:04:00 -0000
Received: from unknown (HELO inet-edg2.exchange.local) (146.214.96.96)
	by server-8.tower-170.messagelabs.com with AES128-SHA encrypted SMTP;
	17 Nov 2011 04:04:00 -0000
Received: from TAMANS-HT100V.thcg.net (10.80.9.28) by mx04ni.covidien.com
	(146.214.96.96) with Microsoft SMTP Server (TLS) id 14.1.339.1;
	Wed, 16 Nov 2011 22:03:52 -0600
Received: from TAMANS-MB100V.thcg.net ([169.254.8.76]) by
	TAMANS-HT100V.thcg.net ([10.80.9.28]) with mapi id 14.01.0339.001;
	Wed, 16 Nov 2011 23:03:54 -0500
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto usability questions
Thread-Index: AQHMpKxPA89sJAXelkm9stGBBvvorpWwfIQA///gB/o=
Date: Thu, 17 Nov 2011 04:03:53 +0000
Message-ID: <4D9E0AFD9C2FCC428A8EAADA898F5B2D0E8553@TAMANS-MB100V.thcg.net>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>,
	<4EC449C2.1000706@windriver.com>
In-Reply-To: <4EC449C2.1000706@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.12.22]
MIME-Version: 1.0
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Thu, 17 Nov 2011 04:04:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I apologize in advance for the top-post.=0A=
=0A=
Like Mark, I'm a  20+ year veteran of "ordinary" embedded development, and =
so cross compilation is old hat for me as well. The usual commercial cross =
compilers, linkers, RTOSes, debuggers, and other libraries are usually fair=
ly well integrated. Those types of environments tolerate their host environ=
ments fairly well, because it's pretty easy to keep everything separated.=
=0A=
=0A=
I am much newer to Linux and embedded Linux development. I haven't used the=
 SDK for Yocto yet, but I have used the Timesys SDK a little. For writing n=
ew code/apps, it's fairly straightforward - set up some environment variabl=
es, write a makefile and use cross_make, cross_configure, etc. I set up the=
 embedded target to PXE boot, which keeps all executables and RFS on the ho=
st workstation. So for development one merely needs to drop the compiled ap=
p and any required configuration onto the RFS on the workstation. For writi=
ng kernel-level stuff, such as kernel mode drivers, one pretty much has to =
use the TimeSys factory (an extension to the kernel make environment from w=
hat I can tell).  =0A=
=0A=
If one wants to use the TimeSys factory so that proprietary apps are built =
and loaded/installed into the RFS automagically, or build packages which ar=
e not on the TimeSys server, then one writes what is essentially the equiva=
lent of the bitbake recipe, only in makefile format. It has all the same so=
rts of process steps: fetch, unpack, patch, auto/configure, compile, instal=
l.=0A=
=0A=
Of course PXE boot can be set up for Yocto projects - I've already done it =
for the Kontron Atom board we're going to use in our next product. I hacked=
 out the bzImage and root file system from the cpio image and plopped them =
into the tftpboot and exported rfs directory, and bingo - PXE booting!=0A=
=0A=
Frankly, as a medical device software developer, I find the "recipe/makefil=
e" paradigm much more familiar and preferable to the "app" developer paradi=
gm. We have to be able to recreate bit-accurate images for our devices. A r=
elatively consistent paradigm for accomplishing this is much better than co=
bbling together a bunch of ad hoc scripts.=0A=
=0A=
At any rate, it seems to me that writing recipes is writing recipes, just l=
ike once you've used 3 or 4 editors or word processors, then you pretty muc=
h know what the score is when you go to pick up the 5th. Bitbake recipes ar=
en't all that different from makefiles, except for the syntax,and learning =
the various meanings of different "build variables" -- oh, and using bitbak=
e/python as glueinstead of jam, or make. I think that this has been the big=
gest source of frustration for me wrt to Yocto: Trying to map what I alread=
y know onto a new paradigm. I know - after 20 years, the mud gets a little =
thick and hard. ;)=0A=
=0A=
But I understand the need to make things easier for the less experienced de=
veloper. And I get that cross compiling an embedded Linux OS is more intert=
wined with the host workstation OS than other RTOSes, even when they are co=
mpiled on a *nix workstation. One way that I'm addressing this for my devel=
opment team (which has several never-done-Linux-no-way-no-how types) is fin=
ding links to relevant tutorials and sprinkling them in places they're like=
ly to need the info. Although there is a ton of documentation out there, it=
's not always in easy to find places.=0A=
=0A=
As a relative newcomer to Yocto and OE and bitbake, I can't agree with Mark=
 more regarding examples and documentation. I'd suggest that you make a par=
t of your process finding an inexperienced someone to run through your docu=
mentation and try to implement the various different features, or demonstra=
te knowledge of key concepts. The questions such a person might ask are lik=
ely pointers to holes in your documentation or process. This could be a goo=
d Google Summer of Code type exercise. Not as sexy as some, but definitely =
a big payoff for Yocto.=0A=
=0A=
Mark mentioned the need for adding packages which are not already in the re=
cipe base, but perhaps already exist in a desktop form. Making it easy to c=
ontribute seems like a common FOSS practice. For the difficulty aspect, som=
eone mentioned in the Qt/OpenSSL thread recently that RPMs have a lot of th=
e dependency information built into them, and I suspect also configuration =
files for install, or recipes for creating them. I also read in one of the =
Yocto blogs that someone on the Kernel side created a script to keep Kconfi=
g fragments synched across BSPs. Might it be possible to write a script to =
mine a desktop RPM (or any other usable package format), and their associat=
ed makefile(s) to create as much of the bones of a bitbake recipe as can be=
 gleaned from the desktop package? It might be as complex a task as the aut=
omake process itself. :)=0A=
=0A=
Hope there was some useful information in there somewhere. :)=0A=
=0A=
Paul Ourada=0A=
Sr Principal Software Engineer=0A=
Covidien, Surgical Solutions, Energy-based Devices=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Mark Hatle [mark.hatle@windriver.com]=0A=
Sent: Wednesday, November 16, 2011 4:39 PM=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Yocto usability questions=0A=
=0A=
On 11/16/11 4:07 PM, Jeff Osier-Mixon wrote:=0A=
> Mark Hatle said:=0A=
>=0A=
>     Yocto is a cross-compiled build environment. This is a departure to a=
 lot of=0A=
>     the Moblin/MeeGo work that has occurred in the past. The advantages a=
re you=0A=
>     can use any commodity PC to target any (supported) architecture.=0A=
>     Disadvantages are that when you introduce new code, you need to ensur=
e that=0A=
>     it has a recipe (build instructions for bitbake) and can cross compil=
e. If=0A=
>     everyone has to do the same work over and over, this can be time cons=
uming=0A=
>     and counter productive. If people work together, the time and support=
 burden=0A=
>     are dramatically reduced. This can help negate issues people have had=
 in the=0A=
>     past with cross compiling. Note: Yocto -does- have a self hosted comp=
ile=0A=
>     environment if it is needed, this is usually when cross compiling isn=
't easy=0A=
>     to do for some reason.=0A=
>=0A=
>=0A=
> Mark & everyone else listening:=0A=
>=0A=
> Would you say that (1) the need for a recipe and (2) the requirement to=
=0A=
> cross-compile are two of the most major usability or learning-curve=0A=
> disadvantages of working with the Yocto Project (and oe-core)? What would=
 be a=0A=
> third disadvantage from a usability standpoint?=0A=
=0A=
1) Recipe isn't needed, unless you want automatically reproduced builds and=
 to=0A=
share the instructions with others... which is one our our goals.=0A=
=0A=
I don't see the recipe as anything different then an SRPM, Debian src.tgz, =
etc.=0A=
  The only obstacle is that it's "different" that what desktop distribution=
s do.=0A=
=0A=
2) I think cross compilation is by far the largest obstacle.  People not=0A=
familiar with the GNU auto tools, cross compiling in general, or simply=0A=
inexperienced developers seem to have a lot of problems with this.  I think=
=0A=
OE/Yocto does a good job at providing GNU auto tools and make helpers, but =
it's=0A=
far from perfect.  As far as how to improve it...  we need to keep incremen=
tally=0A=
improving our support, documentations and examples.  We also need to foster=
 a=0A=
community where people share the work they've already done... thus eliminat=
ing=0A=
this issue.  (The meta-oe layer is a good place for this already.)=0A=
=0A=
I'm sure there are other usability issues, but I've been doing cross compil=
ation=0A=
for so long that I'm a bit blind to some of the issues.=0A=
=0A=
To me the biggest thing we need to do is make sure someone who is familiar =
with=0A=
desktop Linux can step in and apply what they know to building a recipe and=
=0A=
fixing cross compilation problems.  If we can do that -- it will go a long =
way=0A=
toward helping resolve the issues that cause people to do self-hosted=0A=
compilation on slow target systems.  (Note there are some things that are s=
imply=0A=
complicated and difficult to do like Firefox.. for those the only answer is=
 to=0A=
have "experts" do the work and make it available to the novices so they can=
 see=0A=
and understand how to work around various issues.)=0A=
=0A=
> Another way to put it: if you could change three things about the Yocto P=
roject=0A=
> to make it more approachable for someone who has never used it before, wh=
at=0A=
> would they be?=0A=
=0A=
To re-iterate:=0A=
=0A=
*) We need a resource for contributed packages (meta-oe?) that will elimina=
te=0A=
most of the problem.=0A=
=0A=
*) We need good examples of problems and solutions to cross compilation dif=
ficulties=0A=
=0A=
*) We need to continue to identify "common" issues and work to resolve them=
 in=0A=
the tooling we already support=0A=
=0A=
--Mark=0A=
=0A=
> --=0A=
> Jeff Osier-Mixon http://jefro.net/blog=0A=
> Yocto Project Community Manager @Intel http://yoctoproject.org=0A=
> <http://yoctoproject.org/>=0A=
>=0A=
>=0A=
>=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

