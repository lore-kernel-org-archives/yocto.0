Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24EA3E00985; Thu,  6 Apr 2017 02:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RDNS_NONE,SPF_HELO_PASS,UNPARSEABLE_RELAY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 02:23:33 PDT
Received: from rediffmail.com (unknown [202.137.236.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D532E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 02:23:33 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1491470210;
	bh=VrNqs4C005FxOt6153DLz/N3kGiyktQOszvHZX6x/Ck=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=Vri0Q5/5LC5ioRsZ4JRDYeGDFElFkK88yPbIet6ylk93Y6kWz86MEQoqQao8xcpqK
	vLC/7+6TlKaa+n7jleJW8l+cHnz9W16uHZHvYupNEV0G89trVlWOgapvIUPR+Gq1NJ
	H6wOPkPj5l3UlDFMKS/KBAD7NeV119WcikCzucSI=
Received: (qmail 30811 invoked by uid 510); 6 Apr 2017 09:16:50 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -45
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeliedrtdeggddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenogetfedtuddqtdduucdludehmdenhfhorhhgvgguucfjvffvrffuucdlgedtmdenucfjughrpeffggfvkfgjshfuhfgtsegrtderredttdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhcutgdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdqshihshdrtghomheqnecuffhomhgrihhnpehlihgsmhhsohgtohhmmhdrshhopdhlihgsmhhsohdrshhopdihohgtthhophhrohhjvggtthdrohhrghenucfkphepuddvvddrudeiiedrvdeffedruddunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
Date: 6 Apr 2017 09:16:50 -0000
MIME-Version: 1.0
To: "chandrasekhar c " <chandrasekhar@evolute-sys.com>
Received: from unknown 122.166.233.11 by rediffmailpro.com via HTTP;
	06 Apr 2017 09:16:50 -0000
Message-ID: <1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
In-Reply-To: <1491468030.S.5129.28462.pro-236-197.1491469277.21186@webmail.rediffmail.com>
Sender: chandrasekhar@evolute-sys.com
From: "chandrasekhar c" <chandrasekhar@evolute-sys.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unable to create softlink for precompilied libraries
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
X-List-Received-Date: Thu, 06 Apr 2017 09:23:37 -0000
Content-Type: multipart/alternative;
	boundary="=_aa66e23b3fb5f2634bee4f53055017a0"

--=_aa66e23b3fb5f2634bee4f53055017a0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,I have added this&nbsp;FILES_${PN} += &quot; ${libdir}/libMSOComm.so&nbsp;&quot; line in my recipe still the issue is presentThanks&nbsp;ChandraFrom: chandrasekhar c &lt;chandrasekhar@evolute-sys.com&gt;Sent: Thu, 6 Apr 2017 14:39:04 GMT+0530To: &quot;Fabien Lahoudere &quot; &lt;fabien.lahoudere@collabora.co.uk&gt;Cc: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;Subject: Re: [yocto] unable to create softlink for precompilied librariesHi ,No, I will do the changes and let you know the result.Regards,ChandrasekharFrom: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&gt;Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530To: yocto@yoctoproject.orgSubject: Re: [yocto] unable to create softlink for precompilied librariesOn Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:&gt; Hi, &nbsp;&gt; I have a third party precompilied libraries. I erota a recipe to copy to rootfs and create &nbsp; soft&gt; links for the same. After doing bitbake it didnt throw any errors, but when I check th rootfs it&gt; didn&#39;t create any link file.&gt; Below is my recipe&gt; &nbsp;&gt; do_install_append() {&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${libdir}/&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/libMSO.so.1.2 ${D}${libdir}/libMSO.so.1.2&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1.2 //This is success&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is success&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSOComm.so.1 &nbsp;${D}${libdir}/libMSOComm.so //This is not happening&gt; }&gt; Can any one tell me a solution for this.Did you ship it with FILES_${PN} += &quot; ${libdir}/libMSOComm.so &quot; ?&gt; &nbsp;&gt; Thanks and Regards,&gt; Chandrasekhar--_______________________________________________yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto --_______________________________________________yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto

--=_aa66e23b3fb5f2634bee4f53055017a0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

Hi,<br />I have added this&nbsp;FILES_${PN} +=3D &quot; ${libdir}/<a href=
=3D'http://libMSOComm.so'>libMSOComm.so</a>&nbsp;&quot; line in my recipe s=
till the issue is present<br /><br />Thanks&nbsp;<br />Chandra<br /><br />F=
rom: chandrasekhar c &lt;chandrasekhar@evolute-sys.com&gt;<br />Sent: Thu, =
6 Apr 2017 14:39:04 GMT+0530<br />To: &quot;Fabien Lahoudere &quot; &lt;fab=
ien.lahoudere@collabora.co.uk&gt;<br />Cc: &quot;yocto@yoctoproject.org&quo=
t; &lt;yocto@yoctoproject.org&gt;<br />Subject: Re: [yocto] unable to creat=
e softlink for precompilied libraries<br /><br />Hi ,<br />No, I will do th=
e changes and let you know the result.<br /><br />Regards,<br />Chandrasekh=
ar<br /><br />From: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&g=
t;<br />Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530<br />To: yocto@yoctoproject=
.org<br />Subject: Re: [yocto] unable to create softlink for precompilied l=
ibraries<br /><br />On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrot=
e:<br />&gt; Hi, &nbsp;<br />&gt; I have a third party precompilied librari=
es. I erota a recipe to copy to rootfs and create &nbsp; soft<br />&gt; lin=
ks for the same. After doing bitbake it didnt throw any errors, but when I =
check th rootfs it<br />&gt; didn&#39;t create any link file.<br />&gt; Bel=
ow is my recipe<br />&gt; &nbsp;<br />&gt; do_install_append() {<br />&gt; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -d $=
{D}${libdir}/<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; install -m 0777 ${S}/<a href=3D'http://libMSO.so'>libMSO.so</a>.1.2 ${=
D}${libdir}/<a href=3D'http://libMSO.so'>libMSO.so</a>.1.2<br />&gt; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf <a href=3D'http://=
libMSO.so'>libMSO.so</a>.1.2 ${D}${libdir}/<a href=3D'http://libMSO.so'>lib=
MSO.so</a><br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; install -m 0777 ${S}/<a href=3D'http://libMSOComm.so'>libMSOComm.so</a>.1=
.2 ${D}${libdir}/<a href=3D'http://libMSOComm.so'>libMSOComm.so</a>.1.2 //T=
his is success<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; ln -sf <a href=3D'http://libMSOComm.so'>libMSOComm.so</a>.1.2 ${D}${l=
ibdir}/<a href=3D'http://libMSOComm.so'>libMSOComm.so</a>.1 //This is succe=
ss<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf=
 <a href=3D'http://libMSOComm.so'>libMSOComm.so</a>.1 &nbsp;${D}${libdir}/<=
a href=3D'http://libMSOComm.so'>libMSOComm.so</a> //This is not happening<b=
r />&gt; }<br />&gt; Can any one tell me a solution for this.<br /><br />Di=
d you ship it with FILES_${PN} +=3D &quot; ${libdir}/<a href=3D'http://libM=
SOComm.so'>libMSOComm.so</a> &quot; ?<br /><br /><br />&gt; &nbsp;<br />&gt=
; Thanks and Regards,<br />&gt; Chandrasekhar<br />--<br />________________=
_______________________________<br />yocto mailing list<br />yocto@yoctopro=
ject.org<br /><a href=3D'//prolinks.rediffmailpro.com/cgi-bin/prored.cgi?re=
d=3Dhttps%3A%2F%2Flists%2Eyoctoproject%2Eorg%2Flistinfo%2Fyocto&amp;rediffn=
g=3D0'>https://lists.yoctoproject.org/listinfo/yocto</a> --<br />__________=
_____________________________________<br />yocto mailing list<br />yocto@yo=
ctoproject.org<br /><a href=3D"//prolinks.rediffmailpro.com/cgi-bin/prored.=
cgi?red=3Dhttps%3A%2F%2Flists%2Eyoctoproject%2Eorg%2Flistinfo%2Fyocto&amp;r=
ediffng=3D0" rel=3D"external" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a>

--=_aa66e23b3fb5f2634bee4f53055017a0--
