Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 790E4E0085F; Mon, 10 Nov 2014 12:06:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 3082 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Nov 2014 12:06:07 PST
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C205E0072A
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 12:06:07 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id sAAJEgPc016928
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 05:44:42 +1030
Message-Id: <ca96b16ed0e3c0413d554c852210f8e0eb4ffc55@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Tue, 11 Nov 2014 05:44:42 +1030
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 Nov 2014 08:15:21 -0800
Subject: bbappend recipe causes errors with only two lines of code
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
X-List-Received-Date: Mon, 10 Nov 2014 20:06:20 -0000
Content-Type: multipart/alternative;
	boundary="=_adce24750b4dfaa96d93b8d9f7d36f44"

--=_adce24750b4dfaa96d93b8d9f7d36f44
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am using Yocto 1.6.1 and run a build that works fine.=0AI add a new la=
yer and recipe=0A~/poky/meta-atmel-lsp/recipes-lsp/lighttpd with a recip=
e=0Alighttpd_1.4.33.bbappend and this has only two lines:=0AFILESEXTRAPA=
THS_prepend :=3D "#{THISDIR}/files:"SRC_URI =3D=0A"file://lighttpd.conf"=
=0AThis results in a failure:=0A/home/lachlan/poky/meta/recipes-extended=
/lighttpd/lightpd_1.4.33.bb,=0Ado_installNot that the lighttpd.conf file=
 is in the 'files' directory=0Aas is identical to the original=C2=A0=0AI=
f I remove the line SRC_URI=3D ....... , the build works OK=0AIf I now c=
hange absolutely nothing other than un-comment one line=0A(the mod_WebDA=
V module) in the local lighttpd.conf file:This results=0Ain a failure:=
=0A/home/lachlan/poky/meta/recipes-extended/lighttpd/lightpd_1.4.33.bb,=
=0Ado_unpack=C2=A0=0AIf I go back to the original lighttpd.conf file in=
 my local 'files'=0Adirectory then do the following ->=0AIf I change the=
 second line to SCR_URI +=3D "file://lighttpd.conf"I get=0Athe same do_u=
npack error=0AIf i change the second line to SRC_URI_append =3D=0A"file:=
//lighttpd.conf" it also get the do_unpack error.=0AIf I merge the two l=
ines into one so ther is now only the one line=0ASRC_URI_append =3D "fil=
e://${THISDIR}/files/lighttpd.conf"I get an=0Aerror: Unable to get check=
sum for lighttpd SRC_URI entry=0Alighttpd.conf No such file found, and i=
t refers to the=C2=A0original=0Arecipe locations in=0Apoky/meta/recipes-=
extended/lighttpd/files/lighttpd.conf=0AI get the same error using a sin=
gle line when I uses SRC_URI =3D, or=0ASRC_URI +=3D , instead of SRC_URI=
_append.=0AI run $ bitabke -c cleansstate =C2=A0between builds.=C2=A0=0A=
What could be causing the error. There is only two lines in the=0Abbappe=
nd file and the included file is identical to the original=0A.conf file.=
=0AThanksLachlan=0A---- Message sent via Adam Internet WebMail - http://=
www.adam.com.au/

--=_adce24750b4dfaa96d93b8d9f7d36f44
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div>I am using Yocto 1.6.1 and run a build that works fine.=
</div><div><br /></div><div>I add a new layer and recipe ~/poky/meta-atm=
el-lsp/recipes-lsp/lighttpd with a recipe lighttpd_1.4.33.bbappend and t=
his has only two lines:</div><div><br /></div><div>FILESEXTRAPATHS_prepe=
nd :=3D "#{THISDIR}/files:"</div><div>SRC_URI =3D "file://lighttpd.conf"=
</div><div><br /></div><div>This results in a failure: /home/lachlan/pok=
y/meta/recipes-extended/lighttpd/lightpd_1.4.33.bb, do_install</div><div=
>Not that the lighttpd.conf file is in the 'files' directory as is ident=
ical to the original=C2=A0</div><div><br /></div><div>If I remove the li=
ne SRC_URI=3D ....... , the build works OK</div><div><br /></div><div>If=
 I now change absolutely nothing other than un-comment one line (the mod=
_WebDAV module) in the local lighttpd.conf file:</div><div>This results=
 in a failure: /home/lachlan/poky/meta/recipes-extended/lighttpd/lightpd=
_1.4.33.bb, do_unpack=C2=A0</div><div><br /></div><div>If I go back to t=
he original lighttpd.conf file in my local 'files' directory then do the=
 following -&gt;</div><div><br /></div><div>If I change the second line=
 to SCR_URI +=3D "file://lighttpd.conf"</div><div>I get the same do_unpa=
ck error</div><div><br /></div><div>If i change the second line to SRC_U=
RI_append =3D "file://lighttpd.conf" it also get the do_unpack error.</d=
iv><div><br /></div><div>If I merge the two lines into one so ther is no=
w only the one line SRC_URI_append =3D "file://${THISDIR}/files/lighttpd=
conf"</div><div>I get an error: Unable to get checksum for lighttpd SRC=
_URI entry lighttpd.conf No such file found, and it refers to the=C2=A0<=
/div><div>original recipe locations in poky/meta/recipes-extended/lightt=
pd/files/lighttpd.conf</div><div><br /></div><div>I get the same error u=
sing a single line when I uses SRC_URI =3D, or SRC_URI +=3D , instead of=
 SRC_URI_append.</div><div><br /></div><div>I run $ bitabke -c cleanssta=
te =C2=A0between builds.=C2=A0</div><div><br /></div><div>What could be=
 causing the error. There is only two lines in the bbappend file and the=
 included file is identical to the original .conf file.</div><div><br />=
</div><div>Thanks</div><div>Lachlan</div><div><br /></div>---- Message s=
ent via Adam Internet WebMail  - http://www.adam.com.au/</body></html>

--=_adce24750b4dfaa96d93b8d9f7d36f44--
