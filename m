Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCBB0E00985; Thu,  6 Apr 2017 02:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 02:08:05 PDT
Received: from rediffmail.com (pro236-194.mxout.rediffmailpro.com
	[202.137.236.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD68CE0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 02:08:04 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1491469277;
	bh=TajnyQ6G77ulOosoHqlYABAReiF52wdw+sPusTOI1qA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=DuQOqqceibU7hsxvPCS5nR6OpWe0I0nWTaCpq2/NEdioxvooTfI7DdqaiwYSt2ria
	Oji5RLoT98Zb8Duc+2gbLyaMvi4Vxr/mLnfAqxGVc7d+3Xl7CZvIqDa8Wkyq2VIGBQ
	tn9SOtEISKPgHRW8koSQb5k5w+fXIvcOVYdwcv1E=
Received: (qmail 21294 invoked by uid 510); 6 Apr 2017 09:01:17 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -60
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeliedrtdeggdduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenhfhorhhgvgguucfjvffvrffuucdlgedtmdenucfjughrpeffggfvkfgjshfuhfgtsegrtderredttdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhcutgdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdqshihshdrtghomheqnecuffhomhgrihhnpehlihgsmhhsohgtohhmmhdrshhopdhlihgsmhhsohdrshhopdihohgtthhophhrohhjvggtthdrohhrghenucfkphepuddvvddrudeiiedrvdeffedruddunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
Date: 6 Apr 2017 09:01:17 -0000
MIME-Version: 1.0
To: "Fabien Lahoudere " <fabien.lahoudere@collabora.co.uk>
Received: from unknown 122.166.233.11 by rediffmailpro.com via HTTP;
	06 Apr 2017 09:01:17 -0000
Message-ID: <1491468030.S.5129.28462.pro-236-197.1491469277.21186@webmail.rediffmail.com>
In-Reply-To: <1491467848.25991.32.camel@collabora.co.uk>
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
X-List-Received-Date: Thu, 06 Apr 2017 09:08:09 -0000
Content-Type: multipart/alternative;
	boundary="=_e1ae2c66d4f6581b1bfc9d29dc9a8f23"

--=_e1ae2c66d4f6581b1bfc9d29dc9a8f23
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi ,No, I will do the changes and let you know the result.Regards,ChandrasekharFrom: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&gt;Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530To: yocto@yoctoproject.orgSubject: Re: [yocto] unable to create softlink for precompilied librariesOn Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:&gt; Hi, &nbsp;&gt; I have a third party precompilied libraries. I erota a recipe to copy to rootfs and create &nbsp; soft&gt; links for the same. After doing bitbake it didnt throw any errors, but when I check th rootfs it&gt; didn&#39;t create any link file.&gt; Below is my recipe&gt; &nbsp;&gt; do_install_append() {&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${libdir}/&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/libMSO.so.1.2 ${D}${libdir}/libMSO.so.1.2&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1.2 //This is success&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is success&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf libMSOComm.so.1 &nbsp;${D}${libdir}/libMSOComm.so //This is not happening&gt; }&gt; Can any one tell me a solution for this.Did you ship it with FILES_${PN} += &quot; ${libdir}/libMSOComm.so &quot; ?&gt; &nbsp;&gt; Thanks and Regards,&gt; Chandrasekhar--_______________________________________________yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/yocto

--=_e1ae2c66d4f6581b1bfc9d29dc9a8f23
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

Hi ,<br />No, I will do the changes and let you know the result.<br /><br /=
>Regards,<br />Chandrasekhar<br /><br />From: Fabien Lahoudere &lt;fabien.l=
ahoudere@collabora.co.uk&gt;<br />Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530<b=
r />To: yocto@yoctoproject.org<br />Subject: Re: [yocto] unable to create s=
oftlink for precompilied libraries<br /><br />On Thu, 2017-04-06 at 08:08 +=
0000, chandrasekhar c wrote:<br />&gt; Hi, &nbsp;<br />&gt; I have a third =
party precompilied libraries. I erota a recipe to copy to rootfs and create=
 &nbsp; soft<br />&gt; links for the same. After doing bitbake it didnt thr=
ow any errors, but when I check th rootfs it<br />&gt; didn&#39;t create an=
y link file.<br />&gt; Below is my recipe<br />&gt; &nbsp;<br />&gt; do_ins=
tall_append() {<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; install -d ${D}${libdir}/<br />&gt; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/<a href=3D'http://libMS=
O.so'>libMSO.so</a>.1.2 ${D}${libdir}/<a href=3D'http://libMSO.so'>libMSO.s=
o</a>.1.2<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 ln -sf <a href=3D'http://libMSO.so'>libMSO.so</a>.1.2 ${D}${libdir}/<a hre=
f=3D'http://libMSO.so'>libMSO.so</a><br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; install -m 0777 ${S}/<a href=3D'http://libMSOCo=
mm.so'>libMSOComm.so</a>.1.2 ${D}${libdir}/<a href=3D'http://libMSOComm.so'=
>libMSOComm.so</a>.1.2 //This is success<br />&gt; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; ln -sf <a href=3D'http://libMSOComm.so'>lib=
MSOComm.so</a>.1.2 ${D}${libdir}/<a href=3D'http://libMSOComm.so'>libMSOCom=
m.so</a>.1 //This is success<br />&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; ln -sf <a href=3D'http://libMSOComm.so'>libMSOComm.so</=
a>.1 &nbsp;${D}${libdir}/<a href=3D'http://libMSOComm.so'>libMSOComm.so</a>=
 //This is not happening<br />&gt; }<br />&gt; Can any one tell me a soluti=
on for this.<br /><br />Did you ship it with FILES_${PN} +=3D &quot; ${libd=
ir}/<a href=3D'http://libMSOComm.so'>libMSOComm.so</a> &quot; ?<br /><br />=
<br />&gt; &nbsp;<br />&gt; Thanks and Regards,<br />&gt; Chandrasekhar<br =
/>--<br />_______________________________________________<br />yocto mailin=
g list<br />yocto@yoctoproject.org<br /><a href=3D"//prolinks.rediffmailpro=
.com/cgi-bin/prored.cgi?red=3Dhttps%3A%2F%2Flists%2Eyoctoproject%2Eorg%2Fli=
stinfo%2Fyocto&amp;rediffng=3D0" rel=3D"external" target=3D"_blank">https:/=
/lists.yoctoproject.org/listinfo/yocto</a>

--=_e1ae2c66d4f6581b1bfc9d29dc9a8f23--
