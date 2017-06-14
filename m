Return-Path: <charmi.suchak@volansystech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4477FE00B57; Wed, 14 Jun 2017 05:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B953E00B47
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 05:43:15 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id m47so54561590iti.0
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 05:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=volansystech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=A8B8MNv43aYAmaoSLnnU9knPTrX3njt3r1YYMrho+cw=;
	b=JjSxN4hJxWHI7+gmCh6vD0HXJMlwbDQNOTtT1KMHTAoUqG1r3ysrprk5kBulmhBAgh
	kSZ5OWA/aGv40kNuDuOwevgr03xn6PIBt0+WIqmacIUPdhtqpxypPoK3N9A5rEKrNVOJ
	eSvOLhj3PqkdExrZHd7/j+d4Fy4URIT0/tFo31NzsnoT7MwVAbC5idTT4dyVJCl9GzYi
	HY4EO+e16pr9R3Y8fiC3Dw4rvqPf6S/ClBKvhir0o53LJup+x5uBtDUrOw+DZPtP60kB
	TOc/F3ENe/teSXGCCvo5mX7WPqnPhNXcA9aZ5Ki7zPWJ2MbA/w06R9mQh8/IzaZq0maA
	4iVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A8B8MNv43aYAmaoSLnnU9knPTrX3njt3r1YYMrho+cw=;
	b=RZxN25j2sJCAM5we7iraO5SUPFWk6vmYhDOBrpqQgYwCFpd0ohE3phtcLuvmhsbILY
	rPdSJtDAlSWnfTY9rnItFQp37krxfIWBisPVKfKJkf7CPI/9NbZ4+NksUCWpx6RpgZyf
	tz76whwpbRU4U/bjgSWnWDkiCv2PpuC85gqjbGq6TtbBo+ohh4g/vEz38jd1z4iR3T8G
	3Ps/YqLlXsQXrchbl3VtLb/L23O5oAVaxQdHQnwM9KiEL7PphZ5XHWEej4W+/KZSzSHO
	ZRcFMHRJ7kMbbFUr/LFuM1XtkYuVqt4UTaP2ROZvFba+w1Fiv3ZpeP8FP9Ajvt4BS25m
	Xg3A==
X-Gm-Message-State: AODbwcA9QsAlKEjJf86/e1ZFSUBZ2AH+fnDzZ4i+1OzBKbERpxNmT943
	2j9de6v4jcwRpgqHrSosCSA96THOwlrsfAM=
X-Received: by 10.36.85.197 with SMTP id e188mr22346551itb.77.1497444194679;
	Wed, 14 Jun 2017 05:43:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.124.76 with HTTP; Wed, 14 Jun 2017 05:43:14 -0700 (PDT)
From: Charmi Suchak <charmi.suchak@volansystech.com>
Date: Wed, 14 Jun 2017 18:13:14 +0530
Message-ID: <CAAGWnH3Omn5-1AwHZ4rpQjN1FuM9MctT7kLwh=gY7hGG=muKgQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Issue building core-image-minimal
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
X-List-Received-Date: Wed, 14 Jun 2017 12:43:20 -0000
Content-Type: multipart/alternative; boundary="001a114485c44ba7ab0551eae565"

--001a114485c44ba7ab0551eae565
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am new to Yocto Project and I am taking training for Yocto.I have a basic
understanding about Yocto. I was going through the quick start guide and
followed all the steps to build custom linux for core-image-minimal. When I
give the commands:

bitbake core-image-minimal I get the following error for binutils package:

ERROR: Function failed: Fetcher failure: Fetch command failed with exit
code 128, output:
*fatal: repository
'/home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/source=
ware.org.git.binutils-gdb.git/'
does not exist*

ERROR: Logfile of failure stored in:
/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linux/=
binutils-cross-i586/2.25.1-r0/temp/log.do_unpack.14306
Log data follows:
| DEBUG: Executing python function do_unpack
| DEBUG: Executing python function base_do_unpack
| DEBUG: Running export SSH_AUTH_SOCK=3D"/run/user/1000/keyring-jlXvjg/ssh"=
;
export
PATH=3D"/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/sysroots/x=
86_64-linux/usr/bin/texinfo-dummy-native:/home/charmi/charmi/charmi/Trainin=
g/yocto/poky/scripts:/home/charmi/charmi/charmi/Training/yocto/poky/build/t=
mp/sysroots/x86_64-linux/usr/bin/i586-poky-linux:/home/charmi/charmi/charmi=
/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/home/charmi/charmi/cha=
rmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-l=
inux/crossscripts:/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/=
sysroots/x86_64-linux/usr/sbin:/home/charmi/charmi/charmi/Training/yocto/po=
ky/build/tmp/sysroots/x86_64-linux/usr/bin:/home/charmi/charmi/charmi/Train=
ing/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/home/charmi/charmi/cha=
rmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/bin:/home/charmi/ch=
armi/charmi/Training/yocto/poky/scripts:/home/charmi/charmi/charmi/Training=
/yocto/poky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/=
sbin:/bin:/usr/games:/usr/local/games";
export HOME=3D"/home/charmi"; git -c core.fsyncobjectfiles=3D0 clone -s -n
/home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/sourcew=
are.org.git.binutils-gdb.git/
/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linux/=
binutils-cross-i586/2.25.1-r0/git/
| DEBUG: Python function base_do_unpack finished
| DEBUG: Python function do_unpack finished
| ERROR: Function failed: Fetcher failure: Fetch command failed with exit
code 128, output:
| fatal: repository
'/home/charmi/charmi/charmi/Training/yocto/poky/build/downloads/git2/source=
ware.org.git.binutils-gdb.git/'
does not exist
|
ERROR: Task 371
(/home/charmi/charmi/charmi/Training/yocto/poky/meta/recipes-devtools/binut=
ils/
binutils-cross_2.25.1.bb, do_unpack) failed with exit code '1'

binutils-2.25.1.inc

I checked the source uri for this in the following file:

poky/meta/recipes-devtools/binutils/binutils-2.25.1.inc

SRC_URI=3D/
git://
sourceware.org/git/binutils-gdb.git;branch=3Dbinutils-${BINUPV}-branch;prot=
ocol=3Dgit

I tried to ping at the URL and i am able to ping.

Can you please help me resolve this issue.

Thanks for the help in Advance.

--=20

Regards
*Charmi Suchak*
*Associate Engineer*
=E1=90=A7
=E1=90=A7

--001a114485c44ba7ab0551eae565
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I am new to Yocto Project and I=
 am taking training for Yocto.I have a basic understanding about Yocto. I w=
as going through the quick start guide and followed all the steps to build =
custom linux for core-image-minimal. When I give the commands:<br><br></div=
>bitbake core-image-minimal I get the following error for binutils package:=
<br><br>ERROR: Function failed: Fetcher failure: Fetch command failed with =
exit code 128, output:<br><b>fatal: repository &#39;/home/charmi/charmi/cha=
rmi/Training/yocto/poky/build/downloads/git2/sourceware.org.git.binutils-gd=
b.git/&#39; does not exist</b><br><br>ERROR: Logfile of failure stored in: =
/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linux/=
binutils-cross-i586/2.25.1-r0/temp/log.do_unpack.14306<br>Log data follows:=
<br>| DEBUG: Executing python function do_unpack<br>| DEBUG: Executing pyth=
on function base_do_unpack<br>| DEBUG: Running export SSH_AUTH_SOCK=3D&quot=
;/run/user/1000/keyring-jlXvjg/ssh&quot;; export PATH=3D&quot;/home/charmi/=
charmi/charmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/t=
exinfo-dummy-native:/home/charmi/charmi/charmi/Training/yocto/poky/scripts:=
/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/sysroots/x86_64-li=
nux/usr/bin/i586-poky-linux:/home/charmi/charmi/charmi/Training/yocto/poky/=
build/tmp/sysroots/x86_64-linux/home/charmi/charmi/charmi/Training/yocto/po=
ky/build/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux/crossscripts:/ho=
me/charmi/charmi/charmi/Training/yocto/poky/build/tmp/sysroots/x86_64-linux=
/usr/sbin:/home/charmi/charmi/charmi/Training/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin:/home/charmi/charmi/charmi/Training/yocto/poky/build/=
tmp/sysroots/x86_64-linux/sbin:/home/charmi/charmi/charmi/Training/yocto/po=
ky/build/tmp/sysroots/x86_64-linux/bin:/home/charmi/charmi/charmi/Training/=
yocto/poky/scripts:/home/charmi/charmi/charmi/Training/yocto/poky/bitbake/b=
in:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:=
/usr/local/games&quot;; export HOME=3D&quot;/home/charmi&quot;; git -c core=
.fsyncobjectfiles=3D0 clone -s -n /home/charmi/charmi/charmi/Training/yocto=
/poky/build/downloads/git2/sourceware.org.git.binutils-gdb.git/ /home/charm=
i/charmi/charmi/Training/yocto/poky/build/tmp/work/x86_64-linux/binutils-cr=
oss-i586/2.25.1-r0/git/<br>| DEBUG: Python function base_do_unpack finished=
<br>| DEBUG: Python function do_unpack finished<br>| ERROR: Function failed=
: Fetcher failure: Fetch command failed with exit code 128, output:<br>| fa=
tal: repository &#39;/home/charmi/charmi/charmi/Training/yocto/poky/build/d=
ownloads/git2/sourceware.org.git.binutils-gdb.git/&#39; does not exist<br>|=
 <br>ERROR: Task 371 (/home/charmi/charmi/charmi/Training/yocto/poky/meta/r=
ecipes-devtools/binutils/<a href=3D"http://binutils-cross_2.25.1.bb">binuti=
ls-cross_2.25.1.bb</a>, do_unpack) failed with exit code &#39;1&#39;<br><br=
 clear=3D"all"><div><div><div>binutils-2.25.1.inc<br><br></div><div>I check=
ed the source uri for this in the following file:<br><br>poky/meta/recipes-=
devtools/binutils/binutils-2.25.1.inc<br><br></div><div>SRC_URI=3D/<br></di=
v><div>git://<a href=3D"http://sourceware.org/git/binutils-gdb.git;branch=
=3Dbinutils-${BINUPV}-branch;protocol=3Dgit">sourceware.org/git/binutils-gd=
b.git;branch=3Dbinutils-${BINUPV}-branch;protocol=3Dgit</a><br><br></div><d=
iv>I tried to ping at the URL and i am able to ping.<br><br></div><div>Can =
you please help me resolve this issue.<br><br></div><div>Thanks for the hel=
p in Advance.<br></div><div><br></div><div>-- <br><div class=3D"gmail_signa=
ture"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><span><div style=3D"color:rgb(136,136,136)"><font color=3D"#0b5394" face=
=3D"verdana, sans-serif"><br><span style=3D"color:rgb(61,133,198)">Regards<=
/span></font></div><div><div style=3D"color:rgb(100,100,100);font-size:14px=
;background-color:rgb(254,254,254)"><font face=3D"arial, helvetica, sans-se=
rif"><b>Charmi Suchak</b></font></div><div style=3D"font-size:13px;padding:=
5px 0px;background-color:rgb(254,254,254)"><font color=3D"#6fa8dc" face=3D"=
arial, helvetica, sans-serif"><b>Associate Engineer</b></font></div>
<div hspace=3D"streak-pt-mark" style=3D"color:rgb(136,136,136);max-height:1=
px"><img style=3D"width: 0px; max-height: 0px; overflow: hidden;" src=3D"ht=
tps://mailfoogae.appspot.com/t?sender=3DaYW5raXQuZ3VwdGFAdm9sYW5zeXN0ZWNoLm=
NvbQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3D1118fde9-681a-416b-943d-cf03f7=
614c79"><font color=3D"#ffffff" size=3D"1">=E1=90=A7</font></div></div></sp=
an><span><font color=3D"#888888">
<div hspace=3D"streak-pt-mark" style=3D"max-height:1px"><img style=3D"width=
: 0px; max-height: 0px;" src=3D"https://mailfoogae.appspot.com/t?sender=3Da=
YXNoaXNoLmFncmF2YWxAdm9sYW5zeXN0ZWNoLmNvbQ%3D%3D&amp;type=3Dzerocontent&amp=
;guid=3Daed9b798-700c-4d52-93bc-d92be133ec96"><font color=3D"#ffffff" size=
=3D"1">=E1=90=A7</font></div></font></span></div></div></div></div></div></=
div></div></div></div></div></div>
</div></div></div></div>

--001a114485c44ba7ab0551eae565--
