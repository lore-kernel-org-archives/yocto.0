Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46346E00E02; Wed,  6 Jul 2016 11:53:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09525E00DFE
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 11:53:39 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id u201so282833528oie.0
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 11:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3rOkJnNUcxkFsiJdNBLinihyNmc5vpHI5fayzulUMiY=;
	b=IGVelYQLFcbgbPxpRClK/YtLOXbrkRnMQNvVC6+eJmg0v7un5Oxp/w2P/xIyPZUvso
	a+ZRcV6aWoUdrq4vzWNTq86ZPOqsNIujIjkdMipV9IRgVYMp9xYUCr5B8Hm0nmBSy/cV
	ejEwYhWEg5EOt4QF03lGq4EJSXghbqQTZR71Olh6oi2rip2W1re4oNCjrkK3047lzYap
	xvTpw7w0jqZPK1Q/EXPBLHHXhivHKW7b45GeT5nMiP/Hsuh1uIWLIDQEeuWpKXT1vNR5
	f2qcnMkSudCnTG6iwG9uGURUVR3E3oqFXxwAVs2QaeaaTSMIR9sBnZ4cEENh0Jn2qvNv
	DveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3rOkJnNUcxkFsiJdNBLinihyNmc5vpHI5fayzulUMiY=;
	b=Shrdw2dcesNK34DuKx/sEc8paG34eGMYgy6DnAo9DhKtAELtSW569T6TGWDx6Z9Ej/
	MyeWPmBdzyvXwVCbcksKETgvG81oUdlrnqe9z0wMYDm86MjzKSZPQuLgVaYRbJZlFn+d
	wqS25ROr+PA+M2VAQ/2/m+VYLQ9nRmtcnBp37Iqav3xOC1/q+n++zJdqiA7ys5OcmcIh
	/72so3JA1xZpKUv9Xe/M3G1faUFzPi6HIzmBceomwoYRSddZqmwNtZHrT/sNOgVMq530
	/ptl59KWesmmwHGute/CqXGksUij9nq3KaSFZrVy2OSFgK8ZkRrmk6AoBCnpkkoXfpYt
	Q3Qw==
X-Gm-Message-State: ALyK8tIf9HVn2kEbTLmavXWgqroSW44kLjmGu2m7msF+AEWEZfgeZKMfT7LccSjAmxZSotc3M1XdAxzgzt34BQ==
X-Received: by 10.202.84.67 with SMTP id i64mr13641051oib.93.1467831219081;
	Wed, 06 Jul 2016 11:53:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.108.9 with HTTP; Wed, 6 Jul 2016 11:53:38 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
References: <alpine.LFD.2.20.1607061409100.2101@localhost.localdomain>
From: Chris Hallinan <challinan@gmail.com>
Date: Wed, 6 Jul 2016 14:53:38 -0400
Message-ID: <CAME0jBQXFY7hvuZZ2Db3M_7kku7=0-b_UU6W9CBY17TVpym50w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to tftp download a newer u-boot into RAM and simply execute it?
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
X-List-Received-Date: Wed, 06 Jul 2016 18:53:41 -0000
Content-Type: multipart/alternative; boundary=001a113d2ac6675aa60536fc1688

--001a113d2ac6675aa60536fc1688
Content-Type: text/plain; charset=UTF-8

Hi Robert,

That's not old, that's ancient in dog^HU-Boot years - LOL!

It's been quite a while since I looked at a PPC U-Boot, but at a minimum,
you will need to link U-Boot to a RAM'able address.  By default, I'm sure
the recipe links it for the NOR addresses.  When it boots from NOR it
immediately relocates itself to a RAM address from NOR, if memory serves.
Notice it's crashing right away, on the second instruction.

In past history, many U-Boot ports would require more work than simply
linking it to a proper RAM address.  I can't comment on the 8313, 'cuz I
haven't worked on it in ages.  Older ports had configuration options for
exactly that use case, but I haven't seen that used in a long time.
Perhaps if you can find one of those ports, it will lead you in the right
direction.  I can't recall: CFG_RUN_IN_RAM or some such magic???

Hopefully someone on this list smarter (and more current on U-Boot) than me
can help.

Regards,

Chris



On Wed, Jul 6, 2016 at 2:18 PM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   ok, i'm trying to do something on my MPC8315E-RDB that *should* be
> really simple, and i'm getting nowhere.
>
>   currently on this machine, i have u-boot in NOR flash, and it's old
> but it will still boot the other images also stored in NOR flash:
>
>   U-Boot 1.3.0-rc2 (Mar 21 2008 - 16:00:02) MPC83XX
>
> i just built a new image from the current poky repo for precisely
> this target, and my generated artifacts include the newer u-boot
> binary image:
>
>   -rwxr-xr-x. 2 rpjday rpjday   423964 Jul  5 06:46
>         u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin
>
> rather than immediately write it to flash, i'd like to download and
> test it first, and everything i've seen suggests i should be able to:
>
> => tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin
> => go 0x100000
>
>   well, the downloading seems to work fine:
>
> => tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin
> Speed: 1000, full duplex
> Using eTSEC0 device
> TFTP from server 192.168.1.13; our IP address is 192.168.1.127
> Filename 'u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin'.
> Load address: 0x100000
> Loading: #############################
> done
> Bytes transferred = 423964 (6781c hex)
> =>
>
> so the number of bytes transferred is correct. and then bad things
> happen:
>
> => go 0x100000
> ## Starting application at 0x00100000 ...
> NIP: 00100008 XER: 20000000 LR: 07FC6614 REGS: 07f2fcd0 TRAP: 0700 DAR:
> 00000000
> MSR: 0008b002 EE: 1 PR: 0 FP: 1 ME: 1 IR/DR: 00
>
> GPR00: 07FC6604 07F2FDC0 00000080 00000001 07F329E4 00000010 00000001
> 00000030
> GPR08: 00000041 00000020 00000006 FFFFFFFF 00000000 00000200 07FF9000
> 09FB2000
> GPR16: 00000000 00000000 00000000 00000000 00000000 FFFFFFFF 00000000
> 00000000
> GPR24: 07F32930 00000000 00000000 00000002 00100000 07F2FF4C 07FF98F8
> 07F329E4
> Call backtrace:
> 07FC6604 07FD767C 07FD6D10 07FD6E98 07FC6110 07FB6BF8 07FB568C
> Program Check Exception
> Resetting the board.
>
>
>   am i missing something? downloading to the wrong address in RAM?
> jumping to the wrong entry point? i'mopen to suggestions, i know i've
> done this sort of thing before.
>
>   i'm willing to start a new configure and build from scratch if
> someone wants to supply a recipe. since this is the current YP powerpc
> reference board, it really should work out of the box, no?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Life is like Linux - it never stands still.

--001a113d2ac6675aa60536fc1688
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>That&#39;s not old, that&#39=
;s ancient in dog^HU-Boot years - LOL!</div><div><br></div><div>It&#39;s be=
en quite a while since I looked at a PPC U-Boot, but at a minimum, you will=
 need to link U-Boot to a RAM&#39;able address.=C2=A0 By default, I&#39;m s=
ure the recipe links it for the NOR addresses.=C2=A0 When it boots from NOR=
 it immediately relocates itself to a RAM address from NOR, if memory serve=
s.=C2=A0 Notice it&#39;s crashing right away, on the second instruction.</d=
iv><div><br></div><div>In past history, many U-Boot ports would require mor=
e work than simply linking it to a proper RAM address.=C2=A0 I can&#39;t co=
mment on the 8313, &#39;cuz I haven&#39;t worked on it in ages.=C2=A0 Older=
 ports had configuration options for exactly that use case, but I haven&#39=
;t seen that used in a long time.=C2=A0 Perhaps if you can find one of thos=
e ports, it will lead you in the right direction.=C2=A0 I can&#39;t recall:=
 CFG_RUN_IN_RAM or some such magic???</div><div><br></div><div>Hopefully so=
meone on this list smarter (and more current on U-Boot) than me can help.</=
div><div><br></div><div>Regards,</div><div><br></div><div>Chris</div><div><=
br></div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Wed, Jul 6, 2016 at 2:18 PM, Robert P. J. Day <span dir=3D"=
ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@=
crashcourse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
=C2=A0 ok, i&#39;m trying to do something on my MPC8315E-RDB that *should* =
be<br>
really simple, and i&#39;m getting nowhere.<br>
<br>
=C2=A0 currently on this machine, i have u-boot in NOR flash, and it&#39;s =
old<br>
but it will still boot the other images also stored in NOR flash:<br>
<br>
=C2=A0 U-Boot 1.3.0-rc2 (Mar 21 2008 - 16:00:02) MPC83XX<br>
<br>
i just built a new image from the current poky repo for precisely<br>
this target, and my generated artifacts include the newer u-boot<br>
binary image:<br>
<br>
=C2=A0 -rwxr-xr-x. 2 rpjday rpjday=C2=A0 =C2=A0423964 Jul=C2=A0 5 06:46<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74=
e68-r0.bin<br>
<br>
rather than immediately write it to flash, i&#39;d like to download and<br>
test it first, and everything i&#39;ve seen suggests i should be able to:<b=
r>
<br>
=3D&gt; tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0=
.bin<br>
=3D&gt; go 0x100000<br>
<br>
=C2=A0 well, the downloading seems to work fine:<br>
<br>
=3D&gt; tftp 0x100000 u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0=
.bin<br>
Speed: 1000, full duplex<br>
Using eTSEC0 device<br>
TFTP from server 192.168.1.13; our IP address is 192.168.1.127<br>
Filename &#39;u-boot-mpc8315e-rdb-v2016.03+gitAUTOINC+df61a74e68-r0.bin&#39=
;.<br>
Load address: 0x100000<br>
Loading: #############################<br>
done<br>
Bytes transferred =3D 423964 (6781c hex)<br>
=3D&gt;<br>
<br>
so the number of bytes transferred is correct. and then bad things<br>
happen:<br>
<br>
=3D&gt; go 0x100000<br>
## Starting application at 0x00100000 ...<br>
NIP: 00100008 XER: 20000000 LR: 07FC6614 REGS: 07f2fcd0 TRAP: 0700 DAR: 000=
00000<br>
MSR: 0008b002 EE: 1 PR: 0 FP: 1 ME: 1 IR/DR: 00<br>
<br>
GPR00: 07FC6604 07F2FDC0 00000080 00000001 07F329E4 00000010 00000001 00000=
030<br>
GPR08: 00000041 00000020 00000006 FFFFFFFF 00000000 00000200 07FF9000 09FB2=
000<br>
GPR16: 00000000 00000000 00000000 00000000 00000000 FFFFFFFF 00000000 00000=
000<br>
GPR24: 07F32930 00000000 00000000 00000002 00100000 07F2FF4C 07FF98F8 07F32=
9E4<br>
Call backtrace:<br>
07FC6604 07FD767C 07FD6D10 07FD6E98 07FC6110 07FB6BF8 07FB568C<br>
Program Check Exception<br>
Resetting the board.<br>
<br>
<br>
=C2=A0 am i missing something? downloading to the wrong address in RAM?<br>
jumping to the wrong entry point? i&#39;mopen to suggestions, i know i&#39;=
ve<br>
done this sort of thing before.<br>
<br>
=C2=A0 i&#39;m willing to start a new configure and build from scratch if<b=
r>
someone wants to supply a recipe. since this is the current YP powerpc<br>
reference board, it really should work out of the box, no?<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Life is=
 like Linux - it never stands still.<br><br></div>
</div>

--001a113d2ac6675aa60536fc1688--
