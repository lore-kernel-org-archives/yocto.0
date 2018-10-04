Return-Path: <brianz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD4F7E0053F; Thu,  4 Oct 2018 10:48:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (brianz[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F37E003D9
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 10:48:19 -0700 (PDT)
Received: by mail-ua1-f66.google.com with SMTP id w7-v6so3727014uan.9
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 10:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=weP7zJWQAI78fBUUKHnhhJxCW4N460QjoeXfaUnTEMo=;
	b=g8sfIk+LanikFfsQgwOCaiWgHdXvrRjYTrCzO7Kr/ViGgi/d1EL9L7qoc/S6gXfDSX
	rZIhiRnaddwNvAIdjsPRrFwFyFlz+AHwjMBOmelQcKGR2r3/NAI48uklSIHYSSs5hdEm
	GLhEAWHU1Fy2AdCV5UV+CT55GDjXtTeUVJ3xTRsUC1Lx8VP10BjG1sWpq5Jrd58mFl60
	QQ8mmLD206nYtiodf+2kjJJZ+nhomE/MlRJeifo1j9P8GGfB4MrBf+lv0ptlzQ4Q3bc2
	Q9vpE4SnAXnW4XI4c3FT+RvrgPSTlTPkz9FHji6pTBfZAOXyVMiO0ioiUOAL2onoYxg5
	3pNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=weP7zJWQAI78fBUUKHnhhJxCW4N460QjoeXfaUnTEMo=;
	b=QvDPvX5gxX5eGqAbC8qiLHfQABrAuMavM8S/NU/0Y6kW3rvMdo1436iMMgcw8uCJlT
	8c0czTnD2m64HdDdP8eLJiJAOEWZJmUR2+KGKGtK6kFJzfuHLI/N0veYHffVhzM9bmgK
	dwhAN3RZ8/y+PksmZ8n0C9UdJl/q4oRNo3ZTpOIz7+RbtAVRJNw2b0MPDOiAOFwbM/eT
	8R4uk5/dSpoT9XEWnrScHX0N2YN+3BTfP2mxxAlZ7iMA1hdMRiagGGiNNF110FZwXX2B
	/p+BO67zdzaQNDnvXoWDKIWpbsBHK2r4jG1oaI7y4GKE+K96PWECSXEEB7lQDq8PLifu
	bsbg==
X-Gm-Message-State: ABuFfogHtU+GrjiPcMef2+mPRd1LVo1TCdGpaP2ByA7ectFxxdLoMkD9
	cHtt0aXGAzmWup8FwWpMClwKRY5ntNSt6s8R5bw=
X-Google-Smtp-Source: ACcGV63x+9gThbD6n6Es172twiHkxm7NkOR82vQpiOFgjg1xlwevmrYt6c705ZlI3Wlvr3LKBUexcUbgtmAdfyeNUgI=
X-Received: by 2002:ab0:80e:: with SMTP id
	a14-v6mr3142779uaf.114.1538675298519; 
	Thu, 04 Oct 2018 10:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAE18oz8o-AKA5OBtV63odQx=gfMPa3MD=EU52BeU8Z2Zb26Ttw@mail.gmail.com>
	<000401d45bba$16c6d0c0$44547240$@uni-bremen.de>
	<CAE18oz9A=Zwxu9QMzmLugkf3jMvg2yxzSCV8PWbkF9UvgXPWZw@mail.gmail.com>
	<000c01d45c04$e16627a0$a43276e0$@uni-bremen.de>
In-Reply-To: <000c01d45c04$e16627a0$a43276e0$@uni-bremen.de>
From: Brian Zambrano <brianz@gmail.com>
Date: Thu, 4 Oct 2018 11:48:06 -0600
Message-ID: <CAE18oz806AhsxR2JFsLPj3hqnvr7MZoH3dWbgrWPBY3RatAGrA@mail.gmail.com>
To: desai@uni-bremen.de
Cc: yocto@yoctoproject.org
Subject: Re: Installing Python app from source
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
X-List-Received-Date: Thu, 04 Oct 2018 17:48:20 -0000
Content-Type: multipart/alternative; boundary="00000000000097cf2d05776ac2ac"

--00000000000097cf2d05776ac2ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In a Python project with a setup.py file, you can actually do "pip install
." Of course you still need internet access for dependencies, which I have
during the build.  This is similar to running "python setup.py install" in
the same directory.

I've tried setting SRC_URI=3D"saunders_backend" along with "import
setuptools".  That seems to run "python setup.py install" during the build
phase, however I get an error that setup.py cannot be found.

Also, my setup.py contains a section for scripts, which results on my
script being placed into the a bin directory on the host when installed
normally:

scripts=3D['bin/server'],

So, setup.py can do everything I need outside of bitbake/yocto...I just
can't figure out how to get it working during the bitbake build.

On Thu, Oct 4, 2018 at 11:08 AM Shantanoo Desai <desai@uni-bremen.de> wrote=
:

> Hi Brian,
>
>
>
> It is confusing, I agree. But I think it is essential because I assume
> your Target is not connected to the Internet. When you do pip install
> <package> normally the package if fetched from the internet and then
> installed. In this case your app is local so need to have those files fir=
st
> built natively and then need to be sent to the appropriate folders for
> python to access them which I guess what setuptools does. Hence you set a=
ll
> the files in the SRC_URI.
>
>
>
> Do_install_append is only when you have binaries which could be used as
> command line utilities.
>
>
> (But I could also be completely wrong, not a Yocto guru here)
>
>
>
> Cheers
>
>
>
> Shan
>
>
>
> *Von:* Brian Zambrano <brianz@gmail.com>
> *Gesendet:* Donnerstag, 4. Oktober 2018 18:33
> *An:* desai@uni-bremen.de
> *Cc:* yocto@yoctoproject.org
> *Betreff:* Re: [yocto] Installing Python app from source
>
>
>
> Thanks very much for this Shan. I have that book and was working through
> it yesterday, as a matter of fact.
>
>
>
> That part which is confusing to me in that recipe is that the SRC_URI
> points to every single file, there is a "inherit setuptools" line and
> also a do_install_append. I'm not sure how each of these are working
> together to get the application installed. I believe that the "inherit
> setuptools" will automatically run "python setup.py install", but when th=
en
> is the source code manually copied over?
>
>
>
> BZ
>
>
>
> On Thu, Oct 4, 2018 at 2:13 AM Shantanoo Desai <desai@uni-bremen.de>
> wrote:
>
> Hi Brian,
>
>
>
> What you need in the .bb is a runtime-dependency. RDEPENDS_${PN} +=3D =E2=
=80=9C
> ${PYTHON_PN}-flask ${PYTHON_PN}-jinja ${PYTHON_PN}-markdown=E2=80=9D and =
so on.
> This will add these modules in the root-filesystem and will be available =
on
> the target.
>
>
>
> If you need some basic help with a python recipe, there is a git
> repository YoctoCookbook
> https://github.com/yoctocookbook/meta-custom/tree/master/recipes-python/p=
ython-helloworld
> to get you some idea.
>
>
>
> Please not I am in no ways a Yocto expert on recipe creations but for the
> past few weeks this is what I have been able to discover. Due to lack of
> examples on custom recipes in python this is the best I can help you with=
.
>
>
>
>
>
> Best Regards,
>
>
>
> Shan
>
>
>
>
>
>
>
> *Von:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *I=
m
> Auft**rag von *Brian Zambrano
> *Gesendet:* Donnerstag, 4. Oktober 2018 00:52
> *An:* yocto@yoctoproject.org
> *Betreff:* [yocto] Installing Python app from source
>
>
>
> I'm trying to install my own Python application from source, and having a
> hard time finding resources on how to accomplish it. I'm new to this
> ecosystem and am probably missing something fundamental.
>
> My recipe is structured like this...and my build is configure such that i=
t
> does actually find it.
>
> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend
>
> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>
> My application code which is for now just a "hello world" flask
> application, is in saunders_backend. The setup.py file in there works as
> expected when I use it in on my host machine.
>
> =E2=94=9C=E2=94=80=E2=94=80 firmware-1.0
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_backend/
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 server
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 MANIFEST.in
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 requirements.txt
> =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 config.py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 __init__.=
py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 models.py
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 static/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 templates=
/
> =E2=94=82   =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 views.py
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 setup.py
>
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 saunders_frontend/
> =E2=94=94=E2=94=80=E2=94=80 firmware_1.0.bb
>
>
> I've been hacking on the .bb files to get it to install this into the
> resulting image. I do have IMAGE_INSTALL_append =3D " firmware" in the
> top-level local.conf.
>
>
>
> My primary confusion is that I don't know what I should be using for the
> python application. do_install, do_install_append? What should SRC_UIR be=
?
> In effect is that I want the exact same behavior of "cd saunders_backend
> && pip install ." My setup.py file has install_requires with a list of
> all dependencies, which now is merely Flask.
>
>
>
> Pointers would be appreciated.
>
> BZ
>
>

--00000000000097cf2d05776ac2ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">In a Py=
thon project with a setup.py file, you can actually do &quot;pip install .&=
quot; Of course you still need internet access for dependencies, which I ha=
ve during the build.=C2=A0 This is similar to running &quot;python setup.py=
 install&quot; in the same directory.=C2=A0<div><br></div><div>I&#39;ve tri=
ed setting SRC_URI=3D&quot;<span style=3D"font-family:monospace,monospace">=
saunders_backend&quot;=C2=A0</span>along with &quot;import setuptools&quot;=
.=C2=A0 That seems to run &quot;python setup.py install&quot; during the bu=
ild phase, however I get an error that setup.py cannot be found.</div><div>=
<br></div><div>Also, my setup.py contains a section for scripts, which resu=
lts on my script being placed into the a bin directory on the host when ins=
talled normally:</div><br><font face=3D"monospace, monospace">scripts=3D[&#=
39;bin/server&#39;],</font></div><div dir=3D"ltr"><br></div><div>So, setup.=
py can do everything I need outside of bitbake/yocto...I just can&#39;t fig=
ure out how to get it working during the bitbake build.</div></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Oct 4, 2018 at =
11:08 AM Shantanoo Desai &lt;<a href=3D"mailto:desai@uni-bremen.de">desai@u=
ni-bremen.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div la=
ng=3D"EN-GB" link=3D"blue" vlink=3D"purple"><div class=3D"m_707145180281088=
9026WordSection1"><p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Hi Bria=
n,<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"DE" style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f49=
7d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"fo=
nt-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">It=
 is confusing, I agree. But I think it is essential because I assume your T=
arget is not connected to the Internet. When you do pip install &lt;package=
&gt; normally the package if fetched from the internet and then installed. =
In this case your app is local so need to have those files first built nati=
vely and then need to be sent to the appropriate folders for python to acce=
ss them which I guess what setuptools does. Hence you set all the files in =
the SRC_URI. <u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Do_in=
stall_append is only when you have binaries which could be used as command =
line utilities. <u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f49=
7d"><br>(But I could also be completely wrong, not a Yocto guru here)<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></=
u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1f497d">Cheers<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p=
><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:#1f497d">Shan<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot=
;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif"> Brian Zambrano &lt;<a href=3D"mailto:brianz@=
gmail.com" target=3D"_blank">brianz@gmail.com</a>&gt; <br><b>Gesendet:</b> =
Donnerstag, 4. Oktober 2018 18:33<br><b>An:</b> </span><span lang=3D"DE" st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a href=
=3D"mailto:desai@uni-bremen.de" target=3D"_blank">desai@uni-bremen.de</a><b=
r><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br><b>Betreff:</b> Re: [yocto] Installing Python a=
pp from source<u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0=
<u></u></p><div><div><p class=3D"MsoNormal">Thanks very=C2=A0much for this =
Shan. I have that book and was working through it yesterday, as a matter of=
 fact.<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
></div><div><p class=3D"MsoNormal">That part which is confusing to me in th=
at recipe is that the SRC_URI points to every single file, there is a &quot=
;<span style=3D"font-size:9.0pt;font-family:Consolas;color:#24292e">inherit=
 setuptools&quot; </span>line and also a do_install_append. I&#39;m not sur=
e how each of these are working together to get the application installed. =
I believe that the &quot;inherit setuptools&quot; will automatically run &q=
uot;python setup.py install&quot;, but when then is the source code manuall=
y copied over?<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">BZ<u></u><u></u></p></di=
v></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p c=
lass=3D"MsoNormal">On Thu, Oct 4, 2018 at 2:13 AM Shantanoo Desai &lt;<a hr=
ef=3D"mailto:desai@uni-bremen.de" target=3D"_blank">desai@uni-bremen.de</a>=
&gt; wrote:<u></u><u></u></p></div><blockquote style=3D"border:none;border-=
left:solid #cccccc 1.0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin=
-right:0cm"><div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Hi Brian,</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></=
u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:#1f497d">What you need in the .bb=
 is a runtime-dependency. RDEPENDS_${PN} +=3D =E2=80=9C ${PYTHON_PN}-flask =
${PYTHON_PN}-jinja ${PYTHON_PN}-markdown=E2=80=9D and so on. This will add =
these modules in the root-filesystem and will be available on the target. <=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">If you need some ba=
sic help with a python recipe, there is a git repository YoctoCookbook <a h=
ref=3D"https://github.com/yoctocookbook/meta-custom/tree/master/recipes-pyt=
hon/python-helloworld" target=3D"_blank">https://github.com/yoctocookbook/m=
eta-custom/tree/master/recipes-python/python-helloworld</a> to get you some=
 idea.</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0=
</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Please not I=
 am in no ways a Yocto expert on recipe creations but for the past few week=
s this is what I have been able to discover. Due to lack of examples on cus=
tom recipes in python this is the best I can help you with.</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u></u></p><p =
class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,sans-serif;color:#1f497d">Best Regards,</span><u></u><=
u></u></p><p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u=
></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">Shan</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u><=
/u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0</span><u></u><u></u></=
p><p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif"> <a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> &=
lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yoct=
o-bounces@yoctoproject.org</a>&gt; <b>Im Auft</b></span><b><span lang=3D"DE=
" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">rag=
 von </span></b><span lang=3D"DE" style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif">Brian Zambrano<br><b>Gesendet:</b> Donnerstag,=
 4. Oktober 2018 00:52<br><b>An:</b> <a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a><br><b>Betreff:</b> [yocto]=
 Installing Python app from source</span><u></u><u></u></p><p class=3D"MsoN=
ormal">=C2=A0<u></u><u></u></p><div><div><div><div><div><div><div><p class=
=3D"MsoNormal">I&#39;m trying to install my own Python application from sou=
rce, and having a hard time finding resources on how to accomplish it. I&#3=
9;m new to this ecosystem and am probably missing something fundamental.<br=
><br>My recipe is structured like this...and my build is configure such tha=
t it does actually find it.<br><br><span style=3D"font-family:&quot;Courier=
 New&quot;">=E2=94=9C=E2=94=80=E2=94=80 firmware-1.0<br>=E2=94=82 =C2=A0 =
=E2=94=9C=E2=94=80=E2=94=80 saunders_backend<br>=E2=94=82 =C2=A0 =E2=94=94=
=E2=94=80=E2=94=80 saunders_frontend</span><u></u><u></u></p><div><p class=
=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=E2=94=
=94=E2=94=80=E2=94=80 <a href=3D"http://firmware_1.0.bb" target=3D"_blank">=
firmware_1.0.bb</a></span><br><br>My application code which is for now just=
 a &quot;hello world&quot; flask application, is in saunders_backend. The s=
etup.py file in there works as expected when I use it in on my host machine=
.<br><br><span style=3D"font-family:&quot;Courier New&quot;">=E2=94=9C=E2=
=94=80=E2=94=80 firmware-1.0<br>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 saunders_backend/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=
=80=E2=94=80 bin/<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=
=94=94=E2=94=80=E2=94=80 server<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=
=9C=E2=94=80=E2=94=80 MANIFEST.in<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=
=94=9C=E2=94=80=E2=94=80 requirements.txt<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=
=A0 =E2=94=9C=E2=94=80=E2=94=80 saunders_apollo/<br>=E2=94=82 =C2=A0 =E2=94=
=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 config.py<br>=E2=94=
=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 __=
init__.py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=
=E2=94=80=E2=94=80 models.py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82=
 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 static/<br>=E2=94=82 =C2=A0 =E2=94=82 =
=C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 templates/<br>=E2=94=82=
 =C2=A0 =E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 views=
.py<br>=E2=94=82 =C2=A0 =E2=94=82 =C2=A0=C2=A0=E2=94=94=E2=94=80=E2=94=80 s=
etup.py</span><u></u><u></u></p></div><div><p class=3D"MsoNormal"><span sty=
le=3D"font-family:&quot;Courier New&quot;">=E2=94=82 =C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 saunders_frontend/<br>=E2=94=94=E2=94=80=E2=94=80 <a href=3D"h=
ttp://firmware_1.0.bb" target=3D"_blank">firmware_1.0.bb</a></span><u></u><=
u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"font-family:&quo=
t;Courier New&quot;"><br></span>I&#39;ve been hacking on the .bb files to g=
et it to install this into the resulting image. I do have=C2=A0<span style=
=3D"font-family:&quot;Courier New&quot;">IMAGE_INSTALL_append =3D &quot; fi=
rmware&quot; </span>in the top-level local.conf.<u></u><u></u></p></div><di=
v><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"Mso=
Normal">My primary confusion is that I don&#39;t know what I should be usin=
g for the python application. do_install, do_install_append? What should SR=
C_UIR be? In effect is that I want the exact same behavior of &quot;cd=C2=
=A0<span style=3D"font-family:&quot;Courier New&quot;">saunders_backend &am=
p;&amp; pip install .&quot;=C2=A0</span>My setup.py file has <span style=3D=
"font-family:&quot;Courier New&quot;">install_requires</span> with a list o=
f all dependencies, which now is merely Flask.<u></u><u></u></p></div><div>=
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p></div><div><p class=3D"MsoNo=
rmal">Pointers would be appreciated.<u></u><u></u></p></div><div><p class=
=3D"MsoNormal">BZ<u></u><u></u></p></div></div></div></div></div></div></di=
v></div></div></div></blockquote></div></div></div></blockquote></div>

--00000000000097cf2d05776ac2ac--
