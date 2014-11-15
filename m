Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 425DDE0085D; Sat, 15 Nov 2014 11:53:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.242 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm20-vm5.bullet.mail.ne1.yahoo.com
	(nm20-vm5.bullet.mail.ne1.yahoo.com [98.138.91.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 929FAE0048B
	for <yocto@yoctoproject.org>; Sat, 15 Nov 2014 11:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1416081195; bh=uM0wUGCS8YPUzmxKlAJbdwpEeZ/RLSzLPtPS4xOwYzU=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=E6JXmt2ikMvLlnxENUJxnwJSbl/ZyfZ71WDYG3gvwJT0T/OcsvdHysrYD+K2gjtAOU94vmDT9bZaicOmdeznYhx6BTAFqi/OVj6PIi4pFQ+h1b+FwzeCekwLCqbTa8C/zvE0XNqmfLniEdgaZEs/SkCJCIJaOXwvdyHcyD+r9nJlrtNMTO/F3+KX5iOrxwbtrEKxIs8WFRnno4gWAlxs3pJ+fSY+ruNkV5AGiHHRVUgyHb1yToPNp3uCyjeDX65nZ0uf0kmVub/O/w7Dp0ogDx7U/SKZA/ZR8b4w0lBmmln668a932JuxFotTNQUGryAECdRHrJjJQjFlkIS4ZDD6g==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=uT/gNZPuua64nfG7etQSpzIDzy3Uca6IMa7zTeNvk5ITzBqX2mvkYXsrilJ/uL8XQV6N1IuGZwmCSRuuZVybgA86E1rmtq5sknjd5LfRYq18ooU1u8vDSKFVl1OUZxbfpSq2oYQaRVJOrpY/8DqNTqAdmIYVDCFwjLnrlo7wjBHfRgpJLf+JO6WZHxgf9JGVBAkz3qOxj3JMUBNAy6S0w7Mbuche77gx6+GlBPyihKtX4+DSCpA9xyoVCitHIg7Tj2VCbfkGYkaVXz4ofN3joerF8nBohyRUrGrNeOXKTTxZ9/Ibr6usvAolJ+dhHPf7kLiKmSBrZZluSxZLo5ZZiQ==;
Received: from [98.138.100.116] by nm20.bullet.mail.ne1.yahoo.com with NNFMP;
	15 Nov 2014 19:53:15 -0000
Received: from [98.138.87.7] by tm107.bullet.mail.ne1.yahoo.com with NNFMP;
	15 Nov 2014 19:53:15 -0000
Received: from [127.0.0.1] by omp1007.mail.ne1.yahoo.com with NNFMP;
	15 Nov 2014 19:53:15 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 722440.62120.bm@omp1007.mail.ne1.yahoo.com
X-YMail-OSG: 0Qga34gVM1l90PjwXD2FJ73Xp4gIowNuhZFQNPIix1.TLKyV3zyiACqlrW36Sv2
	93ki86foRNb8xXzqa9.goPKvPqoYwaWlTbF.jM662KRu2XR4_rPtv8.iZBNht.cMbmgIoUVz7d3t
	9Wv7HzLTzPGcVRnHrziAcDFYg8l7iToj5YgiROadu7tNcK8veJz.CFQmq561AQpMAYfHAxF7IJxD
	yS1.pc8_mlE.Dw8yxSQZYP0QV00YhKAFTmT5USlpNcpq8Tp1fOg7F3LtxYLGQXziTIfROmIf.nxI
	O4U9jKIRT3S3lgebgdzsaR07yifi7HERZXH_PMT5d_ZKG_KkH8tK2K2UN1EEpuf5GwMBsh4Pt5f2
	wup8lf71x8HhR3oVh0heyd7EdAv1P7fYm5qto9OlXj1caZkIX6xiHH9Ye2mpOhLpXY_7SKfTgpdh
	yk5JMs3nN2iCVrrr9SMNEdrmjIXsN9n_BCHlYYno7CphITlGoKcCh6CWws6ZUkZBOiIYuvdm.eS.
	1.NIOLhq2kgWOzcPbquGbfb_4UQVk1hdU_2sYhJetUuRmZvSCjSBAHf0BSUI20Am3ypw-
Received: by 98.138.105.251; Sat, 15 Nov 2014 19:53:15 +0000 
Date: Sat, 15 Nov 2014 19:53:14 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>, 
	Anders Darander <anders@chargestorm.se>, 
	Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <190755735.675679.1416081194869.JavaMail.yahoo@jws10032.mail.ne1.yahoo.com>
In-Reply-To: <b96181e954d8d48d268f1d0468ad24badd3ab1be@webmail.adam.com.au>
References: <b96181e954d8d48d268f1d0468ad24badd3ab1be@webmail.adam.com.au>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe fails to load local files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Nov 2014 19:53:19 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_675678_241567674.1416081194863"

------=_Part_675678_241567674.1416081194863
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is "zd1211" available in packages and package-split/zd1211-firmware*?=20

     On Saturday, November 15, 2014 9:09 PM, "peterengcomau001@adam.com.au"=
 <peterengcomau001@adam.com.au> wrote:
  =20

 Thanks, I have done the changes and no longer get the error. However, the =
firmware files still do not get generated when I build the image.
The current recipe I am using is:
______________________________________
DESCRIPTION =3D "Belkin Wifi Firmware"
LICENSE =3D "GPL"
PR =3D "r0"

FILESPATH =3D "${THISDIR}/${PN}"
FILES_${PN} +=3D "/lib/firmware/zd1211"

SRC_URI =3D "\
=C2=A0 file://zd1211_ub \
=C2=A0 file://zd1211_uph \
=C2=A0 file://zd1211_uphm \
=C2=A0 file://zd1211_uphr \
=C2=A0 file://zd1211_ur \
"

S =3D "${WORKDIR}"

do_install() {
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/firmware/zd1211
=C2=A0=C2=A0=C2=A0 install -m 0555 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=C2=A0 ${=
D}/lib/firmware/zd1211/
}
________________________________________

No errors result when building the image. However, there is no directory or=
 files in:
~/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/atmel-qt5-demo-im=
age/1.0-r0/rootfs/lib/firmware

The recipes are in file:
~/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware
There are other recipes in ~/poky/meta-atmel-lsp/recipes-lsp that work, so =
bitbake can see these ok (but these are bbappend, not bb files)

 In ideas why the=20


----- Original Message -----
From: "Anders Darander" <anders@chargestorm.se>
To:"Bryan Evenson" <bevenson@melinkcorp.com>
Cc:"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>, "yocto@yo=
ctoproject.org" <yocto@yoctoproject.org>
Sent:Fri, 14 Nov 2014 15:44:24 +0100
Subject:Re: [yocto] recipe fails to load local files


Just a few nitpick's...

* Bryan Evenson <bevenson@melinkcorp.com> [141114 15:21]:

> > LICENSE =3D "CLOSED"
> > FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-
> > firmware/zd1211-firmware"

> FILES doesn't specify where to find the files on the build machine, it
> specifies where the installed files exist on the target filesystem.
> This is what the error you are seeing is telling you; the files were
> installed in the do_install step but they did not get placed in the
> final package. In your case I believe:

> FILES_${PN} +=3D "${libdir}/zd1211_*"

FILES_${PN} +=3D "/lib/firmware/zd1211"

> would work.

> > SRC_URI =3D "\
> > file://zd1211_ub \
> > file://zd1211_uph \
> > file://zd1211_uphm \
> > file://zd1211_uphr \
> > file://zd1211_ur \
> > "

> > do_install() {
> > install -d ${D}/lib/firmware/zd1211
> > install -m 0555 ${WORKDIR}/zd1211_* ${D}/lib/firmware/zd1211/
> > }

> As mentioned in the FILES variable description in the Yocto manual,
> you should use the standard path variables whenever possible. The
> list of available path variables are near the top of
> meta/conf/bitbake.conf. That means in your case the following would
> be better:

Well, in general that's true. Though, in this specific case, it should
actually be a hardcoded /lib/firmware. ${libdir} could be lib64 or
something else, especially in a multilib-build. However, the firmware
files are always searched for in /lib/firmware.

Cheers,
Anders

> do_install() {
> install -d ${D}/${libdir}/firmware/zd1211
> install -m 0555 ${WORKDIR}/zd1211_* ${D}/${libdir}/firmware/zd1211/

--=20
Anders Darander
ChargeStorm AB / eStorm AB

---- Message sent via Adam Internet WebMail - http://www.adam.com.au/
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_675678_241567674.1416081194863
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1416036584771_39295" dir=3D"ltr"><spa=
n style=3D"" class=3D"">Is </span>"zd1211" available in packages and packag=
e-split/zd1211-firmware*?</div> <div class=3D"qtdSeparateBR"><br><br></div>=
<div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-f=
amily: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans=
-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvet=
ica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <=
div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Saturday, November 15,=
 2014 9:09 PM, "peterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com=
.au&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_container">=
<div id=3D"yiv6315069973"><div>Thanks, I have done the changes and no longe=
r get the error. However, the firmware files still do not get generated whe=
n I build the image.<br clear=3D"none">The current recipe I am using is:<br=
 clear=3D"none">______________________________________<br clear=3D"none">DE=
SCRIPTION =3D "Belkin Wifi Firmware"<br clear=3D"none">LICENSE =3D "GPL"<br=
 clear=3D"none">PR =3D "r0"<br clear=3D"none"><br clear=3D"none">FILESPATH =
=3D "${THISDIR}/${PN}"<br clear=3D"none">FILES_${PN} +=3D "/lib/firmware/zd=
1211"<br clear=3D"none"><br clear=3D"none">SRC_URI =3D "\<br clear=3D"none"=
>&nbsp; file://zd1211_ub \<br clear=3D"none">&nbsp; file://zd1211_uph \<br =
clear=3D"none">&nbsp; file://zd1211_uphm \<br clear=3D"none">&nbsp; file://=
zd1211_uphr \<br clear=3D"none">&nbsp; file://zd1211_ur \<br clear=3D"none"=
>"<br clear=3D"none"><br clear=3D"none">S =3D "${WORKDIR}"<br clear=3D"none=
"><br clear=3D"none">do_install() {<br clear=3D"none">&nbsp;&nbsp;&nbsp; &n=
bsp;&nbsp;&nbsp; install -d ${D}/lib/firmware/zd1211<br clear=3D"none">&nbs=
p;&nbsp;&nbsp; install -m 0555 ${WORKDIR}/zd1211_*&nbsp;&nbsp;&nbsp; ${D}/l=
ib/firmware/zd1211/<br clear=3D"none">}<br clear=3D"none">_________________=
_______________________<br clear=3D"none"><br clear=3D"none">No errors resu=
lt when building the image. However, there is no directory or files in:<br =
clear=3D"none">~/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/at=
mel-qt5-demo-image/1.0-r0/rootfs/lib/firmware<br clear=3D"none"><br clear=
=3D"none">The recipes are in file:<br clear=3D"none">~/poky/meta-atmel-lsp/=
recipes-lsp/zd1211-firmware<br clear=3D"none">There are other recipes in ~/=
poky/meta-atmel-lsp/recipes-lsp that work, so bitbake can see these ok (but=
 these are bbappend, not bb files)<br clear=3D"none"><br clear=3D"none">
=09=09=09=09In ideas why the <br clear=3D"none"><blockquote><br clear=3D"no=
ne">----- Original Message -----<br clear=3D"none"><div style=3D"width:100%=
;background:rgb(228,228,228);"><div style=3D"font-weight:bold;">From:</div>=
 "Anders Darander" &lt;anders@chargestorm.se&gt;</div><br clear=3D"none"><d=
iv style=3D"font-weight:bold;">To:</div>"Bryan Evenson" &lt;bevenson@melink=
corp.com&gt;<br clear=3D"none"><div style=3D"font-weight:bold;">Cc:</div>"p=
eterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com.au&gt;, "yocto@y=
octoproject.org" &lt;yocto@yoctoproject.org&gt;<br clear=3D"none"><div styl=
e=3D"font-weight:bold;">Sent:</div>Fri, 14 Nov 2014 15:44:24 +0100<br clear=
=3D"none"><div class=3D"yiv6315069973yqt6716113864" id=3D"yiv6315069973yqtf=
d47222"><div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] recipe f=
ails to load local files<br clear=3D"none"><br clear=3D"none"><br clear=3D"=
none">
Just a few nitpick's...<br clear=3D"none"><br clear=3D"none">
* Bryan Evenson &lt;bevenson@melinkcorp.com&gt; [141114 15:21]:<br clear=3D=
"none"><br clear=3D"none">
&gt; &gt; LICENSE =3D "CLOSED"<br clear=3D"none">
&gt; &gt; FILES_${PN} +=3D "~/poky/meta-atmel-lsp/recipes-lsp/zd1211-<br cl=
ear=3D"none">
&gt; &gt; firmware/zd1211-firmware"<br clear=3D"none"><br clear=3D"none">
&gt; FILES doesn't specify where to find the files on the build machine, it=
<br clear=3D"none">
&gt; specifies where the installed files exist on the target filesystem.<br=
 clear=3D"none">
&gt; This is what the error you are seeing is telling you; the files were<b=
r clear=3D"none">
&gt; installed in the do_install step but they did not get placed in the<br=
 clear=3D"none">
&gt; final package.  In your case I believe:<br clear=3D"none"><br clear=3D=
"none">
&gt; FILES_${PN} +=3D "${libdir}/zd1211_*"<br clear=3D"none"><br clear=3D"n=
one">
FILES_${PN} +=3D "/lib/firmware/zd1211"<br clear=3D"none"><br clear=3D"none=
">
&gt; would work.<br clear=3D"none"><br clear=3D"none">
&gt; &gt; SRC_URI =3D "\<br clear=3D"none">
&gt; &gt;   file://zd1211_ub \<br clear=3D"none">
&gt; &gt;   file://zd1211_uph \<br clear=3D"none">
&gt; &gt;   file://zd1211_uphm \<br clear=3D"none">
&gt; &gt;   file://zd1211_uphr \<br clear=3D"none">
&gt; &gt;   file://zd1211_ur \<br clear=3D"none">
&gt; &gt; "<br clear=3D"none"><br clear=3D"none">
&gt; &gt; do_install() {<br clear=3D"none">
&gt; &gt;         install -d ${D}/lib/firmware/zd1211<br clear=3D"none">
&gt; &gt;     install -m 0555 ${WORKDIR}/zd1211_*    ${D}/lib/firmware/zd12=
11/<br clear=3D"none">
&gt; &gt; }<br clear=3D"none"><br clear=3D"none">
&gt; As mentioned in the FILES variable description in the Yocto manual,<br=
 clear=3D"none">
&gt; you should use the standard path variables whenever possible.  The<br =
clear=3D"none">
&gt; list of available path variables are near the top of<br clear=3D"none"=
>
&gt; meta/conf/bitbake.conf.  That means in your case the following would<b=
r clear=3D"none">
&gt; be better:<br clear=3D"none"><br clear=3D"none">
Well, in general that's true. Though, in this specific case, it should<br c=
lear=3D"none">
actually be a hardcoded /lib/firmware. ${libdir} could be lib64 or<br clear=
=3D"none">
something else, especially in a multilib-build. However, the firmware<br cl=
ear=3D"none">
files are always searched for in /lib/firmware.<br clear=3D"none"><br clear=
=3D"none">
Cheers,<br clear=3D"none">
Anders<br clear=3D"none"><br clear=3D"none">
&gt;  do_install() {<br clear=3D"none">
&gt;          install -d ${D}/${libdir}/firmware/zd1211<br clear=3D"none">
&gt;      install -m 0555 ${WORKDIR}/zd1211_*    ${D}/${libdir}/firmware/zd=
1211/<br clear=3D"none"><br clear=3D"none">
-- <br clear=3D"none">
Anders Darander<br clear=3D"none">
ChargeStorm AB / eStorm AB</div><br clear=3D"none"></blockquote>---- Messag=
e sent via Adam Internet WebMail  - http://www.adam.com.au/</div></div><br>=
<div class=3D"yqt6716113864" id=3D"yqtfd74023">-- <br clear=3D"none">______=
_________________________________________<br clear=3D"none">yocto mailing l=
ist<br clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoprojec=
t.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
 clear=3D"none"><a shape=3D"rect" href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoc=
to</a><br clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div>=
</body></html>

------=_Part_675678_241567674.1416081194863--
