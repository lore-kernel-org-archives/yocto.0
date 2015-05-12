Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE333E00982; Mon, 11 May 2015 22:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.197 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 381 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 May 2015 22:29:05 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76146E00820
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 22:29:05 -0700 (PDT)
Received: from [216.82.241.132] by server-5.bemta-8.messagelabs.com id
	4F/C3-31150-22E81555; Tue, 12 May 2015 05:22:42 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-13.tower-45.messagelabs.com!1431408162!39659482!1
X-Originating-IP: [207.250.73.192]
X-StarScan-Received: 
X-StarScan-Version: 6.13.14; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8313 invoked from network); 12 May 2015 05:22:42 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.192)
	by server-13.tower-45.messagelabs.com with AES128-SHA encrypted SMTP;
	12 May 2015 05:22:42 -0000
Received: from AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805]) by
	AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8%17]) with mapi id
	14.03.0174.001; Tue, 12 May 2015 00:22:41 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Trevor Woerner <twoerner@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Toolchain and SDK
Thread-Index: AdCLvYop66QVkIh9RaahnRbFDiNSfAAoqUGAAATQXlA=
Date: Tue, 12 May 2015 05:22:41 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD218F7D8E@AMDTCEX10.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD218F77C5@AMDTCEX10.actuant.pri>
	<55512721.1050607@gmail.com>
In-Reply-To: <55512721.1050607@gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
Subject: Re: Toolchain and SDK
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
X-List-Received-Date: Tue, 12 May 2015 05:29:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yeah, I forgot that I need to be more precise here. Of course I'm using the=
 actual recipe name and not the 'image-recipe'.

It turns out that the toolchain was included after all. Just took me awhile=
 to find it there since it was so well hidden there!

Teemu Keskinarkaus
Software system engineer

maximatecc
making machines smart, safe and productive


> -----Original Message-----
> From: Trevor Woerner [mailto:twoerner@gmail.com]
> Sent: 12. toukokuuta 2015 1:03
> To: Keskinarkaus, Teemu; yocto@yoctoproject.org
> Subject: Re: [yocto] Toolchain and SDK
>
> On 05/11/15 03:52, Keskinarkaus, Teemu wrote:
> >
> >
> > I've learned that there is command: bitbake image-recipe -c
> > populate_sdk that'll create the sdk. The thing is that it contains the
> > sysroots, but toolchain is not there.
> >
>
> Just to clarify, you're not literally typing "bitbake image-recipe -c pop=
ulate_sdk",
> are you? The "image-recipe" part should be replaced with the actual image=
 string
> you want the generate an SDK for. For example, if you were building "bitb=
ake
> core-image-minimal", then you generate its SDK with "bitbake core-image-
> minimal -c populate_sdk".
>
> >
> >
> > I tried meta-toolchain - target as well, but that too didn't make the
> > toolchain or at least I couldn't find it anywhere.
> >
>
> Have you looked in $TMPDIR/.../deploy/.../sdk ? (different version and/or
> different distros put it in different places, but looking for an "sdk" di=
rectory
> beneath a "deploy" directory is your best bet)

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

