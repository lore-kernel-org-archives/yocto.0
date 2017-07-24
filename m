Return-Path: <bachehkaraji@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4CB0E00BF8; Sun, 23 Jul 2017 22:31:10 -0700 (PDT)
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
	*      [74.6.135.110 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic318-55.consmr.mail.bf2.yahoo.com
	(sonic318-55.consmr.mail.bf2.yahoo.com [74.6.135.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BDAAE00BE9
	for <yocto@yoctoproject.org>; Sun, 23 Jul 2017 22:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1500874269; bh=SL5pq7Z/t+c6o4M7QlGtXOyqKk6yRtUebkiYLiMUwhg=;
	h=Date:From:To:Subject:References:From:Subject;
	b=F/zIh2Jf1S/KEBkoCDRVJ5gWWU0jSHL0flJmnmx4FXOlVs0qk4RxfrHzt7bPUDp9a35MMP4VHlx7+qnvl9Ti5YIpixv9QCw2bQLs3x8OMGbZNnFFWrpG/2tO9LGuD35VbQGkiTp634PZmiL6eIwNZ/u0exNxpIdNS0yRWMdwMS/h7ofdoUifzdeG0pcQ7VpJVYRvXTewrOju7x9pO7F1z2pJGj3lvX+y9uTpwR+KoHKeyl/iK0/3Sn3Q0R+ronZAiJmpzIeR6qivqm/6X7Ez5JON3489yjTQFebBrGd+3/3MhIka+AutjTW+3sIamk9oXRI802S9+NGCKWRhSNIp8g==
X-YMail-OSG: HBgLIr4VM1kRmBml9HIcOfTy59Vmy0uqD1QfiynSlg_PyPtQFJplboJl8oG3mb7
	FWZH8n0CC0YTbabl2XWxfkZOGn_rMgQD.UgYUBLxoD2BGPw5B8vLQOkiXJqP9.N_q2gB0cELYIOn
	IVLCqw6omeSLoAZBXGJC_CIlj.9ZDfu0jUvnjMBpHnas3BjrdJqYmP6TrlTkNRyTduBsuggxM_rF
	oqMMS1KpRR8bjUK.cdTzHGEQD_a19Ar1OxtFw92tlg1Kxa9AATYuxugDW.RXH_PQNiaoOW0_VMu_
	nWsgv1XaEQ1Mo7wARyNYgnnbo4WQLb4D8xnMG0eeWkCjoe8yLNVvuZhTG6EfrlauhYl4sMJc4Bs8
	Kq0T1EVjz68bm1yIMiA0_d.QCYrKPCIninQ_16HsTzoa5w2lIZC6A83NsFC3K0JMC7marDrFnEqX
	W8YXvitNzKEHAvX.xiJEDUY0qLBa8UbzN7UVCzgnkO2_y.mEozVkfdhbxPnAtvcE9E2EObOMoACz
	5M_Pn8drG6000M4fX.Xok4vGoM9VB9UfHr5FllJkcmJIrwg2H8rF8OLMr9eXAj_Mj
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic318.consmr.mail.bf2.yahoo.com with HTTP;
	Mon, 24 Jul 2017 05:31:09 +0000
Date: Mon, 24 Jul 2017 05:26:59 +0000 (UTC)
From: Bacheh Karaji <bachehkaraji@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1400955154.3545388.1500874019478@mail.yahoo.com>
MIME-Version: 1.0
References: <1400955154.3545388.1500874019478.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10121 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115
	Safari/537.36
Subject: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own file?
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
X-List-Received-Date: Mon, 24 Jul 2017 05:31:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3545387_1270557950.1500874019476"

------=_Part_3545387_1270557950.1500874019476
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,I want to replace the default vsftpd.conf file with my own file!My bitba=
ke file looks following:
bbexample_1.0.bb=C2=A0 =C2=A0 DESCRIPTION =3D "Configuration and extra file=
s for TX28"=C2=A0 =C2=A0 LICENSE =3D "CLOSED"=C2=A0 =C2=A0 LIC_FILES_CHKSUM=
 =3D ""=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 S =3D "${WORKDIR}"=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0 SRC_URI +=3D " \=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://ld.so.c=
onf \=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://vsftpd.conf \=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://nginx/nginx.conf \=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://init.d/m=
yscript.sh"=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 inherit allarch=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0 do_install () {=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}=
${sysconfdir}=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/nginx=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${sysconfdir}/init.d=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 rm -f ${D}${sysconfdir}/ld.so.conf=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rm -f ${D}${sysconfdir}/vsftpd.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 insta=
ll -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/nginx/nginx.conf ${D}${sysconfdir}=
/nginx/=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/init.d/myscri=
pt.sh ${D}${sysconfdir}/init.d/=C2=A0 =C2=A0 }
=C2=A0But, the file could not be replaced!=C2=A0What is wrong?

------=_Part_3545387_1270557950.1500874019476
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:x-small;"><div><div>Hi,</div><div>I want to =
replace the default vsftpd.conf file with my own file!</div><div>My bitbake=
 file looks following:</div><div><br></div><div>bbexample_1.0.bb</div><div>=
&nbsp; &nbsp; DESCRIPTION =3D "Configuration and extra files for TX28"</div=
><div>&nbsp; &nbsp; LICENSE =3D "CLOSED"</div><div>&nbsp; &nbsp; LIC_FILES_=
CHKSUM =3D ""</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; S =3D "=
${WORKDIR}"</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbsp; SRC_URI +=
=3D " \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; file://ld.so.conf \</div><div=
>&nbsp; &nbsp; &nbsp; &nbsp; file://vsftpd.conf \</div><div>&nbsp; &nbsp; &=
nbsp; &nbsp; file://nginx/nginx.conf \</div><div>&nbsp; &nbsp; &nbsp; &nbsp=
; file://init.d/myscript.sh"</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp;=
 &nbsp; inherit allarch</div><div>&nbsp; &nbsp;&nbsp;</div><div>&nbsp; &nbs=
p; do_install () {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${s=
ysconfdir}</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdi=
r}/nginx</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}=
/init.d</div><div>&nbsp; &nbsp; &nbsp; &nbsp; rm -f ${D}${sysconfdir}/ld.so=
.conf</div><div>&nbsp; &nbsp; &nbsp; &nbsp; rm -f ${D}${sysconfdir}/vsftpd.=
conf</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 ${WORKDIR}/ld.so=
.conf ${D}${sysconfdir}</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -m 07=
55 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; install -m 0755 ${WORKDIR}/nginx/nginx.conf ${D}${sysconfdir}/nginx/=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 ${WORKDIR}/init.d/my=
script.sh ${D}${sysconfdir}/init.d/</div><div>&nbsp; &nbsp; }</div><div><br=
></div><div>&nbsp;But, the file could not be replaced!</div><div>&nbsp;What=
 is wrong?</div></div></div></body></html>

------=_Part_3545387_1270557950.1500874019476--
