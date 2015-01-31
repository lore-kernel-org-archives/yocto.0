Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E013E00874; Sat, 31 Jan 2015 04:30:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D239BE00546
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 04:30:37 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t0VCUNfp024384;
	Sat, 31 Jan 2015 23:00:24 +1030
Message-Id: <34103b97e009ed7e6dde04713a1c2b9d4cdeeb0b@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Martin Jansa" <martin.jansa@gmail.com>,
	"Simon Bolek" <simon.bolek@googlemail.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <20150128195412.GJ2477@jama>
Date: Sat, 31 Jan 2015 23:00:23 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Jan 2015 12:30:49 -0000
Content-Type: multipart/alternative;
	boundary="=_03a5a7809e5ae9de092492a74c12ae51"

--=_03a5a7809e5ae9de092492a74c12ae51
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A=0A=09Hello Martin,=0AThanks for your reply.=0AI managed to fix the p=
roblem of referring to 5.4 instead of 5.3.2 by=0Achecking out the master=
 branch instead of the dizzy branch of=0Ameta-qt5.=0A=0AHowever my probl=
em is with the do_fetch. Most of the do_fetch work=0Afine but=C2=A0 I ge=
t the folliowing two errors:=0AERROR: Function failed: Fetcher failure f=
or URL:=0A'http://download.qt-project.org/official_releases/qt/5.4/5.4.0=
/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'.=0AUnable to fetc=
h URL from any source=0AERROR: Function failed: Fetcher failure for URL:=
=0A'http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submod=
ules/qtbase-opensource-src-5.4.0.tar.xz'.=0AUnable to fetch URL from any=
 source.=0A=0AI can downlond these tarballs manually without any problem=
 but I=0Acannot get bitbake to do it for me. All other entries in meta-q=
t5=0Aseem fine.=0A=0A=09I have tried to get this to work manullay by :=
=0A=C2=A01.=C2=A0 downloaded the two tarballs and put them in the direct=
ory=0A/home/lachlan/poky-1.7/local-mirror=0A=C2=A02. adding to the local=
conf=0A=C2=A0=C2=A0=C2=A0=C2=A0 INHERIT +=3D "own-mirrors"=0A=C2=A0=C2=
=A0=C2=A0=C2=A0 SOURCE_MIRROR_URL =3D "file://.*=0Afile:///home/lachlan/=
poky-1,7/local-mirror"=0A=0A=09but this gives checksum errors=0A=0A=09An=
y idea how I can fix the problem of downloading from the source,=0Aor is=
 their a manula workaround ?=0A=0A=09Thanks=0A=0A=09Lachlan=0A=0A----- O=
riginal Message -----=0A From: "Martin Jansa" .jansa@gmail.com> =0ATo:"S=
imon Bolek" =0ACc:, =0ASent:Wed, 28 Jan 2015 20:54:12 +0100=0ASubject:Re=
: [yocto] meta-qt5 problem in yocto 1.7=0A=0A On Wed, Jan 28, 2015 at 07=
:31:35PM +0100, Simon Bolek wrote:=0A > Hi Lachlan,=0A=0A I'm getting lo=
st in HTML format of previous message so I'll just=0Areply=0A on top :/.=
=0A=0A The redirect should be fine, but sometimes it gives you broken=0A=
mirror.=0A e.g. today I've seen couple of 5.1.1 builds fail to fetch, be=
cause=0Athey=0A were redirected to http://mirrors.neusoft.edu.cn which w=
as returning=0A HTTP 500.=0A=0A git recipes in older branches are also w=
orking only from already=0A populated premirror, because upstream rename=
d 5.[012] branches to=0A old/5.[012], that's why it shows current SRCREV=
 to exist in=0Aorigin/5.4=0A (after you call "git remote prune origin")=
=0A=0A I've just cherry-picked=0A pick 76af63c qt3d: change to 'dev' bra=
nch=0A from master to dizzy to fix qt3d branch.=0A=0A Similar problem ex=
ist in qtwayland recipes where the branches were=0Aalso=0A rewritten and=
 pruned when first 5.4 release was created.=0A=0A If you find issue like=
 this, just update the branch parameter (based=0Aon=0A git branch -a --c=
ontains and send me the patch (as described in=0A README). Such fixes ar=
e perfectly fine for meta-qt5 release=0Abranches.=0A=0A Regards,=0A=0A >=
 There is a redirection, yes, and this should not be a problem, as=0Afar=
 as=0A > I'm concerned. Why it does not work for those particular recipe=
s=0Aof yours,=0A > i have no clue. BUT, what I would do, is to bitbake=
 =0A > trying to narrow down the problem.=0A > When you still have probl=
ems when bitbaking single recipes, you=0Amight try=0A > to override the=
 SRC_URI from qt5-{PV}.inc (in my case=0Aqt5-5.3.2.inc, yours=0A > might=
 be different)=0A > =0A > Whether those are reasonalble advices, well, I=
 am not 100% sure,=0Abut maybe=0A > Martin Jansa would help here. I also=
 have some problems with=0Agenerating=0A > meta-toolchain-qt5, which I a=
lready posted here.=0A > =0A > =0A > @Martin: i was so bold to email you=
 directly. I apoligize if this=0Ais not=0A > welcome, please correct me=
 and i will not do this again.=0A > =0A > best regards=0A > simon :-)=0A=
 > =0A > Message: 7=0A > > Date: Tue, 27 Jan 2015 01:32:43 +1030=0A > >=
 From: peterengcomau001@adam.com.au [4]=0A > > To: yocto@yoctoproject.or=
g [5]=0A > > Subject: [yocto] meta-qt5 problem in yocto 1.7=0A > > Messa=
ge-ID:=0A > > ? ? ? ?=0A > > Content-Type: text/plain; charset=3D"utf-8"=
=0A > >=0A > > I have just downloaded yocto poky 1.7 and try to build an=
 image.=0AI=0A > > get=0A > > teh follwing problems with fetching qt5 so=
urce:=0A > > Summary: 5 tasks failed:=0A > > ? /home/lachlan/poky-1.7/me=
ta-qt5/recipes-qt/qt5/qt3d_git.bb,=0A > > do_fetch=0A > > ?=0A > >=0A >=
 >=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.b=
b,=0A > > do_fetch=0A > > ?=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt=
/qt5/qtwebkit_5.3.2.bb,=0A > > do_fetch=0A > > ?=0A > >=0A > >=0A/home/l=
achlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/=0A >=
 > gstreamer1.0-plugins-hantro_1.0.bb,=0A > > do_configure=0A > > ?=0A >=
 >=0A > >=0A/home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/ob=
p-utils_git.bb=0A > > ,=0A > > do_install=0A > >=0A > > I presume the la=
st two problems(do_configure & do_install)?=0Aresult=0A > > from depende=
ncies on the previous three failed fetches.=0A > >=0A > > The more compl=
ete error code for teh first three errors is:=0A > > WARNING: Failed to=
 fetch URL=0A > > git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [7]=
, attempting=0A > > MIRRORS=0A > > if available=0A > > ERROR: Fetcher fa=
ilure: Unable to find revision=0A > > 8a9723d7420829a2ba0141a9f7d8dc8cd1=
1d8331 in branch master even=0Afrom=0A > > upstream=0A > > ERROR: Functi=
on failed: Fetcher failure for URL:=0A > > 'git://qt.gitorious.org/qt/qt=
3d.git;branch=3Dmaster [8]'. Unable=0Ato=0A > > fetch=0A > > URL from an=
y source.=0A > > ERROR: Logfile of failure stored in:=0A > >=0A > >=0A >=
 >=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-l=
inux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.d=
o_fetch.29304=0A > > ERROR: Task 1993=0A > > (/home/lachlan/poky-1.7/met=
a-qt5/recipes-qt/qt5/qt3d_git.bb,=0A > > do_fetch) failed with exit code=
 '1'=0A > > WARNING: Failed to fetch URL=0A > >=0A > >=0Ahttp://download=
qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-o=
pensource-src-5.3.2.tar.xz=0A > > [9],=0A > > attempting MIRRORS if avai=
lable=0A > > ERROR: Fetcher failure: Fetch command failed with exit code=
 4,=0Ano=0A > > output=0A > > ERROR: Function failed: Fetcher failure fo=
r URL:=0A > >=0A > > '=0A > >=0Ahttp://download.qt-project.org/official_=
releases/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.x=
z=0A > > [10]'.=0A > > Unable to fetch URL from any source.=0A > > ERROR=
: Logfile of failure stored in:=0A > >=0A > >=0A > >=0A/home/lachlan/pok=
y-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtmultime=
dia/5.3.2-r0/temp/log.do_fetch.7762=0A > > ERROR: Task 535=0A > >=0A > >=
=0A(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb=
,=0A > > do_fetch) failed with exit code '1'=0A > > WARNING: Failed to f=
etch URL=0A > > http://www.apache.org/dist/subversion/subversion-1.8.9.t=
ar.bz2=0A[11],=0A > > attempting MIRRORS if available=0A > > WARNING: Fa=
iled to fetch URL=0A > >=0A > >=0Ahttp://download.qt-project.org/officia=
l_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz=
=0A > > [12],=0A > > attempting MIRRORS if available=0A > > ERROR: Fetch=
er failure: Fetch command failed with exit code 4,=0Ano=0A > > output=0A=
 > > ERROR: Function failed: Fetcher failure for URL:=0A > >=0A > > '=0A=
 > >=0Ahttp://download.qt-project.org/official_releases/qt/5.3/5.3.2/sub=
modules/qtwebkit-opensource-src-5.3.2.tar.xz=0A > > [13]'.=0A > > Unable=
 to fetch URL from any source.=0A > > ERROR: Logfile of failure stored i=
n:=0A > >=0A > >=0A > >=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/co=
rtexa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19=
587=0A > > ERROR: Task 675=0A > >=0A(/home/lachlan/poky-1.7/meta-qt5/rec=
ipes-qt/qt5/qtwebkit_5.3.2.bb,=0A > > do_fetch) failed with exit code '1=
'=0A > > NOTE: validating kernel config, see log.do_kernel_configcheck=
=0Afor=0A > > details=0A > >=0A > > If I manually download the one of th=
e files, e.g.? :=0A > >=0A > > '=0A > >=0Ahttp://download.qt-project.org=
/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2=
tar.xz=0A > > [14]=0A > > This works fine.=0A > >=0A > > Can anyone sug=
gest what I can look fro to determine the problem.=0AI=0A > > have tried=
 this a number of time over 24 hours and get the exact=0A > > same=0A >=
 > failures.=0A > >=0A > > Thank you for any suggestions moving forward.=
=0A > >=0A > > Regards=0A > > Lachlan=0A > >=0A > > ---- Message sent vi=
a Adam Internet WebMail -=0A > > http://www.adamcom.au/ [15]=0A > > ----=
---------- next part --------------=0A > > An HTML attachment was scrubb=
ed...=0A > > URL:=0A > >=0A > > ------------------------------=0A > >=0A=
 > > --=0A > > _______________________________________________=0A > > yo=
cto mailing list=0A > > yocto@yoctoproject.org [17]=0A > > https://lists=
yoctoproject.org/listinfo/yocto [18]=0A > >=0A > > End of yocto Digest,=
 Vol 52, Issue 86=0A > > *************************************=0A > >=0A=
 > > ---- Message sent via Adam Internet WebMail -=0A > > http://www.ada=
m.com.au/=0A > >=0A > > Links:=0A > > ------=0A > > [1]=0A > >=0A > >=0A=
http://download.qt-project.org/official_releases/qt/5.4/5.4.0/submodules=
/qtbase-opensource-src-5.4.0.tar.xz=0A > > [2]=0A > >=0A > >=0Ahttp://do=
wnload.qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-o=
pensource-src-5.4.0.tarxz=0A > > [3]=0A > >=0A > >=0Ahttp://download.qt-=
project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensource-=
src-5.4.0.tar.xz=0A > > [4] mailto:peterengcomau001@adam.com.au=0A > > [=
5] mailto:yocto@yoctoproject.org=0A > > [6]=0A > >=0Amailto:f902a9d11fd7=
326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au=0A > > [7] http://qt.gi=
torious.org/qt/qt3d.git;branch=3Dmaster=0A > > [8] http://qt.gitorious.o=
rg/qt/qt3d.git;branch=3Dmaster=0A > > [9]=0A > >=0A > >=0Ahttp://downloa=
d.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-=
opensource-src-5.3.2tar.xz=0A > > [10]=0A > >=0A > >=0Ahttp://download.q=
t-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-ope=
nsource-src-5.3.2.tar.xz=0A > > [11]=0Ahttp://www.apache.org/dist/subver=
sion/subversion-1.8.9.tar.bz2=0A > > [12]=0A > >=0A > >=0Ahttp://downloa=
d.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-open=
source-src-5.3.2.tar.xz=0A > > [13]=0A > >=0A > >=0Ahttp://download.qt-p=
roject.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource=
-src-5.3.2.tar.xz=0A > > [14]=0A > >=0A > >=0Ahttp://download.qt-project=
org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5=
3.2.tar.xz=0A > > [15] http://www.adam.com.au/=0A > > [16]=0A > >=0A >=
 >=0Ahttp://lists.yoctoproject.org/pipermail/yocto/attachments/20150127/=
7d948cb1/attachment.html=0A > > [17] mailto:yocto@yoctoproject.org=0A >=
 > [18] https://lists.yoctoproject.org/listinfo/yocto=0A > >=0A > > ----=
---------- next part --------------=0A > > An HTML attachment was scrubb=
ed...=0A > > URL: <=0A > >=0Ahttp://lists.yoctoproject.org/pipermail/yoc=
to/attachments/20150129/b8546355/attachment.html=0A > > >=0A > >=0A > >=
 ------------------------------=0A > >=0A > > --=0A > > ________________=
_______________________________=0A > > yocto mailing list=0A > > yocto@y=
octoproject.org=0A > > https://lists.yoctoproject.org/listinfo/yocto=0A=
 > >=0A > >=0A > > End of yocto Digest, Vol 52, Issue 111=0A > > *******=
*******************************=0A > >=0A=0A -- =0A Martin 'JaMa' Jansa=
 jabber: Martin.Jansa@gmail.com=0A=0A@adam.com.au>@yoctoproject.org>.bol=
ek@googlemail.com>---- Message=0Asent via Adam Internet WebMail - http:/=
/www.adam.com.au/

--=_03a5a7809e5ae9de092492a74c12ae51
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><p>Hello Martin,<br />Thanks for your reply.<br />I managed=
 to fix the problem of referring to 5.4 instead of 5.3.2 by checking out=
 the master branch instead of the dizzy branch of meta-qt5.<br /><br />H=
owever my problem is with the do_fetch. Most of the do_fetch work fine b=
ut=C2=A0 I get the folliowing two errors:<br />ERROR: Function failed: F=
etcher failure for URL: 'http://download.qt-project.org/official_release=
s/qt/5.4/5.4.0/submodules/qtdeclarative-opensource-src-5.4.0.tar.xz'. Un=
able to fetch URL from any source<br />ERROR: Function failed: Fetcher f=
ailure for URL: 'http://download.qt-project.org/official_releases/qt/5.4=
/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz'. Unable to fetch U=
RL from any source.<br /><br />I can downlond these tarballs manually wi=
thout any problem but I cannot get bitbake to do it for me. All other en=
tries in meta-qt5 seem fine.<br /></p><p>I have tried to get this to wor=
k manullay by :<br />=C2=A01.=C2=A0 downloaded the two tarballs and put=
 them in the directory /home/lachlan/poky-1.7/local-mirror<br />=C2=A02.=
 adding to the local.conf<br />=C2=A0=C2=A0=C2=A0=C2=A0 INHERIT +=3D "ow=
n-mirrors"<br />=C2=A0=C2=A0=C2=A0=C2=A0 SOURCE_MIRROR_URL =3D "file://.=
* file:///home/lachlan/poky-1,7/local-mirror"<br /></p><p>but this gives=
 checksum errors<br /></p><p>Any idea how I can fix the problem of downl=
oading from the source, or is their a manula workaround ?</p><p>Thanks</=
p><p>Lachlan<br /></p>=0A<blockquote>=0A<br />----- Original Message ---=
--<br /><div style=3D"width:100%;background:rgb(228,228,228);">=0A<div s=
tyle=3D"font-weight:bold;">From:</div> "Martin Jansa" .jansa@gmail.com&g=
t;</div>=0A<br /><div style=3D"font-weight:bold;">To:</div>"Simon Bolek"=
 <br /><div style=3D"font-weight:bold;">Cc:</div>, <br /><div style=3D"f=
ont-weight:bold;">Sent:</div>Wed, 28 Jan 2015 20:54:12 +0100<br /><div s=
tyle=3D"font-weight:bold;">Subject:</div>Re: [yocto] meta-qt5 problem in=
 yocto 1.7<br /><br /><br />=0AOn Wed, Jan 28, 2015 at 07:31:35PM +0100,=
 Simon Bolek wrote:<br />=0A&gt; Hi Lachlan,<br /><br />=0AI'm getting l=
ost in HTML format of previous message so I'll just reply<br />=0Aon top=
 :/.<br /><br />=0AThe redirect should be fine, but sometimes it gives y=
ou broken mirror.<br />=0Ae.g. today I've seen couple of 5.1.1 builds fa=
il to fetch, because they<br />=0Awere redirected to http://mirrors.neus=
oft.edu.cn which was returning<br />=0AHTTP 500.<br /><br />=0Agit recip=
es in older branches are also working only from already<br />=0Apopulate=
d premirror, because upstream renamed 5.[012] branches to<br />=0Aold/5.=
[012], that's why it shows current SRCREV to exist in origin/5.4<br />=
=0A(after you call "git remote prune origin")<br /><br />=0AI've just ch=
erry-picked<br />=0A  pick 76af63c qt3d: change to 'dev' branch<br />=0A=
from master to dizzy to fix qt3d branch.<br /><br />=0ASimilar problem e=
xist in qtwayland recipes where the branches were also<br />=0Arewritten=
 and pruned when first 5.4 release was created.<br /><br />=0AIf you fin=
d issue like this, just update the branch parameter (based on<br />=0Agi=
t branch -a --contains  and send me the patch (as described in<br />=0AR=
EADME). Such fixes are perfectly fine for meta-qt5 release branches.<br=
 /><br />=0ARegards,<br /><br />=0A&gt; There is a redirection, yes, and=
 this should not be a problem, as far as<br />=0A&gt; I'm concerned. Why=
 it does not work for those particular recipes of yours,<br />=0A&gt; i=
 have no clue. BUT, what I would do, is to bitbake <br />=0A&gt; trying=
 to narrow down the problem.<br />=0A&gt; When you still have problems w=
hen bitbaking single recipes, you might try<br />=0A&gt; to override the=
 SRC_URI from qt5-{PV}.inc (in my case qt5-5.3.2.inc, yours<br />=0A&gt;=
 might be different)<br />=0A&gt; <br />=0A&gt; Whether those are reason=
alble advices, well, I am not 100% sure, but maybe<br />=0A&gt; Martin J=
ansa would help here. I also have some problems with generating<br />=0A=
&gt; meta-toolchain-qt5, which I already posted here.<br />=0A&gt; <br /=
>=0A&gt; <br />=0A&gt; @Martin: i was so bold to email you directly. I a=
poligize if this is not<br />=0A&gt; welcome, please correct me and i wi=
ll not do this again.<br />=0A&gt; <br />=0A&gt; best regards<br />=0A&g=
t; simon :-)<br />=0A&gt; <br />=0A&gt;   Message: 7<br />=0A&gt; &gt; =
 Date: Tue, 27 Jan 2015 01:32:43 +1030<br />=0A&gt; &gt;  From: petereng=
comau001@adam.com.au [4]<br />=0A&gt; &gt;  To: yocto@yoctoproject.org [=
5]<br />=0A&gt; &gt;  Subject: [yocto] meta-qt5 problem in yocto 1.7<br=
 />=0A&gt; &gt;  Message-ID:<br />=0A&gt; &gt;  ? ? ? ?<br />=0A&gt; &gt=
;  Content-Type: text/plain; charset=3D"utf-8"<br />=0A&gt; &gt;<br />=
=0A&gt; &gt;  I have just downloaded yocto poky 1.7 and try to build an=
 image. I<br />=0A&gt; &gt; get<br />=0A&gt; &gt;  teh follwing problems=
 with fetching qt5 source:<br />=0A&gt; &gt;  Summary: 5 tasks failed:<b=
r />=0A&gt; &gt;  ? /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_=
git.bb,<br />=0A&gt; &gt;  do_fetch<br />=0A&gt; &gt;  ?<br />=0A&gt; &g=
t;<br />=0A&gt; &gt; /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmu=
ltimedia_5.3.2.bb,<br />=0A&gt; &gt;  do_fetch<br />=0A&gt; &gt;  ? /hom=
e/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,<br />=0A&g=
t; &gt;  do_fetch<br />=0A&gt; &gt;  ?<br />=0A&gt; &gt;<br />=0A&gt; &g=
t; /home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plu=
gins/<br />=0A&gt; &gt; gstreamer1.0-plugins-hantro_1.0.bb,<br />=0A&gt;=
 &gt;  do_configure<br />=0A&gt; &gt;  ?<br />=0A&gt; &gt;<br />=0A&gt;=
 &gt; /home/lachlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/obp-util=
s_git.bb<br />=0A&gt; &gt; ,<br />=0A&gt; &gt;  do_install<br />=0A&gt;=
 &gt;<br />=0A&gt; &gt;  I presume the last two problems(do_configure &a=
mp; do_install)? result<br />=0A&gt; &gt;  from dependencies on the prev=
ious three failed fetches.<br />=0A&gt; &gt;<br />=0A&gt; &gt;  The more=
 complete error code for teh first three errors is:<br />=0A&gt; &gt;  W=
ARNING: Failed to fetch URL<br />=0A&gt; &gt;  git://qt.gitorious.org/qt=
/qt3d.git;branch=3Dmaster [7], attempting<br />=0A&gt; &gt; MIRRORS<br /=
>=0A&gt; &gt;  if available<br />=0A&gt; &gt;  ERROR: Fetcher failure: U=
nable to find revision<br />=0A&gt; &gt;  8a9723d7420829a2ba0141a9f7d8dc=
8cd11d8331 in branch master even from<br />=0A&gt; &gt;  upstream<br />=
=0A&gt; &gt;  ERROR: Function failed: Fetcher failure for URL:<br />=0A&=
gt; &gt;  'git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster [8]'. Unab=
le to<br />=0A&gt; &gt; fetch<br />=0A&gt; &gt;  URL from any source.<br=
 />=0A&gt; &gt;  ERROR: Logfile of failure stored in:<br />=0A&gt; &gt;<=
br />=0A&gt; &gt;<br />=0A&gt; &gt; /home/lachlan/poky-1.7/build-atmel/t=
mp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitA=
UTOINC+8a9723d742-r0/temp/log.do_fetch.29304<br />=0A&gt; &gt;  ERROR: T=
ask 1993<br />=0A&gt; &gt;  (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/=
qt5/qt3d_git.bb,<br />=0A&gt; &gt;  do_fetch) failed with exit code '1'<=
br />=0A&gt; &gt;  WARNING: Failed to fetch URL<br />=0A&gt; &gt;<br />=
=0A&gt; &gt; http://download.qt-project.org/official_releases/qt/5.3/5.3=
2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz<br />=0A&gt; &gt;=
 [9],<br />=0A&gt; &gt;  attempting MIRRORS if available<br />=0A&gt; &g=
t;  ERROR: Fetcher failure: Fetch command failed with exit code 4, no<br=
 />=0A&gt; &gt;  output<br />=0A&gt; &gt;  ERROR: Function failed: Fetch=
er failure for URL:<br />=0A&gt; &gt;<br />=0A&gt; &gt; '<br />=0A&gt; &=
gt; http://download.qt-project.org/official_releases/qt/5.3/5.3.2/submod=
ules/qtmultimedia-opensource-src-5.3.2.tar.xz<br />=0A&gt; &gt; [10]'.<b=
r />=0A&gt; &gt;  Unable to fetch URL from any source.<br />=0A&gt; &gt;=
  ERROR: Logfile of failure stored in:<br />=0A&gt; &gt;<br />=0A&gt; &g=
t;<br />=0A&gt; &gt; /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa=
5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.776=
2<br />=0A&gt; &gt;  ERROR: Task 535<br />=0A&gt; &gt;<br />=0A&gt; &gt;=
 (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,<=
br />=0A&gt; &gt;  do_fetch) failed with exit code '1'<br />=0A&gt; &gt;=
  WARNING: Failed to fetch URL<br />=0A&gt; &gt; http://www.apache.org/d=
ist/subversion/subversion-1.8.9.tar.bz2 [11],<br />=0A&gt; &gt;  attempt=
ing MIRRORS if available<br />=0A&gt; &gt;  WARNING: Failed to fetch URL=
<br />=0A&gt; &gt;<br />=0A&gt; &gt; http://download.qt-project.org/offi=
cial_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.=
xz<br />=0A&gt; &gt; [12],<br />=0A&gt; &gt;  attempting MIRRORS if avai=
lable<br />=0A&gt; &gt;  ERROR: Fetcher failure: Fetch command failed wi=
th exit code 4, no<br />=0A&gt; &gt;  output<br />=0A&gt; &gt;  ERROR: F=
unction failed: Fetcher failure for URL:<br />=0A&gt; &gt;<br />=0A&gt;=
 &gt; '<br />=0A&gt; &gt; http://download.qt-project.org/official_releas=
es/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz<br />=0A=
&gt; &gt; [13]'.<br />=0A&gt; &gt;  Unable to fetch URL from any source.=
<br />=0A&gt; &gt;  ERROR: Logfile of failure stored in:<br />=0A&gt; &g=
t;<br />=0A&gt; &gt;<br />=0A&gt; &gt; /home/lachlan/poky-1.7/build-atme=
l/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/lo=
g.do_fetch.19587<br />=0A&gt; &gt;  ERROR: Task 675<br />=0A&gt; &gt;  (=
/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,<br />=
=0A&gt; &gt;  do_fetch) failed with exit code '1'<br />=0A&gt; &gt;  NOT=
E: validating kernel config, see log.do_kernel_configcheck for<br />=0A&=
gt; &gt;  details<br />=0A&gt; &gt;<br />=0A&gt; &gt;  If I manually dow=
nload the one of the files, e.g.? :<br />=0A&gt; &gt;<br />=0A&gt; &gt;=
 '<br />=0A&gt; &gt; http://download.qt-project.org/official_releases/qt=
/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz<br />=0A&gt;=
 &gt; [14]<br />=0A&gt; &gt;  This works fine.<br />=0A&gt; &gt;<br />=
=0A&gt; &gt;  Can anyone suggest what I can look fro to determine the pr=
oblem. I<br />=0A&gt; &gt;  have tried this a number of time over 24 hou=
rs and get the exact<br />=0A&gt; &gt; same<br />=0A&gt; &gt;  failures.=
<br />=0A&gt; &gt;<br />=0A&gt; &gt;  Thank you for any suggestions movi=
ng forward.<br />=0A&gt; &gt;<br />=0A&gt; &gt;  Regards<br />=0A&gt; &g=
t;  Lachlan<br />=0A&gt; &gt;<br />=0A&gt; &gt;  ---- Message sent via A=
dam Internet WebMail -<br />=0A&gt; &gt; http://www.adamcom.au/ [15]<br=
 />=0A&gt; &gt;  -------------- next part --------------<br />=0A&gt; &g=
t;  An HTML attachment was scrubbed...<br />=0A&gt; &gt;  URL:<br />=0A&=
gt; &gt;<br />=0A&gt; &gt;  ------------------------------<br />=0A&gt;=
 &gt;<br />=0A&gt; &gt;  --<br />=0A&gt; &gt;  _________________________=
______________________<br />=0A&gt; &gt;  yocto mailing list<br />=0A&gt=
; &gt; yocto@yoctoproject.org [17]<br />=0A&gt; &gt; https://lists.yocto=
project.org/listinfo/yocto [18]<br />=0A&gt; &gt;<br />=0A&gt; &gt;  End=
 of yocto Digest, Vol 52, Issue 86<br />=0A&gt; &gt;  ******************=
*******************<br />=0A&gt; &gt;<br />=0A&gt; &gt;   ---- Message s=
ent via Adam Internet WebMail -<br />=0A&gt; &gt; http://www.adam.com.au=
/<br />=0A&gt; &gt;<br />=0A&gt; &gt; Links:<br />=0A&gt; &gt; ------<br=
 />=0A&gt; &gt; [1]<br />=0A&gt; &gt;<br />=0A&gt; &gt; http://download.=
qt-project.org/official_releases/qt/5.4/5.4.0/submodules/qtbase-opensour=
ce-src-5.4.0.tar.xz<br />=0A&gt; &gt; [2]<br />=0A&gt; &gt;<br />=0A&gt;=
 &gt; http://download.qt-project.org/official_releases/qt/5.4/5.4.0/subm=
odules/qtbase-opensource-src-5.4.0.tarxz<br />=0A&gt; &gt; [3]<br />=0A&=
gt; &gt;<br />=0A&gt; &gt; http://download.qt-project.org/official_relea=
ses/qt/5.4/5.4.0/submodules/qtbase-opensource-src-5.4.0.tar.xz<br />=0A&=
gt; &gt; [4] mailto:peterengcomau001@adam.com.au<br />=0A&gt; &gt; [5] m=
ailto:yocto@yoctoproject.org<br />=0A&gt; &gt; [6]<br />=0A&gt; &gt; mai=
lto:f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au<br />=
=0A&gt; &gt; [7] http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster<br=
 />=0A&gt; &gt; [8] http://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster<=
br />=0A&gt; &gt; [9]<br />=0A&gt; &gt;<br />=0A&gt; &gt; http://downloa=
d.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtmultimedia-=
opensource-src-5.3.2tar.xz<br />=0A&gt; &gt; [10]<br />=0A&gt; &gt;<br /=
>=0A&gt; &gt; http://download.qt-project.org/official_releases/qt/5.3/5.=
3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz<br />=0A&gt; &gt=
; [11] http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2<br=
 />=0A&gt; &gt; [12]<br />=0A&gt; &gt;<br />=0A&gt; &gt; http://download=
qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opens=
ource-src-5.3.2.tar.xz<br />=0A&gt; &gt; [13]<br />=0A&gt; &gt;<br />=0A=
&gt; &gt; http://download.qt-project.org/official_releases/qt/5.3/5.3.2/=
submodules/qtwebkit-opensource-src-5.3.2.tar.xz<br />=0A&gt; &gt; [14]<b=
r />=0A&gt; &gt;<br />=0A&gt; &gt; http://download.qt-project.org/offici=
al_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz=
<br />=0A&gt; &gt; [15] http://www.adam.com.au/<br />=0A&gt; &gt; [16]<b=
r />=0A&gt; &gt;<br />=0A&gt; &gt; http://lists.yoctoproject.org/piperma=
il/yocto/attachments/20150127/7d948cb1/attachment.html<br />=0A&gt; &gt;=
 [17] mailto:yocto@yoctoproject.org<br />=0A&gt; &gt; [18] https://lists=
yoctoproject.org/listinfo/yocto<br />=0A&gt; &gt;<br />=0A&gt; &gt; ---=
----------- next part --------------<br />=0A&gt; &gt; An HTML attachmen=
t was scrubbed...<br />=0A&gt; &gt; URL: &lt;<br />=0A&gt; &gt; http://l=
ists.yoctoproject.org/pipermail/yocto/attachments/20150129/b8546355/atta=
chment.html<br />=0A&gt; &gt; &gt;<br />=0A&gt; &gt;<br />=0A&gt; &gt; -=
-----------------------------<br />=0A&gt; &gt;<br />=0A&gt; &gt; --<br=
 />=0A&gt; &gt; _______________________________________________<br />=0A=
&gt; &gt; yocto mailing list<br />=0A&gt; &gt; yocto@yoctoproject.org<br=
 />=0A&gt; &gt; https://lists.yoctoproject.org/listinfo/yocto<br />=0A&g=
t; &gt;<br />=0A&gt; &gt;<br />=0A&gt; &gt; End of yocto Digest, Vol 52,=
 Issue 111<br />=0A&gt; &gt; **************************************<br /=
>=0A&gt; &gt;<br /><br />=0A-- <br />=0AMartin 'JaMa' Jansa     jabber:=
 Martin.Jansa@gmail.com<br /><br />@adam.com.au&gt;@yoctoproject.org&gt;=
bolek@googlemail.com&gt;</blockquote>---- Message sent via Adam Interne=
t WebMail  - http://www.adam.com.au/</body></html>

--=_03a5a7809e5ae9de092492a74c12ae51--
