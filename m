Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73FE4E0109B; Fri, 11 May 2018 05:23:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A24AE009BC
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:23:45 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id c5-v6so1882381itj.1
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JnBetcwvt4i56iPKpeqiTDi7+F9MMyk077UW4NM+qP8=;
	b=MiayKQJW8YXNdQuzyYt8uz7tBMOeHaL3nArbqSg5Jg6G6+D2RgDOtzWAvcOH1Kn2V2
	+Hfdmz1F7d97vAGSeaQOdPRFit8rwIG5GX3bs8/MGbqPQeJK+zyiVrvO8uN/bXmhsyRB
	5c7fR7uanB3Mnb2R0joJMT3dCzholQyqseg5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JnBetcwvt4i56iPKpeqiTDi7+F9MMyk077UW4NM+qP8=;
	b=WcB3+2HRJc6r65V8/DtzaFkX/iH1VjKDKnV2DjxeLmWvkPH3glpXBQwct8tfie2vZN
	MVQ8VH8YiXPsXxIxkjKgZd9JO6+c4Wz5kmguNI63OlvhaIb3l3sUOALOgxq8fA1OyTOn
	vkA965hq7AmbGodIQSnnN8w5jx9b0lTpFZb5HNajsYzat1ak4pq6ZRSuKB0MRTvgs5cX
	dFmM0ZH0ZSPYsFrGOYWGWCNHUoU7PJekV5FRdHIhM7fXW908XyRDK0ZvcnE1Wtwcq7Qi
	3Dq+T09L9FomupWyDVUzP2x3lx/f+s3QYo49DUGnuZv96RrZj1ND5tmo7Pzh/heeJrIK
	zDlA==
X-Gm-Message-State: ALKqPwcS1hLHmKAz+wAv1vzJNbIIFkH43P2Mj83CQxHtZKBTCjw6Pp/5
	XB1CEs00pd9DHNuHqU5vbgNLveKtt6rAEyhuPowLGg==
X-Google-Smtp-Source: AB8JxZruvkaRdqiiEUCuK39KhpbllTCPgl9a5u0B1dED8YAsvTH2x3mLqmMev1rsCIGWPnJ8L/NlRU5WCkS9nY3BUBc=
X-Received: by 2002:a24:3a0a:: with SMTP id
	m10-v6mr3119613itm.45.1526041425193; 
	Fri, 11 May 2018 05:23:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP; Fri, 11 May 2018 05:23:44
	-0700 (PDT)
In-Reply-To: <CAJTo0Labg9u1R7=HoYBjUoo0KaDTmVs5uxn3HvzZf+n6M_JTjw@mail.gmail.com>
References: <CAALXFYx=4RR+EMcika2M8D=vOiFMqxc==87ZGrME_Rp2gp=khA@mail.gmail.com>
	<CAJTo0Labg9u1R7=HoYBjUoo0KaDTmVs5uxn3HvzZf+n6M_JTjw@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 11 May 2018 14:23:44 +0200
Message-ID: <CAALXFYx+qGcREfC5fXc0p8gYNgSjPbLio4yRYebwmwTO66tceQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Compilation error after upgrading rocko branch
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
X-List-Received-Date: Fri, 11 May 2018 12:23:47 -0000
Content-Type: multipart/alternative; boundary="0000000000000fc582056bed352d"

--0000000000000fc582056bed352d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This works fine. Thanks a lot! :-)

2018-05-11 14:10 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> Turns out this is due to uninative only having a limited subset of the
> conversion tables and fontforge checks for ones that we don't ship.
> The good news is that Khem sent a patch this morning, but the
> workaround right now is to disable uninative.  This in your local.conf
> will work:
>
> INHERIT_remove =3D "uninative"
>
> Ross
>
> On 11 May 2018 at 13:02, Iv=C3=A1n Castell <icastell@nayarsystems.com> wr=
ote:
> > Hello forum.
> >
> > After updating all my layers to the lastest state of the "rocko" branch=
,
> I
> > am getting this error in "meta-oe" layer:
> >
> > | In file included from ../../git/fontforge/splinefont.h:36:0,
> > |                  from ../../git/fontforge/sd.h:34,
> > |                  from ../../git/fontforge/svg.h:4,
> > |                  from ../../git/fontforge/svg.c:28:
> > | ../../git/inc/gwwiconv.h:44:21: error: conflicting types for
> > =E2=80=98gww_iconv_close=E2=80=99
> > |  #define iconv_close gww_iconv_close
> > |                      ^
> > | ../../git/inc/gwwiconv.h:37:13: note: previous declaration of
> > =E2=80=98gww_iconv_close=E2=80=99 was here
> > |  extern void gww_iconv_close( gww_iconv_t cd);
> > |              ^~~~~~~~~~~~~~~
> > | Makefile:2282: recipe for target 'libfontforge_la-svg.lo' failed
> > | make[2]: *** [libfontforge_la-svg.lo] Error 1
> > | make[2]: *** Waiting for unfinished jobs....
> > | make[2]: Leaving directory
> > '/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-
> native/20170731-r0/build/fontforge'
> > | ERROR: oe_runmake failed
> > | Makefile:1561: recipe for target 'all-recursive' failed
> > | make[1]: *** [all-recursive] Error 1
> > | make[1]: Leaving directory
> > '/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-
> native/20170731-r0/build'
> > | Makefile:1398: recipe for target 'all' failed
> > | make: *** [all] Error 2
> > | WARNING:
> > /home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-
> native/20170731-r0/temp/run.do_compile.13092:1
> > exit 1 from 'exit 1'
> > | ERROR: Function failed: do_compile (log file is located at
> > /home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-
> native/20170731-r0/temp/log.do_compile.13092)
> > ERROR: Task
> > (virtual:native:/home/yocto/yocto/sources/meta-oe/meta-oe/
> recipes-graphics/fontforge/fontforge_20170731.bb:do_compile)
> > failed with exit code '1'
> >
> > This is my build machine:
> >
> >  lsb_release -a
> > No LSB modules are available.
> > Distributor ID: Debian
> > Description: Debian GNU/Linux 9.4 (stretch)
> > Release: 9.4
> > Codename: stretch
> >
> > rocko branch was building fine before the "git update" command.
> >
> > Something seems to be broken?
> >
> > Thank you in advance!
> >   -- Ivan
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



--=20




*NOTA LEGAL*
Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mism=
o,
contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente diri=
gida a su
destinatario y se encuentra protegido por Ley. Cualquier persona distinta
de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia
o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3ni=
co por
error, se ruega lo notifique de inmediato al remitente borrando el mensaje
original juntamente con sus ficheros anexos. Gracias.

De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la
adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le info=
rmamos de
la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAY=
AR
SYSTEMS SL, con la finalidad de poder atender los compromisos derivados de
la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus
derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n m=
ediante un
escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com

*LEGAL NOTE*
This email and any attachments to it contains is confidential information
exclusively intended for the recipients. Any divulgation, copy or
distribution to third parties is prohibited without written permission of
NAYAR SYSTEMS SL. If you have received this e-mail in error, please notify
the sender immediately. In accordance with Law 15/1999 of 13 December on
the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
has adopted the necessary measures to ensure the confidential treatment of
personal information. We also inform you that you can exercise your access,
rectification, cancellation and opposition rights by send us a mail to:
info@nayarsystems.com

--0000000000000fc582056bed352d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This works fine. Thanks a lot! :-)</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">2018-05-11 14:10 GMT+02:00 Burton, =
Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Turns out this is due to uninative only having a limited subset of=
 the<br>
conversion tables and fontforge checks for ones that we don&#39;t ship.<br>
The good news is that Khem sent a patch this morning, but the<br>
workaround right now is to disable uninative.=C2=A0 This in your local.conf=
<br>
will work:<br>
<br>
INHERIT_remove =3D &quot;uninative&quot;<br>
<br>
Ross<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 11 May 2018 at 13:02, Iv=C3=A1n Castell &lt;<a href=3D"mailto:icastell@n=
ayarsystems.com">icastell@nayarsystems.com</a>&gt; wrote:<br>
&gt; Hello forum.<br>
&gt;<br>
&gt; After updating all my layers to the lastest state of the &quot;rocko&q=
uot; branch, I<br>
&gt; am getting this error in &quot;meta-oe&quot; layer:<br>
&gt;<br>
&gt; | In file included from ../../git/fontforge/<wbr>splinefont.h:36:0,<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from .=
./../git/fontforge/sd.h:34,<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from .=
./../git/fontforge/svg.h:4,<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from .=
./../git/fontforge/svg.c:28:<br>
&gt; | ../../git/inc/gwwiconv.h:44:<wbr>21: error: conflicting types for<br=
>
&gt; =E2=80=98gww_iconv_close=E2=80=99<br>
&gt; |=C2=A0 #define iconv_close gww_iconv_close<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ^<br>
&gt; | ../../git/inc/gwwiconv.h:37:<wbr>13: note: previous declaration of<b=
r>
&gt; =E2=80=98gww_iconv_close=E2=80=99 was here<br>
&gt; |=C2=A0 extern void gww_iconv_close( gww_iconv_t cd);<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~<br>
&gt; | Makefile:2282: recipe for target &#39;libfontforge_la-svg.lo&#39; fa=
iled<br>
&gt; | make[2]: *** [libfontforge_la-svg.lo] Error 1<br>
&gt; | make[2]: *** Waiting for unfinished jobs....<br>
&gt; | make[2]: Leaving directory<br>
&gt; &#39;/home/yocto/yocto/build/tmp/<wbr>work/x86_64-linux/fontforge-<wbr=
>native/20170731-r0/build/<wbr>fontforge&#39;<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | Makefile:1561: recipe for target &#39;all-recursive&#39; failed<br>
&gt; | make[1]: *** [all-recursive] Error 1<br>
&gt; | make[1]: Leaving directory<br>
&gt; &#39;/home/yocto/yocto/build/tmp/<wbr>work/x86_64-linux/fontforge-<wbr=
>native/20170731-r0/build&#39;<br>
&gt; | Makefile:1398: recipe for target &#39;all&#39; failed<br>
&gt; | make: *** [all] Error 2<br>
&gt; | WARNING:<br>
&gt; /home/yocto/yocto/build/tmp/<wbr>work/x86_64-linux/fontforge-<wbr>nati=
ve/20170731-r0/temp/run.<wbr>do_compile.13092:1<br>
&gt; exit 1 from &#39;exit 1&#39;<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /home/yocto/yocto/build/tmp/<wbr>work/x86_64-linux/fontforge-<wbr>nati=
ve/20170731-r0/temp/log.<wbr>do_compile.13092)<br>
&gt; ERROR: Task<br>
&gt; (virtual:native:/home/yocto/<wbr>yocto/sources/meta-oe/meta-oe/<wbr>re=
cipes-graphics/fontforge/<wbr>fontforge_20170731.bb:do_<wbr>compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; This is my build machine:<br>
&gt;<br>
&gt;=C2=A0 lsb_release -a<br>
&gt; No LSB modules are available.<br>
&gt; Distributor ID: Debian<br>
&gt; Description: Debian GNU/Linux 9.4 (stretch)<br>
&gt; Release: 9.4<br>
&gt; Codename: stretch<br>
&gt;<br>
&gt; rocko branch was building fine before the &quot;git update&quot; comma=
nd.<br>
&gt;<br>
&gt; Something seems to be broken?<br>
&gt;<br>
&gt; Thank you in advance!<br>
&gt;=C2=A0 =C2=A0-- Ivan<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br><im=
g src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font si=
ze=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=3D"color=
:rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3=
nico y, en su caso, cualquier fichero anexo al mismo, contiene informaci=C3=
=B3n de car=C3=A1cter confidencial exclusivamente dirigida a su destinatari=
o y se encuentra protegido por Ley. Cualquier persona distinta de su destin=
ataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o=
 impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3nic=
o por error, se ruega lo notifique de inmediato al remitente borrando el me=
nsaje original juntamente con sus ficheros anexos. Gracias.<br><br>De confo=
rmidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=
=C3=B3n de las medidas necesarias para asegurar el tratamiento confidencial=
 de los datos de car=C3=A1cter personal. As=C3=AD mismo le informamos de la=
 inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAYAR=
 SYSTEMS SL, con la finalidad de poder atender los compromisos derivados de=
 la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus =
derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n m=
ediante un escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rg=
b(17,85,204)" href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@=
nayarsystems.com</a></span><br><br></font></span></div><div><span style=3D"=
color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-s=
mall"><u><b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:rgb(15=
3,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small">This e=
mail and any attachments to it contains is confidential information exclusi=
vely intended for the recipients. Any divulgation, copy or distribution to =
third parties is prohibited without written permission of NAYAR SYSTEMS SL.=
 If you have received this e-mail in error, please notify the sender immedi=
ately. In accordance with Law 15/1999 of 13 December on the Protection of P=
ersonal Data, the NAYAR SYSTEMS SL guarantees that it has adopted the neces=
sary measures to ensure the confidential treatment of personal information.=
 We also inform you that you can exercise your access, rectification, cance=
llation and opposition rights by send us a mail to:=C2=A0<a href=3D"mailto:=
info@nayarsystems.com" target=3D"_blank">info@nayarsystems.com</a></span></=
div><br></div>
</div>

--0000000000000fc582056bed352d--
