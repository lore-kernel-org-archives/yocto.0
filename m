Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 774F7E00CC5; Thu,  4 Feb 2016 13:57:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S2.hotmail.com (dub004-omc3s2.hotmail.com
	[157.55.2.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9FE1E00CC2
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:57:19 -0800 (PST)
Received: from DUB130-W75 ([157.55.2.7]) by DUB004-OMC3S2.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 4 Feb 2016 13:57:18 -0800
X-TMN: [OzIatJXoR0UQiMLG/S+OfkJz7Igml3/m]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W75F413446FD2227886136DDAD10@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 4 Feb 2016 21:57:17 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Feb 2016 21:57:18.0263 (UTC)
	FILETIME=[04059470:01D15F97]
Subject: Signed RPMs
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
X-List-Received-Date: Thu, 04 Feb 2016 21:57:23 -0000
Content-Type: multipart/alternative;
	boundary="_053849ae-0e96-4ee7-b77a-71248316a913_"

--_053849ae-0e96-4ee7-b77a-71248316a913_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C
I have been testing out the facility for generating signed RPMs.
It's currently failing to find 'build/tmp/sysroots/x86_64-linux/etc/RPM-GPG=
-PUBKEY'=2C log listed at end.
I couldn't find a lot of documentation but from what I could find=2C I adde=
d the following to local.conf:
INHERIT +=3D " sign_rpm"RPM_GPG_NAME =3D "chris"RPM_GPG_PUBKEY =3D "/home/c=
hris/mykey.pub"RPM_GPG_PASSPHRASE_FILE =3D "/home/chris/mypassphrase"
It needed 'python-pexpect' installing (fedora 22) to run at all but after t=
hat it worked to an extent as I had to correct the stored passphrase to cor=
rect other errors.
At this stage of the build there is very little in 'build/tmp/sysroots/x86_=
64-linux/etc/' (just quilt related) but I also find it curious that it is l=
ooking for the variable name rather than it value.
Now I was following the the Aug patch notes "'RPM_GPG_PUBKEY =3D "<path_to_=
pubkey>" in bitbake config pointing to the public key (in "armor" format)."=
.
Since then there was a patch "Automatically export public keys used for pac=
kage(feed) signing" that obsoletes RPM_GPG_PUBKEY (and overwrites it) but I=
'm still not clear how/where to put the public key so it will end up in the=
 staging directory.  Also=2C 'package_manager.py' copies the file named by =
RPM_GPG_PUBKEY to the location os.path.join(self.deploy_dir=2C 'RPM-GPG-KEY=
-%s' % distro_version).  I presume this copies from the staging directory t=
o the deployment directory.
So what I would like to know is where to put the RPM GPG public key so that=
 it gets copied to the staging directory?
For the time being=2C I have copied it in by hand.
Thanks=2CChris
Summary: 1 task failed:poky/meta/recipes-core/os-release/os-release.bb=2C d=
o_compile
DEBUG: Executing python function do_compileERROR: Error executing a python =
function in /home/chris/yocto/poky/meta/recipes-core/os-release/os-release.=
bb:
The stack trace of python calls that resulted in this exception/failure was=
:File: '/home/chris/yocto/poky/meta/recipes-core/os-release/os-release.bb'=
=2C lineno: 16=2C function: <module>     0012:        distro_version =3D d.=
getVar('DISTRO_VERSION'=2C True) or "oe.0"     0013:        shutil.copy2(rp=
m_gpg_pubkey=2C d.expand('/home/chris/yocto/build/tmp/work/all-poky-linux/o=
s-release/1.0-r0/os-release-1.0/rpm-gpg/RPM-GPG-KEY-%s' % distro_version)) =
    0014:     0015: *** 0016:do_compile(d)     0017:File: '/home/chris/yoct=
o/poky/meta/recipes-core/os-release/os-release.bb'=2C lineno: 13=2C functio=
n: do_compile     0009:do_fetch[noexec] =3D "1"     0010:do_unpack[noexec] =
=3D "1"     0011:do_patch[noexec] =3D "1"     0012:do_configure[noexec] =3D=
 "1" *** 0013:     0014:# Other valid fields: BUILD_ID ID_LIKE ANSI_COLOR C=
PE_NAME     0015:#                     HOME_URL SUPPORT_URL BUG_REPORT_URL =
    0016:OS_RELEASE_FIELDS =3D "ID ID_LIKE NAME VERSION VERSION_ID PRETTY_N=
AME"     0017:File: '/usr/lib64/python2.7/shutil.py'=2C lineno: 130=2C func=
tion: copy2     0126:     0127:    """     0128:    if os.path.isdir(dst): =
    0129:        dst =3D os.path.join(dst=2C os.path.basename(src)) *** 013=
0:    copyfile(src=2C dst)     0131:    copystat(src=2C dst)     0132:     =
0133:def ignore_patterns(*patterns):     0134:    """Function that can be u=
sed as copytree() ignore parameter.File: '/usr/lib64/python2.7/shutil.py'=
=2C lineno: 82=2C function: copyfile     0078:            # XXX What about =
other special files? (sockets=2C devices...)     0079:            if stat.S=
_ISFIFO(st.st_mode):     0080:                raise SpecialFileError("`%s` =
is a named pipe" % fn)     0081: *** 0082:    with open(src=2C 'rb') as fsr=
c:     0083:        with open(dst=2C 'wb') as fdst:     0084:            co=
pyfileobj(fsrc=2C fdst)     0085:     0086:def copymode(src=2C dst):Excepti=
on: IOError: [Errno 2] No such file or directory: '/home/chris/yocto/build/=
tmp/sysroots/x86_64-linux/etc/RPM-GPG-PUBKEY'
DEBUG: Python function do_compile finishedERROR: Function failed: do_compil=
e
 		 	   		  =

--_053849ae-0e96-4ee7-b77a-71248316a913_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div><br></div><div><div>I =
have been testing out the facility for generating signed RPMs.</div><div><b=
r></div><div>It's currently failing to find 'build/tmp/sysroots/x86_64-linu=
x/etc/RPM-GPG-PUBKEY'=2C log listed at end.</div><div><br></div><div><span =
style=3D"font-size: 12pt=3B">I couldn't find a lot of documentation but fro=
m what I could find=2C I added the following to local.conf:</span></div><di=
v><br></div><div><div>INHERIT +=3D " sign_rpm"</div><div>RPM_GPG_NAME =3D "=
chris"</div><div>RPM_GPG_PUBKEY =3D "/home/chris/mykey.pub"</div><div>RPM_G=
PG_PASSPHRASE_FILE =3D "/home/chris/mypassphrase"</div></div><div><br></div=
><div>It needed 'python-pexpect' installing (fedora 22) to run at all but a=
fter that it worked to an extent as I had to correct the stored passphrase =
to correct other errors.</div><div><br></div><div><span style=3D"font-size:=
 12pt=3B">At this stage of the build there is very little in '</span><span =
style=3D"font-size: 12pt=3B">build/tmp/sysroots/x86_64-linux/etc/' (just qu=
ilt related) but I also find it curious that it is looking for the variable=
 name rather than it value.</span></div><div><span style=3D"font-size: 12pt=
=3B"><br></span></div><div>Now I was following the the Aug patch notes "'RP=
M_GPG_PUBKEY =3D "&lt=3Bpath_to_pubkey&gt=3B" in bitbake config pointing to=
&nbsp=3B<span style=3D"font-size: 12pt=3B">the public key (in "armor" forma=
t).".</span></div><div><span style=3D"font-size: 12pt=3B"><br></span></div>=
<div><span style=3D"font-size: 12pt=3B">Since then there was a patch "</spa=
n>Automatically export public keys used for&nbsp=3Bpackage(feed) signing" t=
hat obsoletes&nbsp=3BRPM_GPG_PUBKEY&nbsp=3B(and overwrites it)&nbsp=3Bbut I=
'm still not clear how/where to put the public key so it will end up in the=
 staging directory. &nbsp=3BAlso=2C 'package_manager.py' copies the file na=
med by RPM_GPG_PUBKEY to the location os.path.join(self.deploy_dir=2C&nbsp=
=3B<span style=3D"font-size: 12pt=3B">'RPM-GPG-KEY-%s' % distro_version). &=
nbsp=3BI presume this copies from the staging directory to the deployment d=
irectory.</span></div><div><span style=3D"font-size: 12pt=3B"><br></span></=
div><div><span style=3D"font-size: 12pt=3B">So what I would like to know is=
 where to put the RPM GPG public key so that it gets copied to the staging =
directory?</span></div><div><span style=3D"font-size: 12pt=3B"><br></span><=
/div><div><span style=3D"font-size: 12pt=3B">For the time being=2C I have c=
opied it in by hand.</span></div><div><span style=3D"font-size: 12pt=3B"><b=
r></span></div><div><span style=3D"font-size: 12pt=3B">Thanks=2C</span></di=
v></div><div>Chris</div><div><br></div><div><div>Summary: 1 task failed:</d=
iv><div>poky/meta/recipes-core/os-release/os-release.bb=2C do_compile</div>=
</div><div><br></div><div><div>DEBUG: Executing python function do_compile<=
/div><div>ERROR: Error executing a python function in /home/chris/yocto/pok=
y/meta/recipes-core/os-release/os-release.bb:</div><div><br></div><div>The =
stack trace of python calls that resulted in this exception/failure was:</d=
iv><div>File: '/home/chris/yocto/poky/meta/recipes-core/os-release/os-relea=
se.bb'=2C lineno: 16=2C function: &lt=3Bmodule&gt=3B</div><div>&nbsp=3B &nb=
sp=3B &nbsp=3B0012: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3Bdistro_version =3D d=
.getVar('DISTRO_VERSION'=2C True) or "oe.0"</div><div>&nbsp=3B &nbsp=3B &nb=
sp=3B0013: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3Bshutil.copy2(rpm_gpg_pubkey=
=2C d.expand('/home/chris/yocto/build/tmp/work/all-poky-linux/os-release/1.=
0-r0/os-release-1.0/rpm-gpg/RPM-GPG-KEY-%s' % distro_version))</div><div>&n=
bsp=3B &nbsp=3B &nbsp=3B0014:</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0015:</di=
v><div>&nbsp=3B*** 0016:do_compile(d)</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0=
017:</div><div>File: '/home/chris/yocto/poky/meta/recipes-core/os-release/o=
s-release.bb'=2C lineno: 13=2C function: do_compile</div><div>&nbsp=3B &nbs=
p=3B &nbsp=3B0009:do_fetch[noexec] =3D "1"</div><div>&nbsp=3B &nbsp=3B &nbs=
p=3B0010:do_unpack[noexec] =3D "1"</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0011=
:do_patch[noexec] =3D "1"</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0012:do_confi=
gure[noexec] =3D "1"</div><div>&nbsp=3B*** 0013:</div><div>&nbsp=3B &nbsp=
=3B &nbsp=3B0014:# Other valid fields: BUILD_ID ID_LIKE ANSI_COLOR CPE_NAME=
</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0015:# &nbsp=3B &nbsp=3B &nbsp=3B &nbs=
p=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B HOME_URL SUPPORT=
_URL BUG_REPORT_URL</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0016:OS_RELEASE_FIE=
LDS =3D "ID ID_LIKE NAME VERSION VERSION_ID PRETTY_NAME"</div><div>&nbsp=3B=
 &nbsp=3B &nbsp=3B0017:</div><div>File: '/usr/lib64/python2.7/shutil.py'=2C=
 lineno: 130=2C function: copy2</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0126:</=
div><div>&nbsp=3B &nbsp=3B &nbsp=3B0127: &nbsp=3B &nbsp=3B"""</div><div>&nb=
sp=3B &nbsp=3B &nbsp=3B0128: &nbsp=3B &nbsp=3Bif os.path.isdir(dst):</div><=
div>&nbsp=3B &nbsp=3B &nbsp=3B0129: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3Bdst =
=3D os.path.join(dst=2C os.path.basename(src))</div><div>&nbsp=3B*** 0130: =
&nbsp=3B &nbsp=3Bcopyfile(src=2C dst)</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0=
131: &nbsp=3B &nbsp=3Bcopystat(src=2C dst)</div><div>&nbsp=3B &nbsp=3B &nbs=
p=3B0132:</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0133:def ignore_patterns(*pat=
terns):</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0134: &nbsp=3B &nbsp=3B"""Funct=
ion that can be used as copytree() ignore parameter.</div><div>File: '/usr/=
lib64/python2.7/shutil.py'=2C lineno: 82=2C function: copyfile</div><div>&n=
bsp=3B &nbsp=3B &nbsp=3B0078: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B =
&nbsp=3B# XXX What about other special files? (sockets=2C devices...)</div>=
<div>&nbsp=3B &nbsp=3B &nbsp=3B0079: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &n=
bsp=3B &nbsp=3Bif stat.S_ISFIFO(st.st_mode):</div><div>&nbsp=3B &nbsp=3B &n=
bsp=3B0080: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B =
&nbsp=3Braise SpecialFileError("`%s` is a named pipe" % fn)</div><div>&nbsp=
=3B &nbsp=3B &nbsp=3B0081:</div><div>&nbsp=3B*** 0082: &nbsp=3B &nbsp=3Bwit=
h open(src=2C 'rb') as fsrc:</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0083: &nbs=
p=3B &nbsp=3B &nbsp=3B &nbsp=3Bwith open(dst=2C 'wb') as fdst:</div><div>&n=
bsp=3B &nbsp=3B &nbsp=3B0084: &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B =
&nbsp=3Bcopyfileobj(fsrc=2C fdst)</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0085:=
</div><div>&nbsp=3B &nbsp=3B &nbsp=3B0086:def copymode(src=2C dst):</div><d=
iv>Exception: IOError: [Errno 2] No such file or directory: '/home/chris/yo=
cto/build/tmp/sysroots/x86_64-linux/etc/RPM-GPG-PUBKEY'</div><div><br></div=
><div>DEBUG: Python function do_compile finished</div><div>ERROR: Function =
failed: do_compile</div></div><div><br></div> 		 	   		  </div></body>
</html>=

--_053849ae-0e96-4ee7-b77a-71248316a913_--
