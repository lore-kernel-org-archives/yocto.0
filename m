Return-Path: <phodina@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59E09E00D63; Thu, 19 Sep 2019 08:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (phodina[at]protonmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [185.70.40.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch
	[185.70.40.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712A9E00D54
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 08:44:05 -0700 (PDT)
Date: Thu, 19 Sep 2019 15:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1568907842;
	bh=ndSTut9m/WoCEboMQa/1W7qqPGg7lrc3NvS908jJq08=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:Feedback-ID:
	From;
	b=Kjxa2nQ5pCSkkKwTUHMlFksBCluR5LdQeY5IDtmpXDdV+luimwoZvfEslXXwUODH0
	AxbBLaTauliTJ1KWVViCFSKySh5N03gjVtHCbrD/KSQEhXCYmu1mqnKFGRIvSPLheP
	bGRg3i47EuTWglkxx0BqCTzCRHfffRAeAhlbCSRM=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: phodina <phodina@protonmail.com>
Message-ID: <Ji28AOGAddYhx0MrDU5EjIkRSdwJCwFCsKtxE6zFAllu6lRRNxSKIJd_HoP2gWRr2U6Mkl1i-39AIVXKdnsWpiBIX40FA4DdGUqmy0zOGpA=@protonmail.com>
In-Reply-To: <bb902393-3fc3-6b68-f418-3c2a4d3b189c@gmail.com>
References: <iKxrudTDXgn2XHKttVPFe-_xTAbPoQUMbSBzr7r6Xza3vohxh9wPCRrFZo7bf1bgrQj_DKCt-5Ky7-dagX_blQpi_uZbWfnAvp7TDCCbh0U=@protonmail.com>
	<8bb3f05c-966b-4076-6593-d042bb8240ad@gmail.com>
	<6v81ntCcT70rvm2b8GwiRAeNSZSIEec-hUpr0hIN7HYR9RySExiu50vZaZM0jXSjiu2PYGbQ5mKn1e0cv3q13NlyJ5rwb6cdV0h1mpb9jXc=@protonmail.com>
	<wNEOi-_A4sN9BRhUCA6bCldM2iWQIpgYPAYUaT3Gqku16wkJq_fXBk_jlOuoUZpFBv4T7_CqWpoA7Yl0I0rHbvrsYpI5g7FtdjQ36SyI2Xc=@protonmail.com>
	<bb902393-3fc3-6b68-f418-3c2a4d3b189c@gmail.com>
Feedback-ID: WU-00Ahv_QFc-Old2XdUwP9_sGElXtQR31rOJwjYWWqLX_9ex7ByiHdLFjcA-uzDxwcHRsVBm6TqgwWtgB1KAA==:Ext:ProtonMail
MIME-Version: 1.0
Subject: Re: Awkward line wrapping in bash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: phodina <phodina@protonmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Sep 2019 15:44:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

based on Andr=C3=A9 recommendation I commented out the PS1 variable and now=
 I get `-sh-4.4#` for the prompt. I also checked and nothing is overwriting=
 the variable.

But I tried to change the size of the shell by using `stty cols 100 rows 40=
` as well as different sizes (smaller and bigger than 80 columns), but the =
amount of characters I get on the line stays at 81 followed by carrige retu=
rn. However if I record the session with `script` I get the correct amount =
of characters per line.

Here is my `stty -a` output:
speed 115200 baud; rows 24; columns 100; line =3D 0;
intr =3D ^C; quit =3D ^\; erase =3D ^?; kill =3D ^U; eof =3D ^D; eol =3D <u=
ndef>; eol2 =3D <undef>;
swtch =3D <undef>; start =3D ^Q; stop =3D ^S; susp =3D ^Z; rprnt =3D ^R; we=
rase =3D ^W; lnext =3D ^V; discard =3D ^O;
min =3D 1; time =3D 0;
-parenb -parodd -cmspar cs8 hupcl -cstopb cread clocal -crtscts
-ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr icrnl ixon ixo=
ff -iuclc -ixany imaxbel
iutf8
opost -olcuc -ocrnl onlcr -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0=
 ff0
isig icanon -iexten echo echoe echok -echonl -noflsh -xcase -tostop -echopr=
t echoctl echoke -flusho
-extproc

Best regards
Petr hodina


=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Wednesday, September 18, 2019 4:13 PM, Andr=C3=A9 Castro <andre.castro.s=
w@gmail.com> wrote:

> Hi Petr,
>
> I still don't think this is related to Yocto.
> Comments below.
>
> Best regards,
> Andr=C3=A9
> On Wed, 18 Sep 2019, at 02:17:01 PM (WEST+0100), Phodina wrote:
>
> > Hi,
> > so I tried the PS1 prompt as suggested by Andr=C3=A9 and it worked at t=
hat time
> > on the booted system. So I changed the configuration in /etc/profile, b=
uilt
> > and flashed the system.
> > Unfortunately it=E2=80=99s not working and I get the same issue - the l=
ine wrapping.
>
> Can you get the value of the 'PS1' variable in the new system that you fl=
ashed,
> when you are using it and the problem is happening?
>
> Just run "echo $PS1" on the shell.
>
> Just want to make sure that nothing is overwriting the 'PS1' variable and
> causing the issue again. There are lots of scripts that can override it.
>
> > Here is the content of the /etc/profile:
> >
> > /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > PATH=3D"/usr/local/bin:/usr/bin:/bin"
> > EDITOR=3D"vi" # needed for packages like cron, git-commit
> > [ "$TERM" ] || TERM=3D"vt100" # Basic terminal capab. For screen etc.
> >
> > Add /sbin & co to $PATH for the root user
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > [ "$HOME" !=3D "/home/root" ] || PATH=3D$PATH:/usr/local/sbin:/usr/sbin=
:/sbin
> >
> > Set the prompt for bash and ash (no other shells known to be in use her=
e)
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> >
> > [ -z "$PS1" ] || PS1=3D"$(cat /etc/device/hwid)@\h:\w \001\033[96m\002#=
 \001\033[0m\002"
> > if [ -d /etc/profile.d ]; then
> > for i in /etc/profile.d/*.sh; do
> > if [ -f $i -a -r $i ]; then
> > . $i
> > fi
> > done
> > unset i
> > fi
> >
> > Make sure we are on a serial console (i.e. the device used starts with
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > /dev/tty[A-z]), otherwise we confuse e.g. the eclipse launcher which tr=
ies do
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> >
> > use ssh
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D
> >
> > case $(tty 2>/dev/null) in
> > /dev/tty[A-z]*) [ -x /usr/bin/resize ] && /usr/bin/resize >/dev/null;;
> > esac
> > export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM
> > umask 022
> > I also turned on `checkwinsize` using `shopt` but didn=E2=80=99t work.
> > I also include the output of stty (over serial):
> > speed 115200 baud; line =3D 0;
> > -brkint ixoff iutf8
> > -iexten
> > And over SSH:
> > speed 38400 baud; line =3D 0;
> > eol =3D M-^?; eol2 =3D M-^?;
> > -brkint ixany iutf8
> > I connect to the board over serial using screen on Mac. In minicom I ge=
t the
> > same issue as do my colleagues on Windows using putty or screen on Linu=
x.
> > Same happens over SSH.
> > I also checked that the terming package and those files are installed
> > correctly in /etc/terminfo.
> > Kind regards
> > Petr Hodina
> > =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Origina=
l Message =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=
=90
> > On Monday, September 16, 2019 1:02 PM, phodina phodina@protonmail.com w=
rote:
> >
> > > Thanks Andr=C3=A9,
> > > the PS1 variable has been the cause. Now bash behaves as expected.
> > > Petr
> > > =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Origi=
nal Message =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=
=90
> > > On Monday, September 16, 2019 12:14 PM, Andr=C3=A9 Castro andre.castr=
o.sw@gmail.com wrote:
> > >
> > > > Hi Petr,
> > > > On Mon, 16 Sep 2019, at 10:34:33 AM (WEST+0100), Phodina wrote:
> > > >
> > > > > Hi,
> > > > > I would like to ask for a help with an awkward behavior of line w=
rap
> > > > > in bash built using Yocto (thud release). When I connect over ser=
ial
> > > > > line, I get strange line wrapping.
> > > >
> > > > This might not be related to Yocto.
> > > >
> > > > > The line keeps wrapping on the first line. Here is the environmen=
t:
> > > > > guest@:ebox~ # printenv
> > > > > LANG=3DC
> > > > > EDITOR=3Dvi
> > > > > HZ=3D100
> > > > > HUSHLOGIN=3DFALSE
> > > > > USER=3Droot
> > > > > PWD=3D/home/root
> > > > > HOME=3D/home/root
> > > > > SHELL=3D/bin/sh
> > > > > TERM=3Dlinux
> > > > > SHLVL=3D1
> > > > > LOGNAME=3Droot
> > > > > PATH=3D/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sb=
in
> > > > > PS1=3Dguest@:ebox\w \033[96m# \033[0m
> > > > > _=3D/bin/printenv
> > > > > I looked for solution and the best direction seems to be run with=
 clean
> > > > > environment env -i bash --norc --noprofile
> > > > > And the env:
> > > > > bash-4.4# printenv
> > > > > PWD=3D/home/root
> > > > > SHLVL=3D1
> > > > > _=3D/bin/printenv
> > > >
> > > > The probable cause of this is the "PS1" variable definition, specia=
lly the
> > > > colours part. Have a look at thread [1], maybe [2] answer will help=
.
> > > > My suggestion is:
> > > > PS1=3D"guest@:ebox\w \001\033[96m\002# \001\033[0m\002"
> > > > [1]
> > > > https://unix.stackexchange.com/questions/105958/terminal-prompt-not=
-wrapping-correctly
> > > > [2]
> > > > https://unix.stackexchange.com/questions/105958/terminal-prompt-not=
-wrapping-correctly/447520#447520
> > > > Andr=C3=A9



