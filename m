Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DDDDE0142E
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 01:06:33 -0700 (PDT)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0355.002; Mon, 30 Jul 2012 10:06:31 +0200
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [SPAM] - Re: [yocto] [HOB / i.MX6] unable to parse %s - Number
	of numbers in MIME From exceeds maximum threshold
Thread-Index: AQHNaOH7wO8en9ARZUaSh1oaRZ/CBZdBgAFg
Date: Mon, 30 Jul 2012 08:06:29 +0000
Message-ID: <4439C3C0562087488F139C696CD862A72C16B2@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A72C1452@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNec5=byLVKUqcCuO3vTtFLWCDBuug-xO_QdwvYuCcs-tw@mail.gmail.com>
In-Reply-To: <CAEsOVNec5=byLVKUqcCuO3vTtFLWCDBuug-xO_QdwvYuCcs-tw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:3476:e22f:d2e2:6247]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [SPAM] - Re: [HOB / i.MX6] unable to parse %s - Number of numbers in MIME From exceeds maximum threshold
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2012 08:06:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So indeed I have been able to get the HOB working on i.MX by getting the de=
nzil release for the OE meta package.

Thanks for the feedback,

Kind regards,

Tim

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: maandag 23 juli 2012 16:47
To: Tim Verstraete
Cc: yocto@yoctoproject.org
Subject: [SPAM] - Re: [yocto] [HOB / i.MX6] unable to parse %s - Number of =
numbers in MIME From exceeds maximum threshold

On Mon, Jul 23, 2012 at 4:08 AM, Tim Verstraete <Tim.Verstraete@medecbenelu=
x.be> wrote:
> Hi,
>
>
>
> I have installed yocto and downloaded meta-fsl-arm and=20
> meta-openembedded. I started HOB, added those layers and when I select=20
> imx6sabrelite target, HOB starts to parse the recipes but then stops and =
gives following error:
> "error: unable to parse %s"
>
>
>
> What does this error message mean and what can I do about it ...

Are you using master or the last release denzil? Can you paste the entire l=
og (if there was text)?

-M

>
>
>
> Thanks in advance,
>
>
>
> Kind regards,
>
>
>
> Tim
>
>
>
> BTW I am currently running Ubuntu 12.04 LTS 64bit but I also had this=20
> on Ubuntu 10.04 LTS 64bit.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

