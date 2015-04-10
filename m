Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0EFE009A4; Fri, 10 Apr 2015 02:30:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D544E00956
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 02:30:38 -0700 (PDT)
Received: by pabsx10 with SMTP id sx10so16375252pab.3
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 02:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qLL4qDHE7YCRmV0l3f7Rlo14WvYmjxiEBhSM+f94sIc=;
	b=aETeW7tED7BG46fpt4tyOc2KVJAwgQCEmXYHPVFX5cBNcOv7bPCegJD59XyIm2WlzI
	4wAj//iovuWc9uqACOnBbasXCFAgA/KHr8EPqlkpMVeWhqqEKMWttgwqRACHg9UC6lB8
	yY2DSu2nQE6ynRqURoummm2jhv3Nd9N6rBtcqTfSVVo+4DG8vktA8pHZiRSYBKbTBpdW
	nF73USO1F4Nj2u9kOjJD8PCRMHYAplSccaoWsh1u3dy0E4lu/9L9zfJeOe/1Trr5Dl9v
	jfTv8DB7MnCitTvNeayWuMy0FYM8nKRpw+vIWP14r+gTIDJVxkf4McRkICeegWUCN272
	MnzA==
MIME-Version: 1.0
X-Received: by 10.68.227.41 with SMTP id rx9mr1144067pbc.76.1428658238042;
	Fri, 10 Apr 2015 02:30:38 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Fri, 10 Apr 2015 02:30:37 -0700 (PDT)
In-Reply-To: <38761C20-F4B2-402A-861C-2C9EB01A4825@gmail.com>
References: <CA+pXca1siHggYUW5OMO0GM4KNSJ+qEV3-_A=VgkZNTk3H4Db-g@mail.gmail.com>
	<20150408114746.GE2337@jama>
	<38761C20-F4B2-402A-861C-2C9EB01A4825@gmail.com>
Date: Fri, 10 Apr 2015 15:00:37 +0530
Message-ID: <CA+pXca33_mE9iUvafvJDQN1VZnUqrrt-usTqXr9dr1Z-K=X3_g@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_compile_ptest_base error (valgrind) in dizzy
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
X-List-Received-Date: Fri, 10 Apr 2015 09:30:50 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce76c8b89e05135b6a2d

--e89a8ff1ce76c8b89e05135b6a2d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HI Khem Raj,

I applied the patch by taking reference from
For gcc ICE please test out
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mast=
er&id=3D5ea11b4fa4e02f079aa9209e482e4922ad90f8de
still i am facing same problem. I am working on dizzy branch.

ERROR
/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.10.1-r1/valgrind-3.10.1/none/tests/arm/vcvt_fixe=
d_float_VFP.c:12:1:
internal compiler error: Max. number of generated reload insns per insn is
achieved (90)
|
|  }
|  ^
| Please submit a full bug report,
| with preprocessed source if appropriate.
| See <http://gcc.gnu.org/bugs.html> for instructions.
| make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
| make[5]: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build/none/tests/arm'
| make[4]: *** [check-am] Error 2
| make[4]: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build/none/tests/arm'
| make[3]: *** [check-recursive] Error 1
| make[3]: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build/none/tests'
| make[2]: *** [check-recursive] Error 1
| make[2]: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build/none'
| make[1]: *** [check-recursive] Error 1
| make[1]: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build'
| make: *** [check] Error 2
| make: Leaving directory
`/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.10.1-r1/build'
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile_ptest_base (log file is located at
/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.10.1-r1/temp/log.do_compile_ptest_base.11973)
ERROR: Task 9
(/home/praveenk/work/git_sources/poky/meta/recipes-devtools/valgrind/
valgrind_3.10.1.bb, do_compile_ptest_base) failed with exit code '1'
NOTE: Tasks Summary: Attempted 795 tasks of which 792 didn't need to be
rerun and 2 failed.
Waiting for 0 running tasks to finish:



What i observed is that when  i am compiling gator recipe i am facing
"__ARM_PCS_VFP" which is declared in stubs.h(GNU) error. It has to pick
stubs-hard.h but it is searching for stubs-soft.h.

Is this two errors related.

Thanks
Praveen





On Thu, Apr 9, 2015 at 12:48 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Apr 8, 2015, at 4:47 AM, Martin Jansa <martin.jansa@gmail.com> wrote=
:
> >
> > On Wed, Apr 08, 2015 at 12:39:56PM +0530, praveen vattipalli wrote:
> >> hi
> >> I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm  board.=
 I
> >> could able to build core-image-minimal successfully. But when I am
> trying
> >> to build valgrind. I am getting do_compile_ptest_base error. If i remo=
ve
> >> ptest in valgrind_3.9.0.bb it is building without errors.
> >
> > There are multiple issues in valgrind's ptest, in the end I've also
> > disabled ptest for valgrind:
> >
> > Here is snippet of my distro config (with link to the same report 7
> months ago):
> >
> > # Work around FTBFS when building valgrind with ptest and thumb enabled
> > # valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/ldrt_arm.c
> > # {standard input}: Assembler messages:
> > # {standard input}:42: Error: cannot use post-indexing with this
> instruction -- `ldrt r6,[r5],#+132'
> > # {standard input}:42: Error: cannot use post-indexing with this
> instruction -- `ldrt r6,[r5],#132'
> > # ...
> > # ARM_INSTRUCTION_SET_pn-valgrind =3D "arm"
> > # and remove -O2 as work around for ICE:
> > # 3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1:
> internal compiler error:
> > # Max. number of generated reload insns per insn is achieved (90)
> > #
> http://lists.openembedded.org/pipermail/openembedded-core/2014-September/=
097330.html
> > # both issues are still reproducible with 3.10.0 version imported from
> > # http://patchwork.openembedded.org/patch/83009/
> > # TARGET_CFLAGS_remove_pn-valgrind =3D "-O2"
> > PTEST_ENABLED_pn-valgrind =3D =E2=80=9C0"
>
> For gcc ICE please test out
> http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/ma=
ster&id=3D5ea11b4fa4e02f079aa9209e482e4922ad90f8de
>
>
> >
> >
> >>
> >> I am using poky-dizzy.
> >>
> >> ERROR LOG:
> >>
> >>
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:
> >> In function 's32_to_f32_imm1':
> >> |
> >>
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:12:1:
> >> internal compiler error: Max. number of generated reload insns per ins=
n
> is
> >> achieved (90)
> >> |
> >> |  }
> >> |  ^
> >> | Please submit a full bug report,
> >> | with preprocessed source if appropriate.
> >> | See <http://gcc.gnu.org/bugs.html> for instructions.
> >> | make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
> >> | make[5]: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
> >> | make[4]: *** [check-am] Error 2
> >> | make[4]: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
> >> | make[3]: *** [check-recursive] Error 1
> >> | make[3]: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests'
> >> | make[2]: *** [check-recursive] Error 1
> >> | make[2]: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none'
> >> | make[1]: *** [check-recursive] Error 1
> >> | make[1]: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build'
> >> | make: *** [check] Error 2
> >> | make: Leaving directory
> >>
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build'
> >> | ERROR: oe_runmake failed
> >> | WARNING: exit code 1 from a shell command.
> >> | ERROR: Function failed: do_compile_ptest_base (log file is located a=
t
> >>
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)
> >> ERROR: Task 9
> (/home/praveenk/work/platform/meta/recipes-devtools/valgrind/
> >> valgrind_3.9.0.bb, do_compile_ptest_base) failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn't need to b=
e
> >> rerun and 1 failed.
> >> No currently running tasks (776 of 784)
> >>
> >> Summary: 1 task failed:
> >>  /home/praveenk/work/platform/meta/recipes-devtools/valgrind/
> >> valgrind_3.9.0.bb, do_compile_ptest_base
> >> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> >>
> >> how can i solve this.
> >>
> >> Thanks
> >> Praveen
> >
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--e89a8ff1ce76c8b89e05135b6a2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>HI Khem Raj,<br><br></div>I =
applied the patch by taking reference from <br>For gcc ICE please test out =
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/commit/?h=
=3Dkraj/master&amp;id=3D5ea11b4fa4e02f079aa9209e482e4922ad90f8de" target=3D=
"_blank">http://git.openembedded.org/openembedded-core-contrib/commit/?h=3D=
kraj/master&amp;id=3D5ea11b4fa4e02f079aa9209e482e4922ad90f8de</a><br></div>=
still i am facing same problem. I am working on dizzy branch.<br><br><span =
style=3D"background-color:rgb(255,0,0)">ERROR</span><br>/home/praveenk/work=
/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.10.1-r1/valgrind-3.10.1/none/tests/arm/vcvt_fixed_float_VFP.c:12:1:=
 internal compiler error: Max. number of generated reload insns per insn is=
 achieved (90)<br>| <br>|=C2=A0 }<br>|=C2=A0 ^<br>| Please submit a full bu=
g report,<br>| with preprocessed source if appropriate.<br>| See &lt;<a hre=
f=3D"http://gcc.gnu.org/bugs.html">http://gcc.gnu.org/bugs.html</a>&gt; for=
 instructions.<br>| make[5]: *** [vcvt_fixed_float_VFP.o] Error 1<br>| make=
[5]: Leaving directory `/home/praveenk/work/git_sources/poky/build/tmp/work=
/cortexa8hf-vfp-neon-poky-linux-gnueabi/valgrind/3.10.1-r1/build/none/tests=
/arm&#39;<br>| make[4]: *** [check-am] Error 2<br>| make[4]: Leaving direct=
ory `/home/praveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.10.1-r1/build/none/tests/arm&#39;<br>| make=
[3]: *** [check-recursive] Error 1<br>| make[3]: Leaving directory `/home/p=
raveenk/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux=
-gnueabi/valgrind/3.10.1-r1/build/none/tests&#39;<br>| make[2]: *** [check-=
recursive] Error 1<br>| make[2]: Leaving directory `/home/praveenk/work/git=
_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.10.1-r1/build/none&#39;<br>| make[1]: *** [check-recursive] Error 1<br>=
| make[1]: Leaving directory `/home/praveenk/work/git_sources/poky/build/tm=
p/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/valgrind/3.10.1-r1/build&#39;=
<br>| make: *** [check] Error 2<br>| make: Leaving directory `/home/praveen=
k/work/git_sources/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.10.1-r1/build&#39;<br>| ERROR: oe_runmake failed<br>| WARNING=
: exit code 1 from a shell command.<br>| ERROR: Function failed: do_compile=
_ptest_base (log file is located at /home/praveenk/work/git_sources/poky/bu=
ild/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/valgrind/3.10.1-r1/temp=
/log.do_compile_ptest_base.11973)<br>ERROR: Task 9 (/home/praveenk/work/git=
_sources/poky/meta/recipes-devtools/valgrind/<a href=3D"http://valgrind_3.1=
0.1.bb">valgrind_3.10.1.bb</a>, do_compile_ptest_base) failed with exit cod=
e &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 795 tasks of which 792 didn=
&#39;t need to be rerun and 2 failed.<br>Waiting for 0 running tasks to fin=
ish:<br><br><br><br></div>What i observed is that when=C2=A0 i am compiling=
 gator recipe i am facing=C2=A0 &quot;__ARM_PCS_VFP&quot; which is declared=
 in stubs.h(GNU) error. It has to pick stubs-hard.h but it is searching for=
 stubs-soft.h.<br><br></div>Is this two errors related.<br><br></div>Thanks=
 <br></div>Praveen<br><div><div><div><br>=C2=A0<br><div><div><div><br>=C2=
=A0<br></div></div></div></div></div></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Apr 9, 2015 at 12:48 PM, Khem Raj <=
span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; On Apr 8, 2015, at 4:47 AM, Martin Jansa &lt;<a href=3D"mailto:martin.=
jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Apr 08, 2015 at 12:39:56PM +0530, praveen vattipalli wrote:<br=
>
&gt;&gt; hi<br>
&gt;&gt; I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm=C2=
=A0 board. I<br>
&gt;&gt; could able to build core-image-minimal successfully. But when I am=
 trying<br>
&gt;&gt; to build valgrind. I am getting do_compile_ptest_base error. If i =
remove<br>
&gt;&gt; ptest in <a href=3D"http://valgrind_3.9.0.bb" target=3D"_blank">va=
lgrind_3.9.0.bb</a> it is building without errors.<br>
&gt;<br>
&gt; There are multiple issues in valgrind&#39;s ptest, in the end I&#39;ve=
 also<br>
&gt; disabled ptest for valgrind:<br>
&gt;<br>
&gt; Here is snippet of my distro config (with link to the same report 7 mo=
nths ago):<br>
&gt;<br>
&gt; # Work around FTBFS when building valgrind with ptest and thumb enable=
d<br>
&gt; # valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/ldrt_arm.c<br>
&gt; # {standard input}: Assembler messages:<br>
&gt; # {standard input}:42: Error: cannot use post-indexing with this instr=
uction -- `ldrt r6,[r5],#+132&#39;<br>
&gt; # {standard input}:42: Error: cannot use post-indexing with this instr=
uction -- `ldrt r6,[r5],#132&#39;<br>
&gt; # ...<br>
&gt; # ARM_INSTRUCTION_SET_pn-valgrind =3D &quot;arm&quot;<br>
&gt; # and remove -O2 as work around for ICE:<br>
&gt; # 3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1: =
internal compiler error:<br>
&gt; # Max. number of generated reload insns per insn is achieved (90)<br>
&gt; # <a href=3D"http://lists.openembedded.org/pipermail/openembedded-core=
/2014-September/097330.html" target=3D"_blank">http://lists.openembedded.or=
g/pipermail/openembedded-core/2014-September/097330.html</a><br>
&gt; # both issues are still reproducible with 3.10.0 version imported from=
<br>
&gt; # <a href=3D"http://patchwork.openembedded.org/patch/83009/" target=3D=
"_blank">http://patchwork.openembedded.org/patch/83009/</a><br>
&gt; # TARGET_CFLAGS_remove_pn-valgrind =3D &quot;-O2&quot;<br>
&gt; PTEST_ENABLED_pn-valgrind =3D =E2=80=9C0&quot;<br>
<br>
</div></div>For gcc ICE please test out <a href=3D"http://git.openembedded.=
org/openembedded-core-contrib/commit/?h=3Dkraj/master&amp;id=3D5ea11b4fa4e0=
2f079aa9209e482e4922ad90f8de" target=3D"_blank">http://git.openembedded.org=
/openembedded-core-contrib/commit/?h=3Dkraj/master&amp;id=3D5ea11b4fa4e02f0=
79aa9209e482e4922ad90f8de</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; I am using poky-dizzy.<br>
&gt;&gt;<br>
&gt;&gt; ERROR LOG:<br>
&gt;&gt;<br>
&gt;&gt; /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed=
_float_VFP.c:<br>
&gt;&gt; In function &#39;s32_to_f32_imm1&#39;:<br>
&gt;&gt; |<br>
&gt;&gt; /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed=
_float_VFP.c:12:1:<br>
&gt;&gt; internal compiler error: Max. number of generated reload insns per=
 insn is<br>
&gt;&gt; achieved (90)<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 }<br>
&gt;&gt; |=C2=A0 ^<br>
&gt;&gt; | Please submit a full bug report,<br>
&gt;&gt; | with preprocessed source if appropriate.<br>
&gt;&gt; | See &lt;<a href=3D"http://gcc.gnu.org/bugs.html" target=3D"_blan=
k">http://gcc.gnu.org/bugs.html</a>&gt; for instructions.<br>
&gt;&gt; | make[5]: *** [vcvt_fixed_float_VFP.o] Error 1<br>
&gt;&gt; | make[5]: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm&#39;<br>
&gt;&gt; | make[4]: *** [check-am] Error 2<br>
&gt;&gt; | make[4]: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm&#39;<br>
&gt;&gt; | make[3]: *** [check-recursive] Error 1<br>
&gt;&gt; | make[3]: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests&#39;<br>
&gt;&gt; | make[2]: *** [check-recursive] Error 1<br>
&gt;&gt; | make[2]: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build/none&#39;<br>
&gt;&gt; | make[1]: *** [check-recursive] Error 1<br>
&gt;&gt; | make[1]: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build&#39;<br>
&gt;&gt; | make: *** [check] Error 2<br>
&gt;&gt; | make: Leaving directory<br>
&gt;&gt; `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.9.0-r8/build&#39;<br>
&gt;&gt; | ERROR: oe_runmake failed<br>
&gt;&gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt; | ERROR: Function failed: do_compile_ptest_base (log file is locat=
ed at<br>
&gt;&gt; /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)<br=
>
&gt;&gt; ERROR: Task 9 (/home/praveenk/work/platform/meta/recipes-devtools/=
valgrind/<br>
&gt;&gt; <a href=3D"http://valgrind_3.9.0.bb" target=3D"_blank">valgrind_3.=
9.0.bb</a>, do_compile_ptest_base) failed with exit code &#39;1&#39;<br>
&gt;&gt; NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn&#39;t n=
eed to be<br>
&gt;&gt; rerun and 1 failed.<br>
&gt;&gt; No currently running tasks (776 of 784)<br>
&gt;&gt;<br>
&gt;&gt; Summary: 1 task failed:<br>
&gt;&gt;=C2=A0 /home/praveenk/work/platform/meta/recipes-devtools/valgrind/=
<br>
&gt;&gt; <a href=3D"http://valgrind_3.9.0.bb" target=3D"_blank">valgrind_3.=
9.0.bb</a>, do_compile_ptest_base<br>
&gt;&gt; Summary: There was 1 ERROR message shown, returning a non-zero exi=
t code.<br>
&gt;&gt;<br>
&gt;&gt; how can i solve this.<br>
&gt;&gt;<br>
&gt;&gt; Thanks<br>
&gt;&gt; Praveen<br>
&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mail=
to:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</div></div></blockquote></div><br></div>

--e89a8ff1ce76c8b89e05135b6a2d--
