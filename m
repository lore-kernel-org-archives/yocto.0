Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4DF7E0087D; Wed, 19 Nov 2014 09:10:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39D00E0071C
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 09:10:46 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sAJHAhgT022422
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 03:40:43 +1030
Message-Id: <70cd34b97d473ac6ce6f537bc609a2e8c5a1f971@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Thu, 20 Nov 2014 03:40:43 +1030
MIME-Version: 1.0
Subject: lighttpd webDav does not allow files to save
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Nov 2014 17:10:54 -0000
Content-Type: multipart/alternative;
	boundary="=_d7ddd93155d0d2930f9c89b280d54811"

--=_d7ddd93155d0d2930f9c89b280d54811
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am running Yocto 1.6.1 with standard atmel build or=0Aatmel-qt5-demo-i=
mage=0AI have added a a lighttpd_1.4.33.bbappend recipe in the directory=
=0A~/poky/meta-atmel-lsp/recipes-extended/lighttpd with the following=0A=
contents:___________________FILESEXTRAPATHS_prepend :=3D=0A"${THISDIR}/$=
{PN}:"=0ARDEPENDS_${PN} +=3D " lighttpd-module-webdav"=0ASRC_URI +=3D "=
 file://lighttpd.conf   file://index.htm =0Afile://config.jsn "=0Ado_ins=
tall_append() { rm -f ${D}/www/pages/index.html install -m 0777=0A-d ${D=
}/www/pages/dav install -m 0555 $WORKDIR}/index.htm=0A${D}/www/pages/ in=
stall -m 0777 ${WORKDIR}/config.jsn=0A${D}/www/pages/}__________________=
_________=0A=0AIn the subdirectory "lighttpd" I have modified the standa=
rd=0Alighttpd.conf file by uncommenting "mod_webdav" and I have added:=
=0A$HTTP["url"] =3D~ "^/dav($|/)" { webdav.activate =3D "enable"=0Awebda=
v.is-readonly =3D "disable"}=0AI have also added my own index.htm and co=
nfig.htm file=0AWhen I load and run the new image, my modified index.htm=
l pages gets=0Aserved up ok. Also, I can map the /www/pages/dav/ to a Wi=
ndows dirive=0Aand view an open the files it contains.However, the syste=
m does not=0Aallow me to store anything.=0A1. If I use the Windows Mappe=
d drive to store a text file into the=0Adav directory, it gives me an er=
ror.2. If I use my index.html page to=0Aupdate the config.jsn file via a=
 'PUT', it does not save the new file.=0AHere is some extra informationr=
oot@sama5d3xek:/www/pages# ls=0A-l-rwxrwxrwx 1 root root =C2=A0 =C2=A083=
 Nov 19 08:51 config.jsndrwxrwxrwx 2=0Aroot root =C2=A0 160 Nov 19 10:02=
 dav-r-xr-xr-x 1 root root 47641 Nov 19=0A08:51 index.htm=0Aroot@sama5d3=
xek:/www# ls -ldrwxrwxrwx 8 root root 904 Nov 19 09:55=0Apages=0ACan any=
one advise why the lighttpd is serving data but wont allow=0Aeither the=
 web client or the dav client to save/update files in theri=0Aappropriat=
e folders?=0AThanksLachlan=0A---- Message sent via Adam Internet WebMail=
 - http://www.adam.com.au/

--=_d7ddd93155d0d2930f9c89b280d54811
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I am running Yocto 1.6.1 with standard atmel build or atmel-=
qt5-demo-image<div><br /></div><div>I have added a a lighttpd_1.4.33.bba=
ppend recipe in the directory ~/poky/meta-atmel-lsp/recipes-extended/lig=
httpd with the following contents:</div><div>___________________</div><d=
iv>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"</div><div><br /></di=
v><div>RDEPENDS_${PN} +=3D " lighttpd-module-webdav"</div><div><br /></d=
iv><div>SRC_URI +=3D " file://lighttpd.conf \<span class=3D"Apple-tab-sp=
an">=09</span></div><div><span class=3D"Apple-tab-span">=09=09=09</span>=
file://index.htm \</div><div><span class=3D"Apple-tab-span">=09=09=09</s=
pan>file://config.jsn "</div><div><br /></div><div>do_install_append() {=
</div><div><span class=3D"Apple-tab-span">=09</span>rm -f ${D}/www/pages=
/index.html</div><div><span class=3D"Apple-tab-span">=09</span>install -=
m 0777 -d ${D}/www/pages/dav</div><div><span class=3D"Apple-tab-span">=
=09</span>install -m 0555 $WORKDIR}/index.htm<span class=3D"Apple-tab-sp=
an">=09</span>${D}/www/pages/</div><div><span class=3D"Apple-tab-span">=
=09</span>install -m 0777 ${WORKDIR}/config.jsn<span class=3D"Apple-tab-=
span">=09</span>${D}/www/pages/</div><div>}</div><div>__________________=
_________<br /><br /></div><div>In the subdirectory "lighttpd" I have mo=
dified the standard lighttpd.conf file by uncommenting "mod_webdav" and=
 I have added:</div><div><br /></div><div>$HTTP["url"] =3D~ "^/dav($|/)"=
 {</div><div><span class=3D"Apple-tab-span">=09</span>webdav.activate=
 =3D "enable"</div><div><span class=3D"Apple-tab-span">=09</span>webdav.=
is-readonly =3D "disable"</div><div>}</div><div><br /></div><div>I have=
 also added my own index.htm and config.htm file</div><div><br /></div><=
div>When I load and run the new image, my modified index.html pages gets=
 served up ok. Also, I can map the /www/pages/dav/ to a Windows dirive a=
nd view an open the files it contains.</div><div>However, the system doe=
s not allow me to store anything.</div><div><br /></div><div>1. If I use=
 the Windows Mapped drive to store a text file into the dav directory, i=
t gives me an error.</div><div>2. If I use my index.html page to update=
 the config.jsn file via a 'PUT', it does not save the new file.</div><d=
iv><br /></div><div>Here is some extra information</div><div>root@sama5d=
3xek:/www/pages# ls -l</div><div><div>-rwxrwxrwx 1 root root =C2=A0 =C2=
=A083 Nov 19 08:51 config.jsn</div><div>drwxrwxrwx 2 root root =C2=A0 16=
0 Nov 19 10:02 dav</div><div>-r-xr-xr-x 1 root root 47641 Nov 19 08:51 i=
ndex.htm</div></div><div><br /></div><div><div>root@sama5d3xek:/www# ls=
 -l</div><div>drwxrwxrwx 8 root root 904 Nov 19 09:55 pages</div></div><=
div><br /></div><div>Can anyone advise why the lighttpd is serving data=
 but wont allow either the web client or the dav client to save/update f=
iles in theri appropriate folders?</div><div><br /></div><div>Thanks</di=
v><div>Lachlan</div><div><br /></div>---- Message sent via Adam Internet=
 WebMail  - http://www.adam.com.au/</body></html>

--=_d7ddd93155d0d2930f9c89b280d54811--
