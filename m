Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2E1E00970; Thu,  6 Apr 2017 01:14:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MSGID_FROM_MTA_HEADER, SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4557]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 01:14:49 PDT
Received: from rediffmail.com (pro236-209.mxout.rediffmailpro.com
	[202.137.236.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08B3E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 01:14:49 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1491466085;
	bh=ejRfDJD6btWpo8JmdXRKm1QefJgMeuvTg32K9xLw/qQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=koqeNDxPL8eXgLBKi34PAvZ9vELACGYcjbrNWbmQJo6r0RLQFEKH7olTS8QVFHR9j
	OAh0IYG6Hm8QlEcZBB7hN0RLbm32iLNUgFTdwNRu53vChKmVqAfPHM6oCmXDXeY7KK
	btie84+GSQMEFDGEOwc80m7y7NtxZq7G1J1w5iJA=
Received: (qmail 9409 invoked by uid 510); 6 Apr 2017 08:08:05 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: 0
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeliedrtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffkfggvfhsuffhtgesrgdtvdertddtjeenucfhrhhomhepfdgthhgrnhgurhgrshgvkhhhrghrucgtfdcuoegthhgrnhgurhgrshgvkhhhrghrsegvvhholhhuthgvqdhshihsrdgtohhmqeenucffohhmrghinheplhhisghmshhotghomhhmrdhsohenucfkphepuddvvddrudeiiedrvdeffedruddunecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
Date: 6 Apr 2017 08:08:05 -0000
Message-ID: <20170406080805.9397.qmail@pro-236-209.rediffmailpro.com>
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Received: from unknown 122.166.233.11 by rediffmailpro.com via HTTP;
	06 Apr 2017 08:08:04 -0000
Sender: chandrasekhar@evolute-sys.com
From: "chandrasekhar c" <chandrasekhar@evolute-sys.com>
Subject: unable to create softlink for precompilied libraries
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
X-List-Received-Date: Thu, 06 Apr 2017 08:14:52 -0000
Content-Type: multipart/alternative;
	boundary="=_698ddb6cff7d97a606a47da936a6089c"

--=_698ddb6cff7d97a606a47da936a6089c
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,&nbsp;I have a third party precompilied libraries. I erota a recipe to copy to rootfs and create &nbsp;soft links for the same. After doing bitbake it didnt throw any errors, but when I check th rootfs it didn&#39;t create any link file.Below is my recipe&nbsp;do_install_append() {&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;install -d ${D}${libdir}/&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSO.so.1.2 ${D}${libdir}/libMSO.so.1.2&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1.2 //This is success&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is success&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSOComm.so.1&nbsp;${D}${libdir}/libMSOComm.so //This is not happening}
Can any one tell me a solution for this.&nbsp;
Thanks and Regards,Chandrasekhar

--=_698ddb6cff7d97a606a47da936a6089c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<span style=3D"font-size:14px;">Hi,&nbsp;<br />I have a third party precomp=
ilied libraries. I erota a recipe to copy to rootfs and create &nbsp;soft l=
inks for the same. After doing bitbake it didnt throw any errors, but when =
I check th rootfs it didn&#39;t create any link file.<br />Below is my reci=
pe</span><br />&nbsp;<p style=3D"margin: 0px; padding: 0px; border: 0px; fo=
nt-size: 15px; font-family: 'Helvetica Neue', Helvetica, Arial, 'Lucida Gra=
nde', sans-serif; vertical-align: baseline; color: rgb(81, 98, 111); line-h=
eight: 25.950000762939453px;">do_install_append() {<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;install -d ${D}${libdir}/<br />&nbsp;&n=
bsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSO.so.1.2 ${D}=
${libdir}/libMSO.so.1.2<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln=
 -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so<br />&nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSOComm.so.1.2 ${D}${libdir}/libMS=
OComm.so.1.2 //This is success<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1 //This is succe=
ss<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSOComm.so.1&=
nbsp;${D}${libdir}/libMSOComm.so //This is not happening<br />}</p>
<p style=3D"margin: 0px; padding: 0px; border: 0px; font-size: 15px; font-f=
amily: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; ver=
tical-align: baseline; color: rgb(81, 98, 111); line-height: 25.95000076293=
9453px; min-height: 8pt;">Can any one tell me a solution for this.<br />&nb=
sp;</p>
<p style=3D"margin: 0px; padding: 0px; border: 0px; font-size: 15px; font-f=
amily: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; ver=
tical-align: baseline; color: rgb(81, 98, 111); line-height: 25.95000076293=
9453px; min-height: 8pt;">Thanks and Regards,<br />Chandrasekhar</p>

--=_698ddb6cff7d97a606a47da936a6089c--
