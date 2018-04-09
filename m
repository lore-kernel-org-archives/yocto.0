Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC959E00B30; Sun,  8 Apr 2018 23:04:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic317-29.consmr.mail.bf2.yahoo.com
	(sonic317-29.consmr.mail.bf2.yahoo.com [74.6.129.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1071CE008D4
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2018 23:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1523253858; bh=Sh3ta75J9EGWDo0TABHgCsuwJqq8rVS70HssYh4yl18=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=lkGFwUAxd6Rkmi+sPqo3iuyG2k8cL3HgIxrfepRFPN+M7PCH5tBodFvNnswt4DirterwWf7MvkW2OWTSJPuD/eR8cRfJeelYBwZTrHNrJP6l/4Az0pXVgRXTerKtOL8k6JfKNrk/iIM5YRK1kRxgHPnH/cRR6y3wYVCIFIKpddS0hMQoEQLbdQJG3my0W7sSM0KfTieAuCYwQBxT990yyGjUWrvhhNjspl4nVxIn5+eEKcry9Jp+lST9qF8FUPFIHNYo836rcua1fAiyLY1VwBULHxzsUrZUnjudbvUgrEJBpyizv7L3JffGxPI7+0HSIO4zn/UWTzF4O4ROz9KZ9A==
X-YMail-OSG: ciqzB5YVM1k22MXV.ohA07P1LkPREmeDbOWOyf3arjCffZdW996JLFtS6i8xH92
	.YBS2bJDmY4XOm0FZnlplpyFnyoB_yZVyEZaoljd9lYo.NrjJI4mJmYe33WmUCuK.xCdl0zRIL5v
	e6fNhMbDBn41gQ8KtSFhwxwkGF9L8pgPakeDTxl7R8W41lx.U2dqmA9eD4juBbaWbiTP6KXMNgEd
	IvJ3VdZuKkIFezDcWywmc8kOpGVjLSUZzCAYZcf5xpp.Bm4ATWTz_2n4GfiWQuXM1RRiBLvXll1n
	hmOtUfzdarI5h4su64NYRMN2pGfCfDl6gfjhXzFmsVUoL7cg8ya3nhtW8u67lvyIDskqsIvoHpdy
	GoN0R2wgzOZHd3z8wbIaT5iA8lAOnU8XKiZ4FcJcQEsUnswxYoCyQK6mbialkNdZdRsaE7TBz4va
	oAi09cHMipctGTmJXp3YEyfpnj78Iwq7vcEebOAobajDNA_vXYPZq.l9LMEH2HbzZ4KKA8A--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.bf2.yahoo.com with HTTP;
	Mon, 9 Apr 2018 06:04:18 +0000
Date: Mon, 9 Apr 2018 06:04:13 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <1773490007.590394.1523253853566@mail.yahoo.com>
In-Reply-To: <338d9cd0-3be6-2382-1515-3b8549354d1b@intel.com>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
	<355c797a-a34b-2326-62bf-ca503edc82f5@intel.com>
	<1779056233.383965.1523192967392@mail.yahoo.com>
	<338d9cd0-3be6-2382-1515-3b8549354d1b@intel.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11745 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Mon, 09 Apr 2018 06:04:19 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_590393_2126536574.1523253853564"

------=_Part_590393_2126536574.1523253853564
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks alot. It's work now.I have another question and It will be a huge h=
elp if you answer it:I add libsrtp to another recepie's DEPENDS(jrtplib). b=
ut I faced the following error:
=C2=A0 =C2=A0 --ERROR: jrtplib-3.11.1-r0 do_populate_sysroot: QA Issue: jrt=
plib.pc failed sanity test (tmpdir) in path /opt/yocto/toradex-morty/build-=
intercom/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/jrtplib/3.11=
.1-r0/sysroot-destdir/usr/lib/pkgconfig [pkgconfig]

I checked=C2=A0jrtplib.pc and it is the result:

=C2=A0=C2=A0=C2=A0=C2=A0Name: Jrtplib=C2=A0=C2=A0=C2=A0=C2=A0Description: A=
 full featured RTP library=C2=A0=C2=A0=C2=A0=C2=A0Requires:=C2=A0=C2=A0=C2=
=A0=C2=A0Version: 3.11.1=C2=A0=C2=A0=C2=A0=C2=A0Libs:=C2=A0 -L/usr/lib -ljr=
tp -L/usr/lib -ljthread -lpthread /opt/yocto/toradex-morty/build-intercom/t=
mp-glibc/sysroots/colibri-imx6/usr/lib/libsrtp.a=C2=A0=C2=A0=C2=A0=C2=A0Cfl=
ags:=C2=A0 -I/usr/include -I/opt/yocto/toradex-morty/build-intercom/tmp-gli=
bc/sysroots/colibri-imx6/usr/include
I think something is wrong in libsrtp paths.
Thanks

    On Monday, April 9, 2018, 7:08:23 AM GMT+4:30, Anuj Mittal <anuj.mittal=
@intel.com> wrote: =20
=20
 On 04/08/2018 09:09 PM, Mostafa Farzane wrote:
>=20
> Thanks alot,
>=20
> I added=C2=A0TOOLCHAIN_TARGET_TASK =3D "libsrtp-staticdev" to my image in=
stead
> of libsrtp. But I get:
>=20
> =C2=A0* calculate_dependencies_for: Cannot satisfy the following dependen=
cies
> for libsrtp-staticdev:
> =C2=A0*=C2=A0 =C2=A0 =C2=A0 libsrtp (=3D 1.5.2-r0) *
> =C2=A0* opkg_solver_install: Cannot install package libsrtp-staticdev.
>=20

Please try adding ALLOW_EMPTY_${PN} =3D "1" in your bbappend or try:

https://patchwork.openembedded.org/patch/150000/
 =20

------=_Part_590393_2126536574.1523253853564
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div></div>
            <div>Thanks alot. It's work now.</div><div>I have another quest=
ion and It will be a huge help if you answer it:</div><div>I add libsrtp to=
 another recepie's DEPENDS(jrtplib). but I faced the following error:</div>=
<div><br></div><div>&nbsp; &nbsp; --ERROR: jrtplib-3.11.1-r0 do_populate_sy=
sroot: QA Issue: jrtplib.pc failed sanity test (tmpdir) in path /opt/yocto/=
toradex-morty/build-intercom/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-=
gnueabi/jrtplib/3.11.1-r0/sysroot-destdir/usr/lib/pkgconfig [pkgconfig]<br>=
</div><div><br></div><div>I checked&nbsp;<span><span style=3D"color: rgb(0,=
 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-ser=
if;">jrtplib.pc and it is the result:</span></span></div><div><span><span s=
tyle=3D"color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helve=
tica, Arial, sans-serif;"><br></span></span></div><div><span><span style=3D=
"color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, A=
rial, sans-serif;"><br></span></span></div><div><span><span style=3D"color:=
 rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, s=
ans-serif;"><span><div>&nbsp;&nbsp;&nbsp;&nbsp;Name: Jrtplib</div><div>&nbs=
p;&nbsp;&nbsp;&nbsp;Description: A full featured RTP library</div><div>&nbs=
p;&nbsp;&nbsp;&nbsp;Requires:</div><div>&nbsp;&nbsp;&nbsp;&nbsp;Version: 3.=
11.1</div><div>&nbsp;&nbsp;&nbsp;&nbsp;Libs:&nbsp; -L/usr/lib -ljrtp -L/usr=
/lib -ljthread -lpthread /opt/yocto/toradex-morty/build-intercom/tmp-glibc/=
sysroots/colibri-imx6/usr/lib/libsrtp.a</div><div>&nbsp;&nbsp;&nbsp;&nbsp;C=
flags:&nbsp; -I/usr/include -I/opt/yocto/toradex-morty/build-intercom/tmp-g=
libc/sysroots/colibri-imx6/usr/include</div><div><br></div><div>I think som=
ething is wrong in libsrtp paths.</div><div><br></div><div>Thanks</div><div=
><br></div></span><br></span></span></div>
           =20
            <div id=3D"ydpdd3b4890yahoo_quoted_3802922007" class=3D"ydpdd3b=
4890yahoo_quoted">
                <div style=3D"font-family:'Helvetica Neue', Helvetica, Aria=
l, sans-serif;font-size:13px;color:#26282a;">
                   =20
                    <div>
                        On Monday, April 9, 2018, 7:08:23 AM GMT+4:30, Anuj=
 Mittal &lt;anuj.mittal@intel.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div dir=3D"ltr">On 04/08/2018 09:09 PM, Mostafa F=
arzane wrote:<div class=3D"ydpdd3b4890yqt0446973159" id=3D"ydpdd3b4890yqtfd=
28432"><br clear=3D"none">&gt; <br clear=3D"none">&gt; Thanks alot,<br clea=
r=3D"none">&gt; <br clear=3D"none">&gt; I added&nbsp;TOOLCHAIN_TARGET_TASK =
=3D "libsrtp-staticdev" to my image instead<br clear=3D"none">&gt; of libsr=
tp. But I get:<br clear=3D"none">&gt; <br clear=3D"none">&gt; &nbsp;* calcu=
late_dependencies_for: Cannot satisfy the following dependencies<br clear=
=3D"none">&gt; for libsrtp-staticdev:<br clear=3D"none">&gt; &nbsp;*&nbsp; =
&nbsp; &nbsp; libsrtp (=3D 1.5.2-r0) *<br clear=3D"none">&gt; &nbsp;* opkg_=
solver_install: Cannot install package libsrtp-staticdev.</div><br clear=3D=
"none">&gt; <br clear=3D"none"><br clear=3D"none">Please try adding ALLOW_E=
MPTY_${PN} =3D "1" in your bbappend or try:<br clear=3D"none"><br clear=3D"=
none"><a shape=3D"rect" href=3D"https://patchwork.openembedded.org/patch/15=
0000/" rel=3D"nofollow" target=3D"_blank">https://patchwork.openembedded.or=
g/patch/150000/</a><div class=3D"ydpdd3b4890yqt0446973159" id=3D"ydpdd3b489=
0yqtfd16814"><br clear=3D"none"></div></div></div>
                </div>
            </div></div></body></html>

------=_Part_590393_2126536574.1523253853564--
