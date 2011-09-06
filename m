Return-Path: <brduffy@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68581E0071A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 16:51:40 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwe3 with SMTP id 3so1454908wwe.11
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2011 16:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=rMzPPXYioCZ1yQX6HQkEYFCP0vGmuaK3yDpK2Dt5QN8=;
	b=GiMLUnQCMvMlfPyU2ptl4yAEuJZtm5AKzi4LhVNlNfbfn2iE44qEYBXih6hIQxdR9P
	+/Xq9dEoA1tvcOVr22htFDHSUt6oO2EFxuRMR3YoyYL96j92n8IrFgOSCyrrYhxDYojA
	KU9T85FLTBC+NRtrKr69CPRQnCF4aj532v+dE=
MIME-Version: 1.0
Received: by 10.216.172.198 with SMTP id t48mr137231wel.79.1315353094411; Tue,
	06 Sep 2011 16:51:34 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Tue, 6 Sep 2011 16:51:34 -0700 (PDT)
In-Reply-To: <CALZ2gZU-3OzD74P2HNnCr4nYj7w7WOVMHXbJ41-GRzUEJYFBLw@mail.gmail.com>
References: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
	<CA+T6QPmL2ybO0wxRDPkj7d2AcDz66xfFMtk90w4KwgvXB=kqHQ@mail.gmail.com>
	<CALZ2gZWttWUa9DEW1E0t7NE0nntRQGo-bGKe_P_nQ062zi4ebg@mail.gmail.com>
	<CAHrDPkq0zoJHV1uhyT=6WSP3XX5_OqLg=-FN0OfVpdCpSu7U9g@mail.gmail.com>
	<CALZ2gZU_bd2Gh-JQH5g+vHOnUQ9S7YdP=VbDNC4trFq+Yt-Qaw@mail.gmail.com>
	<CALZ2gZU-3OzD74P2HNnCr4nYj7w7WOVMHXbJ41-GRzUEJYFBLw@mail.gmail.com>
Date: Tue, 6 Sep 2011 19:51:34 -0400
Message-ID: <CAHrDPkrjfG7A-78tkL1qmaBRab7=tbNKqooqjQ5Aw_ednMD9cg@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>,
	yocto@yoctoproject.org
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Tue, 06 Sep 2011 23:51:41 -0000
Content-Type: multipart/alternative; boundary=0016367b6004f2555804ac4e8135

--0016367b6004f2555804ac4e8135
Content-Type: text/plain; charset=ISO-8859-1

Okay, so it turns out that I had already downloaded what I needed with the
instructions from the latest blog post for the beta release. It specifically
mentions certain command to replace from the quick start guide. So I went
into the "oe-beta" directory and ran . ./oe-init-build-env ~/my-build and
that set up my environment variables. When I ran bitbake core-image-minimal
I got an error stating that xterm was not installed. That might be something
to include in the quick start section of things to install first. Anyway, it
seems to be happily building a minimal linux distro for the emulator to run.
I'll let you know if it works out.

thnx

Brian

On Tue, Sep 6, 2011 at 3:28 PM, Osier-mixon, Jeffrey <
jeffrey.osier-mixon@intel.com> wrote:

> One more thing - if you prefer a tarball to git (easier on some corporate
> networks) the process is the same, just un-tar the tarball into a working
> directory and cd into the poky subdir and go from there. The tarball should
> be the latest stable release.
>
>
> On Tue, Sep 6, 2011 at 12:27 PM, Osier-mixon, Jeffrey <
> jeffrey.osier-mixon@intel.com> wrote:
>
>> Hi Brian, sorry for the delay.
>>
>> If you download the poky tarball or use git to grab it and then follow the
>> instructions on the quick-start, the tools should build automatically.  In a
>> nutshell, try this:
>>
>> git clone git://git.yoctoproject.org/poky.git
>> cd poky
>> . ./oe-core-build-env
>> [that should put you into a build directory]
>> vi conf/local.conf  [set at least MACHINE, instructions in the file]
>> bitbake core-minimal
>>
>> I hope this helps!  I'm on IRC as Jefro or available by email, let me know
>> if I can help at all.
>>
>>
>> On Sat, Sep 3, 2011 at 5:52 PM, Brian Duffy <brduffy@gmail.com> wrote:
>>
>>> Thanks for the input Jeff. I have not downloaded the tools yet. I'll
>>> probably download the tarball since I don't have much experience with git.
>>> I'll set the bbpath in local.conf and uninstall bitbake from the package
>>> manager before I do so. I guess building the tools will take care of bitbake
>>> and pseudo. Any help with how to build the tools would be appreciated, but
>>> no hurry, enjoy the holiday!
>>>
>>> thnx
>>>
>>> Brian
>>>
>>>
>>> On Sat, Sep 3, 2011 at 5:50 PM, Osier-mixon, Jeffrey <
>>> jeffrey.osier-mixon@intel.com> wrote:
>>>
>>>> Hi Brian - both bitbake and pseudo are part of the Yocto toolset. The
>>>> standard bitbake from the package manager on your host is not the correct
>>>> one. Make sure you have set your environment properly by sourcing the
>>>> build-env script, and it should be set correctly.
>>>>
>>>> As Jason says, set BBPATH in your project directory in conf/local.conf
>>>>
>>>> How did you download the tools, tarball or git?  I find it easiest to do
>>>> this:
>>>>
>>>> git clone git://git.yoctoproject.org/poky.git
>>>>
>>>> Note that responses may be delayed on a US holiday weekend :)
>>>>
>>>> On Sat, Sep 3, 2011 at 1:48 PM, Jason Kridner <jkridner@beagleboard.org
>>>> > wrote:
>>>>
>>>>> On Sat, Sep 3, 2011 at 2:43 PM, Brian Duffy <brduffy@gmail.com> wrote:
>>>>> > Hi Yocto group. I am new to Yocto. I followed the starters guide and
>>>>> When
>>>>> > running bitbake I get some errors. first it complains that pseudo is
>>>>> not
>>>>> > available but required, and then it complains that bbpath is not set.
>>>>> What
>>>>> > is pseudo?
>>>>>
>>>>> Google should have helped you with this question:
>>>>> http://www.yoctoproject.org/projects/pseudo.
>>>>>
>>>>> I believe the primary purpose is to be able to create files with root
>>>>> ownership without root access.  This is critical for building your
>>>>> file system.
>>>>>
>>>>> > I have sudo installed and setup to work for me, but I don't know
>>>>> > what pseudo is. Also, bitbake was not installed on my fresh install
>>>>> of
>>>>> > Fedora 15 so I installed it through the package manager.
>>>>>
>>>>> I doubt you want to do that, but I don't see anything in the
>>>>> instructions provided to tell you where to get it either.
>>>>>
>>>>> > I guess that was
>>>>> > not included in the packages from the getting started guide. Where do
>>>>> I set
>>>>> > the bbpath?
>>>>>
>>>>> Did you edit conf/local.conf?
>>>>>
>>>>> > I followed the getting started guide and replaced the
>>>>> > appropriate commands with the ones from Davids blog post for the
>>>>> latest
>>>>> > release.
>>>>> >
>>>>> > thnx
>>>>> > Brian
>>>>> > --
>>>>> > Duff
>>>>> >
>>>>> > _______________________________________________
>>>>> > yocto mailing list
>>>>> > yocto@yoctoproject.org
>>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>>> >
>>>>> >
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>>
>>>>
>>>
>>>
>>> --
>>> Duff
>>>
>>
>>
>>
>> --
>> Jeff Osier-Mixon http://jefro.net/blog
>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>
>>
>
>
> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
>
>


-- 
Duff

--0016367b6004f2555804ac4e8135
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Okay, so it turns out that I had already downloaded what I needed with the =
instructions from the latest blog post for the beta release. It specificall=
y mentions certain command to replace from the quick start guide. So I went=
 into the &quot;oe-beta&quot; directory and ran . ./oe-init-build-env ~/my-=
build and that set up my environment variables. When I ran bitbake core-ima=
ge-minimal I got an error stating that xterm was not installed. That might =
be something to include in the quick start section of things to install fir=
st. Anyway, it seems to be happily building a minimal linux distro for the =
emulator to run. I&#39;ll let you know if it works out.<div>
<br></div><div>thnx</div><div><br></div><div>Brian<br><br><div class=3D"gma=
il_quote">On Tue, Sep 6, 2011 at 3:28 PM, Osier-mixon, Jeffrey <span dir=3D=
"ltr">&lt;<a href=3D"mailto:jeffrey.osier-mixon@intel.com">jeffrey.osier-mi=
xon@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">One more thing - if you prefer a tarball to=
 git (easier on some corporate networks) the process is the same, just un-t=
ar the tarball into a working directory and cd into the poky subdir and go =
from there. The tarball should be the latest stable release.<div>
<div></div><div class=3D"h5"><br>
<br><div class=3D"gmail_quote">On Tue, Sep 6, 2011 at 12:27 PM, Osier-mixon=
, Jeffrey <span dir=3D"ltr">&lt;<a href=3D"mailto:jeffrey.osier-mixon@intel=
.com" target=3D"_blank">jeffrey.osier-mixon@intel.com</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Brian, sorry for the delay. =A0<div><br></div><div>If you download the p=
oky tarball or use git to grab it and then follow the instructions on the q=
uick-start, the tools should build automatically. =A0In a nutshell, try thi=
s:</div>

<div>
<div><br></div><div>git clone git://<a href=3D"http://git.yoctoproject.org/=
poky.git" target=3D"_blank">git.yoctoproject.org/poky.git</a></div></div><d=
iv>cd poky</div><div>. ./oe-core-build-env</div><div>[that should put you i=
nto a build directory]</div>


<div>vi conf/local.conf =A0[set at least MACHINE, instructions in the file]=
</div><div>bitbake core-minimal</div><div><br></div><div>I hope this helps!=
 =A0I&#39;m on IRC as Jefro or available by email, let me know if I can hel=
p at all.<div>

<div></div><div><br>
<br><div class=3D"gmail_quote">On Sat, Sep 3, 2011 at 5:52 PM, Brian Duffy =
<span dir=3D"ltr">&lt;<a href=3D"mailto:brduffy@gmail.com" target=3D"_blank=
">brduffy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>


Thanks for the input Jeff. I have not downloaded the tools yet. I&#39;ll pr=
obably download the tarball since I don&#39;t have much experience with git=
. I&#39;ll set the bbpath in local.conf and uninstall bitbake from the pack=
age manager before I do so. I guess building the tools will take care of bi=
tbake and pseudo. Any help with how to build the tools would be appreciated=
, but no hurry, enjoy the holiday!<div>



<br></div><div>thnx</div><div><br></div><div>Brian<div><div></div><div><br>=
<br><div class=3D"gmail_quote">On Sat, Sep 3, 2011 at 5:50 PM, Osier-mixon,=
 Jeffrey <span dir=3D"ltr">&lt;<a href=3D"mailto:jeffrey.osier-mixon@intel.=
com" target=3D"_blank">jeffrey.osier-mixon@intel.com</a>&gt;</span> wrote:<=
br>



<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Brian - both bitbake and pseudo are part =
of the Yocto toolset. The standard bitbake from the package manager on your=
 host is not the correct one. Make sure you have set your environment prope=
rly by sourcing the build-env script, and it should be set correctly.<div>




<br></div><div>As Jason says, set BBPATH in your project directory in conf/=
local.conf</div><div><br></div><div>How did you download the tools, tarball=
 or git? =A0I find it easiest to do this:</div><div><br></div><div>git clon=
e git://<a href=3D"http://git.yoctoproject.org/poky.git" target=3D"_blank">=
git.yoctoproject.org/poky.git</a></div>




<div><br></div><div>Note that responses may be delayed on a US holiday week=
end :)</div><div><div><div><div></div><div><br><div class=3D"gmail_quote">O=
n Sat, Sep 3, 2011 at 1:48 PM, Jason Kridner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jkridner@beagleboard.org" target=3D"_blank">jkridner@beagleboard=
.org</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Sat, Sep 3, 2011 at 2:43 PM, Brian D=
uffy &lt;<a href=3D"mailto:brduffy@gmail.com" target=3D"_blank">brduffy@gma=
il.com</a>&gt; wrote:<br>





&gt; Hi Yocto group. I am new to Yocto. I followed the starters guide and W=
hen<br>
&gt; running bitbake I get some errors. first it complains that pseudo is n=
ot<br>
&gt; available but required, and then it complains that bbpath is not set. =
What<br>
&gt; is pseudo?<br>
<br>
</div>Google should have helped you with this question:<br>
<a href=3D"http://www.yoctoproject.org/projects/pseudo" target=3D"_blank">h=
ttp://www.yoctoproject.org/projects/pseudo</a>.<br>
<br>
I believe the primary purpose is to be able to create files with root<br>
ownership without root access. =A0This is critical for building your<br>
file system.<br>
<div><br>
&gt; I have sudo installed and setup to work for me, but I don&#39;t know<b=
r>
&gt; what pseudo is. Also, bitbake was not installed on my fresh install of=
<br>
&gt; Fedora 15 so I installed it through the package manager.<br>
<br>
</div>I doubt you want to do that, but I don&#39;t see anything in the<br>
instructions provided to tell you where to get it either.<br>
<div><br>
&gt; I guess that was<br>
&gt; not included in the packages from the getting started guide. Where do =
I set<br>
&gt; the bbpath?<br>
<br>
</div>Did you edit conf/local.conf?<br>
<div><br>
&gt; I followed the getting started guide and replaced the<br>
&gt; appropriate commands with the ones from Davids blog post for the lates=
t<br>
&gt; release.<br>
&gt;<br>
&gt; thnx<br>
&gt; Brian<br>
&gt; --<br>
&gt; Duff<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><font c=
olor=3D"#888888">-- <br>Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog=
" target=3D"_blank">http://jefro.net/blog</a><div>Yocto Project Community M=
anager @Intel=A0<a href=3D"http://yoctoproject.org/" target=3D"_blank">http=
://yoctoproject.org</a></div>




<br>
</font></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><font c=
olor=3D"#888888">-- <br>Duff<br>
</font></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osier-M=
ixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.net=
/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=3D"http://yo=
ctoproject.org/" target=3D"_blank">http://yoctoproject.org</a></div>


<br>
</div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osier-M=
ixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.net=
/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=3D"http://yo=
ctoproject.org/" target=3D"_blank">http://yoctoproject.org</a></div>

<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
Duff<br>
</div>

--0016367b6004f2555804ac4e8135--
