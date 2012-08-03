Return-Path: <vidal.develone@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE48E00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 08:08:49 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1111179ghb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 08:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8rQ0p/FZu54sVwOe5T+sF0FCmlUYy/oO7+EZ9f3nX/M=;
	b=AI9drUvs3AsVnkGUEnhDCui14TwdoPOLv8nMLy4Y7NtD+uaPcET5GADr70RwUULQPr
	ru8BmZe/VKI8D+1BD0nN5K4PwdMEfhuOUOj9HN8BjjXeM7wFApWU53bPLkvoZsFnWBH9
	DWdaJW29ancuv2DqlQCeZYIIX/wrqNRWGM2+QTUqAscqA4AnGfSB+dL6fOuMNatfYmyr
	dr6IDN1I8I/HFRSrP4O94miRwR+c8fs5Dpx3e/JYGTDIZrtDMxp+G+Y4cjLA3ZeP3a9h
	uwyVMQOlNDJ8eEZ3zSiCkPCeIbNGeGxbIpghwdpv6lgeujIu/VQaQnRxSS0HWMIrN/d5
	nGJQ==
MIME-Version: 1.0
Received: by 10.42.57.137 with SMTP id d9mr3190842ich.16.1344006528218; Fri,
	03 Aug 2012 08:08:48 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 3 Aug 2012 08:08:48 -0700 (PDT)
In-Reply-To: <CANwz6nx0RAb6Z+jyoDm+V59Jv0oW6cqmjunJb8kBFU-O9SyQgQ@mail.gmail.com>
References: <CANwz6nx0RAb6Z+jyoDm+V59Jv0oW6cqmjunJb8kBFU-O9SyQgQ@mail.gmail.com>
Date: Fri, 3 Aug 2012 09:08:48 -0600
Message-ID: <CANwz6nxVhBu3ifaeKTsJgPoagmuGT+zN=Ud8K9HbRFZtVLZFVg@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 15:08:50 -0000
Content-Type: multipart/alternative; boundary=90e6ba53b270b0b62904c65de729

--90e6ba53b270b0b62904c65de729
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Forwarded conversation
Subject: build error pandaboard on master
------------------------

From: *Edward Vidal* <vidal.develone@gmail.com>
Date: Fri, Aug 3, 2012 at 7:19 AM
To: yocto@yoctoproject.org


Hello,
I too am interested in the pandaboard with yacto.
I added meta-ti to conf/bblayes.conf
I have tried master and git branch 30fb40.
Did you have to make any changes to meta-ti?
I get the following
 MACHINE=3Dpandaboard bitbake -v core-image-sato
Pseudo is not present but is required, building this first before the main
build
DEBUG: Removed the following variables from the environment: LESSOPEN,
CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2,
XDG_RUNTIME_DIR, QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR,
HOSTNAME, HISTCONTROL, MAIL, LS_COLORS
DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)
DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
DEBUG: Adding layer /home/vidal/poky/meta
DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
DEBUG: Adding layer /home/vidal/poky/meta-yocto
DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
DEBUG: Adding layer /home/vidal/poky/meta-ti
DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2]
No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf'
Any help will be appreciated.
thanks


----------
From: *Edward Vidal* <vidal.develone@gmail.com>
Date: Fri, Aug 3, 2012 at 7:59 AM
To: yocto@yoctoproject.org


Hello


Did you actually download meta-ti into your /home/vidal/poky tree?

Yes I used the commands
git clone  git://github.com/Angstrom-distribution/meta-ti.git
cd meta-ti
git branch 30fb40
cd ../meta-ti
git log
commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795
Author: Andreas M=FCller <schnitzeltony@googlemail.com>
Date:   Mon Jul 9 14:35:36 2012 +0200

    netbase: follow oe-core to v5.0

    Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
    Signed-off-by: Denys Dmytriyenko <denys@ti.com>

commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc
Author: Andreas M=FCller <schnitzeltony@googlemail.com>

The errors above was that I was running as another user
After fixing bblayes.conf

MACHINE=3Dpandaboard bitbake -v core-image-sato
Pseudo is not present but is required, building this first before the main
build
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 60 entries from dependency cache.
ERROR: This recipe does not have the LICENSE field set
(cloud9-gfx-image)-:--:--
ERROR: Unable to parse /home/ame/poky/meta-ti/recipes-misc/images/
cloud9-gfx-image.bb: Exited with "1"
ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-image)
ERROR: This recipe does not have the LICENSE field set (cloud9-image)
ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-image=
)
ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/ame/poky/bitbake/lib/bb/command.py", line 84, in
runAsyncCommand
    self.cooker.updateCache()
  File "/home/ame/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
    if not self.parser.parse_next():
  File "/home/ame/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_next
    self.virtuals +=3D len(result)
UnboundLocalError: local variable 'result' referenced before assignment


Summary: There were 6 ERROR messages shown, returning a non-zero exit code.
git clone  git://github.com/Angstrom-distribution/meta-ti.git
cd meta-ti
git branch 30fb40
Thanks

----------
From: *Edward Vidal* <vidal.develone@gmail.com>
Date: Fri, Aug 3, 2012 at 8:37 AM
To: yocto@yoctoproject.org


On 2012-08-03 07:59, Edward Vidal wrote:
>* Hello*>**>* On 2012-08-03 07:19, Edward Vidal wrote:*
>>*/  Hello,*>* />/  I too am interested in the pandaboard with yacto.*>* /=
>/  I added meta-ti to conf/bblayes.conf*>* />/  I have tried master and gi=
t branch 30fb40.*>* />/  Did you have to make any changes to meta-ti?*>* />=
/  I get the following*>* />/    MACHINE=3Dpandaboard bitbake -v core-image=
-sato*>* />/  Pseudo is not present but is required, building this first be=
fore the main build*>* />/  DEBUG: Removed the following variables from the=
 environment: LESSOPEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL,=
 HISTSIZE, BBFETCH2, XDG_RUNTIME_DIR,*>* />/  QT_GRAPHICSSYSTEM_CHECKED, XD=
G_SESSION_ID, BUILDDIR, HOSTNAME, HISTCONTROL, MAIL, LS_COLORS*>* />/  DEBU=
G: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)*>* />/  DE=
BUG: LOAD /home/ame/poky/build/conf/bblayers.conf*>* />/  DEBUG: Adding lay=
er /home/vidal/poky/meta*>* />/  DEBUG: LOAD /home/vidal/poky/meta/conf/lay=
er.conf*>* />/  DEBUG: Adding layer /home/vidal/poky/meta-yocto*>* />/  DEB=
UG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf*>* />/  DEBUG: Adding =
layer /home/vidal/poky/meta-ti*>* />/  DEBUG: LOAD /home/vidal/poky/meta-ti=
/conf/layer.conf*>* />/  ERROR: Unable to parse /home/vidal/poky/meta-ti/co=
nf/layer.conf: [Errno 2] No such file or directory: '/home/vidal/poky/meta-=
ti/conf/layer.conf'*>* />/  Any help will be appreciated.*>* />/  thanks*
>* /*>* Did you actually download meta-ti into your /home/vidal/poky tree?*=
>**>* Yes I used the commands*
>* git clone  git://github.com/Angstrom-distribution/meta-ti.git <http://gi=
thub.com/Angstrom-distribution/meta-ti.git>*
>* cd meta-ti*>* git branch 30fb40*>* cd ../meta-ti*>* git log*>* commit d3=
ff5630a74640f46ca2ceaef1aa1baa86b9b795*
>* Author: Andreas M=FCller <schnitzeltony at googlemail.com <https://lists=
.yoctoproject.org/listinfo/yocto> <mailto:schnitzeltony at googlemail.com <=
https://lists.yoctoproject.org/listinfo/yocto>>>*
>* Date:   Mon Jul 9 14:35:36 2012 +0200*>**>*      netbase: follow oe-core=
 to v5.0*>**
>*      Signed-off-by: Andreas M=FCller <schnitzeltony at googlemail.com <h=
ttps://lists.yoctoproject.org/listinfo/yocto> <mailto:schnitzeltony at goog=
lemail.com <https://lists.yoctoproject.org/listinfo/yocto>>>*>*      Signed=
-off-by: Denys Dmytriyenko <denys at ti.com <https://lists.yoctoproject.org=
/listinfo/yocto> <mailto:denys at ti.com <https://lists.yoctoproject.org/li=
stinfo/yocto>>>*>**>* commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc*>* Au=
thor: Andreas M=FCller <schnitzeltony at googlemail.com <https://lists.yoct=
oproject.org/listinfo/yocto> <mailto:schnitzeltony at googlemail.com <https=
://lists.yoctoproject.org/listinfo/yocto>>>*
>**>* The errors above was that I was running as another user*>* After fixi=
ng bblayes.conf*>* MACHINE=3Dpandaboard bitbake -v core-image-sato*>* Pseud=
o is not present but is required, building this first before the main build=
*>* Loading cache: 100% |###########################################| ETA: =
 00:00:00*>* Loaded 60 entries from dependency cache.*>* ERROR: This recipe=
 does not have the LICENSE field set (cloud9-gfx-image)-:--:--*
>* ERROR: Unable to parse /home/ame/poky/meta-ti/recipes-misc/images/cloud9=
-gfx-image.bb <http://cloud9-gfx-image.bb>: Exited with "1"*
>* ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-ima=
ge)*>* ERROR: This recipe does not have the LICENSE field set (cloud9-image=
)*>* ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-=
image)*>* ERROR: Command execution failed: Traceback (most recent call last=
):*>*    File "/home/ame/poky/bitbake/lib/bb/command.py", line 84, in runAs=
yncCommand*>*      self.cooker.updateCache()*>*    File "/home/ame/poky/bit=
bake/lib/bb/cooker.py", line 1202, in updateCache*>*      if not self.parse=
r.parse_next():*>*    File "/home/ame/poky/bitbake/lib/bb/cooker.py", line =
1669, in parse_next*>*      self.virtuals +=3D len(result)*>* UnboundLocalE=
rror: local variable 'result' referenced before assignment*>**>**>* Summary=
: There were 6 ERROR messages shown, returning a non-zero exit code.*
>* git clone  git://github.com/Angstrom-distribution/meta-ti.git <http://gi=
thub.com/Angstrom-distribution/meta-ti.git>*
>* cd meta-ti*>* git branch 30fb40*>* Thanks*

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

Does BBMASK go in the meti-ti conf or the local.conf I tried both still the
same
thnaks

--90e6ba53b270b0b62904c65de729
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><span style=3D"font-size:large;font-weig=
ht:bold">Forwarded conversation</span><br>Subject: <b class=3D"gmail_sender=
name">build error pandaboard on master</b><br>------------------------<br><=
br>
<span class=3D"undefined"><font color=3D"#888">From: <b class=3D"undefined"=
>Edward Vidal</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gm=
ail.com">vidal.develone@gmail.com</a>&gt;</span><br>Date: Fri, Aug 3, 2012 =
at 7:19 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></font><br></span><br>Hello,<br>I too am interested in the pandaboard with=
 yacto.<br>I added meta-ti to conf/bblayes.conf<br>I have tried master and =
git branch 30fb40.<br>
Did you have to make any changes to meta-ti?<br>I get the following<br>=A0M=
ACHINE=3Dpandaboard bitbake -v core-image-sato<br>
Pseudo is not present but is required, building this first before the main =
build<br>DEBUG: Removed the following variables from the environment: LESSO=
PEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2=
, XDG_RUNTIME_DIR, QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOS=
TNAME, HISTCONTROL, MAIL, LS_COLORS<br>

DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.conf)<br>DEB=
UG: LOAD /home/ame/poky/build/conf/bblayers.conf<br>DEBUG: Adding layer /ho=
me/vidal/poky/meta<br>DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf<br>

DEBUG: Adding layer /home/vidal/poky/meta-yocto<br>DEBUG: LOAD /home/vidal/=
poky/meta-yocto/conf/layer.conf<br>DEBUG: Adding layer /home/vidal/poky/met=
a-ti<br>DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf<br>ERROR: Unab=
le to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Errno 2] No such fil=
e or directory: &#39;/home/vidal/poky/meta-ti/conf/layer.conf&#39;<br>

Any help will be appreciated.<br>thanks <br><br>
<br>----------<br><span class=3D"undefined"><font color=3D"#888">From: <b c=
lass=3D"undefined">Edward Vidal</b> <span dir=3D"ltr">&lt;<a href=3D"mailto=
:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt;</span><br>Date:=
 Fri, Aug 3, 2012 at 7:59 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></font><br></span><br>Hello<br><pre><div></div>
Did you actually download meta-ti into your /home/vidal/poky tree?</pre>Yes=
 I used the commands<br>git clone=A0 git://<a href=3D"http://github.com/Ang=
strom-distribution/meta-ti.git" target=3D"_blank">github.com/Angstrom-distr=
ibution/meta-ti.git</a><br>

cd meta-ti<br>git branch 30fb40<br>cd ../meta-ti<br>git log<br>commit d3ff5=
630a74640f46ca2ceaef1aa1baa86b9b795<br>Author: Andreas M=FCller &lt;<a href=
=3D"mailto:schnitzeltony@googlemail.com" target=3D"_blank">schnitzeltony@go=
oglemail.com</a>&gt;<br>

Date:=A0=A0 Mon Jul 9 14:35:36 2012 +0200<br><br>=A0=A0=A0 netbase: follow =
oe-core to v5.0<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Andreas M=FCller =
&lt;<a href=3D"mailto:schnitzeltony@googlemail.com" target=3D"_blank">schni=
tzeltony@googlemail.com</a>&gt;<br>
=A0=A0=A0 Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"mailto:denys@ti.c=
om" target=3D"_blank">denys@ti.com</a>&gt;<br>
<br>commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc<br>Author: Andreas M=FC=
ller &lt;<a href=3D"mailto:schnitzeltony@googlemail.com" target=3D"_blank">=
schnitzeltony@googlemail.com</a>&gt;<br><br>The errors above was that I was=
 running as another user<br>

After fixing bblayes.conf<div class=3D"im"><br>MACHINE=3Dpandaboard bitbake=
 -v core-image-sato<br>Pseudo is not present but is required, building this=
 first before the main build<br></div>Loading cache: 100% |################=
###########################| ETA:=A0 00:00:00<br>

Loaded 60 entries from dependency cache.<br>ERROR: This recipe does not hav=
e the LICENSE field set (cloud9-gfx-image)-:--:--<br>ERROR: Unable to parse=
 /home/ame/poky/meta-ti/recipes-misc/images/<a href=3D"http://cloud9-gfx-im=
age.bb" target=3D"_blank">cloud9-gfx-image.bb</a>: Exited with &quot;1&quot=
;<br>

ERROR: This recipe does not have the LICENSE field set (cloud9-gnome-image)=
<br>ERROR: This recipe does not have the LICENSE field set (cloud9-image)<b=
r>ERROR: This recipe does not have the LICENSE field set (ti-hw-bringup-ima=
ge)<br>

ERROR: Command execution failed: Traceback (most recent call last):<br>=A0 =
File &quot;/home/ame/poky/bitbake/lib/bb/command.py&quot;, line 84, in runA=
syncCommand<br>=A0=A0=A0 self.cooker.updateCache()<br>=A0 File &quot;/home/=
ame/poky/bitbake/lib/bb/cooker.py&quot;, line 1202, in updateCache<br>

=A0=A0=A0 if not self.parser.parse_next():<br>=A0 File &quot;/home/ame/poky=
/bitbake/lib/bb/cooker.py&quot;, line 1669, in parse_next<br>=A0=A0=A0 self=
.virtuals +=3D len(result)<br>UnboundLocalError: local variable &#39;result=
&#39; referenced before assignment<br>

<br><br>Summary: There were 6 ERROR messages shown, returning a non-zero ex=
it code.<br>git clone=A0 git://<a href=3D"http://github.com/Angstrom-distri=
bution/meta-ti.git" target=3D"_blank">github.com/Angstrom-distribution/meta=
-ti.git</a><br>
cd meta-ti<br>
git branch 30fb40<br>Thanks<br>
<br>----------<br><span class=3D"undefined"><font color=3D"#888">From: <b c=
lass=3D"undefined">Edward Vidal</b> <span dir=3D"ltr">&lt;<a href=3D"mailto=
:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt;</span><br>Date:=
 Fri, Aug 3, 2012 at 8:37 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
></font><br></span><br><pre><div class=3D"im">On 2012-08-03 07:59, Edward V=
idal wrote:
&gt;<i> Hello
</i>&gt;<i>
</i>&gt;<i> On 2012-08-03 07:19, Edward Vidal wrote:
</i></div>&gt;&gt;<i>/  Hello,
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
</i><div class=3D"im">&gt;<i> /
</i>&gt;<i> Did you actually download meta-ti into your /home/vidal/poky tr=
ee?
</i>&gt;<i>
</i>&gt;<i> Yes I used the commands
</i></div>&gt;<i> git clone  <a>git://github.com/Angstrom-distribution/meta=
-ti.git</a> &lt;<a href=3D"http://github.com/Angstrom-distribution/meta-ti.=
git" target=3D"_blank">http://github.com/Angstrom-distribution/meta-ti.git<=
/a>&gt;
</i><div class=3D"im">&gt;<i> cd meta-ti
</i>&gt;<i> git branch 30fb40
</i>&gt;<i> cd ../meta-ti
</i>&gt;<i> git log
</i>&gt;<i> commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795
</i></div>&gt;<i> Author: Andreas M=FCller &lt;<a href=3D"https://lists.yoc=
toproject.org/listinfo/yocto" target=3D"_blank">schnitzeltony at googlemail=
.com</a> &lt;mailto:<a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">schnitzeltony at googlemail.com</a>&gt;&gt;
</i><div class=3D"im">&gt;<i> Date:   Mon Jul 9 14:35:36 2012 +0200
</i>&gt;<i>
</i>&gt;<i>      netbase: follow oe-core to v5.0
</i>&gt;<i>
</i></div>&gt;<i>      Signed-off-by: Andreas M=FCller &lt;<a href=3D"https=
://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">schnitzeltony a=
t googlemail.com</a> &lt;mailto:<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" target=3D"_blank">schnitzeltony at googlemail.com</a>&gt;&gt=
;
</i>&gt;<i>      Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"https://li=
sts.yoctoproject.org/listinfo/yocto" target=3D"_blank">denys at ti.com</a> =
&lt;mailto:<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">denys at ti.com</a>&gt;&gt;
</i>&gt;<i>
</i>&gt;<i> commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc
</i>&gt;<i> Author: Andreas M=FCller &lt;<a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto" target=3D"_blank">schnitzeltony at googlemail.com</=
a> &lt;mailto:<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">schnitzeltony at googlemail.com</a>&gt;&gt;
</i><div class=3D"im">&gt;<i>
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
</i></div>&gt;<i> ERROR: Unable to parse /home/ame/poky/meta-ti/recipes-mis=
c/images/<a href=3D"http://cloud9-gfx-image.bb" target=3D"_blank">cloud9-gf=
x-image.bb</a> &lt;<a href=3D"http://cloud9-gfx-image.bb" target=3D"_blank"=
>http://cloud9-gfx-image.bb</a>&gt;: Exited with &quot;1&quot;
</i><div class=3D"im">&gt;<i> ERROR: This recipe does not have the LICENSE =
field set (cloud9-gnome-image)
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
</i></div>&gt;<i> git clone  <a>git://github.com/Angstrom-distribution/meta=
-ti.git</a> &lt;<a href=3D"http://github.com/Angstrom-distribution/meta-ti.=
git" target=3D"_blank">http://github.com/Angstrom-distribution/meta-ti.git<=
/a>&gt;
</i><div class=3D"im">&gt;<i> cd meta-ti
</i>&gt;<i> git branch 30fb40
</i>&gt;<i> Thanks
</i></div>
Check the README

I normally add this to local.conf to work around these problems:
   BBMASK ?=3D &quot;.*/meta-ti/recipes-(misc|bsp/formfactor)/&quot;<br><br=
>I tried both <br>BBMASK ?=3D &quot;.*/meta-ti/recipes-(misc|bsp/formfactor=
)/&quot;<br>and BBMASK ?=3D &quot;.*/meta-ti/recipes-misc&quot; which  is i=
n the README<br>

I get <div class=3D"im"><br> MACHINE=3Dpandaboard bitbake -v core-image-sat=
o<br>Pseudo is not present but is required, building this first before the =
main build<br></div>Parsing recipes: 100% |################################=
#########| Time: 00:00:33<br>

Parsing of 887 .bb files complete (0 cached, 887 parsed). 1165 targets, 58 =
skipped, 8 masked, 0 errors.<br>ERROR: No recipes available for:<br>  /home=
/ame/poky/meta-ti/recipes-core/netbase/netbase_5.0.bbappend<br>ERROR: Comma=
nd execution failed: Exited with 1<div class=3D"im">
<br>
<br>Summary: There were 2 ERROR messages shown, returning a non-zero exit c=
ode.<br><br></div>Thanks<br> <br></pre>
Does BBMASK go in the meti-ti conf or the local.conf I tried both still the=
 same<br>thnaks<br></div><br>

--90e6ba53b270b0b62904c65de729--
