Return-Path: <bachehkaraji@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BB30E00B87; Thu, 27 Jul 2017 00:43:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bachehkaraji[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.131.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic303-4.consmr.mail.bf2.yahoo.com
	(sonic303-4.consmr.mail.bf2.yahoo.com [74.6.131.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 320B3E00B87
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 00:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1501141436; bh=f1TTrv3nBoiUDT1Y1D/idoIYiR4RWYKB4nC5rlaN8z8=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=gCNhi6MfojSOWJ9KmdxuAT9pKcd4AxbQ2QzeN0yt2MJlMzHF5gNCcaATV+J3kpfvsHTXe1elVN71lasjAtrQAY5z0rKVbijqn5q/mvG51is1Aeh8UR00FlmHBK+sua4CZSt6QPG4kKHo7qtSVYkwNqF37rMYoCUKTcxFwDfmlnOAmfDsb4Xb4jUGM62NxtEzC2vquBz6tQ5eSws5HT5A1l3edPNI4cEyiNA52r4OLSXdEFK6rQ6syBhHe5CFpbn4mnkjiUm5ljXku0E6xGG4XFX7tMXGvEvZK6T9YMAvnMZwLtwz7tjYnt4kA2ZrQNg/ut/s7Yl3XjLe5M6UgxTFzA==
X-YMail-OSG: Mt_r6SYVM1ne2GlPxHtPXqP9nd1x.Vi81y9u2kTQEBYCz_SfqmgbAeoWN3zhe8u
	M4Aq45Mxf2K4qVGnURQ3QXP8lup9pDuJlwHm4sXGQeAyiylj4AARVLXNUXYlx4MU6r2275Eoc3TC
	BDTdZ0aGicyTiPjY1Xc._.GQEsikzOegwfcIOTg6HPlRyI9mtp5nIZKLEA2DI0WIPpWf71nil4Pt
	OqGn.5HSWYts4FnW0249dmjogRVxUFMJ1WmQRTjlTgYfoK_xzMG58uxgtRtxsupmv8NjHI8lB9Fo
	S3.LFloxGedIuWSSY9KaNR5OWsAG3zaU_upjk5.l244eMYpCQc3KQvvqr3Gue_8ddbZQC97X63UG
	fOp5l7okWq5RZ07magXECk11dQrWbRQ0GJZcZ19Tj7gohaT.Czvo0d7MZCeeuitvrJ4ui2EDrRP6
	XiRYVgECN9PvXuGTTObvlMILrXZ3kI5zgWENXsaC4B6Qq4DB4nldVpCvLHX5oSsH1BjrFWb7EH3M
	tCNbPCICqay9Qdt.Qd34S0oPYSI.g4dL4X5at
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.bf2.yahoo.com with HTTP;
	Thu, 27 Jul 2017 07:43:56 +0000
Date: Thu, 27 Jul 2017 07:43:10 +0000 (UTC)
From: Bacheh Karaji <bachehkaraji@yahoo.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>,  <yocto@yoctoproject.org>
Message-ID: <114091654.126731.1501141390266@mail.yahoo.com>
In-Reply-To: <d8fecc11-51f2-59ff-9f59-6bbb6dd99844@embexus.com>
References: <CAKgkYTR0e5aX_eO-JTgfs4Q94YVmFd1HNAYZy60Mv4tiiFU4dQ@mail.gmail.com>
	<d8fecc11-51f2-59ff-9f59-6bbb6dd99844@embexus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.10181 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115
	Safari/537.36
Subject: Re: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own filE?
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
X-List-Received-Date: Thu, 27 Jul 2017 07:43:58 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_126730_1212812064.1501141390265"

------=_Part_126730_1212812064.1501141390265
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, thanks very much=C2=A0 ...


On Tuesday, July 25, 2017, 11:18:13 PM GMT+4:30, Ayoub Zaki <ayoub.zaki@emb=
exus.com> wrote:



On 24.07.2017 07:18, Mohammad Nouri wrote:
> Hi,
> I want to replace the default vsftpd.conf file with my own file!
> My bitbake file looks following:
>
> bbexample_1.0.bb
>=C2=A0 =C2=A0 =C2=A0 DESCRIPTION =3D "Configuration and extra files for TX=
28"
>=C2=A0 =C2=A0 =C2=A0 LICENSE =3D "CLOSED"
>=C2=A0 =C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D ""
>
>=C2=A0 =C2=A0 =C2=A0 S =3D "${WORKDIR}"
>
>=C2=A0 =C2=A0 =C2=A0 SRC_URI +=3D " \
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ld.so.conf \
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://vsftpd.conf \
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://nginx/nginx.conf \
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://init.d/myscript.sh"
>
>=C2=A0 =C2=A0 =C2=A0 inherit allarch
>
>=C2=A0 =C2=A0 =C2=A0 do_install () {
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/nginx
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f ${D}${sysconfdir}/ld.so.conf
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f ${D}${sysconfdir}/vsftpd.conf
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/ld.so.conf $=
{D}${sysconfdir}
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/vsftpd.conf =
${D}${sysconfdir}
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/nginx/nginx.=
conf ${D}${sysconfdir}/nginx/
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/init.d/myscr=
ipt.sh ${D}${sysconfdir}/init.d/
>=C2=A0 =C2=A0 =C2=A0 }
>
>=C2=A0 But, the file could not be replaced!
>=C2=A0 What is wrong?
you should add to your recipe :

FILES_${PN} +=3D " list of files you installed"

--=20

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

------=_Part_126730_1212812064.1501141390265
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:x-small;"><div><div>
<!--StartFragment--><span style=3D"color: rgb(36, 39, 41); font-family: Ari=
al, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 13px;">Ok=
, thanks very much</span><!--EndFragment-->&nbsp; ...<br></div></div><div><=
br></div><div><br></div><div id=3D"yahoo_quoted_1719134951" class=3D"yahoo_=
quoted"><div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;"><div>On Tuesday, July 25, 2017, 11:18:=
13 PM GMT+4:30, Ayoub Zaki &lt;ayoub.zaki@embexus.com&gt; wrote:</div><div>=
<br></div><div><br></div><div><div dir=3D'ltr'><html><body><br clear=3D"non=
e"><br clear=3D"none">On 24.07.2017 07:18, Mohammad Nouri wrote:<br clear=
=3D"none">&gt; Hi,<br clear=3D"none">&gt; I want to replace the default vsf=
tpd.conf file with my own file!<br clear=3D"none">&gt; My bitbake file look=
s following:<br clear=3D"none">&gt;<br clear=3D"none">&gt; bbexample_1.0.bb=
<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 DESCRIPTION =3D &quot;Configura=
tion and extra files for TX28&quot;<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=
=A0 LICENSE =3D &quot;CLOSED&quot;<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=
=A0 LIC_FILES_CHKSUM =3D &quot;&quot;<br clear=3D"none">&gt;<br clear=3D"no=
ne">&gt;=C2=A0 =C2=A0 =C2=A0 S =3D &quot;${WORKDIR}&quot;<br clear=3D"none"=
>&gt;<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 SRC_URI +=3D &quot; \<br c=
lear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ld.so.conf \<br=
 clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://vsftpd.conf \=
<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://nginx/ngin=
x.conf \<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://in=
it.d/myscript.sh&quot;<br clear=3D"none">&gt;<br clear=3D"none">&gt;=C2=A0 =
=C2=A0 =C2=A0 inherit allarch<br clear=3D"none">&gt;<br clear=3D"none">&gt;=
=C2=A0 =C2=A0 =C2=A0 do_install () {<br clear=3D"none">&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}<br clear=3D"none">&gt;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/nginx<br clear=
=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdi=
r}/init.d<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f ${=
D}${sysconfdir}/ld.so.conf<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rm -f ${D}${sysconfdir}/vsftpd.conf<br clear=3D"none">&gt;=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sy=
sconfdir}<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install =
-m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}<br clear=3D"none">&gt;=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/nginx/nginx.conf=
 ${D}${sysconfdir}/nginx/<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 install -m 0755 ${WORKDIR}/init.d/myscript.sh ${D}${sysconfdir}/ini=
t.d/<br clear=3D"none">&gt;=C2=A0 =C2=A0 =C2=A0 }<br clear=3D"none">&gt;<br=
 clear=3D"none">&gt;=C2=A0  But, the file could not be replaced!<br clear=
=3D"none">&gt;=C2=A0  What is wrong?<br clear=3D"none">you should add to yo=
ur recipe :<br clear=3D"none"><br clear=3D"none">FILES_${PN} +=3D &quot; li=
st of files you installed&quot;<br clear=3D"none"><br clear=3D"none">-- <br=
 clear=3D"none"><br clear=3D"none">Ayoub Zaki<br clear=3D"none"><br clear=
=3D"none"><a shape=3D"rect" ymailto=3D"mailto:ayoub.zaki@embexus.com" href=
=3D"mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a><br clear=3D"n=
one">Mobile: +49(0)176-62901545<br clear=3D"none">Skype: ayoub.zaki_2<br cl=
ear=3D"none"><a shape=3D"rect" href=3D"https://embexus.com" target=3D"_blan=
k">https://embexus.com</a><div class=3D"yqt8912361071" id=3D"yqtfd22340"><b=
r clear=3D"none"><br clear=3D"none">-- <br clear=3D"none">_________________=
______________________________<br clear=3D"none">yocto mailing list<br clea=
r=3D"none"><a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"n=
one"><a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br c=
lear=3D"none"></div></body></html></div></div></div></div></div></body></ht=
ml>

------=_Part_126730_1212812064.1501141390265--
