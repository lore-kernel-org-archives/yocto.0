Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E4FAE00AD5; Fri,  7 Apr 2017 04:40:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Apr 2017 04:40:48 PDT
Received: from rediffmail.com (pro236-139.mxout.rediffmailpro.com
	[202.137.236.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F11B9E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 04:40:48 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1491564842;
	bh=4wtdmWAi+wnPHpqA0cmFRObbLaXKdd4/gqqws8sqfxI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=EUpskroHJmOIvt02BWKe5WdXHlnNiVvDkTY6PxkXAg6IHC9s6AIuWShIsl2tvTaKW
	kFeUbg+WxY58qVrDQOWA7+ZtcPNvTcPixaxkolxBOgyIR5M9QIsXt8cF6VVGxrzb54
	6SzGRoYqgHGS2+pBXa7SBJKcnVdB0YbtvJhZ0mEU=
Received: (qmail 28396 invoked from network); 7 Apr 2017 11:34:02 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -100
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeliedrtdeigdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfhfjgfufffkgggtgffothesthhqghdtvddtjeenucfhrhhomhepfdevhhgrnhgurhgrshgvkhhhrghrucfufdcuoegthhgrnhgurhgrshgvkhhhrghrsegvvhholhhuthgvqdhshihsrdgtohhmqeenucffohhmrghinheplhhisghmshhotghomhhmrdhsohdphihotghtohhprhhojhgvtghtrdhorhhgnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhht
Received: from unknown (HELO chandruPC)
	(chandrasekhar@evolute-sys.com@122.166.233.11)
	by mailserver with SMTP; 7 Apr 2017 11:34:01 -0000
From: "Chandrasekhar S" <chandrasekhar@evolute-sys.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <1491468030.S.5129.28462.pro-236-197.1491469277.21186@webmail.rediffmail.com>
	<1491469744.S.10166.2428.pro-237-142.1491470210.30755@webmail.rediffmail.com>
	<CAMKF1srgp0i2DqXLQByJYbcBt4cH2-pFL9ej9NNu1vG66MCJoA@mail.gmail.com>
In-Reply-To: <CAMKF1srgp0i2DqXLQByJYbcBt4cH2-pFL9ej9NNu1vG66MCJoA@mail.gmail.com>
Date: Fri, 7 Apr 2017 17:04:02 +0530
Message-ID: <005f01d2af92$db907850$92b168f0$@evolute-sys.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJnlDQL7Y0Jx8ZIohuFDoVsd1VmawIqUxuoAjHLGdmgbRxAMA==
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 07 Apr 2017 11:40:51 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

Thank you Khem, it worked.

Regards,
Chandrasekhar

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: Thursday, April 06, 2017 7:18 PM
To: chandrasekhar c <chandrasekhar@evolute-sys.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] unable to create softlink for precompilied =
libraries

On Thu, Apr 6, 2017 at 2:16 AM, chandrasekhar c =
<chandrasekhar@evolute-sys.com> wrote:
> Hi,
> I have added this FILES_${PN} +=3D " ${libdir}/libMSOComm.so " line in =

> my recipe still the issue is present
>

that may not be enough. .so are treated as symlinks and shoved into -dev =
packages by default. if you need unversioned libraries then you have to =
let the system know that its not a dev library symlink

FILES_${PN} +=3D "${libdir}/*.so"
FILES_SOLIBSDEV =3D ""
INSANE_SKIP_${PN} +=3D "dev-so"

> Thanks
> Chandra
>
> From: chandrasekhar c <chandrasekhar@evolute-sys.com>
> Sent: Thu, 6 Apr 2017 14:39:04 GMT+0530
> To: "Fabien Lahoudere " <fabien.lahoudere@collabora.co.uk>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
>
> Subject: Re: [yocto] unable to create softlink for precompilied=20
> libraries
>
> Hi ,
> No, I will do the changes and let you know the result.
>
> Regards,
> Chandrasekhar
>
> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] unable to create softlink for precompilied=20
> libraries
>
> On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:
>> Hi,
>> I have a third party precompilied libraries. I erota a recipe to copy =
to
>> rootfs and create   soft
>> links for the same. After doing bitbake it didnt throw any errors,=20
>> but when I check th rootfs it didn't create any link file.
>> Below is my recipe
>>
>> do_install_append() {
>>                   install -d ${D}${libdir}/
>>                 install -m 0777 ${S}/libMSO.so.1.2
>> ${D}${libdir}/libMSO.so.1.2
>>                 ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so
>>                 install -m 0777 ${S}/libMSOComm.so.1.2
>> ${D}${libdir}/libMSOComm.so.1.2 //This is success
>>                 ln -sf libMSOComm.so.1.2=20
>> ${D}${libdir}/libMSOComm.so.1 //This is success
>>                 ln -sf libMSOComm.so.1  ${D}${libdir}/libMSOComm.so=20
>> //This is not happening } Can any one tell me a solution for this.
>
> Did you ship it with FILES_${PN} +=3D " ${libdir}/libMSOComm.so " ?
>
>
>>
>> Thanks and Regards,
>> Chandrasekhar
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


