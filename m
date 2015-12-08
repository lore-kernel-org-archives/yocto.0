Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19776E00ACF; Tue,  8 Dec 2015 02:40:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C508E007B4
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 02:39:58 -0800 (PST)
Received: by lfaz4 with SMTP id z4so9920135lfa.0
	for <yocto@yoctoproject.org>; Tue, 08 Dec 2015 02:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=vB6J8fzotVGryw+9PRZER3tEezN3wxZSI6EfKJ6aXWs=;
	b=qKRHE92bHfOQQXF1hK55QzMDGGvkdrb4azRhyJspI2Q/ZhzXYPLwXURCc7HHBw/oVp
	WnZmWfhTFkFk65AHIL9DUCkiGPpz3GKWT2+N28nX2nB4A9nLXvgrmNlFHkive0neHGXZ
	U61EfpGx0EZOdBxlGykP/2Wla2clhKO7XcCJ6H05SX/8v8sIw0m9brFFnl32hKfRoQC0
	de6K89SzT6Pnje2OOGYaLkb7xMZb0gdQ9Rv05cWXGn//X/efZ6JSo9OxzEWeNpYNWUT2
	1KxLcs7wv314keSJYo8Fdi8654pzZVHpTUwYYwlNA49jto7QVWogoipiwSh7wBuxc+xl
	o4kQ==
MIME-Version: 1.0
X-Received: by 10.25.17.232 with SMTP id 101mr1277163lfr.38.1449571197081;
	Tue, 08 Dec 2015 02:39:57 -0800 (PST)
Received: by 10.25.82.139 with HTTP; Tue, 8 Dec 2015 02:39:57 -0800 (PST)
Date: Tue, 8 Dec 2015 10:39:57 +0000
Message-ID: <CABatt_wREkBPLV=Q92yP3XVEfAPQfFd-rvRCaOL8ZAcNmgNziA@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: Toaster Problem
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
X-List-Received-Date: Tue, 08 Dec 2015 10:40:01 -0000
Content-Type: multipart/alternative; boundary=001a113f993a47683405266098fa

--001a113f993a47683405266098fa
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying out a production instance of toaster, I'm following the
instructions from here

http://www.yoctoproject.org/docs/latest/toaster-manual/toaster-manual.html#toaster-setting-up-a-production-instance-of-toaster

I managed to get toaster up and running but had to adjust a few things
which you might want to correct in the documentation:

1) virtualenv package doesn't exist in Ubuntu 14.04 had to use
python-virtualenv
2) You need python headers later so add python-dev to list of packages to
install
3) After cloning poky there should be a cd poky before checking out a
branch.
4) SECRET_KEY, it would be nice to know what this is used for, what
characters is can contain, ie can it contain spaces.
5) In the mysql part is states we are creating a database called toaster
but in the settings.py we specify toaster_main one of them needs correcting.
6) Before calling ./bitbake/lib/toaster/manage.py syncdb --migrate maybe it
should link to 3.5 and state that you should create a Django super user
first.
7)There's a typo in the Apache toaster.conf s/toastern_wsgi/toaster_wsgi/
8) Build runner service is wrong, there needs to be the poky directory
involved somewhere, either cd /var/www/toaster/poky or we call
./poky/bitbake/toaster/manage.py

Even with all this I can't get it to build, creating a project based on
fido 1.8 and trying to build core-image-lsb I get

2015-12-08 10:27:57,705 DEBUG localhostbecontroller, our git repos are
{(u'git://git.yoctoproject.org/meta-yocto', u'fido'): [(u'meta-yocto',
                                                        u'meta-yocto'),
                                                       (u'meta-yocto-bsp',
                                                        u'meta-yocto-bsp')],
 (u'git://git.yoctoproject.org/poky', u'fido'): [('bitbake', u'bitbake'),
                                                 (u'openembedded-core',
                                                  u'meta')]}
2015-12-08 10:27:57,705 DEBUG lbc_shellcmmd: () git remote -v
Traceback (most recent call last):
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py",
line 60, in schedule
    bec.triggerBuild(br.brbitbake_set.all(), br.brlayer_set.all(),
br.brvariable_set.all(), br.brtarget_set.all())
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 282, in triggerBuild
    self.setLayers(bitbake, layers, targets)
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 150, in setLayers
    for remotes in self._shellcmd("git remote -v",
self.be.sourcedir).split("\n"):
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py",
line 59, in _shellcmd
    p = subprocess.Popen(command, cwd = cwd, shell=True,
stdout=subprocess.PIPE, stderr=subprocess.PIPE)
  File "/usr/lib/python2.7/subprocess.py", line 710, in __init__
    errread, errwrite)
  File "/usr/lib/python2.7/subprocess.py", line 1327, in _execute_child
    raise child_exception
OSError: [Errno 2] No such file or directory: ''

 in the console.

Any idea whats going wrong?

Cheers,

Martin.

--001a113f993a47683405266098fa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi,=
<br><br></div>I&#39;m trying out a production instance of toaster, I&#39;m =
following the instructions from here<br>


=09
=09
=09
=09


<p style=3D"margin-bottom:0cm;line-height:100%"><a href=3D"http://www.yocto=
project.org/docs/latest/toaster-manual/toaster-manual.html#toaster-setting-=
up-a-production-instance-of-toaster">http://www.yoctoproject.org/docs/lates=
t/toaster-manual/toaster-manual.html#toaster-setting-up-a-production-instan=
ce-of-toaster</a></p>

<br></div>I managed to get toaster up and running but had to adjust a few t=
hings which you might want to correct in the documentation:<br><br></div>1)=
 virtualenv package doesn&#39;t exist in Ubuntu 14.04 had to use python-vir=
tualenv<br></div>2) You need python headers later so add python-dev to list=
 of packages to install<br></div>3) After cloning poky there should be a cd=
 poky before checking out a branch.<br></div>4) SECRET_KEY, it would be nic=
e to know what this is used for, what characters is can contain, ie can it =
contain spaces.<br></div>5) In the mysql part is states we are creating a d=
atabase called toaster but in the settings.py we specify toaster_main one o=
f them needs correcting.<br></div>6) Before calling ./bitbake/lib/toaster/m=
anage.py syncdb --migrate maybe it should link to 3.5 and state that you sh=
ould create a Django super user first.<br></div>7)There&#39;s a typo in the=
 Apache toaster.conf s/toastern_wsgi/toaster_wsgi/<br></div>8) Build runner=
 service is wrong, there needs to be the poky directory involved somewhere,=
 either cd /var/www/toaster/poky or we call ./poky/bitbake/toaster/manage.p=
y<br><br></div>Even with all this I can&#39;t get it to build, creating a p=
roject based on fido 1.8 and trying to build core-image-lsb I get<br><br><d=
iv><div><div><pre class=3D"">2015-12-08 10:27:57,705 DEBUG localhostbecontr=
oller, our git repos are {(u&#39;git://<a href=3D"http://git.yoctoproject.o=
rg/meta-yocto">git.yoctoproject.org/meta-yocto</a>&#39;, u&#39;fido&#39;): =
[(u&#39;meta-yocto&#39;,<br>                                               =
         u&#39;meta-yocto&#39;),<br>                                       =
                (u&#39;meta-yocto-bsp&#39;,<br>                            =
                            u&#39;meta-yocto-bsp&#39;)],<br> (u&#39;git://<=
a href=3D"http://git.yoctoproject.org/poky">git.yoctoproject.org/poky</a>&#=
39;, u&#39;fido&#39;): [(&#39;bitbake&#39;, u&#39;bitbake&#39;),<br>       =
                                          (u&#39;openembedded-core&#39;,<br=
>                                                  u&#39;meta&#39;)]}<br>20=
15-12-08 10:27:57,705 DEBUG lbc_shellcmmd: () git remote -v<br>Traceback (m=
ost recent call last):<br>  File &quot;/var/www/toaster/poky/bitbake/lib/to=
aster/bldcontrol/management/commands/runbuilds.py&quot;, line 60, in schedu=
le<br>    bec.triggerBuild(br.brbitbake_set.all(), br.brlayer_set.all(), br=
.brvariable_set.all(), br.brtarget_set.all())<br>  File &quot;/var/www/toas=
ter/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py&quot;, lin=
e 282, in triggerBuild<br>    self.setLayers(bitbake, layers, targets)<br> =
 File &quot;/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostb=
econtroller.py&quot;, line 150, in setLayers<br>    for remotes in self._sh=
ellcmd(&quot;git remote -v&quot;, self.be.sourcedir).split(&quot;\n&quot;):=
<br>  File &quot;/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/local=
hostbecontroller.py&quot;, line 59, in _shellcmd<br>    p =3D subprocess.Po=
pen(command, cwd =3D cwd, shell=3DTrue, stdout=3Dsubprocess.PIPE, stderr=3D=
subprocess.PIPE)<br>  File &quot;/usr/lib/python2.7/subprocess.py&quot;, li=
ne 710, in __init__<br>    errread, errwrite)<br>  File &quot;/usr/lib/pyth=
on2.7/subprocess.py&quot;, line 1327, in _execute_child<br>    raise child_=
exception<br>OSError: [Errno 2] No such file or directory: &#39;&#39;<br></=
pre><pre class=3D""> in the console.<br><br></pre><pre class=3D"">Any idea =
whats going wrong?<br><br></pre><pre class=3D"">Cheers,<br></pre><pre class=
=3D"">Martin.<br></pre></div></div></div></div>

--001a113f993a47683405266098fa--
