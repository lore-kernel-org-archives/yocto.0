Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23502C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 07:22:06 +0000 (UTC)
Subject: [scarthgap]  circular dependency in meta-raspberrypi  #scarthgap #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 23:22:01 -0800
Message-ID: <58gF.1738048921468211634.1FDg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6Y3NCBw0XXreSNvrjZW7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 07:22:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64656

--6Y3NCBw0XXreSNvrjZW7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to build scarthgap image facing below error.

ERROR: Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux=
-raspberrypi_6.6.bb:do_collect_spdx_deps has circular dependency on /home/b=
uild/project/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb=
:do_create_spdx
ERROR: Command execution failed: 1

Their is a commit for error https://patchwork.yoctoproject.org/project/oe-c=
ore/patch/20230602133453.229023-3-richard.purdie@linuxfoundation.org/
but for scarthgap it has been updated.
i.e. the function names have been changed in scarthgap and the commit made.

Scarthgap has below func
def collect_direct_deps ( d , dep_task ):
current_task =3D "do_" + d. getVar ( "BB_CURRENTTASK" )
pn =3D d. getVar ( "PN" )

taskdepdata =3D d. getVar ( "BB_TASKDEPDATA" , False )

for this_dep in taskdepdata. values ():
if this_dep [ 0 ] =3D=3D pn and this_dep [ 1 ] =3D=3D current_task :
break
else :
bb. fatal ( f "Unable to find this {pn}:{current_task} in taskdepdata" )

deps =3D set ()
for dep_name in this_dep [ 3 ]:
dep_data =3D taskdepdata [ dep_name ]
if dep_data [ 1 ] =3D=3D dep_task and dep_data [ 0 ] ! =3D pn :
deps. add (( dep_data [ 0 ] , dep_data [ 7 ]))

return sorted ( deps )

collect_direct_deps [ vardepsexclude ] +=3D "BB_TASKDEPDATA"
collect_direct_deps [ vardeps ] +=3D "DEPENDS"

And the commit has

def collect_direct_deps(d, dep_task):
current_task =3D "do_" + d.getVar("BB_CURRENTTASK")
pn =3D d.getVar("PN")
taskdepdata =3D d.getVar("BB_TASKDEPDATA", False)
for this_dep in taskdepdata.values():
if this_dep[0] =3D=3D pn and this_dep[1] =3D=3D current_task:
break
else:
bb.fatal(f"Unable to find this {pn}:{current_task} in taskdepdata")
deps =3D set()
for dep_name in this_dep[3]:
dep_data =3D taskdepdata[dep_name]
if dep_data[1] =3D=3D dep_task and dep_data[0] !=3D pn:
deps.add((dep_data[0], dep_data[7]))
return sorted(deps)
collect_direct_deps[vardepsexclude] +=3D "BB_TASKDEPDATA"
collect_direct_deps[vardeps] +=3D "DEPENDS"

I this causing the issue?

Ganesh Mahajan

--6Y3NCBw0XXreSNvrjZW7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Trying to build scarthgap image facing below error.<br /><br />ERROR: =
Task /home/build/project/meta-raspberrypi/recipes-kernel/linux/linux-raspbe=
rrypi_6.6.bb:do_collect_spdx_deps has circular dependency on /home/build/pr=
oject/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_6.6.bb:do_cre=
ate_spdx<br />ERROR: Command execution failed: 1<br /><br />Their is a comm=
it for error <a href=3D"https://patchwork.yoctoproject.org/project/oe-core/=
patch/20230602133453.229023-3-richard.purdie@linuxfoundation.org/" target=
=3D"_blank" rel=3D"noopener">https://patchwork.yoctoproject.org/project/oe-=
core/patch/20230602133453.229023-3-richard.purdie@linuxfoundation.org/</a>&=
nbsp;<br />but for scarthgap it has been updated.<br />i.e. the function na=
mes have been changed in scarthgap and the commit made.<br /><br />Scarthga=
p has below func</div>
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Conso=
las, 'Courier New', monospace; font-weight: normal; font-size: 14px; line-h=
eight: 19px; white-space: pre;">
<div><span style=3D"color: #569cd6;">def</span><span style=3D"color: #ccccc=
c;"> </span><span style=3D"color: #dcdcaa;">collect_direct_deps</span><span=
 style=3D"color: #cccccc;">(</span><span style=3D"color: #9cdcfe;">d</span>=
<span style=3D"color: #d4d4d4;">,</span><span style=3D"color: #cccccc;"> </=
span><span style=3D"color: #9cdcfe;">dep_task</span><span style=3D"color: #=
cccccc;">):</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">current_task</span><span style=3D"color: #cccccc;"> </span><=
span style=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #cccccc;"> <=
/span><span style=3D"color: #ce9178;">"do_"</span><span style=3D"color: #cc=
cccc;"> + </span><span style=3D"color: #9cdcfe;">d</span><span style=3D"col=
or: #d4d4d4;">.</span><span style=3D"color: #dcdcaa;">getVar</span><span st=
yle=3D"color: #cccccc;">(</span><span style=3D"color: #ce9178;">"BB_CURRENT=
TASK"</span><span style=3D"color: #cccccc;">)</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">pn</span><span style=3D"color: #cccccc;"> </span><span style=
=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #cccccc;"> </span><spa=
n style=3D"color: #9cdcfe;">d</span><span style=3D"color: #d4d4d4;">.</span=
><span style=3D"color: #dcdcaa;">getVar</span><span style=3D"color: #cccccc=
;">(</span><span style=3D"color: #ce9178;">"PN"</span><span style=3D"color:=
 #cccccc;">)</span></div>
<br />
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">taskdepdata</span><span style=3D"color: #cccccc;"> </span><s=
pan style=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #cccccc;"> </=
span><span style=3D"color: #9cdcfe;">d</span><span style=3D"color: #d4d4d4;=
">.</span><span style=3D"color: #dcdcaa;">getVar</span><span style=3D"color=
: #cccccc;">(</span><span style=3D"color: #ce9178;">"BB_TASKDEPDATA"</span>=
<span style=3D"color: #d4d4d4;">,</span><span style=3D"color: #cccccc;"> </=
span><span style=3D"color: #569cd6;">False</span><span style=3D"color: #ccc=
ccc;">)</span></div>
<br />
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #c586c0;">for</span><span style=3D"color: #cccccc;"> </span><span styl=
e=3D"color: #9cdcfe;">this_dep</span><span style=3D"color: #cccccc;"> </spa=
n><span style=3D"color: #569cd6;">in</span><span style=3D"color: #cccccc;">=
 </span><span style=3D"color: #9cdcfe;">taskdepdata</span><span style=3D"co=
lor: #d4d4d4;">.</span><span style=3D"color: #dcdcaa;">values</span><span s=
tyle=3D"color: #cccccc;">():</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #c586c0;">if</span><span style=3D"color: #cccccc;"> </sp=
an><span style=3D"color: #9cdcfe;">this_dep</span><span style=3D"color: #cc=
cccc;">[</span><span style=3D"color: #b5cea8;">0</span><span style=3D"color=
: #cccccc;">] </span><span style=3D"color: #d4d4d4;">=3D=3D</span><span sty=
le=3D"color: #cccccc;"> </span><span style=3D"color: #9cdcfe;">pn</span><sp=
an style=3D"color: #cccccc;"> </span><span style=3D"color: #569cd6;">and</s=
pan><span style=3D"color: #cccccc;"> </span><span style=3D"color: #9cdcfe;"=
>this_dep</span><span style=3D"color: #cccccc;">[</span><span style=3D"colo=
r: #b5cea8;">1</span><span style=3D"color: #cccccc;">] </span><span style=
=3D"color: #d4d4d4;">=3D=3D</span><span style=3D"color: #cccccc;"> </span><=
span style=3D"color: #9cdcfe;">current_task</span><span style=3D"color: #cc=
cccc;">:</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; </span><span style=3D"color: #c586c0;">break</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #c586c0;">else</span><span style=3D"color: #cccccc;">:</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">bb</span><span style=3D"color: #d4d4d4;">.</sp=
an><span style=3D"color: #dcdcaa;">fatal</span><span style=3D"color: #ccccc=
c;">(</span><span style=3D"color: #9cdcfe;">f</span><span style=3D"color: #=
ce9178;">"Unable to find this {pn}:{current_task} in taskdepdata"</span><sp=
an style=3D"color: #cccccc;">)</span></div>
<br />
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #9cdcfe;">deps</span><span style=3D"color: #cccccc;"> </span><span sty=
le=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #cccccc;"> </span><s=
pan style=3D"color: #dcdcaa;">set</span><span style=3D"color: #cccccc;">()<=
/span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #c586c0;">for</span><span style=3D"color: #cccccc;"> </span><span styl=
e=3D"color: #9cdcfe;">dep_name</span><span style=3D"color: #cccccc;"> </spa=
n><span style=3D"color: #569cd6;">in</span><span style=3D"color: #cccccc;">=
 </span><span style=3D"color: #9cdcfe;">this_dep</span><span style=3D"color=
: #cccccc;">[</span><span style=3D"color: #b5cea8;">3</span><span style=3D"=
color: #cccccc;">]:</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #9cdcfe;">dep_data</span><span style=3D"color: #cccccc;"=
> </span><span style=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #c=
ccccc;"> </span><span style=3D"color: #9cdcfe;">taskdepdata</span><span sty=
le=3D"color: #cccccc;">[</span><span style=3D"color: #9cdcfe;">dep_name</sp=
an><span style=3D"color: #cccccc;">]</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; </span><sp=
an style=3D"color: #c586c0;">if</span><span style=3D"color: #cccccc;"> </sp=
an><span style=3D"color: #9cdcfe;">dep_data</span><span style=3D"color: #cc=
cccc;">[</span><span style=3D"color: #b5cea8;">1</span><span style=3D"color=
: #cccccc;">] </span><span style=3D"color: #d4d4d4;">=3D=3D</span><span sty=
le=3D"color: #cccccc;"> </span><span style=3D"color: #9cdcfe;">dep_task</sp=
an><span style=3D"color: #cccccc;"> </span><span style=3D"color: #569cd6;">=
and</span><span style=3D"color: #cccccc;"> </span><span style=3D"color: #9c=
dcfe;">dep_data</span><span style=3D"color: #cccccc;">[</span><span style=
=3D"color: #b5cea8;">0</span><span style=3D"color: #cccccc;">] !</span><spa=
n style=3D"color: #d4d4d4;">=3D</span><span style=3D"color: #cccccc;"> </sp=
an><span style=3D"color: #9cdcfe;">pn</span><span style=3D"color: #cccccc;"=
>:</span></div>
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; </span><span style=3D"color: #9cdcfe;">deps</span><span style=3D"color:=
 #d4d4d4;">.</span><span style=3D"color: #dcdcaa;">add</span><span style=3D=
"color: #cccccc;">((</span><span style=3D"color: #9cdcfe;">dep_data</span><=
span style=3D"color: #cccccc;">[</span><span style=3D"color: #b5cea8;">0</s=
pan><span style=3D"color: #cccccc;">]</span><span style=3D"color: #d4d4d4;"=
>,</span><span style=3D"color: #cccccc;"> </span><span style=3D"color: #9cd=
cfe;">dep_data</span><span style=3D"color: #cccccc;">[</span><span style=3D=
"color: #b5cea8;">7</span><span style=3D"color: #cccccc;">]))</span></div>
<br />
<div><span style=3D"color: #cccccc;">&nbsp; &nbsp; </span><span style=3D"co=
lor: #c586c0;">return</span><span style=3D"color: #cccccc;"> </span><span s=
tyle=3D"color: #dcdcaa;">sorted</span><span style=3D"color: #cccccc;">(</sp=
an><span style=3D"color: #9cdcfe;">deps</span><span style=3D"color: #cccccc=
;">)</span></div>
<br />
<div><span style=3D"color: #9cdcfe;">collect_direct_deps</span><span style=
=3D"color: #cccccc;">[</span><span style=3D"color: #9cdcfe;">vardepsexclude=
</span><span style=3D"color: #cccccc;">] </span><span style=3D"color: #d4d4=
d4;">+=3D</span><span style=3D"color: #cccccc;"> </span><span style=3D"colo=
r: #ce9178;">"BB_TASKDEPDATA"</span></div>
<div><span style=3D"color: #9cdcfe;">collect_direct_deps</span><span style=
=3D"color: #cccccc;">[</span><span style=3D"color: #9cdcfe;">vardeps</span>=
<span style=3D"color: #cccccc;">] </span><span style=3D"color: #d4d4d4;">+=
=3D</span><span style=3D"color: #cccccc;"> </span><span style=3D"color: #ce=
9178;">"DEPENDS"</span></div>
</div>
<div><br />And the commit has<br /><br /></div>
<div>def collect_direct_deps(d, dep_task):<br />current_task =3D "do_" + d.=
getVar("BB_CURRENTTASK")<br />&nbsp; &nbsp; pn =3D d.getVar("PN")</div>
<div>&nbsp; &nbsp; taskdepdata =3D d.getVar("BB_TASKDEPDATA", False)</div>
<div>&nbsp; &nbsp; for this_dep in taskdepdata.values():<br />&nbsp; &nbsp;=
 &nbsp; &nbsp; if this_dep[0] =3D=3D pn and this_dep[1] =3D=3D current_task=
:<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break<br />&nbsp; &nbsp; e=
lse:<br />&nbsp; &nbsp; &nbsp; &nbsp; bb.fatal(f"Unable to find this {pn}:{=
current_task} in taskdepdata")</div>
<div>&nbsp; &nbsp; deps =3D set()<br />&nbsp; &nbsp; for dep_name in this_d=
ep[3]:<br />&nbsp; &nbsp; &nbsp; &nbsp; dep_data =3D taskdepdata[dep_name]<=
br />&nbsp; &nbsp; &nbsp; &nbsp; if dep_data[1] =3D=3D dep_task and dep_dat=
a[0] !=3D pn:<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; deps.add((dep_=
data[0], dep_data[7]))</div>
<div>&nbsp; &nbsp; return sorted(deps)</div>
<div>collect_direct_deps[vardepsexclude] +=3D "BB_TASKDEPDATA"<br />collect=
_direct_deps[vardeps] +=3D "DEPENDS"</div>
<div><br />I this causing the issue?<br /><br />Ganesh Mahajan</div>

--6Y3NCBw0XXreSNvrjZW7--

