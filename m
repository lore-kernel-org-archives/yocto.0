Return-Path: <nilesh.kokane@mindastoneridge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 832EAE007F9; Mon,  4 Aug 2014 23:15:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C44E007F0
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 23:14:32 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id m15so449869wgh.5
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 23:14:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=rZc6ICOZ2G3hO+fo6QGsqQZ6LpBDO4q2hngKUUylD1k=;
	b=ftVgl5dmGwawBm9t3ZslR2wvqANwjTJNsIzZ34ql0ccci4JotAbh6PLCyECydKoHgA
	Ha7QdlY7XJPcLR6TSl1kNeuZ7tYk0zr5Ge2Cw/rHa6wHqN/PGvS4rZwNOru5JVJO9Sxa
	GGXyPphSYzV/2kqyHuhdgZeUMYlnAOX/pDK/UkfDfQtVxB+SNXy4B+K50CgaARDqu3sz
	y5RJKvo/yFRzHsPwV/cS1ZNi1XZIC7ERBqWWDXEOrTHG70yQg/sFG97u/b//A7MMBBM5
	UlKqUCPrYsfM/3RIsucLj5Cf/OKWVLWOOlnqYXTSKZTzG/feAhXyJNdySGC1utMAk+f3
	B3Eg==
X-Gm-Message-State: ALoCoQmZCY7I/l6WBd7sarUdjFxOvteFFE8CVobPZKtf17LUxm9jxSIc+vkc+78Pw7hV8m0wDqQa9+OkB7fzM/jDg49XD9IYb8IEXkBlEYxLY/qijQkYYFY=
MIME-Version: 1.0
X-Received: by 10.194.9.228 with SMTP id d4mr2217482wjb.99.1407219271157; Mon,
	04 Aug 2014 23:14:31 -0700 (PDT)
Received: by 10.216.205.66 with HTTP; Mon, 4 Aug 2014 23:14:31 -0700 (PDT)
Date: Tue, 5 Aug 2014 11:44:31 +0530
Message-ID: <CAHURY+0isGtGsNYhQ0W=CckRODDvq1UtJUXcXGMRgtEQKYkQZg@mail.gmail.com>
From: Nilesh Kokane <nilesh.kokane@mindastoneridge.com>
To: yocto@yoctoproject.org
Subject: Qt on Wandboard-solo with Yocto -Problem
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
X-List-Received-Date: Tue, 05 Aug 2014 06:15:17 -0000
Content-Type: multipart/alternative; boundary=047d7b4508a8c7643d04ffdbc43a

--047d7b4508a8c7643d04ffdbc43a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

If anyone can help me to sought out the this issue to built up Qt on
wandboard-Solo with yocto.




Based on the url
http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard I
altered the local.conf and the bblayers.confand gave a bitbake
core-image-minimal with DISTRO_FEATURE_remove
I got the errors as posted http://pastebin.com/hsMhT9f8.


Then to circumvent the errors I removed the DISTRO_FEATURE_remove from the
local.conf
and gave a bitbake.with this i got the errors as posted
http://pastebin.com/QFu2Rw6G.

for the thirld time I tried to change the following

1) In /meta-fsl-arm/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
QT_CONFIG_FLAGS_append_mx6 =3D "${@base_contains('DISTRO_FEATURES', 'x11',
*'-xcb'*,  ' -eglfs', d)}"
 I replaced -no-eglfs with  -xcb


2)In  /bin/fsl-community-bsp/sources/meta-qt5/recipes-qt/qt5/qtbase.in
QT_CONFIG_FLAGS +=3D " \
    -reduce-relocations \
    -shared \
  *  -silent \*
    -no-pch \
    -no-rpath \
    -pkg-config \
    ${EXTRA_OECONF} \
"
-silent was deleted.

With this setup and without DISTRO_FEATURE_remove I gave i bitbake and was
encountered with the errors as posted http://pastebin.com/V2fMF785



Please suggest to resolve this issue.





--=20
Thanks
Nilesh Kokane

--=20
=E2=80=9CThe contents of this e-mail message and any attachments are confid=
ential=20
and are intended solely for addressee. The information may also be legally=
=20
privileged. This transmission is sent in trust, for the sole purpose of=20
delivery to the intended recipient. If you have received this transmission=
=20
in error, any use, reproduction or dissemination of this transmission is=20
strictly prohibited. If you are not the intended recipient, please=20
immediately notify the sender by reply e-mail or phone and delete this=20
message and its attachments, if any.=E2=80=9D

--047d7b4508a8c7643d04ffdbc43a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div dir=3D"ltr"><span style=3D"color:rgb(7,55,99)">He=
llo,<br><br></span><span style=3D"color:rgb(7,55,99)">If anyone can help me=
 to sought out the this issue to built up Qt on wandboard-Solo with yocto.<=
br>
<br><br><br><br></span><span style=3D"color:rgb(7,55,99)">Based on the url =
 <a href=3D"http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on=
_Wandboard" target=3D"_blank">http://wiki.wandboard.org/index.php/Building_=
Qt5_using_yocto_on_Wandboard</a> I altered the local.conf and the bblayers.=
confand gave a bitbake core-image-minimal with DISTRO_FEATURE_remove<br>

</span><span style=3D"color:rgb(7,55,99)">I got the errors as posted  <a hr=
ef=3D"http://pastebin.com/hsMhT9f8" target=3D"_blank">http://pastebin.com/h=
sMhT9f8</a>.<br><br><br></span><span style=3D"color:rgb(7,55,99)">Then to c=
ircumvent the errors I removed the DISTRO_FEATURE_remove from the local.con=
f<br>

and gave a bitbake.with this i got the errors as posted <a href=3D"http://p=
astebin.com/QFu2Rw6G" target=3D"_blank">http://pastebin.com/QFu2Rw6G</a>.<b=
r><br></span><div><span style=3D"color:rgb(7,55,99)">for the thirld time I =
tried to change the following<br>

</span></div><div><span style=3D"color:rgb(7,55,99)"><br></span><div><span =
style=3D"color:rgb(7,55,99)">1) In /meta-fsl-arm/qt5-layer/</span><span sty=
le=3D"color:rgb(7,55,99)">recipes-qt/qt5/qtbase_%.</span><span style=3D"col=
or:rgb(7,55,99)">bbappend<br>

</span></div><div><span style=3D"color:rgb(7,55,99)">QT_CONFIG_FLAGS_append=
_mx6 =3D &quot;${@base_contains(&#39;DISTRO_</span><span style=3D"color:rgb=
(7,55,99)">FEATURES&#39;, &#39;x11&#39;,<b>&#39;-xcb&#39;</b>,=C2=A0 &#39; =
-eglfs&#39;, d)}&quot;<br>

</span>







</div><span style=3D"color:rgb(7,55,99)">I replaced -no-eglfs with=C2=A0 -x=
cb <br><br></span></div><span style=3D"color:rgb(7,55,99)"><br></span><span=
 style=3D"color:rgb(7,55,99)">2)In=C2=A0 /bin/fsl-community-bsp/</span><spa=
n style=3D"color:rgb(7,55,99)">sources/meta-qt5/recipes-qt/</span><span sty=
le=3D"color:rgb(7,55,99)">qt5/<a href=3D"http://qtbase.in" target=3D"_blank=
">qtbase.in</a> <br>








QT_CONFIG_FLAGS +=3D &quot; \<br>
=C2=A0=C2=A0=C2=A0 -reduce-relocations \<br>=C2=A0=C2=A0=C2=A0 -shared \<br=
>=C2=A0=C2=A0<b>=C2=A0 -silent \</b><br>=C2=A0=C2=A0=C2=A0 -no-pch \<br>=C2=
=A0=C2=A0=C2=A0 -no-rpath \<br>=C2=A0=C2=A0=C2=A0 -pkg-config \<br>=C2=A0=
=C2=A0=C2=A0 ${EXTRA_OECONF} \<br>&quot;<br></span><div><span style=3D"colo=
r:rgb(7,55,99)">-silent was deleted.<br>

<br></span></div><div><span style=3D"color:rgb(7,55,99)">With this setup an=
d without DISTRO_FEATURE_remove I gave i bitbake and was encountered with t=
he errors as posted <a href=3D"http://pastebin.com/V2fMF785" target=3D"_bla=
nk">http://pastebin.com/V2fMF785</a><br>

<br><br><br></span></div><div><span style=3D"color:rgb(7,55,99)">Please sug=
gest to resolve this issue.<div class=3D""><div id=3D":1bo" class=3D"" tabi=
ndex=3D"0"><img class=3D"" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/=
images/cleardot.gif"></div>
</div><span class=3D""><font color=3D"#888888"><br></font></span></span></d=
iv><span class=3D""><font color=3D"#888888"><div><br><br><br clear=3D"all">=
<span style=3D"color:rgb(7,55,99)"><br>-- <br></span><div dir=3D"ltr"><span=
 style=3D"color:rgb(7,55,99)">Thanks<br>

</span></div><div><span style=3D"color:rgb(7,55,99)">Nilesh Kokane</span></=
div></div></font></span></div>
</div>

<br>
<span style=3D"color:rgb(31,73,125);font-family:Calibri,sans-serif;font-siz=
e:15px;font-style:normal;font-variant:normal;font-weight:normal;letter-spac=
ing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);display:inline!important;float:none">=E2=80=9CThe contents of thi=
s e-mail message and any attachments are confidential and are intended sole=
ly for addressee. The information may also be legally privileged. This tran=
smission is sent in trust, for the sole purpose of delivery to the intended=
 recipient. If you have received this transmission in error, any use, repro=
duction or dissemination of this transmission is strictly prohibited. If yo=
u are not the intended recipient, please immediately notify the sender by r=
eply e-mail or phone and delete this message and its attachments, if any.=
=E2=80=9D</span>

--047d7b4508a8c7643d04ffdbc43a--
