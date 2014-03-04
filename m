Return-Path: <joelparker27@yahoo.com>
Received: from nm6.bullet.mail.bf1.yahoo.com (nm6.bullet.mail.bf1.yahoo.com
	[98.139.212.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A1CE00A25
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 10:18:07 -0800 (PST)
Received: from [66.196.81.171] by nm6.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 18:18:06 -0000
Received: from [98.139.212.233] by tm17.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 18:18:06 -0000
Received: from [127.0.0.1] by omp1042.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 18:18:06 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 838142.30975.bm@omp1042.mail.bf1.yahoo.com
Received: (qmail 36616 invoked by uid 60001); 4 Mar 2014 18:18:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1393957086; bh=Da5WGYeT1m6hJIoSpEo7JIIbI30gb083iNym+AxLkiU=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=qdD+0IgYKv5hU/ufGm8yo1JyObn6GXqYivNKRl8kThsL4UU7MWXtyzyNQYpb0XDtBUqCaAJ/rlbAPGT9PkNUeTaySm7uRlwNRv/D1dvZfUz/ZaTybgOF7MTEw2lJVjyAIoEoQhvjZQx1jNZ+69QFR9waTpF3tMY75POjU7/ocmk=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=aRKNJnDekkmjpssqy4AHEDASsPtjsCXx5s0M7HotbyJQxC0TMMSXfF/3bHH6nZi19PrmZ0q6TcUt7Q9jN6/8q+r18n0oJFrGpxX97zKIi6VZFgAolzSNqPX3wnR1r883LDPyUQWNI01BtosmPwWIG+sIu+SC8lPaVM8kp2zNmbw=;
X-YMail-OSG: NxHDMRAVM1k95yophZN7a8Vt9bMfwbskE08S0IyQkeOiloC
	smpBOqNP6JOVArTvpmRtfvwlJXEvz.yNyZ8StzBkEXIWsS.083Drb8T0UKwA
	rCoKhkq.2cM.vLO9jvPbrdn9otHAMXEvkzNo7la23SFSgJpgYA6w6obC.7O0
	VaQKCY.NUNtmEfE4RH1QnbvSkos_u1OPjzGu_8ZltZOQGKbxeVG3ly2p1Kl0
	Ubn1nfnNdxAtfdJRhdnL.N6j7JjTwei7hDzKYP0ha2fTJcaVOtbrgNh3OleD
	H8jLsZ.3sWHoOamXVilxxOzh1uB7sg1Eqgz57Dzji.XkPqTnsE3xxmA2Vhh2
	YW293IoSXQKRaZ_IN21.DeKpbo9hMexGGVEa.zR1HeVBnjvtzOoPIx3kx0N_
	XiZfK9jvi46DZ9csgO.Kj7ZeR3MULY.FzrlD2F_54vvGnbRZDKIN2itHM5Gy
	JGath58Se2qu94GpXd2I27_Z.r5ja1ShGiMfcOT8pL6_Y9AVXig6ubMwURZ_
	wKp9e2uf3PIs2yDVlFx4e3eYoh3eqDUQCQC4AkbDBuBeglJhVyVPeafz9KTg
	NjE7At1UxXrx_5P2ig.as3u9Whf0OJXsM04GAoALdgxZvkbxWN1ynjBGk2yR
	vP9eQEjkp8pidHpqwJ.WNV.Q-
Received: from [71.41.161.30] by web163103.mail.bf1.yahoo.com via HTTP;
	Tue, 04 Mar 2014 10:18:06 PST
X-Rocket-MIMEInfo: 002.001,
	V2hhdCBjYXVzZXMgdGhpcyBlcnJvciA_CgpFUlJPUjogVGFzayA3ICgvZnNsLWNvbW11bml0eS1ic3Avc291cmNlcy9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2ltYWdlcy9jdXN0b20taW1hZ2UuYmIsIGRvX3Jvb3RmcykgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJwoKSGVyZSBpcyBteSByZWNpcGU6CgpERVNDUklQVElPTiA9ICJBIGNvbnNvbGUtb25seSBpbWFnZSB0aGF0IGZ1bGx5IHN1cHBvcnRzIHRoZSB0YXJnZXQgZGV2aWNlIFwKaGFyZHdhcmUuIgoKSU1BR0VfRkVBVFVSRVMgKz0gInNwbGFzaCBzc2gBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.177.636
Message-ID: <1393957086.3749.YahooMailNeo@web163103.mail.bf1.yahoo.com>
Date: Tue, 4 Mar 2014 10:18:06 -0800 (PST)
From: Joel Parker <joelparker27@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: rootfs_failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Joel Parker <joelparker27@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Mar 2014 18:18:10 -0000
Content-Type: multipart/alternative;
	boundary="673831718-1180950168-1393957086=:3749"

--673831718-1180950168-1393957086=:3749
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

What causes this error ?=0A=0AERROR: Task 7 (/fsl-community-bsp/sources/pok=
y/meta/recipes-core/images/custom-image.bb, do_rootfs) failed with exit cod=
e '1'=0A=0AHere is my recipe:=0A=0ADESCRIPTION =3D "A console-only image th=
at fully supports the target device \=0Ahardware."=0A=0AIMAGE_FEATURES +=3D=
 "splash ssh-server-dropbear"=0AIMAGE_INSTALL +=3D "\=0A=A0=A0=A0=A0=A0=A0=
=A0 lighttpd \=0A=A0=A0=A0=A0=A0=A0=A0 sqlite3=A0 \=0A"=0A=0ALICENSE =3D "M=
IT"=0A=0Ainherit core-image

--673831718-1180950168-1393957086=:3749
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div>What causes this error ?</div><div><br></div><div style=
=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvet=
ica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transp=
arent; font-style: normal;">ERROR: Task 7 (/fsl-community-bsp/sources/poky/=
meta/recipes-core/images/custom-image.bb, do_rootfs) failed with exit code =
'1'</div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: H=
elveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; backg=
round-color: transparent; font-style: normal;"><br></div><div style=3D"colo=
r: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue=
,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; f=
ont-style: normal;">Here is my recipe:</div><div style=3D"color: rgb(0, 0, =
0);
 font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial=
,Lucida Grande,sans-serif; background-color: transparent; font-style: norma=
l;"><br></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-fami=
ly: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; =
background-color: transparent; font-style: normal;">DESCRIPTION =3D "A cons=
ole-only image that fully supports the target device \<br>hardware."<br><br=
>IMAGE_FEATURES +=3D "splash ssh-server-dropbear"<br>IMAGE_INSTALL +=3D "\<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lighttpd \<br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; sqlite3&nbsp; \<br>"<br><br>LICENSE =3D "MIT"<b=
r><br>inherit core-image<br></div><div style=3D"color: rgb(0, 0, 0); font-s=
ize: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida=
 Grande,sans-serif; background-color: transparent; font-style: normal;"><br=
></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family:
 HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; bac=
kground-color: transparent; font-style: normal;"></div></div></body></html>

--673831718-1180950168-1393957086=:3749--
