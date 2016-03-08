Return-Path: <mkbrown32@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E50CBE0083D; Mon,  7 Mar 2016 16:20:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkbrown32[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.91 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from BAY004-OMC2S16.hotmail.com (bay004-omc2s16.hotmail.com
	[65.54.190.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C36E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 16:20:11 -0800 (PST)
Received: from BAY181-W46 ([65.54.190.125]) by BAY004-OMC2S16.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 7 Mar 2016 16:20:10 -0800
X-TMN: [bTWaGiZQoU8CCzADkpSb5lsLXCxcClAw]
X-Originating-Email: [mkbrown32@hotmail.com]
Message-ID: <BAY181-W46AB9F6D700F243ED2D796AEB20@phx.gbl>
From: Mark Brown <mkbrown32@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 16:20:09 -0800
Importance: Normal
In-Reply-To: <CAJTo0LYmefS-OzRCFvPDFiiEDK0x14AfxjWRgq=rp+ZnwJvHbg@mail.gmail.com>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
	<CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>,
	<BAY181-W7C9AF39726986ECA0755AAEB10@phx.gbl>,
	<CAJTo0LYmefS-OzRCFvPDFiiEDK0x14AfxjWRgq=rp+ZnwJvHbg@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 08 Mar 2016 00:20:10.0949 (UTC)
	FILETIME=[46F5A750:01D178D0]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Tue, 08 Mar 2016 00:20:15 -0000
Content-Type: multipart/alternative;
	boundary="_2c0aac38-967d-4db6-829e-e69cd9743f83_"

--_2c0aac38-967d-4db6-829e-e69cd9743f83_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

 Still not able to read from gitorious=2C even with http protocol.If gitori=
ous was archived and shut down=2C how can gitorious be accessible at all ?I=
s there a mirror ?  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DNOTE: Prepar=
ing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL git://gitorious.org/uim/uim.git=2C attempting =
MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128=2C output:
Cloning into bare repository '/home/bbusr/build/downloads/git2/gitorious.or=
g.uim.uim.git'...
fatal: unable to connect to gitorious.org:
gitorious.org[0: 64.13.172.37]: errno=3DConnection refused
gitorious.org[1: 2a02:c0:1014::1]: errno=3DNetwork is unreachable
ERROR: Function failed: Fetcher failure for URL: 'git://gitorious.org/uim/u=
im.git'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/bbusr/build/tmp/work/cortexa8hf-=
vfp-neon-poky-linux-gnueabi/uim/git-r0/temp/log.do_fetch.19139
ERROR: Task 480 (/home/bbusr/poky/meta-gumstix/recipes-connectivity/uim/uim=
_git.bb=2C do_fetch) failed with exit code '1'
WARNING: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git=
=3Bprotocol=3Dhttp=2C attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 128=2C output:
Cloning into bare repository '/home/bbusr/build/downloads/git2/gitorious.or=
g.raw2rgbpnm.raw2rgbpnm.git'...
fatal: unable to access 'https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/':=
 server certificate verification failed. CAfile: /etc/ssl/certs/ca-certific=
ates.crt CRLfile: noneERROR: Function failed: Fetcher failure for URL: 'git=
://gitorious.org/raw2rgbpnm/raw2rgbpnm.git=3Bprotocol=3Dhttp'. Unable to fe=
tch URL from any source.
ERROR: Logfile of failure stored in: /home/bbusr/build/tmp/work/cortexa8hf-=
vfp-neon-poky-linux-gnueabi/raw2rgbpnm/git-r0/temp/log.do_fetch.19138
ERROR: Task 506 (/home/bbusr/poky/meta-gumstix-extras/recipes-graphics/raw2=
rgbpnm/raw2rgbpnm_git.bb=2C do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2353 tasks of which 2350 didn't need to be r=
erun and 2 failed.
Waiting for 0 running tasks to finish:Summary: 2 tasks failed:
  /home/bbusr/poky/meta-gumstix/recipes-connectivity/uim/uim_git.bb=2C do_f=
etch
  /home/bbusr/poky/meta-gumstix-extras/recipes-graphics/raw2rgbpnm/raw2rgbp=
nm_git.bb=2C do_fetch
Summary: There were 2 WARNING messages shown.
Summary: There were 4 ERROR messages shown=2C returning a non-zero exit cod=
e.
16:03:52:~/build::
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
From: ross.burton@intel.com
Date: Mon=2C 7 Mar 2016 21:27:26 +0000
Subject: Re: [yocto] Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw=
2rgbpnm.git
To: mkbrown32@hotmail.com
CC: yocto@yoctoproject.org=3B ka6sox@gmail.com=3B opensource@keylevel.com



On 7 March 2016 at 21:24=2C Mark Brown <mkbrown32@hotmail.com> wrote:
I do not see anything in  /poky/meta-gumstix-extras/recipes-images/gumstix/=
gumstix-console-image.bb=20
which mentions  protocol or protocol=3Dgit.

In the raw2rgbpnm recipe=2C meta-gumstix-extras/recipes-graphics/raw2rgbpnm=
/raw2rgbpnm_git.bb according to the layer index (layers.openembedded.org).

Ross   =20
=20
 		 	   		  =

--_2c0aac38-967d-4db6-829e-e69cd9743f83_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div class=3D"ecxgmail_extra">&n=
bsp=3B</div><div class=3D"ecxgmail_extra">Still not able to read from gitor=
ious=2C even with http protocol.</div><div class=3D"ecxgmail_extra">If gito=
rious was archived and shut down=2C how can gitorious be accessible at all&=
nbsp=3B?</div><div class=3D"ecxgmail_extra">Is there a mirror ?</div><div c=
lass=3D"ecxgmail_extra">&nbsp=3B</div><div class=3D"ecxgmail_extra">&nbsp=
=3B</div><div class=3D"ecxgmail_extra">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</div><div class=3D"ecxgmail_extra">NOTE: Preparing RunQueue<br>NOTE:=
 Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>WARNING: Fai=
led to fetch URL git://gitorious.org/uim/uim.git=2C attempting MIRRORS if a=
vailable<br>ERROR: Fetcher failure: Fetch command failed with exit code 128=
=2C output:<br>Cloning into bare repository '/home/bbusr/build/downloads/gi=
t2/gitorious.org.uim.uim.git'...<br>fatal: unable to connect to gitorious.o=
rg:<br>gitorious.org[0: 64.13.172.37]: errno=3DConnection refused<br>gitori=
ous.org[1: 2a02:c0:1014::1]: errno=3DNetwork is unreachable</div><div class=
=3D"ecxgmail_extra"><br>ERROR: Function failed: Fetcher failure for URL: 'g=
it://gitorious.org/uim/uim.git'. Unable to fetch URL from any source.<br>ER=
ROR: Logfile of failure stored in: /home/bbusr/build/tmp/work/cortexa8hf-vf=
p-neon-poky-linux-gnueabi/uim/git-r0/temp/log.do_fetch.19139<br>ERROR: Task=
 480 (/home/bbusr/poky/meta-gumstix/recipes-connectivity/uim/uim_git.bb=2C =
do_fetch) failed with exit code '1'<br>WARNING: Failed to fetch URL git://g=
itorious.org/raw2rgbpnm/raw2rgbpnm.git=3Bprotocol=3Dhttp=2C attempting MIRR=
ORS if available<br>ERROR: Fetcher failure: Fetch command failed with exit =
code 128=2C output:<br>Cloning into bare repository '/home/bbusr/build/down=
loads/git2/gitorious.org.raw2rgbpnm.raw2rgbpnm.git'...<br>fatal: unable to =
access 'https://gitorious.org/raw2rgbpnm/raw2rgbpnm.git/': server certifica=
te verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile:=
 none</div><div class=3D"ecxgmail_extra">ERROR: Function failed: Fetcher fa=
ilure for URL: 'git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git=3Bprotocol=3D=
http'. Unable to fetch URL from any source.<br>ERROR: Logfile of failure st=
ored in: /home/bbusr/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/=
raw2rgbpnm/git-r0/temp/log.do_fetch.19138<br>ERROR: Task 506 (/home/bbusr/p=
oky/meta-gumstix-extras/recipes-graphics/raw2rgbpnm/raw2rgbpnm_git.bb=2C do=
_fetch) failed with exit code '1'<br>NOTE: Tasks Summary: Attempted 2353 ta=
sks of which 2350 didn't need to be rerun and 2 failed.<br>Waiting for 0 ru=
nning tasks to finish:</div><div class=3D"ecxgmail_extra">Summary: 2 tasks =
failed:<br>&nbsp=3B /home/bbusr/poky/meta-gumstix/recipes-connectivity/uim/=
uim_git.bb=2C do_fetch<br>&nbsp=3B /home/bbusr/poky/meta-gumstix-extras/rec=
ipes-graphics/raw2rgbpnm/raw2rgbpnm_git.bb=2C do_fetch<br>Summary: There we=
re 2 WARNING messages shown.<br>Summary: There were 4 ERROR messages shown=
=2C returning a non-zero exit code.<br>16:03:52:~/build::<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</div>&nbsp=3B<BR>From: ross.burton@intel.com<br>Da=
te: Mon=2C 7 Mar 2016 21:27:26 +0000<br>Subject: Re: [yocto] Failed to fetc=
h URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git<br>To: mkbrown32@hotmai=
l.com<br>CC: yocto@yoctoproject.org=3B ka6sox@gmail.com=3B opensource@keyle=
vel.com<br><br><BR><div><div dir=3D"ltr"><div class=3D"ecxgmail_extra"><br>=
<div class=3D"ecxgmail_quote">On 7 March 2016 at 21:24=2C Mark Brown <span =
dir=3D"ltr">&lt=3B<a href=3D"mailto:mkbrown32@hotmail.com" target=3D"_blank=
">mkbrown32@hotmail.com</a>&gt=3B</span> wrote:<br><blockquote class=3D"ecx=
gmail_quote" style=3D"padding-left: 1ex=3B border-left-color: rgb(204=2C 20=
4=2C 204)=3B border-left-width: 1px=3B border-left-style: solid=3B"><div di=
r=3D"ltr">I do not see anything in&nbsp=3B /poky/meta-gumstix-extras/recipe=
s-images/gumstix/<a href=3D"http://gumstix-console-image.bb" target=3D"_bla=
nk">gumstix-console-image.bb</a>&nbsp=3B<br>which mentions&nbsp=3B protocol=
 or protocol=3Dgit.<br></div></blockquote></div><br>In the raw2rgbpnm recip=
e=2C meta-gumstix-extras/recipes-graphics/raw2rgbpnm/<a href=3D"http://raw2=
rgbpnm_git.bb" target=3D"_blank">raw2rgbpnm_git.bb</a> according to the lay=
er index (<a href=3D"http://layers.openembedded.org" target=3D"_blank">laye=
rs.openembedded.org</a>).<br></div><div class=3D"ecxgmail_extra"><br></div>=
<div class=3D"ecxgmail_extra">Ross</div><div class=3D"ecxgmail_extra">&nbsp=
=3B</div><div class=3D"ecxgmail_extra">&nbsp=3B</div><div class=3D"ecxgmail=
_extra">&nbsp=3B</div></div></div>&nbsp=3B<BR>&nbsp=3B<BR> 		 	   		  </div=
></body>
</html>=

--_2c0aac38-967d-4db6-829e-e69cd9743f83_--
