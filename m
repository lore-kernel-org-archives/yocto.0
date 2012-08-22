Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E76E013B2
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:17:14 -0700 (PDT)
Received: by lagr15 with SMTP id r15so940249lag.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=CE3Ropkl+tGlJAO4l5wLA/XY7cuWemXOYo2BLnKjDH8=;
	b=zZkXwjT9GehhRC0292VDknigHWQpj73ha0uZWqpeZ84u9S6mc8urHz7JLl1J7NrJPF
	7xnPyK8PiyXEAw0Qq8rcJpP2qtJxhbYmMrOVPn+HRnf7fEVVlbGDJFSD8XqSt3cQmuYk
	Xbx30pRiRd4bYLC3wHnOz+sa7izmSujE1WYbvVjL/utL1O+8LgNY27JynrncwqFEB82+
	XlzTqBe43qoz4/gUcOBGlgKwR1+ohigN0lwfu06JcIXyhCvNtuUDCyuE/iY9xFNP9rId
	86cF2vq0bmSW0V7l+d3SiaDtlZenja9bs2CpG7hJQ46Ne+7JVl1O1RKMtWqwv2H8jxhh
	9H6A==
Received: by 10.112.100.65 with SMTP id ew1mr3779617lbb.16.1345666633845; Wed,
	22 Aug 2012 13:17:13 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Wed, 22 Aug 2012 13:16:53 -0700 (PDT)
In-Reply-To: <CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
	<CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
	<CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 22 Aug 2012 13:16:53 -0700
X-Google-Sender-Auth: Q-qcwXJEePlmX1csabZ2a0vvpSs
Message-ID: <CABcZAN=cCub4sgSW7am+TaA8bois9Q23_x1kRmWWBCh9=hCNXQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 20:17:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 22, 2012 at 1:15 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Wed, Aug 22, 2012 at 3:24 PM, Chris Larson <clarson@kergoth.com> wrote=
:
>> On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com> wr=
ote:
>>> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..."
>>> it lists "net-snmp". Therefore couldn't the wording of the bitbake
>>> help be improved to say:
>>>
>>> -s, --show-versions   show current and preferred versions of all __reci=
pes__
>>>
>>> instead of:
>>
>>
>> It could, and should, be changed in that way, yes.
>
> Do the OE people accept this wording too, or is this a
> yocto-project-only thing? In other words, should a potential patch be
> sent to OE or here?

The change would be to a core component, which is part of OE and which
yocto pulls in =E2=80=94 bitbake. So it would make no sense to send the pat=
ch
here. No changes to bitbake are going into poky without going into the
main bitbake repository. The bitbake-devel mailing list is the correct
place for it.
--=20
Christopher Larson

