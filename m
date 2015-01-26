Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBDDE00836; Mon, 26 Jan 2015 07:02:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  3.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6840E006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 07:02:47 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id t0QF2hPv030151
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 01:32:43 +1030
Message-Id: <f902a9d11fd7326c8f53a3fadfde295f6231fbcb@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Tue, 27 Jan 2015 01:32:43 +1030
MIME-Version: 1.0
Subject: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Mon, 26 Jan 2015 15:02:58 -0000
Content-Type: multipart/alternative;
	boundary="=_8fa5ede670e095fb122f06efbcfa1ed0"

--=_8fa5ede670e095fb122f06efbcfa1ed0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have just downloaded yocto poky 1.7 and try to build an image. I get=
=0Ateh follwing problems with fetching qt5 source:=0ASummary: 5 tasks fa=
iled:=0A=C2=A0 /home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_git.b=
b,=0Ado_fetch=0A=C2=A0=0A/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/=
qtmultimedia_5.3.2.bb,=0Ado_fetch=0A=C2=A0 /home/lachlan/poky-1.7/meta-q=
t5/recipes-qt/qt5/qtwebkit_5.3.2.bb,=0Ado_fetch=0A=C2=A0=0A/home/lachlan=
/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugins/gstreamer1.=
0-plugins-hantro_1.0.bb,=0Ado_configure=0A=C2=A0=0A/home/lachlan/poky-1.=
7/meta-atmel/recipes-utils/obp-utils/obp-utils_git.bb,=0Ado_install=0A=
=0AI presume the last two problems(do_configure & do_install)=C2=A0 resu=
lt=0Afrom dependencies on the previous three failed fetches.=0A=0AThe mo=
re complete error code for teh first three errors is:=0AWARNING: Failed=
 to fetch URL=0Agit://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster, atte=
mpting MIRRORS=0Aif available=0AERROR: Fetcher failure: Unable to find r=
evision=0A8a9723d7420829a2ba0141a9f7d8dc8cd11d8331 in branch master even=
 from=0Aupstream=0AERROR: Function failed: Fetcher failure for URL:=0A'g=
it://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster'. Unable to fetch=0AUR=
L from any source.=0AERROR: Logfile of failure stored in:=0A/home/lachla=
n/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qt3d=
/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/log.do_fetch.29304=0AE=
RROR: Task 1993=0A(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qt3d_g=
it.bb,=0Ado_fetch) failed with exit code '1'=0AWARNING: Failed to fetch=
 URL=0Ahttp://download.qt-project.org/official_releases/qt/5.3/5.3.2/sub=
modules/qtmultimedia-opensource-src-5.3.2.tar.xz,=0Aattempting MIRRORS i=
f available=0AERROR: Fetcher failure: Fetch command failed with exit cod=
e 4, no=0Aoutput=0AERROR: Function failed: Fetcher failure for URL:=0A'h=
ttp://download.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/=
qtmultimedia-opensource-src-5.3.2.tar.xz'.=0AUnable to fetch URL from an=
y source.=0AERROR: Logfile of failure stored in:=0A/home/lachlan/poky-1.=
7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/qtmultimedia/=
5.3.2-r0/temp/log.do_fetch.7762=0AERROR: Task 535=0A(/home/lachlan/poky-=
1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,=0Ado_fetch) failed wi=
th exit code '1'=0AWARNING: Failed to fetch URL=0Ahttp://www.apache.org/=
dist/subversion/subversion-1.8.9.tar.bz2,=0Aattempting MIRRORS if availa=
ble=0AWARNING: Failed to fetch URL=0Ahttp://download.qt-project.org/offi=
cial_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.=
xz,=0Aattempting MIRRORS if available=0AERROR: Fetcher failure: Fetch co=
mmand failed with exit code 4, no=0Aoutput=0AERROR: Function failed: Fet=
cher failure for URL:=0A'http://download.qt-project.org/official_release=
s/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.xz'.=0AUnabl=
e to fetch URL from any source.=0AERROR: Logfile of failure stored in:=
=0A/home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-lin=
ux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587=0AERROR: Task 675=
=0A(/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb,=0A=
do_fetch) failed with exit code '1'=0ANOTE: validating kernel config, se=
e log.do_kernel_configcheck for=0Adetails=0A=0AIf I manually download th=
e one of the files, e.g.=C2=A0 :=0A'http://download.qt-project.org/offic=
ial_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.3.2.tar.x=
z=0AThis works fine.=0A=0ACan anyone suggest what I can look fro to dete=
rmine the problem. I=0Ahave tried this a number of time over 24 hours an=
d get the exact same=0Afailures.=0A=0AThank you for any suggestions movi=
ng forward.=0A=0ARegards=0ALachlan=0A=0A---- Message sent via Adam Inter=
net WebMail - http://www.adam.com.au/

--=_8fa5ede670e095fb122f06efbcfa1ed0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have just downloaded yocto poky 1.7 and try to build an im=
age. I get teh follwing problems with fetching qt5 source:<br />Summary:=
 5 tasks failed:<br />=C2=A0 /home/lachlan/poky-1.7/meta-qt5/recipes-qt/=
qt5/qt3d_git.bb, do_fetch<br />=C2=A0 /home/lachlan/poky-1.7/meta-qt5/re=
cipes-qt/qt5/qtmultimedia_5.3.2.bb, do_fetch<br />=C2=A0 /home/lachlan/p=
oky-1.7/meta-qt5/recipes-qt/qt5/qtwebkit_5.3.2.bb, do_fetch<br />=C2=A0=
 /home/lachlan/poky-1.7/meta-atmel/recipes-multimedia/gstreamer1.0-plugi=
ns/gstreamer1.0-plugins-hantro_1.0.bb, do_configure<br />=C2=A0 /home/la=
chlan/poky-1.7/meta-atmel/recipes-utils/obp-utils/obp-utils_git.bb, do_i=
nstall<br /><br />I presume the last two problems(do_configure &amp; do_=
install)=C2=A0 result from dependencies on the previous three failed fet=
ches.<br /><br />The more complete error code for teh first three errors=
 is:<br />WARNING: Failed to fetch URL git://qt.gitorious.org/qt/qt3d.gi=
t;branch=3Dmaster, attempting MIRRORS if available<br />ERROR: Fetcher f=
ailure: Unable to find revision 8a9723d7420829a2ba0141a9f7d8dc8cd11d8331=
 in branch master even from upstream<br />ERROR: Function failed: Fetche=
r failure for URL: 'git://qt.gitorious.org/qt/qt3d.git;branch=3Dmaster'.=
 Unable to fetch URL from any source.<br />ERROR: Logfile of failure sto=
red in: /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-pok=
y-linux-gnueabi/qt3d/5.3.99+5.4.0-beta1+gitAUTOINC+8a9723d742-r0/temp/lo=
g.do_fetch.29304<br />ERROR: Task 1993 (/home/lachlan/poky-1.7/meta-qt5/=
recipes-qt/qt5/qt3d_git.bb, do_fetch) failed with exit code '1'<br />WAR=
NING: Failed to fetch URL http://download.qt-project.org/official_releas=
es/qt/5.3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz, att=
empting MIRRORS if available<br />ERROR: Fetcher failure: Fetch command=
 failed with exit code 4, no output<br />ERROR: Function failed: Fetcher=
 failure for URL: 'http://download.qt-project.org/official_releases/qt/5=
3/5.3.2/submodules/qtmultimedia-opensource-src-5.3.2.tar.xz'. Unable to=
 fetch URL from any source.<br />ERROR: Logfile of failure stored in: /h=
ome/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gn=
ueabi/qtmultimedia/5.3.2-r0/temp/log.do_fetch.7762<br />ERROR: Task 535=
 (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtmultimedia_5.3.2.bb,=
 do_fetch) failed with exit code '1'<br />WARNING: Failed to fetch URL h=
ttp://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2, attemptin=
g MIRRORS if available<br />WARNING: Failed to fetch URL http://download=
qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opens=
ource-src-5.3.2.tar.xz, attempting MIRRORS if available<br />ERROR: Fetc=
her failure: Fetch command failed with exit code 4, no output<br />ERROR=
: Function failed: Fetcher failure for URL: 'http://download.qt-project.=
org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-opensource-src-5.=
3.2.tar.xz'. Unable to fetch URL from any source.<br />ERROR: Logfile of=
 failure stored in: /home/lachlan/poky-1.7/build-atmel/tmp/work/cortexa5=
t2hf-vfp-poky-linux-gnueabi/qtwebkit/5.3.2-r0/temp/log.do_fetch.19587<br=
 />ERROR: Task 675 (/home/lachlan/poky-1.7/meta-qt5/recipes-qt/qt5/qtweb=
kit_5.3.2.bb, do_fetch) failed with exit code '1'<br />NOTE: validating=
 kernel config, see log.do_kernel_configcheck for details<br /><br />If=
 I manually download the one of the files, e.g.=C2=A0 :  'http://downloa=
d.qt-project.org/official_releases/qt/5.3/5.3.2/submodules/qtwebkit-open=
source-src-5.3.2.tar.xz<br />This works fine.<br /><br />Can anyone sugg=
est what I can look fro to determine the problem. I have tried this a nu=
mber of time over 24 hours and get the exact same failures.<br /><br />T=
hank you for any suggestions moving forward.<br /><br />Regards<br />Lac=
hlan<br /><br />---- Message sent via Adam Internet WebMail  - http://ww=
w.adam.com.au/</body></html>

--=_8fa5ede670e095fb122f06efbcfa1ed0--
