Return-Path: <alexandru.nicolae0807@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88E86E00DD1; Tue, 30 Jan 2018 02:43:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexandru.nicolae0807[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.191.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic312-21.consmr.mail.ne1.yahoo.com
	(sonic312-21.consmr.mail.ne1.yahoo.com [66.163.191.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E477E00D75
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 02:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1517309028; bh=pr1DGP88n+Y52IqTBQOd8iIYtlU/UGZC10VZP02N8YM=;
	h=Date:From:To:Subject:References:From:Subject;
	b=Cybl0qXohCcumqCloeu6deK0B4+fFF3AgKG8QRqCb5QtwyV49glqUa81gcdvQgBQVVc+iJnADicwmPdBaa3yAHwH8zWEdyPi9OMzxwWTjNHHQoL75HUtXsPY88DLL8jJs9lSeG6lK7l8HlcnEd8Yy7eUsoP1kFuMz0S+B3vEoiO+OxtgtH0FwCY9vVrSBl0XF+2ltxEwtjgwJiu2betG2NzcxYft3GNY1bQ0xtDJbpY+VuxyI8FvY91evyv2pCB4uUaipJAYsfOzMXeWF1orqj4pX4cWrxqhEah5QmL/rw9cy+MkR7NvrBEhaooYR2+QEfpP0q8YFSBn4QDXQKzP6g==
X-YMail-OSG: 4Iul31MVM1n9.rVZTN0K4c_90J0CmkqwSYiQ7s2_NqoThh.I83FJP48FpGoDIEl
	xBqzDFrDUOOePSy7Psi_c48Da90_XdCzyx5Gh.j8w4L6rJKXeluK_NuW_B9GMgO2inQ5bIFkL3Vn
	79l8ZfR5mZLg195l9_wfYBgA2ctJ.BllamRtl_K_Y9zeYcgDjt4bwJhcIyGUxFb19B9YnfD6Okql
	m1IISymYETFlESa_IYmLtnL8zrwFu25fwXgdTvUhxMs5drEtHeXWYI0waQy4kBa4.PaYn.sYwzGr
	nRTHygHXpPf_QlB5gc_1nzV6AMGsMEN6J6ZfaDQR6aLcPmuCQw7DX4noxN9iwTZIiOXYauFPssC8
	6abW5M0MtiiTJEXS5AG7ReAUSd0wdY3Xh0cghZt5YGLDnQZUyrLqE4kQzMbcgEX5kn5Qss6UMDDY
	ZlsvjcN7JNAM8LkWjnwdxCawmFChJ88uPwULfgTs5_46XzIB2bWQVnDghgkieVctT3AwN6NdWPMf
	zIoBtc8I8srSAk10maCA2Qzzew42lIFG5pgGx8NQNM.ilSBDpSuA-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 30 Jan 2018 10:43:48 +0000
Date: Tue, 30 Jan 2018 10:43:45 +0000 (UTC)
From: Alexandru Nicolae <alexandru.nicolae0807@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <315129699.1783214.1517309025623@mail.yahoo.com>
MIME-Version: 1.0
References: <315129699.1783214.1517309025623.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11286 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132
	Safari/537.36
Subject: Installing an rpm without repackaging
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
X-List-Received-Date: Tue, 30 Jan 2018 10:43:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1783213_1104146800.1517309025621"

------=_Part_1783213_1104146800.1517309025621
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello guys,
I know that this have been discussed before, but I couldn't find a solution=
 that works for me.
I'm trying to install a rpm package, but every approach I've taken seems wr=
ong. In the ideal case I would like a recipe that just copies the rpm somew=
here on the rootfs and then execute a post-process command to install that =
rpm. Something like:
SRC_URI =3D "file://net-snmp-${PV}.rpm"

FILE_${PN} =3D "/"ROOTFS_POSTPROCESS_COMMAND +=3D "${STAGING_BINDIR_NATIVE}=
/rpm -ivh --root=3D${IMAGE_ROOTFS}/ /*.rpm"

I tried this sollution but I'm not able to copy the rpm as it is on the roo=
tfs.=C2=A0
I have also tried using the bin_package class and I was able to fully bake =
my image, but it seems that the rpm is just unpacked on the rootfs, not ins=
talled as I expected.
Can you please help me with a working example of a recipe?
Thank you,Alex


------=_Part_1783213_1104146800.1517309025621
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div>Hello guys,</div><div><br></div>=
<div>I know that this have been discussed before, but I couldn't find a sol=
ution that works for me.</div><div><br></div><div>I'm trying to install a r=
pm package, but every approach I've taken seems wrong. In the ideal case I =
would like a recipe that just copies the rpm somewhere on the rootfs and th=
en execute a post-process command to install that rpm. Something like:</div=
><div><br></div><div>SRC_URI =3D "file://net-snmp-${PV}.rpm"<br></div><div>=
<br></div><div>FILE_${PN} =3D "/"</div><div>ROOTFS_POSTPROCESS_COMMAND +=3D=
 "${STAGING_BINDIR_NATIVE}/rpm -ivh --root=3D${IMAGE_ROOTFS}/ /*.rpm"<br></=
div><div><br></div><div>I tried this sollution but I'm not able to copy the=
 rpm as it is on the rootfs.&nbsp;</div><div><br></div><div>I have also tri=
ed using the <b>bin_package </b>class and I was able to fully bake my image=
, but it seems that the rpm is just unpacked on the rootfs, not installed a=
s I expected.</div><div><br></div><div>Can you please help me with a workin=
g example of a recipe?</div><div><br></div><div>Thank you,</div><div>Alex</=
div><div><br></div><div><br></div></div></body></html>

------=_Part_1783213_1104146800.1517309025621--
