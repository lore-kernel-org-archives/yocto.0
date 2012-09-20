Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA599E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 17:43:12 -0700 (PDT)
Received: by eekd41 with SMTP id d41so797666eek.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 17:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LZYym0HYPY/tfPWIU8p/5FFPfnaD7QzMi4ZZFGJKaq8=;
	b=IGa/lNeCRVW8FwO2VSwbdyPbdVN7yPbf5RvyDXEFG9DE2kXsX3Z0nXDRSD1wkZQcls
	OpIQYkOiOqIQMPPE4bpahNUngUm055OMISEA1DVxQxXGTW3yKVsQOS91cwdmhXis3Sr5
	bTp0g2uTpC4oKH9Os54CDgDG+tU6b+MN/AQxUeeW+HO2ecU50zYh5OGl/KS5BnYoUR+C
	QOYGjAYNHze4j8qmSsGPCrBaT9EUwHN+UXJxzqZ50W6v2HfZ3vjeFKC5VZJ6xR5AXoBl
	XLyzVjFqcO7tJROJ9TzwE2+AtadNIWlzlUvRistJJ/WR2NFoD7H8KRni7Pgmqh0JitHr
	lq8Q==
MIME-Version: 1.0
Received: by 10.14.220.134 with SMTP id o6mr212267eep.35.1348101791308; Wed,
	19 Sep 2012 17:43:11 -0700 (PDT)
Received: by 10.14.173.69 with HTTP; Wed, 19 Sep 2012 17:43:11 -0700 (PDT)
In-Reply-To: <505A5FB9.4010802@mlbassoc.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<5059F7ED.7030006@mlbassoc.com>
	<CAMAb8ZMUJa_MpkFfRqbwyZpMn6MAa=guE0bNc5+_J+Pkdae2FQ@mail.gmail.com>
	<5059FF96.7080907@mlbassoc.com>
	<CAMAb8ZNHj29dcoSjjcF+XnULeyyZa=6MPyNtm-V4VAJ1jGFTHw@mail.gmail.com>
	<CAMAb8ZOEXQ8FD=5apRwkifTdspixyXr1nEUhO1t_LNp2sy42AA@mail.gmail.com>
	<505A5FB9.4010802@mlbassoc.com>
Date: Wed, 19 Sep 2012 17:43:11 -0700
Message-ID: <CAMKF1sqgBSOPpZy-j8WvvHXc8W7hJTXsUr-Z20jhr6WjFdkNCA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 00:43:13 -0000
Content-Type: multipart/alternative; boundary=047d7b62274e645cd104ca17684b

--047d7b62274e645cd104ca17684b
Content-Type: text/plain; charset=UTF-8

On Wednesday, September 19, 2012, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-09-19 16:30, Evade Flow wrote:
>>>
>>> I'm just trying to build the thing. :-)  I'll try converting the tag
>>> name into a commit hash and see if that helps, thanks a lot...
>>
>> ::SIGH::  I changed the SRC_URI var in kmod.inc from this:
>>
>>    SRC_URI = "git://
git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v${PV}"
>>
>> to this:
>>
>>    SRC_URI = "git://
git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git"
>>    SRCREV="8885ced062131214448fae056ef453f094303805"
>>
>> This is *still* trying to access the network:

This is right change and it should work provided your repo tar ball is up
to date so try to open up the port and get the latest source And retry

> Try doing 'bitbake kmod -c cleansstate;bitbake kmod' - does that still
fail?
>
> NOTE: package kmod-7-r0: task do_fetch: Started
> ERROR: Function failed: Network access disabled through BB_NO_NETWORK
> but access rquested with command git ls-remote
> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
> 8885ced062131214448 (for url None)
> ERROR: Logfile of failure stored in:
>
/home/dwolfe/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-r0/temp/log.do_fetch.11168
> Log data follows:
> | ERROR: Function failed: Network access disabled through
> BB_NO_NETWORK but access rquested with command git ls-remote
> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
> 8885ced062131214448 (for url None)
> NOTE: package kmod-7-r0: task do_fetch: Failed
> NOTE: package acl-2.2.51-r3: task do_fetch: Started
> NOTE: package acl-2.2.51-r3: task do_fetch: Succeeded
> ERROR: Task 1374
> (/home/dwolfe/projects/poky-git/meta-systemd/recipes-kernel/kmod/kmod_7.bb
,
> do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 699 tasks of which 697 didn't need to
> be rerun and 1 failed.
>
> Summary: 1 task failed:
>    /home/dwolfe/projects/poky-git/meta-systemd/recipes-kernel/kmod/
kmod_7.bb,
> do_fetch
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> bitbake discovery-image  16.51s user 2.65s system 112% cpu 17.031 total
>
>
> Why is poky/bitbake/whatever running 'git ls-remote'? This seems like a
> bug....
>
>
> On Wed, Sep 19, 2012 at 1:33 PM, Evade Flow <evadeflow@gmail.com> wrote:
>
> I'm not sure how to answer your questions, unfortunately, this is all
> quite new to me. I'm not the maintainer of said layer, and don't know
> anything at all yet about 'layer etiquette'. There does seem to be a
> README.md file in meta-systemd, though:
>
>    - http://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/tree/README.md
>
> I'm just trying to build the thing. :-)  I'll try converting the tag
> name into a commit hash and see if that helps, thanks a lot...
>
>
> On Wed, Sep 19, 2012 at 1:23 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>
> On 2012-09-19 11:15, Evade Flow wrote:
>
> Where did you get that meta-systemd layer?
>
>
>  From here:
>
>
>     - http://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/
>
>
> Why are there conflicting meta-systemd layers (and pointers thereto)??
> This layer in git.yoctoproject.org doesn't seem even "legal" - where is
> the README that is expected with every layer?  Without it, I don't have
> enough info to be able to report problems like yours...
>
> The reason your build fails with BB_NO_NETWORK is that the kmod_7.bb
> recipe refers to a git tag, not a specific revision, which cannot be
> resolved without using the network.
>
>
>
>
> On Wed, Sep 19, 2012 at 12:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>
> On 2012-09-19 10:34, Evade Flow wrote:
>
>
> Trying to build the meta-ivi discovery-image behind a firewall is
> proving to be quite a challenge. I tried modifying my conf/local.conf
> file as follows:
>
> CONNECTIVITY_CHECK_URIS=""
> BB_GENERATE_MIRROR_TARBALLS = "1"
> SOURCE_MIRROR_URL ?= "file:///home/evadeflow/projects/pok

--047d7b62274e645cd104ca17684b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Wednesday, September 19, 2012, Gary Thomas &lt;<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>&gt; On 2012-09-19 =
16:30, Evade Flow wrote:<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; I&#39;m just tryin=
g to build the thing. :-) =C2=A0I&#39;ll try converting the tag<br>
&gt;&gt;&gt; name into a commit hash and see if that helps, thanks a lot...=
<br>&gt;&gt;<br>&gt;&gt; ::SIGH:: =C2=A0I changed the SRC_URI var in kmod.i=
nc from this:<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0SRC_URI =3D &quot;git://=
<a href=3D"http://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protoco=
l=3Dgit;tag=3Dv${PV}">git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;pro=
tocol=3Dgit;tag=3Dv${PV}</a>&quot;<br>
&gt;&gt;<br>&gt;&gt; to this:<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0SRC_URI =
=3D &quot;git://<a href=3D"http://git.kernel.org/pub/scm/utils/kernel/kmod/=
kmod.git;protocol=3Dgit">git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;=
protocol=3Dgit</a>&quot;<br>
&gt;&gt; =C2=A0 =C2=A0SRCREV=3D&quot;8885ced062131214448fae056ef453f0943038=
05&quot;<br>&gt;&gt;<br>&gt;&gt; This is *still* trying to access the netwo=
rk:<br><br>This is right change and it should work provided your repo tar b=
all is up to date so try to open up the port and get the latest source And =
retry<br>
<br>&gt; Try doing &#39;bitbake kmod -c cleansstate;bitbake kmod&#39; - doe=
s that still fail?<br>&gt;<br>&gt; NOTE: package kmod-7-r0: task do_fetch: =
Started<br>&gt; ERROR: Function failed: Network access disabled through BB_=
NO_NETWORK<br>
&gt; but access rquested with command git ls-remote<br>&gt; git://<a href=
=3D"http://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git">git.kernel.or=
g/pub/scm/utils/kernel/kmod/kmod.git</a><br>&gt; 8885ced062131214448 (for u=
rl None)<br>
&gt; ERROR: Logfile of failure stored in:<br>&gt; /home/dwolfe/projects/pok=
y-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/kmod-7-=
r0/temp/log.do_fetch.11168<br>&gt; Log data follows:<br>&gt; | ERROR: Funct=
ion failed: Network access disabled through<br>
&gt; BB_NO_NETWORK but access rquested with command git ls-remote<br>&gt; g=
it://<a href=3D"http://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git">g=
it.kernel.org/pub/scm/utils/kernel/kmod/kmod.git</a><br>&gt; 8885ced0621312=
14448 (for url None)<br>
&gt; NOTE: package kmod-7-r0: task do_fetch: Failed<br>&gt; NOTE: package a=
cl-2.2.51-r3: task do_fetch: Started<br>&gt; NOTE: package acl-2.2.51-r3: t=
ask do_fetch: Succeeded<br>&gt; ERROR: Task 1374<br>&gt; (/home/dwolfe/proj=
ects/poky-git/meta-systemd/recipes-kernel/kmod/<a href=3D"http://kmod_7.bb"=
>kmod_7.bb</a>,<br>
&gt; do_fetch) failed with exit code &#39;1&#39;<br>&gt; NOTE: Tasks Summar=
y: Attempted 699 tasks of which 697 didn&#39;t need to<br>&gt; be rerun and=
 1 failed.<br>&gt;<br>&gt; Summary: 1 task failed:<br>&gt; =C2=A0 =C2=A0/ho=
me/dwolfe/projects/poky-git/meta-systemd/recipes-kernel/kmod/<a href=3D"htt=
p://kmod_7.bb">kmod_7.bb</a>,<br>
&gt; do_fetch<br>&gt; Summary: There was 1 ERROR message shown, returning a=
 non-zero exit code.<br>&gt; bitbake discovery-image =C2=A016.51s user 2.65=
s system 112% cpu 17.031 total<br>&gt;<br>&gt;<br>&gt; Why is poky/bitbake/=
whatever running &#39;git ls-remote&#39;? This seems like a<br>
&gt; bug....<br>&gt;<br>&gt;<br>&gt; On Wed, Sep 19, 2012 at 1:33 PM, Evade=
 Flow &lt;<a href=3D"mailto:evadeflow@gmail.com">evadeflow@gmail.com</a>&gt=
; wrote:<br>&gt;<br>&gt; I&#39;m not sure how to answer your questions, unf=
ortunately, this is all<br>
&gt; quite new to me. I&#39;m not the maintainer of said layer, and don&#39=
;t know<br>&gt; anything at all yet about &#39;layer etiquette&#39;. There =
does seem to be a<br>&gt; README.md file in meta-systemd, though:<br>&gt;<b=
r>
&gt; =C2=A0 =C2=A0- <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-systemd/tree/README.md">http://git.yoctoproject.org/cgit/cgit.cgi/meta-s=
ystemd/tree/README.md</a><br>&gt;<br>&gt; I&#39;m just trying to build the =
thing. :-) =C2=A0I&#39;ll try converting the tag<br>
&gt; name into a commit hash and see if that helps, thanks a lot...<br>&gt;=
<br>&gt;<br>&gt; On Wed, Sep 19, 2012 at 1:23 PM, Gary Thomas &lt;<a href=
=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>&gt;<br>&=
gt; On 2012-09-19 11:15, Evade Flow wrote:<br>
&gt;<br>&gt; Where did you get that meta-systemd layer?<br>&gt;<br>&gt;<br>=
&gt; =C2=A0From here:<br>&gt;<br>&gt;<br>&gt; =C2=A0 =C2=A0 - <a href=3D"ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/meta-systemd/">http://git.yoctoproj=
ect.org/cgit/cgit.cgi/meta-systemd/</a><br>
&gt;<br>&gt;<br>&gt; Why are there conflicting meta-systemd layers (and poi=
nters thereto)??<br>&gt; This layer in <a href=3D"http://git.yoctoproject.o=
rg">git.yoctoproject.org</a> doesn&#39;t seem even &quot;legal&quot; - wher=
e is<br>
&gt; the README that is expected with every layer? =C2=A0Without it, I don&=
#39;t have<br>&gt; enough info to be able to report problems like yours...<=
br>&gt;<br>&gt; The reason your build fails with BB_NO_NETWORK is that the =
<a href=3D"http://kmod_7.bb">kmod_7.bb</a><br>
&gt; recipe refers to a git tag, not a specific revision, which cannot be<b=
r>&gt; resolved without using the network.<br>&gt;<br>&gt;<br>&gt;<br>&gt;<=
br>&gt; On Wed, Sep 19, 2012 at 12:50 PM, Gary Thomas &lt;<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt;<br>&gt; On 2012-09-19 10:34, Evade Flow wrote:<br>&gt;<br>&gt;<br>&gt;=
 Trying to build the meta-ivi discovery-image behind a firewall is<br>&gt; =
proving to be quite a challenge. I tried modifying my conf/local.conf<br>
&gt; file as follows:<br>&gt;<br>&gt; CONNECTIVITY_CHECK_URIS=3D&quot;&quot=
;<br>&gt; BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br>&gt; SOURCE_MIRR=
OR_URL ?=3D &quot;file:///home/evadeflow/projects/pok

--047d7b62274e645cd104ca17684b--
