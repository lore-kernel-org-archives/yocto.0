Return-Path: <bewithsathish@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF8CAE0030F
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 02:34:49 -0800 (PST)
Received: by pbcc11 with SMTP id c11so2958227pbc.35
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 02:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=PNUHWdr24A312praxKjS1IGeM6N5CQvx/HoDgmH99zk=;
	b=CyR3aZ9lcVfvlugRKbCxLhVYHGVfDA6i4h5EOOJXUP3MrsQd+KZBAbvlBWrGhq6AAs
	t7cEaxn1PEJlsiWsnabcLm5Pp0JiYDCbyeN8VTxhb75AcWpmY8sOPKDeND/qkO1yAJAf
	PdWis1RSt/VKv71XyWJEWlKe8Jo4VS+eRfbUI=
MIME-Version: 1.0
Received: by 10.68.199.170 with SMTP id jl10mr22348450pbc.21.1327746889501;
	Sat, 28 Jan 2012 02:34:49 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Sat, 28 Jan 2012 02:34:49 -0800 (PST)
In-Reply-To: <4F23CBD9.1080702@mlbassoc.com>
References: <CANJvwR-J4C50rF-hS=ANkH=SUsVDqpj64feTONGsmy1xOk=dmw@mail.gmail.com>
	<4F23CBD9.1080702@mlbassoc.com>
Date: Sat, 28 Jan 2012 16:04:49 +0530
Message-ID: <CANJvwR8kbNbSxUQueVpp0e_evPGKkbtyxAB-xTrM_zgWJkQRcw@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Writing recipe for changing /etc/profile
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
X-List-Received-Date: Sat, 28 Jan 2012 10:34:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 28, 2012 at 3:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-01-28 02:10, Sathishkumar Duraisamy wrote:
>>
>> Hi all,
>>
>> I have some doubts in launching my application while booting. That is,
>> once =A0my device is powered on, =A0should land in my application. I fou=
nd
>> that by adding some scripts to /etc/profile and enabled auto login, it
>> does.
>>
>> Is there a better way to do same? And if the current method is
>> sufficient, then how do I add patch to change /etc/profile file, or
>> which recipe gives this file so that I can the in my yocto layer.
>>
>
> Add your scripts to /etc/profile.d
>
> There are a few examples in the source tree, e.g.
> =A0meta/recipes-graphics/tslib/tslib_1.0.bb

Thanks Gray Thomas, it works.
--=20
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

