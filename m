Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B956E0080C; Mon, 29 Dec 2014 00:19:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B17E00751
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 00:19:35 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBT8JW7T031472
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 18:49:32 +1030
Message-Id: <8259271acb6bd38296ecada4340f7316717b3691@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Mon, 29 Dec 2014 18:49:32 +1030
MIME-Version: 1.0
Subject: bitbake cannot locate source file from recipe
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
X-List-Received-Date: Mon, 29 Dec 2014 08:19:40 -0000
Content-Type: multipart/alternative;
	boundary="=_5ab7d85dfcaf5d98ff9ea856088adc2f"

--=_5ab7d85dfcaf5d98ff9ea856088adc2f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am trying to modify my device tree build to include a slightly=0Amodif=
ed version.=0A=0AI have created the recipe linux-yocto-custom_3.10.bbapp=
end that=0Acontains the following:=0A=0APR =3D "r5"=0AFILESEXTRAPATHS_pr=
epend :=3D "${THISDIR}/files/sama5d3xek: "=0ASRC_URI +=3D " file://sama5=
d3xek_lsp.dts "=0AKERNEL_DEVICETREE +=3D " sama5d3xek_lsp.dtb"=0A=0Ado_i=
nstall_prepend () {=0A=C2=A0=C2=A0=C2=A0 cp ${WORKDIR}/sama5d3xek_lsp.dt=
s=0A${WORKDIR}/linux/arch/${ARCH}/boot/dts=0A}=0A=0AI fget the error fro=
m bitbake as follows:=0A=0ALog data follows:=0A| DEBUG: Executing shell=
 function do_install=0A| cp: cannot stat=0A'/home/lachlan/poky/build-atm=
el/tmp/work/sama5d3xek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOIN=
C+35158dd80a-r5/sama5d3xek/sama5d3xek_lsp.dts':=0ANo such file or direct=
ory=0A=0AThe source file is located in the append recipes subdirectory=
=0Afiles/sama5d3xek/=0A=0ACan anyone suggest why the source dts file is=
 not being made=0Aavailable ? I am sure it is a simple mistake!=0A=0ATha=
nks for any pointers.=0ALachlan=0A=0A---- Message sent via Adam Internet=
 WebMail - http://www.adam.com.au/

--=_5ab7d85dfcaf5d98ff9ea856088adc2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I am trying to modify my device tree build to include a slig=
htly modifed version.<br /><br />I have created the recipe linux-yocto-c=
ustom_3.10.bbappend that contains the following:<br /><br />PR =3D "r5"<=
br />FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files/sama5d3xek: "<br />S=
RC_URI +=3D " file://sama5d3xek_lsp.dts "<br />KERNEL_DEVICETREE +=3D "=
 sama5d3xek_lsp.dtb"<br /><br />do_install_prepend () {<br />=C2=A0=C2=
=A0=C2=A0 cp ${WORKDIR}/sama5d3xek_lsp.dts ${WORKDIR}/linux/arch/${ARCH}=
/boot/dts<br />}<br /><br />I fget the error from bitbake as follows:<br=
 /><br />Log data follows:<br />| DEBUG: Executing shell function do_ins=
tall<br />| cp: cannot stat '/home/lachlan/poky/build-atmel/tmp/work/sam=
a5d3xek-poky-linux-gnueabi/linux-yocto-custom/3.10+AUTOINC+35158dd80a-r5=
/sama5d3xek/sama5d3xek_lsp.dts': No such file or directory<br /><br />Th=
e source file is located in the append recipes subdirectory files/sama5d=
3xek/<br /><br /><br />Can anyone suggest why the source dts file is not=
 being made available ? I am sure it is a simple mistake!<br /><br />Tha=
nks for any pointers.<br />Lachlan<br /><br />---- Message sent via Adam=
 Internet WebMail  - http://www.adam.com.au/</body></html>

--=_5ab7d85dfcaf5d98ff9ea856088adc2f--
