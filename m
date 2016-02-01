Return-Path: <cwerther3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78C4AE00BDA; Sun, 31 Jan 2016 16:18:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cwerther3[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2024CE00B9D
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 16:18:54 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id ba1so105864935obb.3
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 16:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=pHL85IjOLiKZ9XFaGoS+c3eHUxNJgQdMYy377kbQ4Ms=;
	b=um7v5w4/gc9mAxgHGcIqyUrQqzlty5qDi+F1qzUWnjkHQyC9S4rtpyPvSdIyHkam+U
	zt4zhTUhc7tDzK1kM4k0O+VVytzmqltCa/M1x/lYpViKbMI3FWiIgEosLcWep/oEAbHt
	/Xv5fVs7Ydr3uOPO6LqplCKbLnhY1J+bvdj+t7mf2OxbxdgM8uTpB/wTA9EEa8bPP3aL
	ZNSrUKxY+ZYt/H9AD44yzxng8HQ7ZplrHYwci63RJwAeIHkXf6/zalzsaadxwiD/rTNT
	sNh357nckq3TNegnp1O+YCn9mjHDvAeccAR47DqOIRR19nAq6RzreSV1nDbhZqz5DN9L
	iWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:content-transfer-encoding:message-id:references:to;
	bh=pHL85IjOLiKZ9XFaGoS+c3eHUxNJgQdMYy377kbQ4Ms=;
	b=mYjDuW5iNszTqgZXhCvODn4a8W3UGNJxLsioFqTmtTwo284p7791H2lXFDNlXK2m1x
	FSyM4KIvtni1cm7dvAWb5Gr696+coFPCp4IfhBRNgklRCrdHyy0FQbjGraPiWDAyQU9B
	G7kzKrjUbpQZZD6QS4Z7gxMC/3I7kciJmRKKg1aB9l9PAfeezW006WkfEy1wnQPZ37SO
	5sqchfECjz2zz04KZyOxLKcdaohpzxnXciT0LURyxVZDvJ0tIPxsLG/zzW6BhTJI1byj
	klhDIWhV9D351zKedlzYhqiwtrgsi0Ur6WHrAzPDb3fpnwDGmvRrlD6OK2WclujmKCQs
	bhfA==
X-Gm-Message-State: AG10YOR8Ot2GiFXo4ub24d+gGeL2m9B/FTTH5Y7wHTiCJOotyrGOKCoGUxhX7Swa3RO8fQ==
X-Received: by 10.182.120.40 with SMTP id kz8mr9609053obb.24.1454285933880;
	Sun, 31 Jan 2016 16:18:53 -0800 (PST)
Received: from [192.168.1.102] (ip174-75-98-66.br.br.cox.net. [174.75.98.66])
	by smtp.gmail.com with ESMTPSA id
	q188sm13718844oih.11.2016.01.31.16.18.53 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 31 Jan 2016 16:18:53 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
From: Charles Werther <cwerther3@gmail.com>
In-Reply-To: <56AE3A84.6040200@gmail.com>
Date: Sun, 31 Jan 2016 18:18:52 -0600
Message-Id: <C8C2CB01-2DA8-4781-9072-4C39CF07737E@gmail.com>
References: <CB3ACCA3-85C3-4B05-B11D-929B9E737A0A@gmail.com>
	<56AE3A84.6040200@gmail.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3112)
Subject: Re: Image SDK Generation With QT5
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
X-List-Received-Date: Mon, 01 Feb 2016 00:18:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Adding =91inherit populate_dk_qt5=92 solved my issue.  Thanks for the =
help!

Regards,
Charles

> On Jan 31, 2016, at 10:47 AM, Christian Ege <k4230r6@gmail.com> wrote:
>=20
> Hi Charles,
> On 31.01.2016 15:40, Charles Werther wrote:
>> All,
>>=20
>> I've created an image for the Raspberry Pi 2 which includes Qt5 and =
the WiringPi library and it runs great on the device. However, when I =
run the command 'bitbake myQtImage -c populate_sdk' I get the Pi sysroot =
with everything in it but I don't get the x86-64 qmake I need to cross =
compile on my desktop. When I run meta-toolchain-qt5 I get the x86-64 =
qmake I want but the wiringPi library isn't included in the Pi sysroot.  =
What do I need to do to generate an SDK that includes both the wiringPi =
library in the Pi sysroot and the x86-64 qmake?
> Have you added the following to your image?
>=20
>    # for populate_sdk to create a valid toolchain
>    inherit populate_sdk_qt5
>=20
> I recently did some Qt5 tests with the UDOO board. You can find a
> discussion here:
>=20
> =
http://www.udoo.org/forum/threads/openembedded-yocto-on-udoo-boards.2965/
>=20
> The Qt5 part was mainly taken from Qt5 on Wandboard:
> =
http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
>=20
> The details about inherit populate_sdk_qt5 have been discussed here
> several times
>=20
>>=20
>> Thanks,
>> Charles
>=20
> Regards,
> Christian
>=20
>=20
>=20


