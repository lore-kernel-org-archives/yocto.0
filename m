Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52643E00E73; Thu, 13 Oct 2016 23:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48A5E00CCA
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 23:47:14 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp3-g21.free.fr (Postfix) with ESMTP id A233913F86A;
	Fri, 14 Oct 2016 08:47:13 +0200 (CEST)
Date: Fri, 14 Oct 2016 08:47:13 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <540845058.129423194.1476427633581.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <DB5PR01MB1880E760BA38D35D70B26DFB92DC0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: Merging a custom SDK with meta-toolchain-qt5
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
X-List-Received-Date: Fri, 14 Oct 2016 06:47:17 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_129423193_361215842.1476427633580"

------=_Part_129423193_361215842.1476427633580
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Karim,=20

I understand your problem but unfortunately I still have a limited understa=
nding of the intrication of the whole metadata system=E2=80=A6=20

The good news is that the meta-toolchain-qt5 recipe is quite empty. So I th=
ink your best option is to patch the populate_sdk task to include what is a=
dded by the qt5 layer. Once you have something working, you can then think =
on how to make it more permanent.=20

grep & find will be your best friends --- at least, they are for me ;-)=20

M.=20

----- Mail original -----

> De: "Karim ATIKI" <karim_atiki@hotmail.com>
> =C3=80: "Michel D'HOOGE" <michel.dhooge@free.fr>
> Envoy=C3=A9: Jeudi 13 Octobre 2016 17:46:59
> Objet: RE: [yocto] Merging a custom SDK with meta-toolchain-qt5

> Hi Michel,

> Indeed, with my first image, I've generated the sdk as follow:

> $ bitbake -c populate_sdk my-image-name

> In the "my-image-name.bb" I've added features :

> IMAGE_INSTALL_append =3D " foo gtk+3 libstdc++ "
> SDKIMAGE_FEATURES_append =3D " libstdc++-dev "

> So the resulting sdk contained all the necessary headers I needed,
> including libgtk+.so and its respective header files.

> I've created a new image, my-qtimage.bb" based on "my-image-name.bb".
> I've included all Qt5 stuff with IMAGE_INSTALL_append =3D " qtbase qt3d
> ... "
> The image is generated fine. Good.

> Then, to generate the SDK instead of doing that:
> $ bitbake -c populate_sdk my-qtimage

> I've prefered using the dedicated recipe of meta-qt5:
> $ bitbake meta-toolchainqt5

> But of course it did not include my features above.
> I just wonder what would be the best solution to achieve it correctly
> ?

> Writing a meta-toolchainqt5.bbapend ?

> Karim

> De : Michel D'HOOGE <michel.dhooge@free.fr>
> Envoy=C3=A9 : jeudi 13 octobre 2016 17:11
> =C3=80 : yocto
> Cc : Karim ATIKI
> Objet : Re: [yocto] Merging a custom SDK with meta-toolchain-qt5

> Hi,

> > Is there a way to customize the meta-toolchain-qt5 so that it
> > installs the features declared in the SDKIMAGE_FEATURES above ?

> How did you generate the Qt5 toolchain? Because according to the
> reference manual:
> The SDKIMAGE_FEATURES is e quivalent to IMAGE_FEATURES. However, this
> variable applies to the SDK generated from an image using the
> following command:
> $ bitbake -c populate_sdk imagename

> There is a populate_sdk_qt5 class in meta-qt5. But I don't know how
> to merge this with the previous command :-/

> Michel

------=_Part_129423193_361215842.1476427633580
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style type=3D'text/css'>p { margin: 0; }</style></head><body><=
div style=3D'font-family: times new roman,new york,times,serif; font-size: =
12pt; color: #000000'>Hi Karim,<div><br></div><div>I understand your proble=
m but unfortunately I still have a limited understanding of the intrication=
 of the whole metadata system=E2=80=A6</div><div><br></div><div>The good ne=
ws is that the <span style=3D"font-size: 12pt;">meta-toolchain-qt5 recipe i=
s quite empty. So I think your best option is to patch the populate_sdk tas=
k to include what is added by the qt5 layer. Once you have something workin=
g, you can then think on how to make it more permanent.</span></div><div><b=
r></div><div>grep &amp; find will be your best friends --- at least, they a=
re for me ;-)<br><br>M.</div><div><br><hr id=3D"zwchr"><blockquote style=3D=
"border-left:2px solid rgb(16, 16, 255);margin-left:5px;padding-left:5px;co=
lor:#000;font-weight:normal;font-style:normal;text-decoration:none;font-fam=
ily:Helvetica,Arial,sans-serif;font-size:12pt;"><b>De: </b>"Karim ATIKI" &l=
t;karim_atiki@hotmail.com&gt;<br><b>=C3=80: </b>"Michel D'HOOGE" &lt;michel=
.dhooge@free.fr&gt;<br><b>Envoy=C3=A9: </b>Jeudi 13 Octobre 2016 17:46:59<b=
r><b>Objet: </b>RE: [yocto] &nbsp;Merging a custom SDK with meta-toolchain-=
qt5<br><br>


<style style=3D"display:none;"><!-- P {margin-top:0;margin-bottom:0;} --></=
style>


<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Michel,</p>
<p><br>
</p>
<p>Indeed, with my first image, I've generated the sdk as follow:</p>
<p><br>
</p>
<p>$ bitbake -c populate_sdk my-image-name</p>
<p><br>
</p>
<p>In the "my-image-name.bb" I've added features :</p>
<p><br>
</p>
<p>IMAGE_INSTALL_append =3D " foo&nbsp;gtk+3 libstdc++ "</p>
<p>SDKIMAGE_FEATURES_append =3D "&nbsp;libstdc++-dev "</p>
<p><br>
</p>
<p>So the resulting sdk contained all the necessary headers I needed, inclu=
ding libgtk+.so and its respective header files.</p>
<p><br>
</p>
<p>I've created a new image, my-qtimage.bb"&nbsp;&nbsp;based on "my-image-n=
ame.bb".</p>
<p>I've included all Qt5 stuff with IMAGE_INSTALL_append =3D " qtbase qt3d =
... "</p>
<p>The image is generated fine. Good.</p>
<p><br>
</p>
<p><br>
</p>
<p>Then, to generate the SDK&nbsp;instead of doing that:</p>
<p>$ bitbake -c populate_sdk my-qtimage&nbsp;</p>
<p><br>
</p>
<p>I've prefered using the dedicated recipe of meta-qt5:</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">$ bitbake meta-toolchainqt5</span><br>
</p>
<div><br>
</div>
But of course it did not include my features above.
<div>I just wonder what would be the best solution to achieve it correctly =
?</div>
<div><br>
</div>
<div>Writing a meta-toolchainqt5.bbapend ?</div>
<div><br>
</div>
<div>Karim</div>
<div><br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Michel D'HOOGE &lt;m=
ichel.dhooge@free.fr&gt;<br>
<b>Envoy=C3=A9 :</b> jeudi 13 octobre 2016 17:11<br>
<b>=C3=80 :</b> yocto<br>
<b>Cc&nbsp;:</b> Karim ATIKI<br>
<b>Objet :</b> Re: [yocto] Merging a custom SDK with meta-toolchain-qt5</fo=
nt>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi, <br>
<br>
&gt; Is there a way to customize the meta-toolchain-qt5 so that it<br>
&gt; installs the features declared in the SDKIMAGE_FEATURES above ?<br>
<br>
How did you generate the Qt5 toolchain? Because according to the reference =
manual:
<br>
The SDKIMAGE_FEATURES is e quivalent to IMAGE_FEATURES. However, this varia=
ble applies to the SDK generated from an image using the following command:
<br>
$ bitbake -c populate_sdk imagename<br>
<br>
There is a populate_sdk_qt5 class in meta-qt5. But I don't know how to merg=
e this with the previous command :-/<br>
<br>
Michel<br>
</div>
</span></font></div>
</div>
</div>


</blockquote><br></div></div></body></html>

------=_Part_129423193_361215842.1476427633580--
