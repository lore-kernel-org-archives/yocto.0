Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7474E00CB9; Tue, 23 Feb 2016 02:16:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.96.216 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm17-vm1.bullet.mail.ir2.yahoo.com
	(nm17-vm1.bullet.mail.ir2.yahoo.com [212.82.96.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14716E00C20
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 02:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1456222557; bh=BiOiZTuSE5kBdM3yLO8SMAKp0lFB8JzZZgwYUi3Kyqo=;
	h=Date:From:Reply-To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=C2NG7PUeZY+hzULKqM2K1mo97cmlUFnrtTk6aWjE1wDzyeeJHoqeWvHZIa36UA/THjD9QgdDNkzPW2v8Hq6TUxvNIiAI3MyWh6+zJvjk/I5mnElMtUAoFBtvO9UU3ZZ8uHEEr0nH+Gwbht/WnhoZDUKQnU/FxG+c05SpiGsYjJL1ETqHO7nJtp9Or4XGIUp9mntklPNiQMTz6NpBhWattPRQisgBpMnnbcwlAek0t/8DlAh9WRFsiOxquukvvrT6geNzxIt5b5cO8KshdZeoEmiZ9vsWtpu0epFLkd6BB8SNcN0qhI7ZID8vNAN2Ryg+6AxQj4uqzPiMFv3ciMoCOg==
Received: from [212.82.98.126] by nm17.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 10:15:57 -0000
Received: from [212.82.98.71] by tm19.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 10:15:57 -0000
Received: from [127.0.0.1] by omp1008.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 10:15:57 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 570945.15247.bm@omp1008.mail.ir2.yahoo.com
X-YMail-OSG: JxMBviQVM1nfxeP401fet2iB33jvwqHgGTzzaHUBh6dwkWMPZ37vF1eOb_H3Rda
	G4RTl31ykWrg9D2sZdMNbzAJXvO2aWT4liXtXSl9rX6asQQ1X_it74vKKV4CF5fXusOwNcD5XcNR
	IIEABQlSB49vZ1MedBtQ1FDdKGavMYRSps5MVou4soBC6ojmQXYKuGm1DoMcHF0JOqQ4iSgj0SWK
	vSZEQ9LE5ipU_BJKYZfuY8pD653qWbfyfGbTwR9a8RSF6wC7aZ6bQe4JxR_yQ8YMaMabyh5ZvUbY
	qFbGNEvIuWK0f73tCb7nHGh1j47Biq3AHyBOwMCPCRJPhTIeuYff4BnnjGknX581loVQuv7bpqls
	8Dv4ToMfKctexOHSlC9WBON3q7f35qXrBWNi.Myx1VidRMuypVMgl.xGDzpgc2P5_ltoR2eJUoG1
	1VaToFx_QzhnyPc2vwymSVaHx5NN3uroWb97tjLCJTdvoLiMvyX4DwlhFZzCIbRwrZ5bXF1f04KK
	V7Uk2.buP_P1ShjnOKSFppv0MqA--
Received: by 212.82.98.116; Tue, 23 Feb 2016 10:15:56 +0000 
Date: Tue, 23 Feb 2016 10:15:56 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
Cc: Yocto Project <yocto@yoctoproject.org>
Message-ID: <545916676.13393477.1456222556523.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAMKF1sqoauqS_MwfVNgWcXnM8RJkDY1mN-uHDML+MR5g12VfOA@mail.gmail.com>
References: <CAMKF1sqoauqS_MwfVNgWcXnM8RJkDY1mN-uHDML+MR5g12VfOA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Post Generation of debug information
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Feb 2016 10:16:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_13393476_995439419.1456222556518"

------=_Part_13393476_995439419.1456222556518
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

In this special case the tool is Lauterbach's Trace32.=20

If I understand properly each piece of output I would eventually need, I wo=
uld need to modify its origin recipes to ensure they deploy the such files =
in DEPLOY_DIR_IMAGE/SOME_WHERE. There I could proceed in a similar way as t=
he image_types classes.
Paths are the first motivation, but physical addresses, offsets configurati=
ons which might could only be fetched from grepping the code could be next.=
 Ideally I would not like to modify others recipes.
In a more generic way, is there a way a recipe accesses variables of other =
recipes?


    El Lunes 22 de febrero de 2016 19:46, Khem Raj <raj.khem@gmail.com> esc=
ribi=C3=B3:
=20

 On Mon, Feb 22, 2016 at 7:41 AM, Oliver <urnen81@yahoo.es> wrote:
> I have the need to generate some scripts for a debugger tool. As a first
> approach, these generated scripts could contain paths on where specific
> binary files are stored on the file system.
>
> Such purpose has been partially fulfilled with a recipe implementing the
> do_compile task to generate those files, assuming not implementing the
> deploying tasks, nothing gets integrated in the final image.
>
> Therefore the debugger tool could go to build/work/temp/=E2=80=A6/myrecip=
e/=E2=80=A6
> (WORKDIR of the recipe) as a startpoint for such scripts.
>
> 2 Questions:
>
> -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 There would be a better solution for =
this task?
> -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The task has not been as successfully=
 as expected. Ideally I
> would access variables of other recipes to know where they are their
> output/intermediate files. E.g. location of an elf file for u-boot. Is th=
ere
> any way around this?
>

There are ways implemented e.g. you can generate an image tarball in two pi=
eces
1. binaries
2. Associated debug info and symbols

The untar both in same place.

Point your cross gdb to this location via setting appropriate sysroot
in .gdbinit
and that will be it.

However its not clear if thats what you are looking for. If you want to poi=
nt to
components build directory instead of a full rootfs then you have to enhacn=
e
the .gdbinit a bit more.

I am assuming that gdb is the debugging tool you are trying to use

> Regards
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

  

------=_Part_13393476_995439419.1456222556518
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1456147178319_39986" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1456147178319_39434"><span id=3D"yui_3_16=
_0_1_1456147178319_39434">In this special case the tool is Lauterbach's Tra=
ce32. <br></span></span></div><div id=3D"yui_3_16_0_1_1456147178319_40379" =
dir=3D"ltr"><span id=3D"yui_3_16_0_1_1456147178319_39434"><span id=3D"yui_3=
_16_0_1_1456147178319_39434"><br></span></span></div><div id=3D"yui_3_16_0_=
1_1456147178319_40132" dir=3D"ltr">If I understand properly each piece of o=
utput I would eventually need, I would need to modify its origin recipes to=
 ensure they deploy the such files in DEPLOY_DIR_IMAGE/SOME_WHERE. There I =
could proceed in a similar way as the image_types classes.</div><div id=3D"=
yui_3_16_0_1_1456147178319_40440" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_1_1456147178319_40203" dir=3D"ltr"><span id=3D"yui_3_16_0_1_145614717831=
9_39434"><span id=3D"yui_3_16_0_1_1456147178319_39434">Paths=20
are the first motivation, but physical addresses, offsets configurations wh=
ich might could only be fetched from grepping the code could=20
be next. Ideally I would not like to modify others recipes.<br></span></spa=
n></div><div id=3D"yui_3_16_0_1_1456147178319_39987" dir=3D"ltr"><span id=
=3D"yui_3_16_0_1_1456147178319_39434"><span id=3D"yui_3_16_0_1_145614717831=
9_39434"></span>In a more generic way, is there a way a recipe accesses var=
iables of other recipes?</span></div><br><div class=3D"qtdSeparateBR"><br><=
br></div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=
=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gr=
ande, sans-serif; font-size: 16px;"> <div style=3D"font-family: HelveticaNe=
ue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size:=
 16px;"> <div dir=3D"ltr"><font face=3D"Arial" size=3D"2"> El Lunes 22 de f=
ebrero de 2016 19:46, Khem Raj &lt;raj.khem@gmail.com&gt; escribi=C3=B3:<br=
></font></div>  <br><br> <div class=3D"y_msg_container">On Mon, Feb 22, 201=
6 at 7:41 AM, Oliver &lt;<a shape=3D"rect" ymailto=3D"mailto:urnen81@yahoo.=
es" href=3D"mailto:urnen81@yahoo.es">urnen81@yahoo.es</a>&gt; wrote:<br cle=
ar=3D"none">&gt; I have the need to generate some scripts for a debugger to=
ol. As a first<br clear=3D"none">&gt; approach, these generated scripts cou=
ld contain paths on where specific<br clear=3D"none">&gt; binary files are =
stored on the file system.<br clear=3D"none">&gt;<br clear=3D"none">&gt; Su=
ch purpose has been partially fulfilled with a recipe implementing the<br c=
lear=3D"none">&gt; do_compile task to generate those files, assuming not im=
plementing the<br clear=3D"none">&gt; deploying tasks, nothing gets integra=
ted in the final image.<br clear=3D"none">&gt;<br clear=3D"none">&gt; There=
fore the debugger tool could go to build/work/temp/=E2=80=A6/myrecipe/=E2=
=80=A6<br clear=3D"none">&gt; (WORKDIR of the recipe) as a startpoint for s=
uch scripts.<br clear=3D"none">&gt;<br clear=3D"none">&gt; 2 Questions:<br =
clear=3D"none">&gt;<br clear=3D"none">&gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; There would be a better solution for this task?<br clear=3D"none">&gt; =
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The task has not been as successfully a=
s expected. Ideally I<br clear=3D"none">&gt; would access variables of othe=
r recipes to know where they are their<br clear=3D"none">&gt; output/interm=
ediate files. E.g. location of an elf file for u-boot. Is there<br clear=3D=
"none">&gt; any way around this?<br clear=3D"none">&gt;<br clear=3D"none"><=
br clear=3D"none">There are ways implemented e.g. you can generate an image=
 tarball in two pieces<br clear=3D"none">1. binaries<br clear=3D"none">2. A=
ssociated debug info and symbols<br clear=3D"none"><br clear=3D"none">The u=
ntar both in same place.<br clear=3D"none"><br clear=3D"none">Point your cr=
oss gdb to this location via setting appropriate sysroot<br clear=3D"none">=
in .gdbinit<br clear=3D"none">and that will be it.<br clear=3D"none"><br cl=
ear=3D"none">However its not clear if thats what you are looking for. If yo=
u want to point to<br clear=3D"none">components build directory instead of =
a full rootfs then you have to enhacne<br clear=3D"none">the .gdbinit a bit=
 more.<br clear=3D"none"><br clear=3D"none">I am assuming that gdb is the d=
ebugging tool you are trying to use<div class=3D"yqt2053857404" id=3D"yqtfd=
91284"><br clear=3D"none"><br clear=3D"none">&gt; Regards<br clear=3D"none"=
>&gt;<br clear=3D"none">&gt; --<br clear=3D"none">&gt; ____________________=
___________________________<br clear=3D"none">&gt; yocto mailing list<br cl=
ear=3D"none">&gt; <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.or=
g" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br cle=
ar=3D"none">&gt; <a shape=3D"rect" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yo=
cto</a><br clear=3D"none">&gt;</div><br><br></div>  </div> </div>  </div></=
div></body></html>

------=_Part_13393476_995439419.1456222556518--
