Return-Path: <vidal.develone@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45BD1E00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 06:59:58 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so1012713ggc.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 06:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UYbUb6V7qZEioCTsQmNme7VBHxz+N+YDxNPspMwD2pA=;
	b=Pp0IVVu94Vlh9w0WCoJyiiwsFWsoTTDMEkxKgJvyqAK8d9cx8e5Q2GLppDJvhRAYRm
	NYvnUlQCUHJlNqTfHsc6UKGIMD3zee443dKL9rhGmE3J7P1ffiB/XKYPPo6GWz3ZVSzf
	iqLgGOk49lUp4KGD8ZkgO/zwB/I9NzWKiC/9FiEuutyEnaOEow7C9cAVvTmcIfm/Rs9N
	UUqpYbyEPtp1ss/Em9sysV+W0Cye3Wa8sp6CuJ8Lw+D1ndR2bNsewzjAQzkCOk1yxRKj
	jxIShDvOv4RqUWKgGEYDTh7GSRzv1BCh4aEIgNKRpVCl/oz7GjyNghMZL+fooYCAOzbG
	DFBA==
MIME-Version: 1.0
Received: by 10.50.236.4 with SMTP id uq4mr3725484igc.18.1344002397261; Fri,
	03 Aug 2012 06:59:57 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 3 Aug 2012 06:59:57 -0700 (PDT)
Date: Fri, 3 Aug 2012 07:59:57 -0600
Message-ID: <CANwz6nxgj8hhK+7da3YEdg9euVFPn59ft95+NQoFxjuAo1YFZQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 13:59:58 -0000
Content-Type: multipart/alternative; boundary=14dae9340e0f77527504c65cf11f

--14dae9340e0f77527504c65cf11f
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello

On 2012-08-03 07:19, Edward Vidal wrote:
>* Hello,*>* I too am interested in the pandaboard with yacto.*>* I added m=
eta-ti to conf/bblayes.conf*>* I have tried master and git branch 30fb40.*>=
* Did you have to make any changes to meta-ti?*>* I get the following*>*   =
MACHINE=3Dpandaboard bitbake -v core-image-sato*>* Pseudo is not present bu=
t is required, building this first before the main build*>* DEBUG: Removed =
the following variables from the environment: LESSOPEN, CVS_RSH, XDG_SEAT, =
XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFETCH2, XDG_RUNTIME_DIR,*>* QT=
_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOSTNAME, HISTCONTROL, M=
AIL, LS_COLORS*>* DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bbl=
ayers.conf)*>* DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf*>* DEBUG=
: Adding layer /home/vidal/poky/meta*>* DEBUG: LOAD /home/vidal/poky/meta/c=
onf/layer.conf*>* DEBUG: Adding layer /home/vidal/poky/meta-yocto*>* DEBUG:=
 LOAD /home/vidal/poky/meta-yocto/conf/layer.conf*>* DEBUG: Adding layer /h=
ome/vidal/poky/meta-ti*>* DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.c=
onf*>* ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf: [Er=
rno 2] No such file or directory: '/home/vidal/poky/meta-ti/conf/layer.conf=
'*>* Any help will be appreciated.*>* thanks*
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

--14dae9340e0f77527504c65cf11f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello<br><pre>On 2012-08-03 07:19, Edward Vidal wrote:
&gt;<i> Hello,
</i>&gt;<i> I too am interested in the pandaboard with yacto.
</i>&gt;<i> I added meta-ti to conf/bblayes.conf
</i>&gt;<i> I have tried master and git branch 30fb40.
</i>&gt;<i> Did you have to make any changes to meta-ti?
</i>&gt;<i> I get the following
</i>&gt;<i>   MACHINE=3Dpandaboard bitbake -v core-image-sato
</i>&gt;<i> Pseudo is not present but is required, building this first befo=
re the main build
</i>&gt;<i> DEBUG: Removed the following variables from the environment: LE=
SSOPEN, CVS_RSH, XDG_SEAT, XDG_VTNR, CCACHE_HASHDIR, SHLVL, HISTSIZE, BBFET=
CH2, XDG_RUNTIME_DIR,
</i>&gt;<i> QT_GRAPHICSSYSTEM_CHECKED, XDG_SESSION_ID, BUILDDIR, HOSTNAME, =
HISTCONTROL, MAIL, LS_COLORS
</i>&gt;<i> DEBUG: Found bblayers.conf (/home/ame/poky/build/conf/bblayers.=
conf)
</i>&gt;<i> DEBUG: LOAD /home/ame/poky/build/conf/bblayers.conf
</i>&gt;<i> DEBUG: Adding layer /home/vidal/poky/meta
</i>&gt;<i> DEBUG: LOAD /home/vidal/poky/meta/conf/layer.conf
</i>&gt;<i> DEBUG: Adding layer /home/vidal/poky/meta-yocto
</i>&gt;<i> DEBUG: LOAD /home/vidal/poky/meta-yocto/conf/layer.conf
</i>&gt;<i> DEBUG: Adding layer /home/vidal/poky/meta-ti
</i>&gt;<i> DEBUG: LOAD /home/vidal/poky/meta-ti/conf/layer.conf
</i>&gt;<i> ERROR: Unable to parse /home/vidal/poky/meta-ti/conf/layer.conf=
: [Errno 2] No such file or directory: &#39;/home/vidal/poky/meta-ti/conf/l=
ayer.conf&#39;
</i>&gt;<i> Any help will be appreciated.
</i>&gt;<i> thanks
</i>
Did you actually download meta-ti into your /home/vidal/poky tree?</pre>Yes=
 I used the commands<br>git clone=A0 git://<a href=3D"http://github.com/Ang=
strom-distribution/meta-ti.git">github.com/Angstrom-distribution/meta-ti.gi=
t</a><br>
cd meta-ti<br>git branch 30fb40<br>cd ../meta-ti<br>git log<br>commit d3ff5=
630a74640f46ca2ceaef1aa1baa86b9b795<br>Author: Andreas M=FCller &lt;<a href=
=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@googlemail.com</a>&g=
t;<br>
Date:=A0=A0 Mon Jul 9 14:35:36 2012 +0200<br><br>=A0=A0=A0 netbase: follow =
oe-core to v5.0<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Andreas M=FCller =
&lt;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@googlemai=
l.com</a>&gt;<br>=A0=A0=A0 Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"=
mailto:denys@ti.com">denys@ti.com</a>&gt;<br>
<br>commit 30fb40ebc13614a74c2e237927c60ac43e01d1bc<br>Author: Andreas M=FC=
ller &lt;<a href=3D"mailto:schnitzeltony@googlemail.com">schnitzeltony@goog=
lemail.com</a>&gt;<br><br>The errors above was that I was running as anothe=
r user<br>
After fixing bblayes.conf<br>MACHINE=3Dpandaboard bitbake -v core-image-sat=
o<br>Pseudo is not present but is required, building this first before the =
main build<br>Loading cache: 100% |########################################=
###| ETA:=A0 00:00:00<br>
Loaded 60 entries from dependency cache.<br>ERROR: This recipe does not hav=
e the LICENSE field set (cloud9-gfx-image)-:--:--<br>ERROR: Unable to parse=
 /home/ame/poky/meta-ti/recipes-misc/images/<a href=3D"http://cloud9-gfx-im=
age.bb">cloud9-gfx-image.bb</a>: Exited with &quot;1&quot;<br>
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
bution/meta-ti.git">github.com/Angstrom-distribution/meta-ti.git</a><br>cd =
meta-ti<br>
git branch 30fb40<br>Thanks<br>

--14dae9340e0f77527504c65cf11f--
