Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E53E008B4; Mon, 29 Dec 2014 11:48:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3563BE002A6
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 11:48:29 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBTJmMEX012061;
	Tue, 30 Dec 2014 06:18:23 +1030
Message-Id: <83ae7f11208925ec2c8a1243dd4354207102023e@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <1540633.8P2N2UWpS0@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 30 Dec 2014 06:18:22 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 29 Dec 2014 19:48:46 -0000
Content-Type: multipart/alternative;
	boundary="=_5dd7e343c1b442ea52ad2f2904241233"

--=_5dd7e343c1b442ea52ad2f2904241233
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, That seemed to work fine. I changed my layer priority to 11,=0Aj=
ust above the atmel priority of 10.I think it may have also fixed=0Aanot=
her problem with my ntp time sources.ThanksLachlan=0A=0A----- Original M=
essage -----=0AFrom: "Paul Eggleton" =0ATo:=0ACc:=0ASent:Mon, 29 Dec 201=
4 16:34:04 +0000=0ASubject:Re: [yocto] bitbake cannot locate source file=
 from recipe=0A=0A On Tuesday 30 December 2014 02:58:05 peterengcomau001=
@adam.com.au=0Awrote:=0A > The result of bitbake -e linux-yocto-custom g=
ives this output:=0A > =0A > # $FILESPATH [2 operations]=0A > # set /hom=
e/lachlan/poky/meta/conf/documentation.conf:174=0A > # [doc] "The defaul=
t set of directories the OpenEmbedded=0A > build system uses when search=
ing for patches and files. It is=0Adefined=0A > in the base.bbclass clas=
s found in meta/classes in the Source D=0A > irectory. Do not hand-edit=
 the FILESPATH variable."=0A > # set /home/lachlan/poky/meta/classes/bas=
e.bbclass:83=0A > # "${@base_set_filespath(["${FILE_DIRNAME}/${BP}",=0A=
 > "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"=0A > # compu=
ted:=0A > # "${@base_set_filespath(["${FILE_DIRNAME}/${BP}",=0A > "${FIL=
E_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"=0A >=0AFILESPATH=3D"/=
home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sama5d3x=0A >=0A=
ek/poky:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/pok=
y:/h=0A > ome/lachlan/poky/meta-atmel/recipes-kernel=0A >=0A/linux/linux=
-yocto-custom-3.10+AUTOINC+35158dd80a/poky:/home/lachlan/poky/m=0A >=0Ae=
ta-atmel/recipes-kernel/linux/linux-yocto-custom/poky:/home/lachlan/poky=
/me=0A > ta-atmel/recipes-kernel/linux/files/poky:/h=0A >=0Aome/lachlan/=
poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek/sama5d3xe=0A >=0Ak=
:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/sama5d3xek=
:/h=0A > ome/lachlan/poky/meta-atmel/recipes-kernel/=0A >=0Alinux/linux-=
yocto-custom-3.10+AUTOINC+35158dd80a/sama5d3xek:/home/lachlan/p=0A >=0Ao=
ky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/sama5d3xek:/home/l=
ach=0A > lan/poky/meta-atmel/recipes-kernel/linux/fi=0A >=0Ales/sama5d3x=
ek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sam=0A >=0Aa=
5d3xek/armv7a:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/fil=
es/=0A > armv7a:/home/lachlan/poky/meta-atmel/recipe=0A >=0As-kernel/lin=
ux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/armv7a:/home/lach=0A >=0Al=
an/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/armv7a:/home/=
lac=0A >=0Ahlan/poky/meta-atmel/recipes-kernel/linux/files/armv7a:/home/=
lachlan/poky/me=0A >=0Ata-atmel/recipes-kernel/linux/files/sama5d3xek/ar=
m:/home/lachlan/poky/meta-a=0A >=0Atmel-lsp/recipes-kernel/linux/files/a=
rm:/home/lachlan/poky/meta-atmel/recipe=0A >=0As-kernel/linux/linux-yoct=
o-custom-3.10+AUTOINC+35158dd80a/arm:/home/lachlan/=0A >=0Apoky/meta-atm=
el/recipes-kernel/linux/linux-yocto-custom/arm:/home/lachlan/po=0A >=0Ak=
y/meta-atmel/recipes-kernel/linux/files/arm:/home/lachlan/poky/meta-atme=
l/r=0A >=0Aecipes-kernel/linux/files/sama5d3xek/:/home/lachlan/poky/meta=
-atmel-lsp/reci=0A >=0Apes-kernel/linux/files/:/home/lachlan/poky/meta-a=
tmel/recipes-kernel/linux/l=0A >=0Ainux-yocto-custom-3.10+AUTOINC+35158d=
d80a/:/home/lachlan/poky/meta-atmel/rec=0A >=0Aipes-kernel/linux/linux-y=
octo-custom/:/home/lachlan/poky/meta-atmel/recipes-=0A > kernel/linux/fi=
les/" #=0A > =0A > # $SRC_URI [6 operations]=0A > # set /home/lachlan/po=
ky/meta/conf/bitbakeconf:588=0A > # ""=0A > # set /home/lachlan/poky/met=
a/conf/documentation.conf:378=0A > # [doc] "The list of source files - l=
ocal or remote. This=0A > variable tells the OpenEmbedded build system w=
hat bits to pull in=0Afor=0A > the build and how to pull them in."=0A >=
 # set=0A >=0A/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-y=
octo-custom_3.10.b=0A > b:46 #=0A >=0A"git://git.kernel.org/pub/scm/linu=
x/kernel/git/torvalds/linux.git;protocol=3Dg=0A > it;nocheckout=3D1" # a=
ppend=0A >=0A/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/linu=
x-yocto-custom_3.=0A > 10.bbappend:10 # " file://sama5d3xek_lsp.dts "=0A=
 > # set=0A >=0A/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux=
-yocto-custom_3.10.b=0A > bappend:9 #=0A >=0A"git://github.com/linux4sam=
/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};no=0A > checkout=3D1"=
 # append=0A >=0A/home/lachlan/poky/meta-atmel/recipes-kernel/linux/linu=
x-yocto-custom_3.10.b=0A > bappend:10 # "file://defconfig"=0A > # comput=
ed:=0A > # =0A >=0A"git://github.com/linux4sam/linux-at91.git;protocol=
=3Dgit;branch=3D${KBRANCH};no=0A > checkout=3D1 file://defconfig"=0A >=
=0ASRC_URI=3D"git://github.com/linux4sam/linux-at91.git;protocol=3Dgit;b=
ranch=3Dlinux=0A > -3.10-at91;nocheckout=3D1 file://defconfig"=0A > =0A=
 > I can infer from this that it did not pickup the dts file as a=0Avali=
d=0A > source file, but I cannot seem to workout why?=0A > From the FILE=
PATH it appears that is has extracted the correct=0A > location of the s=
ourcefile at:=0A >=0A/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/li=
nux/files/sama5d3xek:=0A > =0A > =0A > Is there something else I should=
 be looking for or is there=0A > something in this that can highlight th=
e problem=0A=0A Looking down the history for SRC_URI I can see that meta=
-atmel=0A(which I assume =0A is the vendor layer you mention) *setting*=
 SRC_URI to a value, after=0Ayour =0A append operation, which explains w=
hy your value is being wiped out.=0AThis also =0A tells me that the prio=
rity of your meta-atmel-lsp layer is lower=0Athan meta-=0A atmel, which=
 is probably not what you want. I would suggest setting=0Athe layer =0A=
 priority in meta-atmel-lsp's conf/layer.conf so it is higher than=0Athe=
 layer =0A priority of meta-atmel, which will mean that meta-atmel-lsp '=
s=0Abbappend will =0A be applied second.=0A=0A Cheers,=0A Paul=0A=0A --=
 =0A=0A Paul Eggleton=0A Intel Open Source Technology Centre=0A -- =0A _=
______________________________________________=0A yocto mailing list=0A=
 yocto@yoctoproject.org=0A https://lists.yoctoproject.org/listinfo/yocto=
=0A---- Message sent via Adam Internet WebMail - http://www.adam.com.au/

--=_5dd7e343c1b442ea52ad2f2904241233
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks, That seemed to work fine. I changed my layer priorit=
y to 11, just above the atmel priority of 10.<div>I think it may have al=
so fixed another problem with my ntp time sources.</div><div>Thanks</div=
><div>Lachlan<br /><br /><blockquote><br />----- Original Message -----<=
br /><div style=3D"width:100%;background:rgb(228,228,228);"><div style=
=3D"font-weight:bold;">From:</div> "Paul Eggleton" &lt;paul.eggleton@lin=
ux.intel.com&gt;</div><br /><div style=3D"font-weight:bold;">To:</div>&l=
t;peterengcomau001@adam.com.au&gt;<br /><div style=3D"font-weight:bold;"=
>Cc:</div>&lt;yocto@yoctoproject.org&gt;<br /><div style=3D"font-weight:=
bold;">Sent:</div>Mon, 29 Dec 2014 16:34:04 +0000<br /><div style=3D"fon=
t-weight:bold;">Subject:</div>Re: [yocto] bitbake cannot locate source f=
ile from recipe<br /><br /><br />=0AOn Tuesday 30 December 2014 02:58:05=
 peterengcomau001@adam.com.au wrote:<br />=0A&gt;  The result of bitbake=
 -e linux-yocto-custom gives this output:<br />=0A&gt; <br />=0A&gt; # $=
FILESPATH [2 operations]<br />=0A&gt; #   set /home/lachlan/poky/meta/co=
nf/documentation.conf:174<br />=0A&gt; #     [doc] "The default set of d=
irectories the OpenEmbedded<br />=0A&gt; build system uses when searchin=
g for patches and files. It is defined<br />=0A&gt; in the base.bbclass=
 class found in meta/classes in the Source D<br />=0A&gt; irectory. Do n=
ot hand-edit the FILESPATH variable."<br />=0A&gt; #   set /home/lachlan=
/poky/meta/classes/base.bbclass:83<br />=0A&gt; #     "${@base_set_files=
path(["${FILE_DIRNAME}/${BP}",<br />=0A&gt; "${FILE_DIRNAME}/${BPN}", "$=
{FILE_DIRNAME}/files"], d)}"<br />=0A&gt; # computed:<br />=0A&gt; #   "=
${@base_set_filespath(["${FILE_DIRNAME}/${BP}",<br />=0A&gt; "${FILE_DIR=
NAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"<br />=0A&gt; FILESPATH=3D"=
/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sama5d3x<br />=
=0A&gt; ek/poky:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/f=
iles/poky:/h<br />=0A&gt; ome/lachlan/poky/meta-atmel/recipes-kernel<br=
 />=0A&gt; /linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/poky:/home/=
lachlan/poky/m<br />=0A&gt; eta-atmel/recipes-kernel/linux/linux-yocto-c=
ustom/poky:/home/lachlan/poky/me<br />=0A&gt; ta-atmel/recipes-kernel/li=
nux/files/poky:/h<br />=0A&gt; ome/lachlan/poky/meta-atmel/recipes-kerne=
l/linux/files/sama5d3xek/sama5d3xe<br />=0A&gt; k:/home/lachlan/poky/met=
a-atmel-lsp/recipes-kernel/linux/files/sama5d3xek:/h<br />=0A&gt; ome/la=
chlan/poky/meta-atmel/recipes-kernel/<br />=0A&gt; linux/linux-yocto-cus=
tom-3.10+AUTOINC+35158dd80a/sama5d3xek:/home/lachlan/p<br />=0A&gt; oky/=
meta-atmel/recipes-kernel/linux/linux-yocto-custom/sama5d3xek:/home/lach=
<br />=0A&gt; lan/poky/meta-atmel/recipes-kernel/linux/fi<br />=0A&gt; l=
es/sama5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/s=
am<br />=0A&gt; a5d3xek/armv7a:/home/lachlan/poky/meta-atmel-lsp/recipes=
-kernel/linux/files/<br />=0A&gt; armv7a:/home/lachlan/poky/meta-atmel/r=
ecipe<br />=0A&gt; s-kernel/linux/linux-yocto-custom-3.10+AUTOINC+35158d=
d80a/armv7a:/home/lach<br />=0A&gt; lan/poky/meta-atmel/recipes-kernel/l=
inux/linux-yocto-custom/armv7a:/home/lac<br />=0A&gt; hlan/poky/meta-atm=
el/recipes-kernel/linux/files/armv7a:/home/lachlan/poky/me<br />=0A&gt;=
 ta-atmel/recipes-kernel/linux/files/sama5d3xek/arm:/home/lachlan/poky/m=
eta-a<br />=0A&gt; tmel-lsp/recipes-kernel/linux/files/arm:/home/lachlan=
/poky/meta-atmel/recipe<br />=0A&gt; s-kernel/linux/linux-yocto-custom-3=
10+AUTOINC+35158dd80a/arm:/home/lachlan/<br />=0A&gt; poky/meta-atmel/r=
ecipes-kernel/linux/linux-yocto-custom/arm:/home/lachlan/po<br />=0A&gt;=
 ky/meta-atmel/recipes-kernel/linux/files/arm:/home/lachlan/poky/meta-at=
mel/r<br />=0A&gt; ecipes-kernel/linux/files/sama5d3xek/:/home/lachlan/p=
oky/meta-atmel-lsp/reci<br />=0A&gt; pes-kernel/linux/files/:/home/lachl=
an/poky/meta-atmel/recipes-kernel/linux/l<br />=0A&gt; inux-yocto-custom=
-3.10+AUTOINC+35158dd80a/:/home/lachlan/poky/meta-atmel/rec<br />=0A&gt;=
 ipes-kernel/linux/linux-yocto-custom/:/home/lachlan/poky/meta-atmel/rec=
ipes-<br />=0A&gt; kernel/linux/files/" #<br />=0A&gt; <br />=0A&gt; # $=
SRC_URI [6 operations]<br />=0A&gt; #   set /home/lachlan/poky/meta/conf=
/bitbakeconf:588<br />=0A&gt; #     ""<br />=0A&gt; #   set /home/lachla=
n/poky/meta/conf/documentation.conf:378<br />=0A&gt; #     [doc] "The li=
st of source files - local or remote. This<br />=0A&gt; variable tells t=
he OpenEmbedded build system what bits to pull in for<br />=0A&gt; the b=
uild and how to pull them in."<br />=0A&gt; #   set<br />=0A&gt; /home/l=
achlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.b<br=
 />=0A&gt; b:46 #<br />=0A&gt; "git://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git;protocol=3Dg<br />=0A&gt; it;nocheckout=3D1" #=
   append<br />=0A&gt; /home/lachlan/poky/meta-atmel-lsp/recipes-kernel/=
linux/linux-yocto-custom_3.<br />=0A&gt; 10.bbappend:10 #     " file://s=
ama5d3xek_lsp.dts "<br />=0A&gt; #   set<br />=0A&gt; /home/lachlan/poky=
/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.b<br />=0A&gt;=
 bappend:9 #<br />=0A&gt; "git://github.com/linux4sam/linux-at91.git;pro=
tocol=3Dgit;branch=3D${KBRANCH};no<br />=0A&gt; checkout=3D1" #   append=
<br />=0A&gt; /home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-y=
octo-custom_3.10.b<br />=0A&gt; bappend:10 #     "file://defconfig"<br /=
>=0A&gt; # computed:<br />=0A&gt; #  <br />=0A&gt; "git://github.com/lin=
ux4sam/linux-at91.git;protocol=3Dgit;branch=3D${KBRANCH};no<br />=0A&gt;=
 checkout=3D1 file://defconfig"<br />=0A&gt; SRC_URI=3D"git://github.com=
/linux4sam/linux-at91.git;protocol=3Dgit;branch=3Dlinux<br />=0A&gt; -3.=
10-at91;nocheckout=3D1 file://defconfig"<br />=0A&gt; <br />=0A&gt; I ca=
n infer from this that it did not pickup the dts file as a valid<br />=
=0A&gt; source file, but I cannot seem to workout why?<br />=0A&gt; From=
 the FILEPATH it appears that is has extracted the correct<br />=0A&gt;=
 location of the sourcefile at:<br />=0A&gt; /home/lachlan/poky/meta-atm=
el-lsp/recipes-kernel/linux/files/sama5d3xek:<br />=0A&gt; <br />=0A&gt;=
 <br />=0A&gt;  Is there something else I should be looking for or is th=
ere<br />=0A&gt; something in this that can highlight the problem<br /><=
br />=0ALooking down the history for SRC_URI I can see that meta-atmel (=
which I assume <br />=0Ais the vendor layer you mention) *setting* SRC_U=
RI to a value, after your <br />=0Aappend operation, which explains why=
 your value is being wiped out. This also <br />=0Atells me that the pri=
ority of your meta-atmel-lsp layer is lower than meta-<br />=0Aatmel, wh=
ich is probably not what you want. I would suggest setting the layer <br=
 />=0Apriority in meta-atmel-lsp's conf/layer.conf so it is higher than=
 the layer <br />=0Apriority of meta-atmel, which will mean that meta-at=
mel-lsp 's bbappend will <br />=0Abe applied second.<br /><br />=0ACheer=
s,<br />=0APaul<br /><br />=0A-- <br /><br />=0APaul Eggleton<br />=0AIn=
tel Open Source Technology Centre<br />=0A-- <br />=0A__________________=
_____________________________<br />=0Ayocto mailing list<br />=0Ayocto@y=
octoproject.org<br />=0Ahttps://lists.yoctoproject.org/listinfo/yocto<br=
 /></blockquote></div>---- Message sent via Adam Internet WebMail  - htt=
p://www.adam.com.au/</body></html>

--=_5dd7e343c1b442ea52ad2f2904241233--
