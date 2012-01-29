Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f54.google.com (mail-qw0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8676FE00599
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2012 04:00:28 -0800 (PST)
Received: by qaea17 with SMTP id a17so2352788qae.13
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2012 04:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=Rkvgsmyjb/WMa29JATrI4QX6nql0oNc7xz2fB9watZg=;
	b=ct8B3CeeoKm4kBDofp/9+PpwTnTj5M9tc4BZacqJUnjuJ2viFOFbxnm6QTlRjwK5Et
	4yE5M+ctLL+wYbjdx+Lo78RYJZqEnkMdxUxkv91gj1Y4nwb0NRlbum+TUEFfciihpomk
	JNtmEnjgKWP+Ttq2JS5wB5crqsRzSNS47D80g=
Received: by 10.224.78.206 with SMTP id m14mr16733697qak.18.1327838427662;
	Sun, 29 Jan 2012 04:00:27 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	dm7sm27923196qab.5.2012.01.29.04.00.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 29 Jan 2012 04:00:26 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <CADkTA4Mc7cLnF3g7G1DyHqBfuveVPpaybs=2aTRB61TSRDeomQ@mail.gmail.com>
Date: Sun, 29 Jan 2012 07:00:38 -0500
Message-Id: <AE0D9837-DF31-43B5-9904-3DB7F5D84871@gmail.com>
References: <1AECC3C0-6BFC-4584-B201-30122DB2229D@gmail.com>
	<CADkTA4Mc7cLnF3g7G1DyHqBfuveVPpaybs=2aTRB61TSRDeomQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: Understanding the git commits for Yocto and meta
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
X-List-Received-Date: Sun, 29 Jan 2012 12:00:28 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_262AD26E-CE56-4FF8-A396-503FC7EC50D8"

--Apple-Mail=_262AD26E-CE56-4FF8-A396-503FC7EC50D8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jan 28, 2012, at 6:25 PM, Bruce Ashfield wrote:

> On Sat, Jan 28, 2012 at 9:51 AM, James Abernathy =
<jfabernathy@gmail.com> wrote:
>> While I've read enough to think I understand git, I get confused when =
it's
>> applied to real situations like Yocto.  If I look at the Yocto =
Development
>> Manual, Appendix A, A.5.2.4 Changing Recipes-kernel, It brings up =
some
>> questions.
>>=20
>> 1. The way I see it, when you guys commit something to the linux =
yocto
>> master or meta there is a commit string associated with that commit.  =
Not to
>> any certain branch of the git repository, right?
>=20
> I'm not following your terminology. There's a git has that is used to
> update the SRCREVs
> for bitbake, but that hash is always on the meta branch. Bitbake likes
> git hashes, but the
> kernel build infrastructure talks branches .. since humans can
> remember branches, but
> not git hashes.

I'm sure I'm not using the terminology right because, I clearly don't =
understand the whole concept yet.  That light bulb has not gone on yet. =
:-)

Basically, I see from a user perspective that you start the process with =
creating a clone of the Yocto Project files repository, =
git://git.yoctoproject.org/poky, and you also create a clone of the =
meta-intel BSP repository if you are working with the Intel board BSPs.  =
I have on occasion also cloned the Yocto Linux Kernel and poky extra so =
I could do the Appendix B example.  In the examples and my testing, I've =
always checked out the edison branch of both the yocto project files in =
the poky directory and the edison branch in the meta-intel directory.  =
So in my primitive  thinking, my branch is edison.  By examining =
Appendix B, I see where they checkout a branch of the Yocto Linux kernel =
called, common-pc-base, using the command, git checkout -b =
common-pc-base origin/yocto/standard/common-pc/base.  But once changes =
are made you commit those changes to the local bare clone that will be =
used in the build process.  So I think I see that to get the right =
versions of the Yocto Linux Kernel, I need to tell bitbake to use a =
particular branch called yocto/standard/common-pc/base.  I think the =
KMACHINE parameter does this in the Appendix B example.  However, in the =
App. B example, there is no talk about SRCREV anywhere.
Relating Appendix A recipes-kernel SRCREV to Appendix B example is a =
problem for me.

>=20
>>=20
>> 2.  So if I'm building an image for atom-pc using Edison branch, the =
first
>> SRCREV I'm interested in is yocto/standard/common-pc/atom-pc branch.  =
But
>> the commits I see at
>>=20
>>  =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3Dyoct=
o/standard/common-pc/atom-pc
>>=20
>> are commits not associated with Edison, but Master, right?
>=20
> They are all just commits on the board branch. edison has a snapshot
> in time the SRCREV
> that is used. Master marches on, but the commits that were current in
> the timeframe of edison,
> will always be there.

So here is a terminology problem in my mind.  =
yocto/standard/common-pc/atom-pc seems to be a branch in the meta-intel =
repository.  edison seems to be both a snapshot and branch of poky =
repository.???

For example, at , http://git.yoctoproject.org/cgit/cgit.cgi/, I see Poky =
listed. clicking on Poky, =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/, I go to a summary page =
that shows edison as a branch of poky. If I look at the log and commit =
tabs on that page I see that Scott Rifenbark had a patch that got =
committed most recently in November:

author	Scott Rifenbark <scott.m.rifenbark@intel.com>2011-11-23 18:58:23 =
(GMT)=20
committer Richard Purdie <richard.purdie@linuxfoundation.org>2011-11-25 =
15:26:48 (GMT)=20
commit	adcf8bf7b52460b94998438e8c2bf854cdec0a80 (patch) (side-by-side =
diff)=20
tree		02cb7ae971dce7e464b31cdd88d47bc710f0c1e4=20
parent	fda17235fdba53583b5a0ed8187021cd5c093a09 (diff)
download	poky-edison.zip
			poky-edison.tar.gz
			poky-edison.tar.bz2

So that tells me that If I sticking to edison for everything related to =
poky, then I need to use this commit string to get the latest Edison =
Poky patches, Am I right???
Where do I put that or is the fact that I checked out edison branch and =
did a recent pull make me current with respect to poky???

So basically, in Appendix A Recipes-kernel section.  what exactly are =
the SRCREV statements telling Bitbake and why are there 2 of them.

Thanks,

>=20
>>=20
>> 3.  How do I find the commit string for a particular branch, like =
Edison,
>> for something like yocto/standard/common-pc/atom-pc?
>=20
> I'm not following the terminology again. Maybe if you describe what
> you are trying to
> achieve ? git will tell you what branch has any commit .. just use git
> branch --contains <hash>
>=20
>>=20
>> 4.  To me, branches are things like Edison, Bernard, etc.  But on the =
page:
>>=20
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/heads?h=3Dy=
octo/standard/common-pc/atom-pc
>>=20
>> yocto/standard/common-pc/atom-pc, master, and meta are all listed as
>> branches.  What is the difference??
>=20
> edison and bernard are yocto branches. The kernel is a separate
> repository and can actually be
> used standalone (which I do). It has branches for it's meta data and
> to isolate board changes.
> A particular kernel repository is referenced by the yocto kernel
> recipes. They are what follow the
> yocto branches .. not the kernel itself.

I think I see part of my problem.  (Other than too much bourbon over the =
last 40 years)
The Yocto project (poky) repository has edison, bernard, master as =
branches of that repository. I need to keep that thinking separate from =
the meta-intel repository where edison and bernard are also branches.

Plus, the yocto linux kernel is yet another git repository which has =
branches like meta, crownbay, common-pc, etc??  did I get that right??  =
is this the only part that needs a SRCREV??


>=20
>>=20
>> 5.  The second SRCREV seems to be associated with meta.  How does =
that
>> relate to my whole confusion on branches.
>=20
> A board build is composed of two things the meta data (configuration,
> patches) that
> describe the BSP and the actual code changes (the board branch).

So in the Appendix A example, which SRCREV is tied to what?  Below is =
the 1st SRCREV for the board branch(actual code changes)? and the Second =
one the Meta data?:
 COMPATIBLE_MACHINE_mymachine =3D "mymachine"
     KMACHINE_mymachine  =3D "yocto/standard/common-pc/atom-pc"
     KERNEL_FEATURES_append_mymachine +=3D " cfg/smp.scc"

     SRCREV_machine_pn-linux-yocto_mymachine ?=3D \
        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
     SRCREV_meta_pn-linux-yocto_mymachine ?=3D \
        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
               =20



>=20
>>=20
>> 6.  To me, if you are working with Edison and a particular BSP, then =
these 2
>> commit strings should be constant forever, right?
>=20
> Yes, for the official / known BSP. If you do local work, you can of
> course have your
> own tree and advance both.
>=20
> Cheers,
>=20
> Bruce
>=20

Thanks for taking the time to help me with this confusion.

Jim A

>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>=20
>=20
>=20
> --=20
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"


--Apple-Mail=_262AD26E-CE56-4FF8-A396-503FC7EC50D8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jan 28, 2012, at 6:25 PM, Bruce Ashfield =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div>On Sat, Jan 28, 2012 at 9:51 AM, James Abernathy =
&lt;<a href=3D"mailto:jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt;=
 wrote:<br><blockquote type=3D"cite">While I've read enough to think I =
understand git, I get confused when it's<br></blockquote><blockquote =
type=3D"cite">applied to real situations like Yocto. &nbsp;If I look at =
the Yocto Development<br></blockquote><blockquote type=3D"cite">Manual, =
Appendix A, A.5.2.4 Changing Recipes-kernel,&nbsp;It brings up =
some<br></blockquote><blockquote =
type=3D"cite">questions.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">1. The way I =
see it, when you guys commit something to the linux =
yocto<br></blockquote><blockquote type=3D"cite">master or meta there is =
a commit string associated with that commit. &nbsp;Not =
to<br></blockquote><blockquote type=3D"cite">any certain branch of the =
git repository, right?<br></blockquote><br>I'm not following your =
terminology. There's a git has that is used to<br>update the =
SRCREVs<br>for bitbake, but that hash is always on the meta branch. =
Bitbake likes<br>git hashes, but the<br>kernel build infrastructure =
talks branches .. since humans can<br>remember branches, but<br>not git =
hashes.<br></div></blockquote><div><br></div>I'm sure I'm not using the =
terminology right because, I clearly don't understand the whole concept =
yet. &nbsp;That light bulb has not gone on yet. =
:-)</div><div><br></div><div>Basically, I see from a user perspective =
that you start the process with creating a clone of the Yocto Project =
files repository,&nbsp;<span class=3D"Apple-style-span" =
style=3D"font-family: monospace; white-space: pre; "><a =
href=3D"git://git.yoctoproject.org/poky">git://git.yoctoproject.org/poky</=
a>, </span>and you also create a clone of the meta-intel BSP repository =
if you are working with the Intel board BSPs. &nbsp;I have on occasion =
also cloned the Yocto Linux Kernel and poky extra so I could do the =
Appendix B example. &nbsp;In the examples and my testing, I've always =
checked out the edison branch of both the yocto project files in the =
poky directory and the edison branch in the meta-intel directory. =
&nbsp;So in my primitive &nbsp;thinking, my branch is edison. &nbsp;By =
examining Appendix B, I see where they checkout a branch of the Yocto =
Linux kernel called, common-pc-base, using the command,&nbsp;<span =
class=3D"Apple-style-span" style=3D"font-family: monospace; white-space: =
pre; ">git checkout -b common-pc-base =
origin/yocto/standard/common-pc/base.</span>&nbsp; But once changes are =
made you commit those changes to the local bare clone that will be used =
in the build process. &nbsp;So I think I see that to get the right =
versions of the Yocto Linux Kernel, I need to tell bitbake to use a =
particular branch called yocto/standard/common-pc/base. &nbsp;I think =
the KMACHINE parameter does this in the Appendix B example. =
&nbsp;However, in the App. B example, there is no talk about SRCREV =
anywhere.</div><div>Relating Appendix A recipes-kernel SRCREV to =
Appendix B example is a problem for =
me.</div><div><br></div><div><blockquote =
type=3D"cite"><div><br><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">2. &nbsp;So if =
I'm building an image for atom-pc using Edison branch, the =
first<br></blockquote><blockquote type=3D"cite">SRCREV I'm interested in =
is&nbsp;yocto/standard/common-pc/atom-pc branch. =
&nbsp;But<br></blockquote><blockquote type=3D"cite">the commits I see =
at<br></blockquote><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">&nbsp;<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?=
h=3Dyocto/standard/common-pc/atom-pc">http://git.yoctoproject.org/cgit/cgi=
t.cgi/linux-yocto-3.0/commit/?h=3Dyocto/standard/common-pc/atom-pc</a><br>=
</blockquote><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">are commits not associated with Edison, but Master, =
right?<br></blockquote><br>They are all just commits on the board =
branch. edison has a snapshot<br>in time the SRCREV<br>that is used. =
Master marches on, but the commits that were current in<br>the timeframe =
of edison,<br>will always be =
there.<br></div></blockquote><div><br></div>So here is a terminology =
problem in my mind. &nbsp;yocto/standard/common-pc/atom-pc seems to be a =
branch in the meta-intel repository. &nbsp;edison seems to be both a =
snapshot and branch of poky repository.???</div><div><br></div><div>For =
example, at , <a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/">http://git.yoctoprojec=
t.org/cgit/cgit.cgi/</a>, I see Poky listed. clicking on Poky, <a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/">http://git.yoctop=
roject.org/cgit/cgit.cgi/poky/</a>, I go to a summary page that shows =
edison as a branch of poky. If I look at the log and commit tabs on that =
page I see that Scott Rifenbark had a patch that got committed most =
recently in November:</div><div><br></div><div>author<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>Scott =
Rifenbark &lt;<a =
href=3D"mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a=
>&gt;2011-11-23 18:58:23 (GMT)&nbsp;</div><div>committer Richard Purdie =
&lt;<a =
href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfou=
ndation.org</a>&gt;2011-11-25 15:26:48 (GMT)&nbsp;</div><div>commit<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dedison&=
amp;id=3Dadcf8bf7b52460b94998438e8c2bf854cdec0a80">adcf8bf7b52460b94998438=
e8c2bf854cdec0a80</a> (<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/patch/?id=3Dadcf8bf=
7b52460b94998438e8c2bf854cdec0a80">patch</a>) (<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dedison&=
amp;id=3Dadcf8bf7b52460b94998438e8c2bf854cdec0a80&amp;ss=3D1">side-by-side=
 diff</a>)&nbsp;</div><div>tree<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/?h=3Dedison">0=
2cb7ae971dce7e464b31cdd88d47bc710f0c1e4</a>&nbsp;</div><div>parent<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dedison&=
amp;id=3Dfda17235fdba53583b5a0ed8187021cd5c093a09">fda17235fdba53583b5a0ed=
8187021cd5c093a09</a> (<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/diff/?h=3Dedison&am=
p;id2=3Dfda17235fdba53583b5a0ed8187021cd5c093a09">diff</a>)</div><div>down=
load<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-ediso=
n.zip">poky-edison.zip</a><br><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-ediso=
n.tar.gz"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
	</span>poky-edison.tar.gz</a><br><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-ediso=
n.tar.bz2"><span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
	</span>poky-edison.tar.bz2</a></div><div><br></div><div>So that =
tells me that If I sticking to edison for everything related to poky, =
then I need to use this commit string to get the latest Edison Poky =
patches, Am I right???</div><div>Where do I put that or is the fact that =
I checked out edison branch and did a recent pull make me current with =
respect to poky???</div><div><br></div><div>So basically, in Appendix A =
Recipes-kernel section. &nbsp;what exactly are the SRCREV statements =
telling Bitbake and why are there 2 of =
them.</div><div><br></div><div>Thanks,</div><div><br><blockquote =
type=3D"cite"><div><br><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">3. &nbsp;How do =
I find the commit string for a particular branch, like =
Edison,<br></blockquote><blockquote type=3D"cite">for something like =
yocto/standard/common-pc/atom-pc?<br></blockquote><br>I'm not following =
the terminology again. Maybe if you describe what<br>you are trying =
to<br>achieve ? git will tell you what branch has any commit .. just use =
git<br>branch --contains &lt;hash&gt;<br><br><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">4. &nbsp;To me, =
branches are things like Edison, Bernard, etc. &nbsp;But on the =
page:<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite"><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/hea=
ds?h=3Dyocto/standard/common-pc/atom-pc">http://git.yoctoproject.org/cgit/=
cgit.cgi/linux-yocto-3.0/refs/heads?h=3Dyocto/standard/common-pc/atom-pc</=
a><br></blockquote><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">yocto/standard/common-pc/atom-pc, master, and meta are all =
listed as<br></blockquote><blockquote type=3D"cite">branches. &nbsp;What =
is the difference??<br></blockquote><br>edison and bernard are yocto =
branches. The kernel is a separate<br>repository and can actually =
be<br>used standalone (which I do). It has branches for it's meta data =
and<br>to isolate board changes.<br>A particular kernel repository is =
referenced by the yocto kernel<br>recipes. They are what follow =
the<br>yocto branches .. not the kernel =
itself.<br></div></blockquote><div><br></div>I think I see part of my =
problem. &nbsp;(Other than too much bourbon over the last 40 =
years)</div><div>The Yocto project (poky) repository has edison, =
bernard, master as branches of that repository. I need to keep that =
thinking separate from the meta-intel repository where edison and =
bernard are also branches.</div><div><br></div><div>Plus, the yocto =
linux kernel is yet another git repository which has branches like meta, =
crownbay, common-pc, etc?? &nbsp;did I get that right?? &nbsp;is this =
the only part that needs a =
SRCREV??</div><div><br></div><div><br></div><div><blockquote =
type=3D"cite"><div><br><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">5. &nbsp;The =
second SRCREV seems to be associated with meta. &nbsp;How does =
that<br></blockquote><blockquote type=3D"cite">relate to my whole =
confusion on branches.<br></blockquote><br>A board build is composed of =
two things the meta data (configuration,<br>patches) that<br>describe =
the BSP and the actual code changes (the board =
branch).<br></div></blockquote><div><br></div>So in the Appendix A =
example, which SRCREV is tied to what? &nbsp;Below is the 1st SRCREV for =
the board branch(actual code changes)? and the Second one the Meta =
data?:</div><div><div class=3D"section" title=3D"A.5.2.&nbsp;Changing =
the Recipes in Your BSP"><div class=3D"section" =
title=3D"A.5.2.4.&nbsp;Changing&nbsp;&nbsp;recipes-kernel"><pre =
class=3D"literallayout"> COMPATIBLE_MACHINE_mymachine =3D "mymachine"
     KMACHINE_mymachine  =3D "yocto/standard/common-pc/atom-pc"
     KERNEL_FEATURES_append_mymachine +=3D " cfg/smp.scc"

     SRCREV_machine_pn-linux-yocto_mymachine ?=3D \
        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
     SRCREV_meta_pn-linux-yocto_mymachine ?=3D \
        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
                </pre><div>
            <br class=3D"webkit-block-placeholder"></div></div></div><div =
class=3D"section" title=3D"A.5.3.&nbsp;BSP Recipe Change Summary"><div =
class=3D"titlepage"><div><div><h3 class=3D"title"><a =
id=3D"bsp-recipe-change-summary"></a></h3></div></div></div></div><div><br=
></div><blockquote type=3D"cite"><div><br><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">6. &nbsp;To me, =
if you are working with Edison and a particular BSP, then these =
2<br></blockquote><blockquote type=3D"cite">commit strings should be =
constant forever, right?<br></blockquote><br>Yes, for the official / =
known BSP. If you do local work, you can of<br>course have your<br>own =
tree and advance =
both.<br><br>Cheers,<br><br>Bruce<br><br></div></blockquote><div><br></div=
>Thanks for taking the time to help me with this =
confusion.</div><div><br></div><div>Jim A</div><div><br><blockquote =
type=3D"cite"><div><blockquote type=3D"cite"><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">_______________________________________________<br></blockqu=
ote><blockquote type=3D"cite">yocto mailing =
list<br></blockquote><blockquote type=3D"cite"><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br></blo=
ckquote><blockquote type=3D"cite"><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yocto=
project.org/listinfo/yocto</a><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><br><br><br>-- <br>"Thou shalt not follow =
the NULL pointer, for chaos and madness await<br>thee at its =
end"<br></div></blockquote></div><br></body></html>=

--Apple-Mail=_262AD26E-CE56-4FF8-A396-503FC7EC50D8--
