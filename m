Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E51E00CAA; Thu, 19 Sep 2019 18:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82911E009E2
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 18:30:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8K1USO7018647
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Sep 2019 18:30:32 -0700 (PDT)
Received: from [128.224.162.148] (128.224.162.148) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 19 Sep 2019 18:30:27 -0700
To: phodina <phodina@protonmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <iKxrudTDXgn2XHKttVPFe-_xTAbPoQUMbSBzr7r6Xza3vohxh9wPCRrFZo7bf1bgrQj_DKCt-5Ky7-dagX_blQpi_uZbWfnAvp7TDCCbh0U=@protonmail.com>
	<8bb3f05c-966b-4076-6593-d042bb8240ad@gmail.com>
	<6v81ntCcT70rvm2b8GwiRAeNSZSIEec-hUpr0hIN7HYR9RySExiu50vZaZM0jXSjiu2PYGbQ5mKn1e0cv3q13NlyJ5rwb6cdV0h1mpb9jXc=@protonmail.com>
	<wNEOi-_A4sN9BRhUCA6bCldM2iWQIpgYPAYUaT3Gqku16wkJq_fXBk_jlOuoUZpFBv4T7_CqWpoA7Yl0I0rHbvrsYpI5g7FtdjQ36SyI2Xc=@protonmail.com>
	<bb902393-3fc3-6b68-f418-3c2a4d3b189c@gmail.com>
	<Ji28AOGAddYhx0MrDU5EjIkRSdwJCwFCsKtxE6zFAllu6lRRNxSKIJd_HoP2gWRr2U6Mkl1i-39AIVXKdnsWpiBIX40FA4DdGUqmy0zOGpA=@protonmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <908e778e-1b25-519b-aa08-8c9ffaee3f2a@windriver.com>
Date: Fri, 20 Sep 2019 09:44:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <Ji28AOGAddYhx0MrDU5EjIkRSdwJCwFCsKtxE6zFAllu6lRRNxSKIJd_HoP2gWRr2U6Mkl1i-39AIVXKdnsWpiBIX40FA4DdGUqmy0zOGpA=@protonmail.com>
X-Originating-IP: [128.224.162.148]
Subject: Re: Awkward line wrapping in bash
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
X-List-Received-Date: Fri, 20 Sep 2019 01:30:46 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

How about using `tput smam'?

Regards,
Chen Qi

On 09/19/2019 11:43 PM, phodina wrote:
> Hi,
>
> based on André recommendation I commented out the PS1 variable and now I get `-sh-4.4#` for the prompt. I also checked and nothing is overwriting the variable.
>
> But I tried to change the size of the shell by using `stty cols 100 rows 40` as well as different sizes (smaller and bigger than 80 columns), but the amount of characters I get on the line stays at 81 followed by carrige return. However if I record the session with `script` I get the correct amount of characters per line.
>
> Here is my `stty -a` output:
> speed 115200 baud; rows 24; columns 100; line = 0;
> intr = ^C; quit = ^\; erase = ^?; kill = ^U; eof = ^D; eol = <undef>; eol2 = <undef>;
> swtch = <undef>; start = ^Q; stop = ^S; susp = ^Z; rprnt = ^R; werase = ^W; lnext = ^V; discard = ^O;
> min = 1; time = 0;
> -parenb -parodd -cmspar cs8 hupcl -cstopb cread clocal -crtscts
> -ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr icrnl ixon ixoff -iuclc -ixany imaxbel
> iutf8
> opost -olcuc -ocrnl onlcr -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0 ff0
> isig icanon -iexten echo echoe echok -echonl -noflsh -xcase -tostop -echoprt echoctl echoke -flusho
> -extproc
>
> Best regards
> Petr hodina
>
>
> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
> On Wednesday, September 18, 2019 4:13 PM, André Castro <andre.castro.sw@gmail.com> wrote:
>
>> Hi Petr,
>>
>> I still don't think this is related to Yocto.
>> Comments below.
>>
>> Best regards,
>> André
>> On Wed, 18 Sep 2019, at 02:17:01 PM (WEST+0100), Phodina wrote:
>>
>>> Hi,
>>> so I tried the PS1 prompt as suggested by André and it worked at that time
>>> on the booted system. So I changed the configuration in /etc/profile, built
>>> and flashed the system.
>>> Unfortunately it’s not working and I get the same issue - the line wrapping.
>> Can you get the value of the 'PS1' variable in the new system that you flashed,
>> when you are using it and the problem is happening?
>>
>> Just run "echo $PS1" on the shell.
>>
>> Just want to make sure that nothing is overwriting the 'PS1' variable and
>> causing the issue again. There are lots of scripts that can override it.
>>
>>> Here is the content of the /etc/profile:
>>>
>>> /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
>>>
>>> =====================================================================
>>>
>>> and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
>>>
>>> =============================================================
>>>
>>> PATH="/usr/local/bin:/usr/bin:/bin"
>>> EDITOR="vi" # needed for packages like cron, git-commit
>>> [ "$TERM" ] || TERM="vt100" # Basic terminal capab. For screen etc.
>>>
>>> Add /sbin & co to $PATH for the root user
>>>
>>> ==========================================
>>>
>>> [ "$HOME" != "/home/root" ] || PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
>>>
>>> Set the prompt for bash and ash (no other shells known to be in use here)
>>>
>>> ==========================================================================
>>>
>>> [ -z "$PS1" ] || PS1="$(cat /etc/device/hwid)@\h:\w \001\033[96m\002# \001\033[0m\002"
>>> if [ -d /etc/profile.d ]; then
>>> for i in /etc/profile.d/*.sh; do
>>> if [ -f $i -a -r $i ]; then
>>> . $i
>>> fi
>>> done
>>> unset i
>>> fi
>>>
>>> Make sure we are on a serial console (i.e. the device used starts with
>>>
>>> =======================================================================
>>>
>>> /dev/tty[A-z]), otherwise we confuse e.g. the eclipse launcher which tries do
>>>
>>> ==============================================================================
>>>
>>> use ssh
>>>
>>> ========
>>>
>>> case $(tty 2>/dev/null) in
>>> /dev/tty[A-z]*) [ -x /usr/bin/resize ] && /usr/bin/resize >/dev/null;;
>>> esac
>>> export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM
>>> umask 022
>>> I also turned on `checkwinsize` using `shopt` but didn’t work.
>>> I also include the output of stty (over serial):
>>> speed 115200 baud; line = 0;
>>> -brkint ixoff iutf8
>>> -iexten
>>> And over SSH:
>>> speed 38400 baud; line = 0;
>>> eol = M-^?; eol2 = M-^?;
>>> -brkint ixany iutf8
>>> I connect to the board over serial using screen on Mac. In minicom I get the
>>> same issue as do my colleagues on Windows using putty or screen on Linux.
>>> Same happens over SSH.
>>> I also checked that the terming package and those files are installed
>>> correctly in /etc/terminfo.
>>> Kind regards
>>> Petr Hodina
>>> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
>>> On Monday, September 16, 2019 1:02 PM, phodina phodina@protonmail.com wrote:
>>>
>>>> Thanks André,
>>>> the PS1 variable has been the cause. Now bash behaves as expected.
>>>> Petr
>>>> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
>>>> On Monday, September 16, 2019 12:14 PM, André Castro andre.castro.sw@gmail.com wrote:
>>>>
>>>>> Hi Petr,
>>>>> On Mon, 16 Sep 2019, at 10:34:33 AM (WEST+0100), Phodina wrote:
>>>>>
>>>>>> Hi,
>>>>>> I would like to ask for a help with an awkward behavior of line wrap
>>>>>> in bash built using Yocto (thud release). When I connect over serial
>>>>>> line, I get strange line wrapping.
>>>>> This might not be related to Yocto.
>>>>>
>>>>>> The line keeps wrapping on the first line. Here is the environment:
>>>>>> guest@:ebox~ # printenv
>>>>>> LANG=C
>>>>>> EDITOR=vi
>>>>>> HZ=100
>>>>>> HUSHLOGIN=FALSE
>>>>>> USER=root
>>>>>> PWD=/home/root
>>>>>> HOME=/home/root
>>>>>> SHELL=/bin/sh
>>>>>> TERM=linux
>>>>>> SHLVL=1
>>>>>> LOGNAME=root
>>>>>> PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
>>>>>> PS1=guest@:ebox\w \033[96m# \033[0m
>>>>>> _=/bin/printenv
>>>>>> I looked for solution and the best direction seems to be run with clean
>>>>>> environment env -i bash --norc --noprofile
>>>>>> And the env:
>>>>>> bash-4.4# printenv
>>>>>> PWD=/home/root
>>>>>> SHLVL=1
>>>>>> _=/bin/printenv
>>>>> The probable cause of this is the "PS1" variable definition, specially the
>>>>> colours part. Have a look at thread [1], maybe [2] answer will help.
>>>>> My suggestion is:
>>>>> PS1="guest@:ebox\w \001\033[96m\002# \001\033[0m\002"
>>>>> [1]
>>>>> https://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
>>>>> [2]
>>>>> https://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly/447520#447520
>>>>> André
>


