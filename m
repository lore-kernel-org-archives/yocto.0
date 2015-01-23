Return-Path: <alexander.haenel-baas@sieb-meyer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F9C8E0092E; Thu, 22 Jan 2015 23:45:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.sieb-meyer.de (smnotes1.sieb-meyer.de [213.252.170.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C39CE0090E
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 23:45:11 -0800 (PST)
Received: from SMEXCHANGE01.siebmeyer.org ([::1]) by
	SMExchange01.siebmeyer.org ([::1]) with mapi id 14.02.0387.000;
	Fri, 23 Jan 2015 08:45:04 +0100
From: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
To: Trevor Woerner <twoerner@gmail.com>, Jegan Chandru <pcjegan@gmail.com>
Thread-Topic: [yocto] mount.nfs -> how i include nfs-utils
Thread-Index: AdA2JWepMhOfgrrkSM+VeELOQaX4NwAixvLAAAjJZTD///ZFAP//6JHwgAAoq4D//+7BAA==
Date: Fri, 23 Jan 2015 07:45:03 +0000
Message-ID: <9BA84827B30CBE4996725F98F7DC9123428FB44F@SMExchange01.siebmeyer.org>
References: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>
	<CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>
	<9BA84827B30CBE4996725F98F7DC9123428FB401@SMExchange01.siebmeyer.org>
	<CAAA4K6LtR+G7G5sbByg+ZKE3+e_Kb2T-HBOdkAOrMp5t24PzPA@mail.gmail.com>
	<9BA84827B30CBE4996725F98F7DC9123428FB42C@SMExchange01.siebmeyer.org>
	<54C1FAD1.1080903@gmail.com>
In-Reply-To: <54C1FAD1.1080903@gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.207]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"ting.liu@freescale.com" <ting.liu@freescale.com>
Subject: Re: mount.nfs -> how i include nfs-utils
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
X-List-Received-Date: Fri, 23 Jan 2015 07:45:23 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You are right

That was a copy & paste error.
The line called exactly: IMAGE_INSTALL_append =3D " nfs-utils"
With the spacer.

Alex

-----Urspr=FCngliche Nachricht-----
Von: Trevor Woerner [mailto:twoerner@gmail.com]=20
Gesendet: Freitag, 23. Januar 2015 08:40
An: H=E4nel-Baas, Alexander; Jegan Chandru
Cc: yocto@yoctoproject.org; ting.liu@freescale.com
Betreff: Re: [yocto] mount.nfs -> how i include nfs-utils

On 01/23/15 02:14, H=E4nel-Baas, Alexander wrote:
> I have added the line IMAGE_INSTALL_append=3D"nfs-utils" in the=20
> local.conf file and now nfs work on the target.

If the above line is working, that would be a lucky coincidence! :-)

Using the _append operator one needs to include the space when adding their=
 string:

    IMAGE_INSTALL_append =3D " nfs-utils"

In your case I'm guessing there already was a space at the end of the exist=
ing object, otherwise the code building your image would not have been able=
 to separate "nfs-utils" from whatever proceeded it, and therefore would no=
t have been able to add that package to your image.

