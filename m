Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83061E007C1; Mon, 29 Dec 2014 05:56:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A39E00521
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 05:56:11 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBTDu5Gn002799;
	Tue, 30 Dec 2014 00:26:06 +1030
Message-Id: <43414f3aa74406bb117c62a05497dd40382b7151@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <109223388.cVP39yCdYD@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 30 Dec 2014 00:26:05 +1030
MIME-Version: 1.0
Subject: Re: bitbake cannot locate source file from recipe
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
X-List-Received-Date: Mon, 29 Dec 2014 13:56:15 -0000
Content-Type: multipart/alternative;
	boundary="=_7a5f5963d089899529c56de467c6ad82"

--=_7a5f5963d089899529c56de467c6ad82
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have had some success and some failure.=0AAttempt 1: FAILI changed the=
 SRC to:FILESEXTRAPATHS_prepend :=3D=0A"${THISDIR}/files:" removing the=
 machine name and the space. The=0Amachine is sama5d3xek.=0AI still get=
 an the error : (the directory is now changed)=0A> | DEBUG: Executing sh=
ell function do_install=0A> | cp: cannot stat=0A>=0A'/home/lachlan/poky/=
build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux=0A> -yocto-cust=
om/3.10+AUTOINC+35158dd80a-r5/sama5d3xek_lsp.dts': No=0A> such file or d=
irectory=0A>=C2=A0=0A=0ANote:=0AThere is already a .bbappend file for th=
is recipe in the original=0Asource. Can a problem occur having two bbapp=
end recipes each=0Acontaining=C2=A0FILESEXTRAPATHS_prepend :=3D "${THISD=
IR}/files:" but=0Areferring to different ${THISDIR} directories?=0AThe e=
xisting linux-yocto-custom_3.10.bbppend file contains:KBRANCH =3D=0A"lin=
ux-3.10-at91"SRCREV =3D "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" - i=0Aam=
 on a differnt computer so I wont copy the numbersPV =3D=0A"${LINUX_VERS=
ION}+${SRCPV}"PR =3D "r5"FILESEXTRAPATHS_prepend :=3D=0A"${THISDIR}/file=
s/${MACHINE}:"=C2=A0SRC_URI =3D=0A"git://github.com/linux4sam/linux-at91=
git;protocol=3Dgit;branch=3D${KBRANCH};nocheckout=3D1"SRC_URI=0A+=3D "f=
ile://defconfig"=0Ado_deploy_append () {.......}=0AAttempt 2: FAIL=C2=A0=
I tried making the source file name incorrectSRC_URI=0A+=3D " file://sam=
a5d3xek_wrong.dts "The same error results. I would have=0Athought it wou=
ld pick up a different error if the original source file=0Acould not be=
 found.=0AAttempt 3: THIS WORKEDI also copied the following code to the=
=0Aoriginal vendor supplied .bbppend recipe, as well as moving the=0Asam=
a5d3xek_lsp.dts to the correct directory for that recipeSRC_URI +=3D=0A"=
 file://sama5d3xek_lsp.dts "=0AKERNEL_DEVICETREE +=3D " sama5d3xek_lsp.d=
tb"=0A=0Ado_install_prepend () {=0A=C2=A0 =C2=A0 cp ${WORKDIR}/sama5d3xe=
k_lsp.dts=0A=C2=A0${WORKDIR}/linux/arch/${ARCH}/boot/dts=0A}=0A=0AThis w=
orked and the device tree blob was built. However, I don't want=0Ato mod=
ify the vendor supplied source files and would like another way=0Aof doi=
ng this in my own layer.=0AAny thoughts?ThanksLachlan=0A=0A----- Origina=
l Message -----=0AFrom: "Paul Eggleton" =0ATo:=0ACc:=0ASent:Mon, 29 Dec=
 2014 11:25:50 +0000=0ASubject:Re: [yocto] bitbake cannot locate source=
 file from recipe=0A=0A Hi Lachlan,=0A=0A On Monday 29 December 2014 18:=
49:32 peterengcomau001@adam.com.au=0Awrote:=0A > I am trying to modify m=
y device tree build to include a slightly=0A > modifed version.=0A > =0A=
 > I have created the recipe linux-yocto-custom_3.10.bbappend that=0A >=
 contains the following:=0A > =0A > PR =3D "r5"=0A > FILESEXTRAPATHS_pre=
pend :=3D "${THISDIR}/files/sama5d3xek: "=0A > SRC_URI +=3D " file://sam=
a5d3xek_lsp.dts "=0A > KERNEL_DEVICETREE +=3D " sama5d3xek_lsp.dtb"=0A >=
 =0A > do_install_prepend () {=0A > cp ${WORKDIR}/sama5d3xek_lsp.dts=0A=
 > ${WORKDIR}/linux/arch/${ARCH}/boot/dts=0A > }=0A > =0A > I fget the e=
rror from bitbake as follows:=0A > =0A > Log data follows:=0A > | DEBUG:=
 Executing shell function do_install=0A > | cp: cannot stat=0A > =0A >=
=0A'/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueab=
i/linux=0A >=0A-yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek/sama5=
d3xek_lsp.dts':=0ANo=0A > such file or directory=0A > =0A > The source f=
ile is located in the append recipes subdirectory=0A > files/sama5d3xek/=
=0A > =0A > Can anyone suggest why the source dts file is not being made=
=0A > available ? I am sure it is a simple mistake!=0A=0A This error is=
 a little puzzling because I can't see how you could=0Aend up with =0A=
=0A"/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueab=
i/linux-=0A yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek/" (or mor=
e=0Aspecifically, the =0A final "sama5d3xek" subdirectory) from "${WORKD=
IR}/". Was this=0Aperhaps from an =0A earlier version of the recipe?=0A=
=0A In any case, is "sama5d3xek" the value of MACHINE in your=0Aconfigur=
ation? If so, =0A the MACHINE value is already searched as a subdirector=
y of anything=0Ain =0A FILESEXTRAPATHS, and you shouldn't then end up wi=
th that=0Asubdirectory when the =0A file is copied into the WORKDIR. Try=
 this instead:=0A=0A FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"=0A=
=0A (Also, there should be no spaces in FILESEXTRAPATHS, I notice you=0A=
had a =0A trailing one in there.)=0A=0A Cheers,=0A Paul=0A=0A -- =0A=0A=
 Paul Eggleton=0A Intel Open Source Technology Centre=0A---- Message sen=
t via Adam Internet WebMail - http://www.adam.com.au/

--=_7a5f5963d089899529c56de467c6ad82
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div>I have had some success and some failure.</div><div><br=
 /></div><div>Attempt 1: FAIL</div>I changed the SRC to:<div>FILESEXTRAP=
ATHS_prepend :=3D "${THISDIR}/files:" removing the machine name and the=
 space. The machine is sama5d3xek.</div><div><br /></div><div>I still ge=
t an the error : (the directory is now changed)</div><div><br /></div><d=
iv>&gt; | DEBUG: Executing shell function do_install<br />&gt; | cp: can=
not stat<br />&gt; '/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-p=
oky-linux-gnueabi/linux<br />&gt; -yocto-custom/3.10+AUTOINC+35158dd80a-=
r5/sama5d3xek_lsp.dts': No<br />&gt; such file or directory<br />&gt;=C2=
=A0<br /><br />Note:<br />There is already a .bbappend file for this rec=
ipe in the original source. Can a problem occur having two bbappend reci=
pes each containing=C2=A0FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:=
" but referring to different ${THISDIR} directories?</div><div><br /></d=
iv><div>The existing linux-yocto-custom_3.10.bbppend file contains:</div=
><div>KBRANCH =3D "linux-3.10-at91"</div><div>SRCREV =3D "xxxxxxxxxxxxxx=
xxxxxxxxxxxxxxxxxxxxxx"<span class=3D"Apple-tab-span">=09</span>- i am o=
n a differnt computer so I wont copy the numbers</div><div>PV =3D "${LIN=
UX_VERSION}+${SRCPV}"</div><div>PR =3D "r5"</div><div>FILESEXTRAPATHS_pr=
epend :=3D "${THISDIR}/files/${MACHINE}:"=C2=A0</div><div>SRC_URI =3D "g=
it://github.com/linux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRAN=
CH};nocheckout=3D1"</div><div>SRC_URI +=3D "file://defconfig"</div><div>=
<br /></div><div>do_deploy_append () {</div><div>.......</div><div>}</di=
v><div><br /></div><div>Attempt 2: FAIL=C2=A0</div><div>I tried making t=
he source file name incorrect</div><div>SRC_URI +=3D " file://sama5d3xek=
_wrong.dts "</div><div>The same error results. I would have thought it w=
ould pick up a different error if the original source file could not be=
 found.</div><div><br /></div><div>Attempt 3: THIS WORKED</div><div>I al=
so copied the following code to the original vendor supplied .bbppend re=
cipe, as well as moving the sama5d3xek_lsp.dts to the correct directory=
 for that recipe</div><div>SRC_URI +=3D " file://sama5d3xek_lsp.dts "<br=
 />KERNEL_DEVICETREE +=3D " sama5d3xek_lsp.dtb"<br /><br />do_install_pr=
epend () {<br />=C2=A0 =C2=A0 cp ${WORKDIR}/sama5d3xek_lsp.dts =C2=A0${W=
ORKDIR}/linux/arch/${ARCH}/boot/dts<br />}<br /></div><div><br /></div><=
div>This worked and the device tree blob was built. However, I don't wan=
t to modify the vendor supplied source files and would like another way=
 of doing this in my own layer.</div><div><br /></div><div>Any thoughts?=
</div><div>Thanks</div><div>Lachlan</div><div><br /></div><div><blockquo=
te><br />----- Original Message -----<br /><div style=3D"width:100%;back=
ground:rgb(228,228,228);"><div style=3D"font-weight:bold;">From:</div> "=
Paul Eggleton" &lt;paul.eggleton@linux.intel.com&gt;</div><br /><div sty=
le=3D"font-weight:bold;">To:</div>&lt;peterengcomau001@adam.com.au&gt;<b=
r /><div style=3D"font-weight:bold;">Cc:</div>&lt;yocto@yoctoproject.org=
&gt;<br /><div style=3D"font-weight:bold;">Sent:</div>Mon, 29 Dec 2014 1=
1:25:50 +0000<br /><div style=3D"font-weight:bold;">Subject:</div>Re: [y=
octo] bitbake cannot locate source file from recipe<br /><br /><br />=0A=
Hi Lachlan,<br /><br />=0AOn Monday 29 December 2014 18:49:32 peterengco=
mau001@adam.com.au wrote:<br />=0A&gt; I am trying to modify my device t=
ree build to include a slightly<br />=0A&gt; modifed version.<br />=0A&g=
t; <br />=0A&gt; I have created the recipe linux-yocto-custom_3.10.bbapp=
end that<br />=0A&gt; contains the following:<br />=0A&gt; <br />=0A&gt;=
 PR =3D "r5"<br />=0A&gt; FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files=
/sama5d3xek: "<br />=0A&gt; SRC_URI +=3D " file://sama5d3xek_lsp.dts "<b=
r />=0A&gt; KERNEL_DEVICETREE +=3D " sama5d3xek_lsp.dtb"<br />=0A&gt; <b=
r />=0A&gt; do_install_prepend () {<br />=0A&gt;     cp ${WORKDIR}/sama5=
d3xek_lsp.dts<br />=0A&gt; ${WORKDIR}/linux/arch/${ARCH}/boot/dts<br />=
=0A&gt; }<br />=0A&gt; <br />=0A&gt; I fget the error from bitbake as fo=
llows:<br />=0A&gt; <br />=0A&gt; Log data follows:<br />=0A&gt; | DEBUG=
: Executing shell function do_install<br />=0A&gt; | cp: cannot stat<br=
 />=0A&gt; <br />=0A&gt; '/home/lachlan/poky/build-atmel/tmp/work/sama5d=
3xek-poky-linux-gnueabi/linux<br />=0A&gt; -yocto-custom/3.10+AUTOINC+35=
158dd80a-r5/sama5d3xek/sama5d3xek_lsp.dts': No<br />=0A&gt; such file or=
 directory<br />=0A&gt; <br />=0A&gt; The source file is located in the=
 append recipes subdirectory<br />=0A&gt; files/sama5d3xek/<br />=0A&gt;=
 <br />=0A&gt; Can anyone suggest why the source dts file is not being m=
ade<br />=0A&gt; available ? I am sure it is a simple mistake!<br /><br=
 />=0AThis error is a little puzzling because I can't see how you could=
 end up with <br />=0A"/home/lachlan/poky/build-atmel/tmp/work/sama5d3xe=
k-poky-linux-gnueabi/linux-<br />=0Ayocto-custom/3.10+AUTOINC+35158dd80a=
-r5/sama5d3xek/" (or more specifically, the <br />=0Afinal "sama5d3xek"=
 subdirectory) from "${WORKDIR}/". Was this perhaps from an <br />=0Aear=
lier version of the recipe?<br /><br />=0AIn any case, is "sama5d3xek" t=
he value of MACHINE in your configuration? If so, <br />=0Athe MACHINE v=
alue is already searched as a subdirectory of anything in <br />=0AFILES=
EXTRAPATHS, and you shouldn't then end up with that subdirectory when th=
e <br />=0Afile is copied into the WORKDIR. Try this instead:<br /><br /=
>=0AFILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br /><br />=0A(Also=
, there should be no spaces in FILESEXTRAPATHS, I notice you had a <br /=
>=0Atrailing one in there.)<br /><br />=0ACheers,<br />=0APaul<br /><br=
 />=0A-- <br /><br />=0APaul Eggleton<br />=0AIntel Open Source Technolo=
gy Centre<br /></blockquote></div>---- Message sent via Adam Internet We=
bMail  - http://www.adam.com.au/</body></html>

--=_7a5f5963d089899529c56de467c6ad82--
