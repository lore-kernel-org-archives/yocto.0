Return-Path: <vidal.develone@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 282A4E00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 07:37:59 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1064624ghb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 07:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4Ej0J5IfnYgaTdpKOYS9e6pZBUOa1MXKKtyCR1LKy30=;
	b=HbZt66/266zfLWw1aTD49KdYPJpE7LDQdUfywY1GmvPBX8O2nVrQfLWzk70qCPyTgN
	YIk4YvCKR8kO0rj+jUrgX0YE0KOdR97HjSbdjQJHbuC7bz1P79UZslWjP5Xkf2sIypqL
	VFMz7ZMf3y4bt6DhDKOdY4pgAESYBnLekPNDGrbLjWwVNs2otaFh/PGax3IdM8BD/pVV
	gZX6QgaOBU46bwcuX7qFfwUTRZDVs+NGsNNJguxnfjzYwJdn/zoYxoY5HrX2aUhG7zAO
	tLR/qMnD9oCkwK1nLK+HaHIqk8Y6embb/ebFVTt5hHQmC8eySyVqhqFtwOKYXE5xFob3
	ZDwA==
MIME-Version: 1.0
Received: by 10.50.87.227 with SMTP id bb3mr3709644igb.57.1344004678084; Fri,
	03 Aug 2012 07:37:58 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 3 Aug 2012 07:37:56 -0700 (PDT)
Date: Fri, 3 Aug 2012 08:37:56 -0600
Message-ID: <CANwz6nx0RAb6Z+jyoDm+V59Jv0oW6cqmjunJb8kBFU-O9SyQgQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: build error pandaboard on master
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
X-List-Received-Date: Fri, 03 Aug 2012 14:37:59 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba4d369e83004c65d7907

--e89a8f3ba4d369e83004c65d7907
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 2012-08-03 07:59, Edward Vidal wrote:
>* Hello*>**>* On 2012-08-03 07:19, Edward Vidal wrote:*>>*/  Hello,*>* />/=
  I too am interested in the pandaboard with yacto.*>* />/  I added meta-ti=
 to conf/bblayes.conf*>* />/  I have tried master and git branch 30fb40.*>*=
 />/  Did you have to make any changes to meta-ti?*>* />/  I get the follow=
ing*>* />/    MACHINE=3Dpandaboard bitbake -v core-image-sato*>* />/  Pseud=
o is not present but is required, building this first before the main build=
*>* />/  DEBUG: Removed the following variables from the environment: LESSO=
PEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2=
, XDG_RUNTIME_DIR,*>* />/  QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILD=
DIR, HOSTNAME, HISTCONTROL, MAIL, LS_COLORS*>* />/  DEBUG: Found bblayers.c=
onf (/home/ame/poky/build/conf/bblayers.conf)*>* />/  DEBUG: LOAD /home/ame=
/poky/build/conf/bblayers.conf*>* />/  DEBUG: Adding layer /home/vidal/poky=
/meta*>* />/  DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf*>* />/  DEB=
UG: Adding layer /home/vidal/poky/meta-yocto*>* />/  DEBUG: LOAD /home/vida=
l/poky/meta-yocto/conf/layer.conf*>* />/  DEBUG: Adding layer /home/vidal/p=
oky/meta-ti*>* />/  DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf*>*=
 />/  ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Err=
no 2] No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf'=
*>* />/  Any help will be appreciated.*>* />/  thanks*>* /*>* Did you actua=
lly download meta-ti into your /home/vidal/poky tree?*>**>* Yes I used the =
commands*>* git clone  git://github.com/Angstrom-distribution/meta-ti.git <=
http://github.com/Angstrom-distribution/meta-ti.git>*>* cd meta-ti*>* git b=
ranch 30fb40*>* cd ../meta-ti*>* git log*>* commit d3ff5630a74640f46ca2ceae=
f1aa1baa86b9b795*>* Author: Andreas M=FCller <schnitzeltony at googlemail.c=
om <https://lists.yoctoproject.org/listinfo/yocto> <mailto:schnitzeltony at=
 googlemail.com <https://lists.yoctoproject.org/listinfo/yocto>>>*>* Date: =
  Mon Jul 9 14:35:36 2012 +0200*>**>*      netbase: follow oe-core to v5.0*=
>**>*      Signed-off-by: Andreas M=FCller <schnitzeltony at googlemail.com=
 <https://lists.yoctoproject.org/listinfo/yocto> <mailto:schnitzeltony at g=
ooglemail.com <https://lists.yoctoproject.org/listinfo/yocto>>>*>*      Sig=
ned-off-by: Denys Dmytriyenko <denys at ti.com <https://lists.yoctoproject.=
org/listinfo/yocto> <mailto:denys at ti.com <https://lists.yoctoproject.org=
/listinfo/yocto>>>*>**>* commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc*>*=
 Author: Andreas M=FCller <schnitzeltony at googlemail.com <https://lists.y=
octoproject.org/listinfo/yocto> <mailto:schnitzeltony at googlemail.com <ht=
tps://lists.yoctoproject.org/listinfo/yocto>>>*>**>* The errors above was t=
hat I was running as another user*>* After fixing bblayes.conf*>* MACHINE=
=3Dpandaboard bitbake -v core-image-sato*>* Pseudo is not present but is re=
quired, building this first before the main build*>* Loading cache: 100% |#=
##########################################| ETA:  00:00:00*>* Loaded 60 ent=
ries from dependency cache.*>* ERROR: This recipe does not have the LICENSE=
 field set (cloud9-gfx-image)-:--:--*>* ERROR: Unable to parse /home/ame/po=
ky/meta-ti/recipes-misc/images/cloud9-gfx-image.bb <http://cloud9-gfx-image=
.bb>: Exited with "1"*>* ERROR: This recipe does not have the LICENSE field=
 set (cloud9-gnome-image)*>* ERROR: This recipe does not have the LICENSE f=
ield set (cloud9-image)*>* ERROR: This recipe does not have the LICENSE fie=
ld set (ti-hw-bringup-image)*>* ERROR: Command execution failed: Traceback =
(most recent call last):*>*    File "/home/ame/poky/bitbake/lib/bb/command.=
py", line 84, in runAsyncCommand*>*      self.cooker.updateCache()*>*    Fi=
le "/home/ame/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache*>* =
     if not self.parser.parse_next():*>*    File "/home/ame/poky/bitbake/li=
b/bb/cooker.py", line 1669, in parse_next*>*      self.virtuals +=3D len(re=
sult)*>* UnboundLocalError: local variable 'result' referenced before assig=
nment*>**>**>* Summary: There were 6 ERROR messages shown, returning a non-=
zero exit code.*>* git clone  git://github.com/Angstrom-distribution/meta-t=
i.git <http://github.com/Angstrom-distribution/meta-ti.git>*>* cd meta-ti*>=
* git branch 30fb40*>* Thanks*
Check the README

I normally add this to local.conf to work around these problems:
   BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"

I tried both
BBMASK ?=3D ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
and BBMASK ?=3D ".*/meta-ti/recipes-misc" which  is in the README
I get
 MACHINE=3Dpandaboard bitbake -v core-image-sato
Pseudo is not present but is required, building this first before the main =
build
Parsing recipes: 100% |#########################################| Time: 00:=
00:33
Parsing of 887 .bb files complete (0 cached, 887 parsed). 1165
targets, 58 skipped, 8 masked, 0 errors.
ERROR: No recipes available for:
  /home/ame/poky/meta-ti/recipes-core/netbase/netbase_5.0.bbappend
ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Thanks

--e89a8f3ba4d369e83004c65d7907
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<pre>On 2012-08-03 07:59, Edward Vidal wrote:
&gt;<i> Hello
</i>&gt;<i>
</i>&gt;<i> On 2012-08-03 07:19, Edward Vidal wrote:
</i>&gt;&gt;<i>/  Hello,
</i>&gt;<i> /&gt;/  I too am interested in the pandaboard with yacto.
</i>&gt;<i> /&gt;/  I added meta-ti to conf/bblayes.conf
</i>&gt;<i> /&gt;/  I have tried master and git branch 30fb40.
</i>&gt;<i> /&gt;/  Did you have to make any changes to meta-ti?
</i>&gt;<i> /&gt;/  I get the following
</i>&gt;<i> /&gt;/    MACHINE=3Dpandaboard bitbake -v core-image-sato
</i>&gt;<i> /&gt;/  Pseudo is not present but is required, building this fi=
rst before the main build
</i>&gt;<i> /&gt;/  DEBUG: Removed the following variables from the environ=
ment: LESSOPEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZ=
E, BBFETCH2, XDG_RUNTIME_DIR,
</i>&gt;<i> /&gt;/  QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HO=
STNAME, HISTCONTROL, MAIL, LS_COLORS
</i>&gt;<i> /&gt;/  DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/b=
blayers.conf)
</i>&gt;<i> /&gt;/  DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
</i>&gt;<i> /&gt;/  DEBUG: Adding layer /home/vidal/poky/meta
</i>&gt;<i> /&gt;/  DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
</i>&gt;<i> /&gt;/  DEBUG: Adding layer /home/vidal/poky/meta-yocto
</i>&gt;<i> /&gt;/  DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
</i>&gt;<i> /&gt;/  DEBUG: Adding layer /home/vidal/poky/meta-ti
</i>&gt;<i> /&gt;/  DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
</i>&gt;<i> /&gt;/  ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/la=
yer.conf: [Errno 2] No such file or directory: &#39;/home/vidal/poky/meta-t=
i/conf/layer.conf&#39;
</i>&gt;<i> /&gt;/  Any help will be appreciated.
</i>&gt;<i> /&gt;/  thanks
</i>&gt;<i> /
</i>&gt;<i> Did you actually download meta-ti into your /home/vidal/poky tr=
ee?
</i>&gt;<i>
</i>&gt;<i> Yes I used the commands
</i>&gt;<i> git clone  <a href=3D"git://github.com/Angstrom-distribution/me=
ta-ti.git">git://github.com/Angstrom-distribution/meta-ti.git</a> &lt;<a hr=
ef=3D"http://github.com/Angstrom-distribution/meta-ti.git">http://github.co=
m/Angstrom-distribution/meta-ti.git</a>&gt;
</i>&gt;<i> cd meta-ti
</i>&gt;<i> git branch 30fb40
</i>&gt;<i> cd ../meta-ti
</i>&gt;<i> git log
</i>&gt;<i> commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795
</i>&gt;<i> Author: Andreas M=FCller &lt;<a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto">schnitzeltony at googlemail.com</a> &lt;mailto:<a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto">schnitzeltony at goog=
lemail.com</a>&gt;&gt;
</i>&gt;<i> Date:   Mon Jul 9 14:35:36 2012 +0200
</i>&gt;<i>
</i>&gt;<i>      netbase: follow oe-core to v5.0
</i>&gt;<i>
</i>&gt;<i>      Signed-off-by: Andreas M=FCller &lt;<a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto">schnitzeltony at googlemail.com</a> &lt=
;mailto:<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">schnitzel=
tony at googlemail.com</a>&gt;&gt;
</i>&gt;<i>      Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"https://li=
sts.yoctoproject.org/listinfo/yocto">denys at ti.com</a> &lt;mailto:<a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto">denys at ti.com</a>&gt;&=
gt;
</i>&gt;<i>
</i>&gt;<i> commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc
</i>&gt;<i> Author: Andreas M=FCller &lt;<a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto">schnitzeltony at googlemail.com</a> &lt;mailto:<a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto">schnitzeltony at goog=
lemail.com</a>&gt;&gt;
</i>&gt;<i>
</i>&gt;<i> The errors above was that I was running as another user
</i>&gt;<i> After fixing bblayes.conf
</i>&gt;<i> MACHINE=3Dpandaboard bitbake -v core-image-sato
</i>&gt;<i> Pseudo is not present but is required, building this first befo=
re the main build
</i>&gt;<i> Loading cache: 100% |##########################################=
#| ETA:  00:00:00
</i>&gt;<i> Loaded 60 entries from dependency cache.
</i>&gt;<i> ERROR: This recipe does not have the LICENSE field set (cloud9-=
gfx-image)-:--:--
</i>&gt;<i> ERROR: Unable to parse /home/ame/poky/meta-ti/recipes-misc/imag=
es/<a href=3D"http://cloud9-gfx-image.bb">cloud9-gfx-image.bb</a> &lt;<a hr=
ef=3D"http://cloud9-gfx-image.bb">http://cloud9-gfx-image.bb</a>&gt;: Exite=
d with &quot;1&quot;
</i>&gt;<i> ERROR: This recipe does not have the LICENSE field set (cloud9-=
gnome-image)
</i>&gt;<i> ERROR: This recipe does not have the LICENSE field set (cloud9-=
image)
</i>&gt;<i> ERROR: This recipe does not have the LICENSE field set (ti-hw-b=
ringup-image)
</i>&gt;<i> ERROR: Command execution failed: Traceback (most recent call la=
st):
</i>&gt;<i>    File &quot;/home/ame/poky/bitbake/lib/bb/command.py&quot;, l=
ine 84, in runAsyncCommand
</i>&gt;<i>      self.cooker.updateCache()
</i>&gt;<i>    File &quot;/home/ame/poky/bitbake/lib/bb/cooker.py&quot;, li=
ne 1202, in updateCache
</i>&gt;<i>      if not self.parser.parse_next():
</i>&gt;<i>    File &quot;/home/ame/poky/bitbake/lib/bb/cooker.py&quot;, li=
ne 1669, in parse_next
</i>&gt;<i>      self.virtuals +=3D len(result)
</i>&gt;<i> UnboundLocalError: local variable &#39;result&#39; referenced b=
efore assignment
</i>&gt;<i>
</i>&gt;<i>
</i>&gt;<i> Summary: There were 6 ERROR messages shown, returning a non-zer=
o exit code.
</i>&gt;<i> git clone  <a href=3D"git://github.com/Angstrom-distribution/me=
ta-ti.git">git://github.com/Angstrom-distribution/meta-ti.git</a> &lt;<a hr=
ef=3D"http://github.com/Angstrom-distribution/meta-ti.git">http://github.co=
m/Angstrom-distribution/meta-ti.git</a>&gt;
</i>&gt;<i> cd meta-ti
</i>&gt;<i> git branch 30fb40
</i>&gt;<i> Thanks
</i>
Check the README

I normally add this to local.conf to work around these problems:
   BBMASK ?=3D &quot;.*/meta-ti/recipes-(misc|bsp/formfactor)/&quot;<br><br=
>I tried both <br>BBMASK ?=3D &quot;.*/meta-ti/recipes-(misc|bsp/formfactor=
)/&quot;<br>and BBMASK ?=3D &quot;.*/meta-ti/recipes-misc&quot; which  is i=
n the README<br>
I get <br> MACHINE=3Dpandaboard bitbake -v core-image-sato<br>Pseudo is not=
 present but is required, building this first before the main build<br>Pars=
ing recipes: 100% |#########################################| Time: 00:00:3=
3<br>
Parsing of 887 .bb files complete (0 cached, 887 parsed). 1165 targets, 58 =
skipped, 8 masked, 0 errors.<br>ERROR: No recipes available for:<br>  /home=
/ame/poky/meta-ti/recipes-core/netbase/netbase_5.0.bbappend<br>ERROR: Comma=
nd execution failed: Exited with 1<br>
<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.<br><br>Thanks<br> <br></pre>

--e89a8f3ba4d369e83004c65d7907--
